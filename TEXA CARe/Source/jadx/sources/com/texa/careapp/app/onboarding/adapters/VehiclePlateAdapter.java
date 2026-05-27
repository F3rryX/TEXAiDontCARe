package com.texa.careapp.app.onboarding.adapters;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import android.widget.TextView;
import com.texa.care.R;
import com.texa.careapp.app.onboarding.OnBoardingActivity;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class VehiclePlateAdapter extends ArrayAdapter<String> {
    private final Context mContext;
    private final int mLayoutResourceId;
    private final List<String> mPlates;
    private final List<String> mPlates_All;
    private final List<String> mPlates_Suggestion;

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public VehiclePlateAdapter(Context context, int i, List<String> list) {
        super(context, i, list);
        this.mContext = context;
        this.mLayoutResourceId = i;
        this.mPlates = new ArrayList(list);
        this.mPlates_All = new ArrayList(list);
        this.mPlates_Suggestion = new ArrayList();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public int getCount() {
        return this.mPlates.size();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public String getItem(int i) {
        return this.mPlates.get(i);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = ((OnBoardingActivity) this.mContext).getLayoutInflater().inflate(this.mLayoutResourceId, viewGroup, false);
        }
        ((TextView) view.findViewById(R.id.adapter_autocomplete_plate_text)).setText(getItem(i));
        return view;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Filterable
    public Filter getFilter() {
        return new Filter() { // from class: com.texa.careapp.app.onboarding.adapters.VehiclePlateAdapter.1
            @Override // android.widget.Filter
            public String convertResultToString(Object obj) {
                return (String) obj;
            }

            @Override // android.widget.Filter
            protected Filter.FilterResults performFiltering(CharSequence charSequence) {
                if (charSequence != null) {
                    VehiclePlateAdapter.this.mPlates_Suggestion.clear();
                    for (String str : VehiclePlateAdapter.this.mPlates_All) {
                        if (str.toLowerCase().contains(charSequence.toString().toLowerCase())) {
                            VehiclePlateAdapter.this.mPlates_Suggestion.add(str);
                        }
                    }
                    Filter.FilterResults filterResults = new Filter.FilterResults();
                    filterResults.values = VehiclePlateAdapter.this.mPlates_Suggestion;
                    filterResults.count = VehiclePlateAdapter.this.mPlates_Suggestion.size();
                    return filterResults;
                }
                return new Filter.FilterResults();
            }

            @Override // android.widget.Filter
            protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                VehiclePlateAdapter.this.mPlates.clear();
                if (filterResults != null && filterResults.count > 0) {
                    for (Object obj : (List) filterResults.values) {
                        if (obj instanceof String) {
                            VehiclePlateAdapter.this.mPlates.add((String) obj);
                        }
                    }
                } else if (charSequence == null) {
                    VehiclePlateAdapter.this.mPlates.addAll(VehiclePlateAdapter.this.mPlates_All);
                }
                VehiclePlateAdapter.this.notifyDataSetChanged();
            }
        };
    }
}
