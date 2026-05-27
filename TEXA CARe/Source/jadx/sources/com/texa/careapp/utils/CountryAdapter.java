package com.texa.careapp.utils;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.texa.care.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class CountryAdapter implements SpinnerAdapter {
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

    public CountryAdapter(Context context) {
        this.mContext = context;
        for (String str : Locale.getISOCountries()) {
            Locale locale = new Locale("", str);
            this.mCountryList.add(locale.getDisplayCountry());
            this.CountryHashMap.put(locale.getDisplayCountry(), locale.getCountry());
        }
        Collections.sort(this.mCountryList, String.CASE_INSENSITIVE_ORDER);
    }

    @Override // android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.country_item, viewGroup, false);
        }
        TextView textView = (TextView) view.findViewById(R.id.text_view_item_country);
        this.mCountry = textView;
        textView.setText(this.mCountryList.get(i));
        return view;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.country_item, viewGroup, false);
        }
        TextView textView = (TextView) view.findViewById(R.id.text_view_item_country);
        this.mCountry = textView;
        textView.setText(this.mCountryList.get(i));
        return view;
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
