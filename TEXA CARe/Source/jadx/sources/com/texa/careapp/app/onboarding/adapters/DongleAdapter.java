package com.texa.careapp.app.onboarding.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.texa.care.R;
import com.texa.careapp.app.onboarding.DeviceInfoExt;
import com.texa.careapp.databinding.CareDongleItemBinding;
import com.texa.careapp.utils.UniqueList;

/* JADX INFO: loaded from: classes2.dex */
public class DongleAdapter extends RecyclerView.Adapter<DongleViewHolder> {
    private final Context mContext;
    private UniqueList<DeviceInfoExt> mDongles;
    private AdapterView.OnItemClickListener mOnItemClickListener;

    public DongleAdapter(Context context, UniqueList<DeviceInfoExt> uniqueList) {
        this.mContext = context;
        this.mDongles = uniqueList;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public DongleViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new DongleViewHolder((CareDongleItemBinding) DataBindingUtil.inflate(LayoutInflater.from(viewGroup.getContext()), R.layout.care_dongle_item, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mDongles.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(DongleViewHolder dongleViewHolder, int i) {
        DeviceInfoExt deviceInfoExt = this.mDongles.get(i);
        if (!deviceInfoExt.isSelectable()) {
            dongleViewHolder.mDongleModel.setText(String.format("%s", deviceInfoExt.getDeviceInfo().getName()));
            dongleViewHolder.mDongleSubtitle.setText(this.mContext.getString(R.string.dongle_adapter_subtitle_to_be_configured));
            dongleViewHolder.itemView.setEnabled(true);
            dongleViewHolder.mDongleItemIcon.setImageDrawable(ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.ic_discovery_care_not_configured, null));
            return;
        }
        dongleViewHolder.mDongleModel.setText(String.format("%s", deviceInfoExt.getDeviceInfo().getName()));
        dongleViewHolder.mDongleSubtitle.setText(this.mContext.getString(R.string.dongle_adapter_subtitle_configured));
        dongleViewHolder.itemView.setEnabled(true);
        dongleViewHolder.mDongleItemIcon.setImageDrawable(ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.ic_discovery_care_configured, null));
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.mOnItemClickListener = onItemClickListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onItemHolderClick(DongleViewHolder dongleViewHolder) {
        AdapterView.OnItemClickListener onItemClickListener = this.mOnItemClickListener;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(null, dongleViewHolder.itemView, dongleViewHolder.getAdapterPosition(), dongleViewHolder.getItemId());
        }
    }

    class DongleViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        private final DongleAdapter mAdapter;
        final ImageView mDongleItemIcon;
        final AppCompatTextView mDongleModel;
        final TextView mDongleSubtitle;
        final LinearLayout mVehicleDetails;

        DongleViewHolder(CareDongleItemBinding careDongleItemBinding, DongleAdapter dongleAdapter) {
            super(careDongleItemBinding.getRoot());
            this.mDongleModel = careDongleItemBinding.textViewCareDongleModel;
            this.mDongleSubtitle = careDongleItemBinding.textViewCareDongleSubtitle;
            this.mVehicleDetails = careDongleItemBinding.careDongleDetails;
            this.mDongleItemIcon = careDongleItemBinding.careDongleItemIcon;
            this.mAdapter = dongleAdapter;
            careDongleItemBinding.getRoot().setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.mAdapter.onItemHolderClick(this);
        }
    }
}
