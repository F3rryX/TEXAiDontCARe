package com.texa.careapp.app.onboarding.adapters;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.texa.care.R;
import com.texa.careapp.app.onboarding.dialogs.CountryScreenDialog;
import com.texa.careapp.databinding.ScreenDialogCountryItemBinding;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CountryDialogAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private List<CountryScreenDialog.CountryItem> list;
    private AdapterView.OnItemClickListener mOnItemClickListener;

    public CountryDialogAdapter(List<CountryScreenDialog.CountryItem> list) {
        this.list = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public CountryItemViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new CountryItemViewHolder((ScreenDialogCountryItemBinding) DataBindingUtil.inflate(LayoutInflater.from(viewGroup.getContext()), R.layout.screen_dialog_country_item, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ((CountryItemViewHolder) viewHolder).mName.setText(this.list.get(i).getVisualValue());
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.mOnItemClickListener = onItemClickListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onItemHolderClick(CountryItemViewHolder countryItemViewHolder) {
        AdapterView.OnItemClickListener onItemClickListener = this.mOnItemClickListener;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(null, countryItemViewHolder.itemView, countryItemViewHolder.getAdapterPosition(), countryItemViewHolder.getItemId());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    class CountryItemViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        private final CountryDialogAdapter mAdapter;
        final TextView mName;

        private CountryItemViewHolder(ScreenDialogCountryItemBinding screenDialogCountryItemBinding, CountryDialogAdapter countryDialogAdapter) {
            super(screenDialogCountryItemBinding.getRoot());
            this.mAdapter = countryDialogAdapter;
            this.mName = screenDialogCountryItemBinding.screenDialogCountryItem;
            screenDialogCountryItemBinding.getRoot().setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.mAdapter.onItemHolderClick(this);
        }
    }
}
