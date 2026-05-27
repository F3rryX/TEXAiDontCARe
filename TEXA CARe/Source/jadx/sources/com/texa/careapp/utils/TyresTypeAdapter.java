package com.texa.careapp.utils;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.texa.care.R;

/* JADX INFO: loaded from: classes2.dex */
public class TyresTypeAdapter extends ArrayAdapter<String> {
    private Context mCtx;

    public TyresTypeAdapter(Context context, String[] strArr) {
        super(context, 0, strArr);
        this.mCtx = context;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return setDataOnView(i, view, viewGroup);
    }

    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        return setDataOnView(i, view, viewGroup);
    }

    private View setDataOnView(int i, View view, ViewGroup viewGroup) {
        String item = getItem(i);
        if (view == null) {
            view = LayoutInflater.from(this.mCtx).inflate(R.layout.item_tyres_type, viewGroup, false);
        }
        TextView textView = (TextView) view.findViewById(R.id.item_tyres_type_textView);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) item);
        textView.setText(spannableStringBuilder, TextView.BufferType.SPANNABLE);
        return view;
    }
}
