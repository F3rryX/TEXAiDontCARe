package com.texa.careapp.app.diagnosis.tab.errorDTC;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import androidx.core.content.res.ResourcesCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.texa.care.R;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.diagnosis.DiagnosisDataPagerAdapter;
import com.texa.careapp.app.diagnosis.DiagnosisType;
import com.texa.careapp.app.errorsDTC.LampStatus;
import com.texa.careapp.lamps.LampsManager;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.model.DongleModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.Utils;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class ErrorDTCViewPresenter implements IDTCViewPresenter {
    private static final String TAG = "ErrorDTCViewPresenter";
    private Disposable dtcSub;
    private ErrorDTCAdapter mAdapter;

    @Inject
    protected Context mContext;

    @Inject
    protected DongleDataManager mDongleDataManager;
    private DongleModel mDongleModel;
    private View mEmptyView;
    private ImageView mImageEngineOk;

    @Inject
    protected LampsManager mLampsManager;
    private View mListView;
    private DiagnosisDataPagerAdapter mPagerAdapter;

    public ErrorDTCViewPresenter(CareApplication.ApplicationComponent applicationComponent, DiagnosisDataPagerAdapter diagnosisDataPagerAdapter) {
        applicationComponent.inject(this);
        this.mPagerAdapter = diagnosisDataPagerAdapter;
        this.mDongleModel = this.mDongleDataManager.getDongleModel();
    }

    @Override // com.texa.careapp.app.diagnosis.tab.errorDTC.IDTCViewPresenter
    public void afterViewInjection(View view) {
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.recycler1);
        this.mListView = view.findViewById(R.id.lamp_status_list);
        this.mEmptyView = view.findViewById(R.id.lamp_status_empty);
        this.mImageEngineOk = (ImageView) view.findViewById(R.id.img_engine_ok);
        this.mListView.setVisibility(8);
        this.mEmptyView.setVisibility(0);
        this.mAdapter = new ErrorDTCAdapter(this.mContext);
        recyclerView.setLayoutManager(getLayoutManager());
        recyclerView.setAdapter(this.mAdapter);
        initLampData();
        observeActiveLamps();
        Timber.d("afterViewInjection()", new Object[0]);
    }

    private void initLampData() {
        List<LampStatus> arrayList = new ArrayList<>();
        VehicleModel selectedVehicle = this.mDongleModel.getSelectedVehicle();
        if (selectedVehicle != null) {
            List<LampStatus> lampsListFilteredForDiagnosisType = Utils.getLampsListFilteredForDiagnosisType(DiagnosisType.STANDARD, selectedVehicle.getActiveLamps());
            if (!lampsListFilteredForDiagnosisType.isEmpty()) {
                LampStatus lampStatus = new LampStatus();
                lampStatus.setHeaderTitle(this.mContext.getString(R.string.diagnosis_tab_1_header_1));
                arrayList.add(lampStatus);
            }
            arrayList.addAll(lampsListFilteredForDiagnosisType);
            List<LampStatus> lampsListFilteredForDiagnosisType2 = Utils.getLampsListFilteredForDiagnosisType(DiagnosisType.ADVANCED, selectedVehicle.getActiveLamps());
            if (!lampsListFilteredForDiagnosisType2.isEmpty()) {
                LampStatus lampStatus2 = new LampStatus();
                lampStatus2.setHeaderTitle(this.mContext.getString(R.string.diagnosis_tab_1_header_2));
                arrayList.add(lampStatus2);
            }
            arrayList.addAll(lampsListFilteredForDiagnosisType2);
        } else {
            arrayList = new ArrayList<>();
        }
        updateAdapter(arrayList);
    }

    @Override // com.texa.careapp.app.diagnosis.tab.errorDTC.IDTCViewPresenter
    public void observeActiveLamps() {
        this.dtcSub = this.mLampsManager.observeActiveLamps().subscribe(new Consumer() { // from class: com.texa.careapp.app.diagnosis.tab.errorDTC.ErrorDTCViewPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m222x55253bb8((List) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.diagnosis.tab.errorDTC.ErrorDTCViewPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.w((Throwable) obj, "observeActiveLamps#onError() Exception", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$observeActiveLamps$0$com-texa-careapp-app-diagnosis-tab-errorDTC-ErrorDTCViewPresenter, reason: not valid java name */
    public /* synthetic */ void m222x55253bb8(List list) throws Exception {
        Timber.d("observeActiveLamps#onNext()", new Object[0]);
        initLampData();
    }

    @Override // com.texa.careapp.app.diagnosis.tab.errorDTC.IDTCViewPresenter
    public void destroySub() {
        Utils.safeDispose(this.dtcSub);
    }

    @Override // com.texa.careapp.app.diagnosis.tab.errorDTC.IDTCViewPresenter
    public void updateAdapter(List<LampStatus> list) {
        if (list.isEmpty()) {
            this.mListView.setVisibility(8);
            this.mEmptyView.setVisibility(0);
            this.mImageEngineOk.setImageDrawable(ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.engineok, null));
            this.mImageEngineOk.setColorFilter(Utils.getColorResource(this.mContext, R.color.icon_green));
            return;
        }
        this.mListView.setVisibility(0);
        this.mEmptyView.setVisibility(8);
        this.mAdapter.update(list);
    }

    @Override // com.texa.careapp.app.diagnosis.tab.errorDTC.IDTCViewPresenter
    public RecyclerView.LayoutManager getLayoutManager() {
        return new GridLayoutManager(this.mContext, 1, 1, false);
    }
}
