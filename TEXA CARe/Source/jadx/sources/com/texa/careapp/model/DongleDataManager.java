package com.texa.careapp.model;

import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.utils.Utils;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.DeviceInfo;
import io.reactivex.Observable;
import io.reactivex.subjects.PublishSubject;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class DongleDataManager {
    private PublishSubject<DongleModel> mDongleModelPublishSubject = PublishSubject.create();
    private final PropertyChangeListener mCommunicationPropertyChangeListener = new PropertyChangeListener() { // from class: com.texa.careapp.model.DongleDataManager$$ExternalSyntheticLambda0
        @Override // java.beans.PropertyChangeListener
        public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
            this.f$0.m618lambda$new$0$comtexacareappmodelDongleDataManager(propertyChangeEvent);
        }
    };

    /* JADX INFO: renamed from: lambda$new$0$com-texa-careapp-model-DongleDataManager, reason: not valid java name */
    public /* synthetic */ void m618lambda$new$0$comtexacareappmodelDongleDataManager(PropertyChangeEvent propertyChangeEvent) {
        Communication communication = (Communication) propertyChangeEvent.getSource();
        if (Communication.PROPERTY_STATUS.equals(propertyChangeEvent.getPropertyName()) && communication.getStatus() == CommunicationStatus.CONNECTED) {
            onCareConnected(communication.getCurrentDevice());
        }
    }

    Observable<DongleModel> observeCurrentDongle() {
        return this.mDongleModelPublishSubject.startWith(getDongleModel());
    }

    protected void onCareConnected(DeviceInfo deviceInfo) {
        String address = deviceInfo.getAddress();
        if (address == null) {
            Timber.e("DeviceInfo.getName() == NULL", new Object[0]);
            return;
        }
        DongleModel dongleLikeSelectedWithMac = setDongleLikeSelectedWithMac(address);
        if (dongleLikeSelectedWithMac == null) {
            Timber.e("DongleDataManager#onCareConnected Hwid not found", new Object[0]);
            return;
        }
        dongleLikeSelectedWithMac.setLastConnection(Calendar.getInstance().getTime());
        try {
            Utils.safeModelSave(dongleLikeSelectedWithMac, null);
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not save dongle model in database.", new Object[0]);
        }
        this.mDongleModelPublishSubject.onNext(dongleLikeSelectedWithMac);
    }

    public void startConnectionListener(Communication communication) {
        communication.addPropertyChangeListener(this.mCommunicationPropertyChangeListener);
    }

    public void stopConnectionListener(Communication communication) {
        communication.removePropertyChangeListener(this.mCommunicationPropertyChangeListener);
    }

    public DongleModel getDongleModel() {
        DongleModel dongleModel = (DongleModel) new Select().from(DongleModel.class).where("SelectDongle=?", true).orderBy("LastConnection DESC").executeSingle();
        if (dongleModel == null) {
            return getLastConnectedDongle();
        }
        Timber.d("currentDongle %s", dongleModel.toString());
        return dongleModel;
    }

    private DongleModel getLastConnectedDongle() {
        return (DongleModel) new Select().from(DongleModel.class).orderBy("LastConnection DESC").executeSingle();
    }

    public DongleModel getUnselectedDongleModel() {
        DongleModel dongleModel = (DongleModel) new Select().from(DongleModel.class).orderBy("LastConnection DESC").executeSingle();
        if (dongleModel != null) {
            Timber.d("currentDongle %s", dongleModel.toString());
        }
        return dongleModel;
    }

    public List<DongleModel> getDongleByHwid(String str) {
        return new Select().from(DongleModel.class).where("hwid = ? ", str).execute();
    }

    public List<DongleModel> getDongleByMacAddress(String str) {
        return new Select().from(DongleModel.class).where("macAddress = ? ", str).execute();
    }

    public DongleModel setDongleLikeSelectedWithHWID(String str) {
        if (Utils.isEmpty(str)) {
            return null;
        }
        List<DongleModel> dongleByHwid = getDongleByHwid(str);
        if (dongleByHwid.isEmpty()) {
            Timber.e("this dongleModel not exist in DB (With HWID): %s", str);
            return null;
        }
        DongleModel dongleModel = dongleByHwid.get(0);
        dongleModel.setDongleLikeSelected();
        dongleModel.save();
        return dongleModel;
    }

    public DongleModel setDongleLikeSelectedWithMac(String str) {
        if (Utils.isEmpty(str)) {
            return null;
        }
        List<DongleModel> dongleByMacAddress = getDongleByMacAddress(str);
        if (dongleByMacAddress.isEmpty()) {
            Timber.e("this dongleModel not exist in DB (With MAC): %s", str);
            return null;
        }
        DongleModel dongleModel = dongleByMacAddress.get(0);
        dongleModel.setDongleLikeSelected();
        dongleModel.save();
        return dongleModel;
    }

    public int count() {
        return new Select().from(DongleModel.class).count();
    }

    public List<DeviceInfo> buildDeviceInfoList() {
        List<DongleModel> listExecute = new Select().from(DongleModel.class).execute();
        ArrayList arrayList = new ArrayList(listExecute.size());
        for (DongleModel dongleModel : listExecute) {
            arrayList.add(new DeviceInfo(dongleModel.getMacAddress()).builder().setName(dongleModel.getHwid()).setBondState(10).setRSSI(0).setType(0).build());
        }
        return arrayList;
    }

    public void delete() {
        new Delete().from(DongleModel.class).execute();
    }

    public void deleteDongleByHwid(String str) {
        new Delete().from(DongleModel.class).where("hwid = ? ", str).execute();
    }

    public List<DongleModel> getAll() {
        return new Select().from(DongleModel.class).execute();
    }

    public boolean isDongleInDb(String str) {
        return str != null && new Select().from(DongleModel.class).where("hwid = ? ", str).exists();
    }

    public Date getLastConnectionDate() {
        DongleModel dongleModel = (DongleModel) new Select().from(DongleModel.class).orderBy("LastConnection DESC").executeSingle();
        return (dongleModel == null || dongleModel.getLastConnection() == null) ? new Date(0L) : dongleModel.getLastConnection();
    }
}
