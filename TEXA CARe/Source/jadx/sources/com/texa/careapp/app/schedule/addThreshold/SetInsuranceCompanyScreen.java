package com.texa.careapp.app.schedule.addThreshold;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.careapp.CareApplication;
import com.texa.careapp.databinding.ScreenSetInsuranceCompanyBinding;
import com.texa.careapp.model.ThresholdModel;
import com.texa.careapp.model.UserModel;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.networking.TexaCareApiServiceClient;
import com.texa.careapp.networking.response.InsuranceListResponse;
import com.texa.careapp.utils.Utils;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class SetInsuranceCompanyScreen extends Screen {
    private static final String TAG = "SetInsuranceCompanyScreen";
    private Disposable insuranceSub;
    private final ThresholdModel insuranceThreshold;
    private InsuranceAdapter mAdapter;
    private LinearLayout mContentLayout;
    private ListView mInsuranceList;
    private EditText mSearch;

    @Inject
    protected TexaCareApiServiceClient mTexaCareApiService;
    private TextView mTitle;
    private LinearLayout mTitleLayout;
    private final VehicleModel vehicleSelected;
    private List<Insurance> mInsuranceCompanyList = new ArrayList();
    private ViewTreeObserver.OnGlobalLayoutListener mLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.texa.careapp.app.schedule.addThreshold.SetInsuranceCompanyScreen$$ExternalSyntheticLambda2
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            this.f$0.refactorLayoutWhenKeyboardChange();
        }
    };

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_set_insurance_company;
    }

    public SetInsuranceCompanyScreen(ThresholdModel thresholdModel, VehicleModel vehicleModel, UserModel userModel) {
        this.insuranceThreshold = thresholdModel;
        this.vehicleSelected = vehicleModel;
        if (thresholdModel == null || vehicleModel == null) {
            throw new IllegalArgumentException("insuranceThreshold and vehicleModel cant be null");
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        ScreenSetInsuranceCompanyBinding screenSetInsuranceCompanyBinding = (ScreenSetInsuranceCompanyBinding) DataBindingUtil.bind(view);
        ListView listView = screenSetInsuranceCompanyBinding.insuranceList;
        this.mInsuranceList = listView;
        listView.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.texa.careapp.app.schedule.addThreshold.SetInsuranceCompanyScreen.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view2, int i, long j) {
                SetInsuranceCompanyScreen.this.insuranceCompanyClicked(i);
            }
        });
        this.mTitle = screenSetInsuranceCompanyBinding.thresholdTitol;
        EditText editText = screenSetInsuranceCompanyBinding.searchInsuranceCompany;
        this.mSearch = editText;
        editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.texa.careapp.app.schedule.addThreshold.SetInsuranceCompanyScreen$$ExternalSyntheticLambda1
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                this.f$0.m358x290931b9(view2, z);
            }
        });
        this.mTitleLayout = screenSetInsuranceCompanyBinding.titleLayout;
        this.mContentLayout = screenSetInsuranceCompanyBinding.setInsuranceScreenContentLayout;
        screenSetInsuranceCompanyBinding.otherCompanyButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.schedule.addThreshold.SetInsuranceCompanyScreen$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m359x61e99258(view2);
            }
        });
        this.mAdapter = new InsuranceAdapter(getContext(), this.mInsuranceCompanyList);
        this.mTitle.setText(ThresholdModel.TYPE_DESCRIPTION.get(this.insuranceThreshold.getType()).intValue());
        setSearchWatcher();
        this.insuranceSub = displayInsurances();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-schedule-addThreshold-SetInsuranceCompanyScreen, reason: not valid java name */
    public /* synthetic */ void m358x290931b9(View view, boolean z) {
        onFocusChanged(z);
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-schedule-addThreshold-SetInsuranceCompanyScreen, reason: not valid java name */
    public /* synthetic */ void m359x61e99258(View view) {
        getNavigator().goTo(new SetInsuranceDateThresholdScreen(this.insuranceThreshold, new Insurance(-1, getContext().getString(R.string.other_insurance_company)), this.vehicleSelected));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refactorLayoutWhenKeyboardChange() {
        if (this.mContentLayout == null || this.mTitleLayout == null) {
            return;
        }
        Rect rect = new Rect();
        this.mContentLayout.getWindowVisibleDisplayFrame(rect);
        int height = this.mContentLayout.getRootView().getHeight();
        if (height - (rect.bottom - rect.top) > height / 3) {
            Timber.d("keyboard UP", new Object[0]);
            this.mTitleLayout.setVisibility(8);
        } else {
            Timber.d("keyboard DOWN", new Object[0]);
            this.mTitleLayout.setVisibility(0);
        }
    }

    @Override // com.texa.care.navigation.Screen
    public void onResume() {
        super.onResume();
        LinearLayout linearLayout = this.mContentLayout;
        if (linearLayout != null) {
            linearLayout.getViewTreeObserver().addOnGlobalLayoutListener(this.mLayoutListener);
        }
        openKeyboard();
    }

    private Disposable displayInsurances() {
        return this.mTexaCareApiService.insurers().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.schedule.addThreshold.SetInsuranceCompanyScreen$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m360xc257182c((InsuranceListResponse) obj);
            }
        }, new Consumer() { // from class: com.texa.careapp.app.schedule.addThreshold.SetInsuranceCompanyScreen$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Timber.d("impossibile comunicare con il server", new Object[0]);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$displayInsurances$2$com-texa-careapp-app-schedule-addThreshold-SetInsuranceCompanyScreen, reason: not valid java name */
    public /* synthetic */ void m360xc257182c(InsuranceListResponse insuranceListResponse) throws Exception {
        this.mInsuranceCompanyList = insuranceListResponse.getList();
        InsuranceAdapter insuranceAdapter = new InsuranceAdapter(getContext(), this.mInsuranceCompanyList);
        this.mAdapter = insuranceAdapter;
        this.mInsuranceList.setAdapter((ListAdapter) insuranceAdapter);
    }

    @Override // com.texa.care.navigation.Screen
    public void onPause() {
        super.onPause();
        LinearLayout linearLayout = this.mContentLayout;
        if (linearLayout != null) {
            linearLayout.getViewTreeObserver().removeOnGlobalLayoutListener(this.mLayoutListener);
        }
        closeKeyboard();
        Utils.safeDispose(this.insuranceSub);
    }

    private void closeKeyboard() {
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        EditText editText = this.mSearch;
        if (editText != null) {
            inputMethodManager.hideSoftInputFromWindow(editText.getApplicationWindowToken(), 0);
        }
    }

    private void openKeyboard() {
        final Handler handler = new Handler();
        handler.postDelayed(new Runnable() { // from class: com.texa.careapp.app.schedule.addThreshold.SetInsuranceCompanyScreen.2
            @Override // java.lang.Runnable
            public void run() {
                if (SetInsuranceCompanyScreen.this.mSearch != null) {
                    SetInsuranceCompanyScreen.this.mSearch.requestFocus();
                }
                handler.postDelayed(this, 400L);
            }
        }, 400L);
    }

    private void setSearchWatcher() {
        this.mSearch.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.schedule.addThreshold.SetInsuranceCompanyScreen.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                SetInsuranceCompanyScreen.this.mAdapter.getFilter().filter(charSequence.toString());
            }
        });
    }

    private void onFocusChanged(boolean z) {
        if (z) {
            ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this.mSearch, 1);
        }
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return TAG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void insuranceCompanyClicked(int i) {
        Insurance insurance = (Insurance) this.mAdapter.getItem(i);
        this.insuranceThreshold.setInsuranceId(Integer.valueOf(insurance.getId()));
        getNavigator().goTo(new SetInsuranceDateThresholdScreen(this.insuranceThreshold, insurance, this.vehicleSelected));
    }

    private class InsuranceAdapter extends BaseAdapter implements Filterable {
        Context mContext;
        private List<Insurance> mDisplayedValues;
        TextView mInsuranceText;
        private List<Insurance> mOriginalValues;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        InsuranceAdapter(Context context, List<Insurance> list) {
            this.mOriginalValues = list;
            this.mDisplayedValues = list;
            this.mContext = context;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.mDisplayedValues.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.mDisplayedValues.get(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.insurance_company_list_item, viewGroup, false);
            }
            this.mInsuranceText = (TextView) view.findViewById(R.id.text_view_threshold_type);
            this.mInsuranceText.setText(this.mDisplayedValues.get(i).getName());
            return view;
        }

        @Override // android.widget.Filterable
        public Filter getFilter() {
            return new Filter() { // from class: com.texa.careapp.app.schedule.addThreshold.SetInsuranceCompanyScreen.InsuranceAdapter.1
                @Override // android.widget.Filter
                protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                    InsuranceAdapter.this.mDisplayedValues = (ArrayList) filterResults.values;
                    InsuranceAdapter.this.notifyDataSetChanged();
                }

                @Override // android.widget.Filter
                protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                    Filter.FilterResults filterResults = new Filter.FilterResults();
                    ArrayList arrayList = new ArrayList();
                    if (InsuranceAdapter.this.mOriginalValues == null) {
                        InsuranceAdapter.this.mOriginalValues = new ArrayList(InsuranceAdapter.this.mDisplayedValues);
                    }
                    if (charSequence == null || charSequence.length() == 0) {
                        filterResults.count = InsuranceAdapter.this.mOriginalValues.size();
                        filterResults.values = InsuranceAdapter.this.mOriginalValues;
                    } else {
                        String lowerCase = charSequence.toString().toLowerCase();
                        for (int i = 0; i < InsuranceAdapter.this.mOriginalValues.size(); i++) {
                            if (((Insurance) InsuranceAdapter.this.mOriginalValues.get(i)).getName().toLowerCase().startsWith(lowerCase.toString())) {
                                arrayList.add(new Insurance(((Insurance) InsuranceAdapter.this.mOriginalValues.get(i)).getId(), ((Insurance) InsuranceAdapter.this.mOriginalValues.get(i)).getName()));
                            }
                        }
                        filterResults.count = arrayList.size();
                        filterResults.values = arrayList;
                    }
                    return filterResults;
                }
            };
        }
    }
}
