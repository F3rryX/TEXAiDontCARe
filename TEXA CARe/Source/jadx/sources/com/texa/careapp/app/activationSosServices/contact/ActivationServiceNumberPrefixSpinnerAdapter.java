package com.texa.careapp.app.activationSosServices.contact;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.texa.care.R;
import com.texa.careapp.utils.Iso2Phone;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class ActivationServiceNumberPrefixSpinnerAdapter implements SpinnerAdapter {
    private Comparator<String> ALPHABETICAL_ORDER;
    private Context mContext;
    private TextView mCountry;
    private HashMap<String, String> CountryHashMap = new HashMap<>();
    private List<String> mCountryList = new ArrayList();

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
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
    }

    @Override // android.widget.Adapter
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
    }

    public ActivationServiceNumberPrefixSpinnerAdapter(Context context) {
        final Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        Objects.requireNonNull(comparator);
        this.ALPHABETICAL_ORDER = new Comparator() { // from class: com.texa.careapp.app.activationSosServices.contact.ActivationServiceNumberPrefixSpinnerAdapter$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return comparator.compare((String) obj, (String) obj2);
            }
        };
        this.mContext = context;
        for (String str : Locale.getISOCountries()) {
            Locale locale = new Locale("", str);
            this.mCountryList.add(locale.getDisplayCountry());
            this.CountryHashMap.put(locale.getDisplayCountry(), locale.getCountry());
        }
        Collections.sort(this.mCountryList, this.ALPHABETICAL_ORDER);
    }

    @Override // android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.country_item, viewGroup, false);
        }
        TextView textView = (TextView) view.findViewById(R.id.text_view_item_country);
        this.mCountry = textView;
        textView.setText(String.format(this.mContext.getString(R.string.spinner_prefix_format), getPrefix(i), this.mCountryList.get(i)));
        return view;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.screen_activation_service_number_prefix_item, viewGroup, false);
        }
        TextView textView = (TextView) view.findViewById(R.id.screen_activation_service_number_prefix_item);
        this.mCountry = textView;
        textView.setText(getPrefix(i));
        return view;
    }

    public String getPrefix(int i) {
        return Iso2Phone.getPhone(getCountryCode(i));
    }

    public String getCountryCode(int i) {
        if (i < 0) {
            i = 0;
        }
        return this.CountryHashMap.get(this.mCountryList.get(i));
    }

    public int getCountryPosition(String str) {
        for (int i = 0; i < this.mCountryList.size(); i++) {
            if (this.mCountryList.get(i).equals(str)) {
                return i;
            }
        }
        return -1;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mCountryList.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.mCountryList.get(i);
    }

    @Override // android.widget.Adapter
    public boolean isEmpty() {
        return this.mCountryList.size() == 0;
    }
}
