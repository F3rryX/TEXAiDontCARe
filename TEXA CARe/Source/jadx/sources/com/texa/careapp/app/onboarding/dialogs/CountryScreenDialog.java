package com.texa.careapp.app.onboarding.dialogs;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.onboarding.adapters.CountryDialogAdapter;
import com.texa.careapp.databinding.ScreenDialogCountryBinding;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public class CountryScreenDialog extends Screen {
    private List<CountryItem> countries;
    private CountryDialogAdapter mAdapter;

    @Inject
    protected EventBus mEventBus;
    private EditText mSearch;

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.screen_dialog_country;
    }

    public CountryScreenDialog(CareApplication careApplication) {
        careApplication.component().inject(this);
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ScreenDialogCountryBinding screenDialogCountryBinding = (ScreenDialogCountryBinding) DataBindingUtil.bind(view);
        this.mSearch = screenDialogCountryBinding.screenDialogCountrySearch;
        setupUI(screenDialogCountryBinding.screenDialogCountryLay);
        this.countries = getCountries("");
        this.mAdapter = new CountryDialogAdapter(this.countries);
        screenDialogCountryBinding.screenDialogCountryRecycler.setLayoutManager(new LinearLayoutManager(getContext()));
        screenDialogCountryBinding.screenDialogCountryRecycler.setAdapter(this.mAdapter);
        screenDialogCountryBinding.screenDialogCountryRecycler.setHasFixedSize(true);
        screenDialogCountryBinding.screenDialogCountryRecycler.setItemAnimator(new DefaultItemAnimator());
        screenDialogCountryBinding.screenDialogCountryCancel.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.onboarding.dialogs.CountryScreenDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m317x573a22e1(view2);
            }
        });
        this.mAdapter.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.texa.careapp.app.onboarding.dialogs.CountryScreenDialog$$ExternalSyntheticLambda2
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i, long j) {
                this.f$0.m318x11afc362(adapterView, view2, i, j);
            }
        });
        this.mSearch.addTextChangedListener(new TextWatcher() { // from class: com.texa.careapp.app.onboarding.dialogs.CountryScreenDialog.1
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
                CountryScreenDialog.this.updateList();
            }
        });
        this.mSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.texa.careapp.app.onboarding.dialogs.CountryScreenDialog$$ExternalSyntheticLambda3
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return this.f$0.m319xcc2563e3(textView, i, keyEvent);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-dialogs-CountryScreenDialog, reason: not valid java name */
    public /* synthetic */ void m317x573a22e1(View view) {
        getNavigator().goBack();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-onboarding-dialogs-CountryScreenDialog, reason: not valid java name */
    public /* synthetic */ void m318x11afc362(AdapterView adapterView, View view, int i, long j) {
        this.mEventBus.post(new CountrySelectedEvent(this.countries.get(i)));
        getNavigator().goBack();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$2$com-texa-careapp-app-onboarding-dialogs-CountryScreenDialog, reason: not valid java name */
    public /* synthetic */ boolean m319xcc2563e3(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 3) {
            return false;
        }
        updateList();
        closeKeyboard(textView);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateList() {
        this.countries.clear();
        this.countries.addAll(getCountries(getSearchText()));
        this.mAdapter.notifyDataSetChanged();
    }

    private List<CountryItem> getCountries(String str) {
        Locale[] availableLocales = Locale.getAvailableLocales();
        ArrayList arrayList = new ArrayList();
        for (Locale locale : availableLocales) {
            String displayCountry = locale.getDisplayCountry();
            if (displayCountry.length() > 0 && displayCountry.toLowerCase().contains(str.toLowerCase()) && !arrayList.contains(new CountryItem(displayCountry, locale.getCountry()))) {
                arrayList.add(new CountryItem(displayCountry, locale.getCountry()));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private void closeKeyboard(View view) {
        ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    private void setupUI(View view) {
        if (!(view instanceof EditText)) {
            view.setOnTouchListener(new View.OnTouchListener() { // from class: com.texa.careapp.app.onboarding.dialogs.CountryScreenDialog$$ExternalSyntheticLambda1
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    return this.f$0.m320xe0a6b765(view2, motionEvent);
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

    /* JADX INFO: renamed from: lambda$setupUI$3$com-texa-careapp-app-onboarding-dialogs-CountryScreenDialog, reason: not valid java name */
    public /* synthetic */ boolean m320xe0a6b765(View view, MotionEvent motionEvent) {
        closeKeyboard(view);
        return false;
    }

    private String getSearchText() {
        Editable text = this.mSearch.getText();
        return text != null ? text.toString() : "";
    }

    public class CountrySelectedEvent {
        private CountryItem country;

        public CountryItem getCountry() {
            return this.country;
        }

        CountrySelectedEvent(CountryItem countryItem) {
            this.country = countryItem;
        }
    }

    public class CountryItem implements Comparable<CountryItem> {
        String value;
        String visualValue;

        protected boolean canEqual(Object obj) {
            return obj instanceof CountryItem;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CountryItem)) {
                return false;
            }
            CountryItem countryItem = (CountryItem) obj;
            if (!countryItem.canEqual(this)) {
                return false;
            }
            String visualValue = getVisualValue();
            String visualValue2 = countryItem.getVisualValue();
            if (visualValue != null ? !visualValue.equals(visualValue2) : visualValue2 != null) {
                return false;
            }
            String value = getValue();
            String value2 = countryItem.getValue();
            return value != null ? value.equals(value2) : value2 == null;
        }

        public int hashCode() {
            String visualValue = getVisualValue();
            int iHashCode = visualValue == null ? 43 : visualValue.hashCode();
            String value = getValue();
            return ((iHashCode + 59) * 59) + (value != null ? value.hashCode() : 43);
        }

        public void setValue(String str) {
            this.value = str;
        }

        public void setVisualValue(String str) {
            this.visualValue = str;
        }

        public String toString() {
            return "CountryScreenDialog.CountryItem(visualValue=" + getVisualValue() + ", value=" + getValue() + ")";
        }

        public CountryItem(String str, String str2) {
            this.visualValue = str;
            this.value = str2;
        }

        public String getVisualValue() {
            return this.visualValue;
        }

        public String getValue() {
            return this.value;
        }

        @Override // java.lang.Comparable
        public int compareTo(CountryItem countryItem) {
            return getVisualValue().toLowerCase().compareTo(countryItem.getVisualValue().toLowerCase());
        }
    }

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return CountryScreenDialog.class.getName();
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG_FULL_WIDTH;
    }
}
