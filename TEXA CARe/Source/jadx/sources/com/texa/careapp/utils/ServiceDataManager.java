package com.texa.careapp.utils;

import android.util.Log;
import com.activeandroid.ActiveAndroid;
import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import com.texa.careapp.checks.Check;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.networking.response.ServiceListResponse;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ServiceDataManager {
    public static final String TAG = "ServiceDataManger";
    public final int NO_SERVICES = 1;
    public final int PURCHASED_ACCEPTED_BUT_NOT_CONNECTED = 2;
    public final int PURCHASED_OK = 3;
    public final int PURCHASED_NOT_ACCEPTED = 4;
    public final int PENDING = 5;
    public final int AVAILABLE = 6;
    public final int PURCHASED_WARNING = 7;
    public final int PURCHASED_BLOCKING = 8;

    public List<ServiceDataModel> saveServiceData(ServiceListResponse serviceListResponse) {
        List listExecute;
        List<ServiceDataModel> list;
        ActiveAndroid.beginTransaction();
        ArrayList arrayList = new ArrayList();
        try {
            try {
                listExecute = new Delete().from(ServiceDataModel.class).execute();
                list = serviceListResponse != null ? serviceListResponse.getList() : null;
            } catch (Exception e) {
                Timber.w(e, "cannot save service data", new Object[0]);
            }
            if (list == null) {
                Timber.w(" serviceListResponse.getList() == NULL ", new Object[0]);
                return Collections.emptyList();
            }
            for (ServiceDataModel serviceDataModel : list) {
                Log.i("TEST_SOS", serviceDataModel.toString());
                arrayList.add(saveServiceData(serviceDataModel));
            }
            if (listExecute != null && !listExecute.isEmpty()) {
                listExecute.removeAll(arrayList);
            }
            ActiveAndroid.setTransactionSuccessful();
            return arrayList;
        } finally {
            ActiveAndroid.endTransaction();
        }
    }

    public ServiceDataModel saveServiceData(ServiceDataModel serviceDataModel) throws DatabaseIOException {
        String hwid = serviceDataModel.getHwid();
        String userId = serviceDataModel.getUserId();
        if (!Utils.isEmpty(hwid) || !Utils.isEmpty(userId)) {
            From from = new Select().from(DongleModel.class);
            Object[] objArr = new Object[1];
            if (hwid == null) {
                hwid = "";
            }
            objArr[0] = hwid;
            DongleModel dongleModel = (DongleModel) from.where("hwid = ? ", objArr).executeSingle();
            if (dongleModel != null) {
                serviceDataModel.setDongle(dongleModel);
            }
            From from2 = new Select().from(UserModel.class);
            Object[] objArr2 = new Object[1];
            if (userId == null) {
                userId = "";
            }
            objArr2[0] = userId;
            UserModel userModel = (UserModel) from2.where("uid = ?", objArr2).executeSingle();
            if (userModel != null) {
                serviceDataModel.setUser(userModel);
            }
            if (serviceDataModel.getUid() == null) {
                StringBuilder sb = new StringBuilder();
                sb.append(serviceDataModel.getIdType().name());
                sb.append("-");
                sb.append(serviceDataModel.getSku());
                sb.append("-");
                sb.append(serviceDataModel.getHwid() != null ? serviceDataModel.getHwid() : "");
                serviceDataModel.setUid(sb.toString());
            }
            serviceDataModel.save();
        }
        return serviceDataModel;
    }

    public List<ServiceDataModel> getActiveSosServices() {
        return new Select().from(ServiceDataModel.class).where("status=?", ServiceDataModel.DongleServiceStatus.ACTIVE).and("service_type = ? ", ServiceDataModel.DongleServiceId.SOS).execute();
    }

    public List<ServiceDataModel> getActiveGenericSosServices() {
        return new Select().from(ServiceDataModel.class).where("status=?", ServiceDataModel.DongleServiceStatus.ACTIVE).and("(service_type = ? ", ServiceDataModel.DongleServiceId.SOS).or("service_type = ? )", ServiceDataModel.DongleServiceId.SOS_LIGHT).execute();
    }

    public List<String> getUUIDsActiveGenericSosServices() {
        List listExecute = new Select().from(ServiceDataModel.class).where("status=?", ServiceDataModel.DongleServiceStatus.ACTIVE).and("(service_type = ? ", ServiceDataModel.DongleServiceId.SOS).or("service_type = ? )", ServiceDataModel.DongleServiceId.SOS_LIGHT).execute();
        ArrayList arrayList = new ArrayList();
        Iterator it = listExecute.iterator();
        while (it.hasNext()) {
            arrayList.add(((ServiceDataModel) it.next()).getUid());
        }
        return arrayList;
    }

    public List<ServiceDataModel> getSosServices() {
        return new Select().from(ServiceDataModel.class).execute();
    }

    public ServiceDataModel getServicePriority(List<ServiceDataModel> list) {
        new ServiceDataComparator().sort(list);
        for (ServiceDataModel serviceDataModel : list) {
            if (serviceDataModel.getStatus() == ServiceDataModel.DongleServiceStatus.ACTIVE && serviceDataModel.isTermsAccepted()) {
                return serviceDataModel;
            }
        }
        for (ServiceDataModel serviceDataModel2 : list) {
            if (serviceDataModel2.getStatus() == ServiceDataModel.DongleServiceStatus.ACTIVE && !serviceDataModel2.isTermsAccepted()) {
                return serviceDataModel2;
            }
        }
        for (ServiceDataModel serviceDataModel3 : list) {
            if (serviceDataModel3.getStatus() == ServiceDataModel.DongleServiceStatus.PENDING) {
                return serviceDataModel3;
            }
        }
        for (ServiceDataModel serviceDataModel4 : list) {
            if (serviceDataModel4.getStatus() == ServiceDataModel.DongleServiceStatus.AVAILABLE) {
                return serviceDataModel4;
            }
        }
        return null;
    }

    public List<ServiceDataModel> filterActiveSosServicesForHwId(String str, List<ServiceDataModel> list) {
        ArrayList arrayList = new ArrayList();
        for (ServiceDataModel serviceDataModel : list) {
            if (str.equals(serviceDataModel.getHwid()) || serviceDataModel.getHwid() == null) {
                if (serviceDataModel.isSosType() && serviceDataModel.isActive()) {
                    arrayList.add(serviceDataModel);
                }
            }
        }
        return arrayList;
    }

    public List<ServiceDataModel> filterSosServicesForHwId(String str, List<ServiceDataModel> list) {
        ArrayList arrayList = new ArrayList();
        for (ServiceDataModel serviceDataModel : list) {
            if (str.equals(serviceDataModel.getHwid()) || serviceDataModel.getHwid() == null) {
                if (serviceDataModel.isSosType()) {
                    arrayList.add(serviceDataModel);
                }
            }
        }
        return arrayList;
    }

    public Integer checkServiceAndDongleStatus(Check.Result result, ServiceDataModel serviceDataModel) {
        if (serviceDataModel == null) {
            Timber.d("%s NO_SERVICES -> serviceDataModel == null", TAG);
            return 1;
        }
        if (serviceDataModel.getStatus() == ServiceDataModel.DongleServiceStatus.PENDING) {
            if (!serviceDataModel.isTermsAccepted()) {
                Timber.e("%s PENDING_NOT_ACCEPTED -> inconsistent value", TAG);
                return 1;
            }
            Timber.d("%s PENDING", TAG);
            return 5;
        }
        if (serviceDataModel.getStatus() == ServiceDataModel.DongleServiceStatus.AVAILABLE) {
            if (serviceDataModel.isTermsAccepted()) {
                Timber.e("%s AVAILABLE_ACCEPTED -> inconsistent value", TAG);
                return 1;
            }
            Timber.d("%s AVAILABLE", TAG);
            return 6;
        }
        if (serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS_LIGHT && serviceDataModel.getStatus() == ServiceDataModel.DongleServiceStatus.ACTIVE) {
            return checkActiveService(result, serviceDataModel);
        }
        if (serviceDataModel.getStatus() == ServiceDataModel.DongleServiceStatus.ACTIVE && serviceDataModel.getAllowance() != null && serviceDataModel.getAllowance().after(new Date())) {
            return checkActiveService(result, serviceDataModel);
        }
        Timber.e("%s ERROR -> inconsistent value", TAG);
        return 1;
    }

    private Integer checkActiveService(Check.Result result, ServiceDataModel serviceDataModel) {
        if (serviceDataModel.isTermsAccepted() && result == Check.Result.OK) {
            Timber.d(" PURCHASED_OK", new Object[0]);
            return 3;
        }
        if (!serviceDataModel.isTermsAccepted()) {
            Timber.d(" PURCHASED_WARNING", new Object[0]);
            return 4;
        }
        if (result == Check.Result.WARNING) {
            Timber.d(" PURCHASED_WARNING", new Object[0]);
            return 7;
        }
        Timber.d(" PURCHASED_BLOCKING", new Object[0]);
        return 8;
    }

    public ServiceDataModel getAvailableSosPlus(String str) {
        return (ServiceDataModel) new Select().from(ServiceDataModel.class).where("hwid = ?", str).and("status = ?", ServiceDataModel.DongleServiceStatus.AVAILABLE).orderBy("trial DESC").executeSingle();
    }

    public ServiceDataModel getServiceByUid(String str) {
        return (ServiceDataModel) new Select().from(ServiceDataModel.class).where("ServicesData.uid = ?", str).executeSingle();
    }

    public ServiceDataModel getServiceByActiveAndroidId(long j) {
        return (ServiceDataModel) new Select().from(ServiceDataModel.class).where("ServicesData.id = ?", Long.valueOf(j)).executeSingle();
    }

    public ServiceDataModel getAvailableSosLight(UserModel userModel) {
        return (ServiceDataModel) new Select().from(ServiceDataModel.class).where("user = ?", userModel.getId()).and("status = ?", ServiceDataModel.DongleServiceStatus.AVAILABLE).executeSingle();
    }
}
