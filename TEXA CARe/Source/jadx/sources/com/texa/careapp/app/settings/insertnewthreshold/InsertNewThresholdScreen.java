package com.texa.careapp.app.settings.insertnewthreshold;

import android.app.Activity;
import android.content.Context;
import android.database.DataSetObserver;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.databinding.ScreenInsertNewThresholdBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.model.ThresholdModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.VehicleDataManager;
import com.texa.careapp.views.EditableDateView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class InsertNewThresholdScreen extends Screen {
    private static final String TAG = "InsertNewThresholdScreen";

    @Inject
    protected Context mContext;
    private EditableDateView mDate;
    private Activity mInsertNewThresholdActivity;
    private Spinner mSpinner;

    @Inject
    protected VehicleDataManager mVehicleDataManager;
    private VehicleModel mVehicleModel;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_insert_new_threshold;
    }

    public InsertNewThresholdScreen(Activity activity) {
        this.mInsertNewThresholdActivity = activity;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenInsertNewThresholdBinding screenInsertNewThresholdBinding = (ScreenInsertNewThresholdBinding) DataBindingUtil.bind(view);
        this.mSpinner = screenInsertNewThresholdBinding.thresholdTypeSpinner;
        this.mDate = screenInsertNewThresholdBinding.editDateViewNewThreshold;
        screenInsertNewThresholdBinding.layoutAddConfirmed.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.insertnewthreshold.InsertNewThresholdScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m397x8ed3263a(view2);
            }
        });
        screenInsertNewThresholdBinding.layoutSetDataNewThreshold.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.settings.insertnewthreshold.InsertNewThresholdScreen$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m398xc28150fb(view2);
            }
        });
        this.mVehicleModel = this.mVehicleDataManager.getVehicleById(this.mInsertNewThresholdActivity.getIntent().getExtras().getString(VehicleModel.COLUMN_UID));
        this.mSpinner.setAdapter((SpinnerAdapter) new ThresholdTypeAdapter(this.mContext, populateTypeList()));
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-settings-insertnewthreshold-InsertNewThresholdScreen, reason: not valid java name */
    public /* synthetic */ void m397x8ed3263a(View view) {
        addThresholdConfirmed();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-settings-insertnewthreshold-InsertNewThresholdScreen, reason: not valid java name */
    public /* synthetic */ void m398xc28150fb(View view) {
        this.mDate.showDatePicker();
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
    }

    private List<ThresholdModel.Type> populateTypeList() {
        List<ThresholdModel> listEmptyList;
        VehicleModel vehicleModel = this.mVehicleModel;
        if (vehicleModel != null) {
            listEmptyList = vehicleModel.getThresholds();
        } else {
            Log.d(TAG, "vehicle model is null!");
            listEmptyList = Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        if (!existThresholdWithType(listEmptyList, ThresholdModel.Type.AC_SUBSCR_EXP)) {
            arrayList.add(ThresholdModel.Type.AC_SUBSCR_EXP);
        }
        if (!existThresholdWithType(listEmptyList, ThresholdModel.Type.PARK_SUBSCR_EXP)) {
            arrayList.add(ThresholdModel.Type.PARK_SUBSCR_EXP);
        }
        if (!existThresholdWithType(listEmptyList, ThresholdModel.Type.GARAGE_RENT_EXP)) {
            arrayList.add(ThresholdModel.Type.GARAGE_RENT_EXP);
        }
        if (!existThresholdWithType(listEmptyList, ThresholdModel.Type.INS_PAYM_EXP)) {
            arrayList.add(ThresholdModel.Type.INS_PAYM_EXP);
        }
        if (!existThresholdWithType(listEmptyList, ThresholdModel.Type.INS_2_PAYM_EXP)) {
            arrayList.add(ThresholdModel.Type.INS_2_PAYM_EXP);
        }
        if (!existThresholdWithType(listEmptyList, ThresholdModel.Type.CAR_PAYM_EXP)) {
            arrayList.add(ThresholdModel.Type.CAR_PAYM_EXP);
        }
        if (!existThresholdWithType(listEmptyList, ThresholdModel.Type.HWY_PASS_EXP)) {
            arrayList.add(ThresholdModel.Type.HWY_PASS_EXP);
        }
        if (!existThresholdWithType(listEmptyList, ThresholdModel.Type.ZTL_PASS_EXP)) {
            arrayList.add(ThresholdModel.Type.ZTL_PASS_EXP);
        }
        return arrayList;
    }

    private void addThresholdConfirmed() {
        if (this.mSpinner.getSelectedItem() == null || this.mDate.isEmpty()) {
            Toast.makeText(this.mInsertNewThresholdActivity, R.string.data_not_valid, 1).show();
            return;
        }
        ThresholdModel.Type type = (ThresholdModel.Type) this.mSpinner.getSelectedItem();
        Date date = this.mDate.getDate();
        ThresholdModel threshold = this.mVehicleModel.getThreshold(type, getContext());
        threshold.setDate(date);
        try {
            threshold.saveForSync();
            this.mInsertNewThresholdActivity.finish();
        } catch (DatabaseIOException e) {
            Timber.e(e, "Could not save the new threshold.", new Object[0]);
        }
    }

    private boolean existThresholdWithType(List<ThresholdModel> list, ThresholdModel.Type type) {
        Iterator<ThresholdModel> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().getType() == type) {
                return true;
            }
        }
        return false;
    }

    private class ThresholdTypeAdapter implements SpinnerAdapter {
        Context mContext;
        private TextView mType;
        List<ThresholdModel.Type> typeList;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            return false;
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return false;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        }

        public ThresholdTypeAdapter(Context context, List<ThresholdModel.Type> list) {
            this.typeList = list;
            this.mContext = context;
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.threshold_type_spinner_item, viewGroup, false);
            }
            this.mType = (TextView) view.findViewById(R.id.text_view_threshold_type);
            this.mType.setText(this.mContext.getString(ThresholdModel.TYPE_DESCRIPTION.get(this.typeList.get(i)).intValue()));
            return view;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.typeList.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.typeList.get(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.threshold_type_spinner_item, viewGroup, false);
            }
            this.mType = (TextView) view.findViewById(R.id.text_view_threshold_type);
            this.mType.setText(this.mContext.getString(ThresholdModel.TYPE_DESCRIPTION.get(this.typeList.get(i)).intValue()));
            return view;
        }
    }
}
