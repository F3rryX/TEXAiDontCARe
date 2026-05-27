package com.texa.careapp.app.onboarding.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.onboarding.IVehicleModel;
import com.texa.careapp.databinding.ScreenDialogVehicleHeaderBinding;
import com.texa.careapp.databinding.ScreenDialogVehicleItemBinding;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.Utils;
import com.timehop.stickyheadersrecyclerview.StickyRecyclerHeadersAdapter;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class VehicleDialogAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements StickyRecyclerHeadersAdapter<RecyclerView.ViewHolder> {
    private final List<IVehicleModel> list;
    private final Context mContext;
    private AdapterView.OnItemClickListener mOnItemClickListener;

    public VehicleDialogAdapter(Context context, List<IVehicleModel> list) {
        this.mContext = context;
        this.list = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public IVehicleItemViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new IVehicleItemViewHolder((ScreenDialogVehicleItemBinding) DataBindingUtil.inflate(LayoutInflater.from(viewGroup.getContext()), R.layout.screen_dialog_vehicle_item, viewGroup, false), this);
    }

    @Override // com.timehop.stickyheadersrecyclerview.StickyRecyclerHeadersAdapter
    public long getHeaderId(int i) {
        return this.list.get(i).getHeaderId();
    }

    @Override // com.timehop.stickyheadersrecyclerview.StickyRecyclerHeadersAdapter
    public IVehicleHeaderViewHolder onCreateHeaderViewHolder(ViewGroup viewGroup) {
        return new IVehicleHeaderViewHolder((ScreenDialogVehicleHeaderBinding) DataBindingUtil.inflate(LayoutInflater.from(viewGroup.getContext()), R.layout.screen_dialog_vehicle_header, viewGroup, false));
    }

    @Override // com.timehop.stickyheadersrecyclerview.StickyRecyclerHeadersAdapter
    public void onBindHeaderViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        IVehicleHeaderViewHolder iVehicleHeaderViewHolder = (IVehicleHeaderViewHolder) viewHolder;
        String header = this.list.get(i).getHeader();
        if (header != null) {
            iVehicleHeaderViewHolder.mVehicleHeader.setText(header);
        } else {
            iVehicleHeaderViewHolder.mVehicleHeader.setText(R.string.vehicle_model_screen_dialog_my_vehicles);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        IVehicleItemViewHolder iVehicleItemViewHolder = (IVehicleItemViewHolder) viewHolder;
        IVehicleModel iVehicleModel = this.list.get(i);
        if (iVehicleModel.getHeaderId() == 1) {
            if (!Utils.isEmpty(iVehicleModel.getVehicleInfo())) {
                if (iVehicleModel.getVehicleInfo().contains(Constants.VEHICLE_DESCRIPTION_SEPARATOR)) {
                    String[] strArrSplit = iVehicleModel.getVehicleInfo().split(Pattern.quote(Constants.VEHICLE_DESCRIPTION_SEPARATOR));
                    if (strArrSplit.length == 2 && !Utils.isEmpty(strArrSplit[0]) && !Utils.isEmpty(strArrSplit[1])) {
                        iVehicleItemViewHolder.mModel.setText((strArrSplit[0] + " " + Utils.formatVehicleModel(strArrSplit[1])).toUpperCase());
                    } else {
                        iVehicleItemViewHolder.mModel.setText(iVehicleModel.getVehicleInfo().toUpperCase());
                    }
                } else {
                    iVehicleItemViewHolder.mModel.setText(iVehicleModel.getVehicleInfo().toUpperCase());
                }
            } else {
                TextView textView = iVehicleItemViewHolder.mModel;
                StringBuilder sb = new StringBuilder();
                VehicleModel vehicleModel = (VehicleModel) iVehicleModel;
                sb.append(vehicleModel.getBrandName());
                sb.append(" ");
                sb.append(Utils.formatVehicleModel(vehicleModel.getModelName()));
                textView.setText(sb.toString().toUpperCase());
            }
            iVehicleItemViewHolder.mModel.setTextColor(ResourcesCompat.getColor(this.mContext.getResources(), R.color.on_boarding_info, null));
            iVehicleItemViewHolder.mPlate.setVisibility(0);
            if (!Utils.isEmpty(iVehicleModel.getVehiclePlate())) {
                iVehicleItemViewHolder.mPlate.setText(iVehicleModel.getVehiclePlate());
                return;
            } else {
                iVehicleItemViewHolder.mPlate.setText(((VehicleModel) iVehicleModel).getPlate());
                return;
            }
        }
        iVehicleItemViewHolder.mModel.setText(iVehicleModel.getVehicleInfo().toUpperCase());
        iVehicleItemViewHolder.mModel.setTextColor(ResourcesCompat.getColor(this.mContext.getResources(), R.color.on_boarding_title, null));
        iVehicleItemViewHolder.mPlate.setVisibility(8);
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.mOnItemClickListener = onItemClickListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onItemHolderClick(IVehicleItemViewHolder iVehicleItemViewHolder) {
        AdapterView.OnItemClickListener onItemClickListener = this.mOnItemClickListener;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(null, iVehicleItemViewHolder.itemView, iVehicleItemViewHolder.getAdapterPosition(), iVehicleItemViewHolder.getItemId());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    class IVehicleItemViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        private final VehicleDialogAdapter mAdapter;
        final TextView mModel;
        final TextView mPlate;

        private IVehicleItemViewHolder(ScreenDialogVehicleItemBinding screenDialogVehicleItemBinding, VehicleDialogAdapter vehicleDialogAdapter) {
            super(screenDialogVehicleItemBinding.getRoot());
            this.mModel = screenDialogVehicleItemBinding.screenDialogVehicleItemModel;
            this.mPlate = screenDialogVehicleItemBinding.screenDialogVehicleItemPlate;
            this.mAdapter = vehicleDialogAdapter;
            screenDialogVehicleItemBinding.getRoot().setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.mAdapter.onItemHolderClick(this);
        }
    }

    class IVehicleHeaderViewHolder extends RecyclerView.ViewHolder {
        final TextView mVehicleHeader;

        IVehicleHeaderViewHolder(ScreenDialogVehicleHeaderBinding screenDialogVehicleHeaderBinding) {
            super(screenDialogVehicleHeaderBinding.getRoot());
            this.mVehicleHeader = screenDialogVehicleHeaderBinding.screenDialogVehicleHeader;
        }
    }
}
