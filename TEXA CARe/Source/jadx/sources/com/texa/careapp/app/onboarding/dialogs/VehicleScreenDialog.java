package com.texa.careapp.app.onboarding.dialogs;

import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.onboarding.IVehicleModel;
import com.texa.careapp.app.onboarding.OnBoardingActivity;
import com.texa.careapp.app.onboarding.adapters.VehicleDialogAdapter;
import com.texa.careapp.databinding.ScreenDialogVehicleBinding;
import com.texa.careapp.model.SelectionModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.networking.TexaCareApiServiceUser;
import com.texa.careapp.utils.Utils;
import com.timehop.stickyheadersrecyclerview.StickyRecyclerHeadersDecoration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleScreenDialog extends Screen {
    public static final String TAG = "VehicleScreenDialog";
    private StickyRecyclerHeadersDecoration decoration;
    private List<IVehicleModel> items = new ArrayList();
    private OnBoardingActivity mActivity;
    private VehicleDialogAdapter mAdapter;

    @Inject
    protected EventBus mEventBus;
    private RecyclerView mModelsRecycleView;
    private ProgressBar mProgressBar;
    private EditText mSearch;

    @Inject
    protected TexaCareApiServiceUser mTexaCareApiServiceUser;
    private List<VehicleModel> userVehicles;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_dialog_vehicle;
    }

    public VehicleScreenDialog(CareApplication careApplication, OnBoardingActivity onBoardingActivity, List<VehicleModel> list) {
        this.userVehicles = new ArrayList();
        careApplication.component().inject(this);
        this.userVehicles = list;
        this.mActivity = onBoardingActivity;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ScreenDialogVehicleBinding screenDialogVehicleBinding = (ScreenDialogVehicleBinding) DataBindingUtil.bind(view);
        this.mSearch = screenDialogVehicleBinding.screenDialogVehicleSearch;
        this.mModelsRecycleView = screenDialogVehicleBinding.screenDialogVehicleRecycler;
        this.mProgressBar = screenDialogVehicleBinding.screenDialogVehicleProgress;
        screenDialogVehicleBinding.screenDialogVehicleCancel.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.dialogs.VehicleScreenDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m329x87b1a977(view2);
            }
        });
        setupUI(screenDialogVehicleBinding.screenDialogVehicleLay);
        this.mAdapter = new VehicleDialogAdapter(this.mActivity, this.items);
        this.mModelsRecycleView.setLayoutManager(new LinearLayoutManager(this.mActivity));
        this.mModelsRecycleView.setAdapter(this.mAdapter);
        this.mModelsRecycleView.setHasFixedSize(true);
        this.mModelsRecycleView.setItemAnimator(new DefaultItemAnimator());
        StickyRecyclerHeadersDecoration stickyRecyclerHeadersDecoration = new StickyRecyclerHeadersDecoration(this.mAdapter);
        this.decoration = stickyRecyclerHeadersDecoration;
        this.mModelsRecycleView.addItemDecoration(stickyRecyclerHeadersDecoration);
        this.mAdapter.registerAdapterDataObserver(new RecyclerView.AdapterDataObserver() { // from class: com.texa.careapp.app.onboarding.dialogs.VehicleScreenDialog.1
            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                VehicleScreenDialog.this.decoration.invalidateHeaders();
            }
        });
        this.mAdapter.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.texa.careapp.app.onboarding.dialogs.VehicleScreenDialog$$ExternalSyntheticLambda2
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i, long j) {
                this.f$0.m330x422749f8(adapterView, view2, i, j);
            }
        });
        initSearch();
        new Handler().postDelayed(new Runnable() { // from class: com.texa.careapp.app.onboarding.dialogs.VehicleScreenDialog$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m333x71882b7b();
            }
        }, 1000L);
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-dialogs-VehicleScreenDialog, reason: not valid java name */
    public /* synthetic */ void m329x87b1a977(View view) {
        getNavigator().goBack();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-onboarding-dialogs-VehicleScreenDialog, reason: not valid java name */
    public /* synthetic */ void m330x422749f8(AdapterView adapterView, View view, int i, long j) {
        SelectionModel selectionModel;
        VehicleModel vehicleModel;
        if (this.items.get(i) instanceof SelectionModel) {
            selectionModel = (SelectionModel) this.items.get(i);
            vehicleModel = null;
        } else if (this.items.get(i) instanceof VehicleModel) {
            vehicleModel = (VehicleModel) this.items.get(i);
            selectionModel = null;
        } else {
            selectionModel = null;
            vehicleModel = null;
        }
        this.mEventBus.post(new VehicleSelectedEvent(this.items.get(i).getVehicleInfo(), this.items.get(i).getVehiclePlate(), selectionModel, vehicleModel));
        getNavigator().goBack();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$4$com-texa-careapp-app-onboarding-dialogs-VehicleScreenDialog, reason: not valid java name */
    public /* synthetic */ void m333x71882b7b() {
        Collections.sort(this.userVehicles, new VehicleComparator());
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.texa.careapp.app.onboarding.dialogs.VehicleScreenDialog$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m332xb7128afa();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$3$com-texa-careapp-app-onboarding-dialogs-VehicleScreenDialog, reason: not valid java name */
    public /* synthetic */ void m332xb7128afa() {
        updateList();
        this.mModelsRecycleView.post(new Runnable() { // from class: com.texa.careapp.app.onboarding.dialogs.VehicleScreenDialog$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m331xfc9cea79();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$2$com-texa-careapp-app-onboarding-dialogs-VehicleScreenDialog, reason: not valid java name */
    public /* synthetic */ void m331xfc9cea79() {
        this.mModelsRecycleView.invalidateItemDecorations();
        this.decoration.invalidateHeaders();
    }

    private class VehicleComparator implements Comparator<VehicleModel> {
        private VehicleComparator() {
        }

        @Override // java.util.Comparator
        public int compare(VehicleModel vehicleModel, VehicleModel vehicleModel2) {
            return vehicleModel.getVehicleInfo().compareTo(vehicleModel2.getVehicleInfo());
        }
    }

    private void closeKeyboard(View view) {
        ((InputMethodManager) this.mActivity.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    private void setupUI(View view) {
        if (!(view instanceof EditText)) {
            view.setOnTouchListener(new View.OnTouchListener() { // from class: com.texa.careapp.app.onboarding.dialogs.VehicleScreenDialog$$ExternalSyntheticLambda1
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    return this.f$0.m335x86097efd(view2, motionEvent);
                }
            });
        }
        if (!(view instanceof ViewGroup)) {
            return;
        }
        int i = 0;
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i >= viewGroup.getChildCount()) {
                return;
            }
            setupUI(viewGroup.getChildAt(i));
            i++;
        }
    }

    /* JADX INFO: renamed from: lambda$setupUI$5$com-texa-careapp-app-onboarding-dialogs-VehicleScreenDialog, reason: not valid java name */
    public /* synthetic */ boolean m335x86097efd(View view, MotionEvent motionEvent) {
        closeKeyboard(view);
        return false;
    }

    private String getSearchText() {
        EditText editText = this.mSearch;
        Editable text = editText != null ? editText.getText() : null;
        return text != null ? text.toString() : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateList() {
        this.mProgressBar.setVisibility(0);
        this.items.clear();
        this.items.addAll(getFilteredVehicle(getSearchText()));
        this.items.addAll(SelectionModel.getSelections(getSearchText()));
        this.items = Utils.cleanVehicleItems(this.items);
        this.mAdapter.notifyDataSetChanged();
        this.mProgressBar.setVisibility(8);
    }

    private List<IVehicleModel> getFilteredVehicle(String str) {
        ArrayList arrayList = new ArrayList();
        if (Utils.isEmpty(str)) {
            arrayList.addAll(this.userVehicles);
        } else {
            for (VehicleModel vehicleModel : this.userVehicles) {
                if (vehicleModel.getVehicleInfo().contains(str)) {
                    arrayList.add(vehicleModel);
                }
            }
        }
        return arrayList;
    }

    private void initSearch() {
        this.mSearch.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.onboarding.dialogs.VehicleScreenDialog.2
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable == null || editable.length() <= 2) {
                    return;
                }
                VehicleScreenDialog.this.updateList();
            }
        });
        this.mSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.texa.careapp.app.onboarding.dialogs.VehicleScreenDialog$$ExternalSyntheticLambda3
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.m334xdcfe3d9f(textView, i, keyEvent);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$initSearch$6$com-texa-careapp-app-onboarding-dialogs-VehicleScreenDialog, reason: not valid java name */
    public /* synthetic */ boolean m334xdcfe3d9f(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 3) {
            return false;
        }
        updateList();
        closeKeyboard(textView);
        return true;
    }

    @Override // com.texa.care.navigation.Screen
    public boolean onBackPressed() {
        return super.onBackPressed();
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG_FULL_WIDTH;
    }

    public class VehicleSelectedEvent {
        private String plate;
        private SelectionModel selectionModel;
        private VehicleModel userVehicle;
        private String vehicle;

        public String getVehicle() {
            return this.vehicle;
        }

        public String getPlate() {
            return this.plate;
        }

        public SelectionModel getSelectionModel() {
            return this.selectionModel;
        }

        public VehicleModel getUserVehicle() {
            return this.userVehicle;
        }

        VehicleSelectedEvent(String str, String str2, SelectionModel selectionModel, VehicleModel vehicleModel) {
            this.vehicle = str;
            this.plate = str2;
            this.selectionModel = selectionModel;
            this.userVehicle = vehicleModel;
        }
    }
}
