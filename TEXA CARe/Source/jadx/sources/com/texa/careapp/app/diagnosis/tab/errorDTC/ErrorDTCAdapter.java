package com.texa.careapp.app.diagnosis.tab.errorDTC;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.app.errorsDTC.LampStatus;
import com.texa.careapp.databinding.ErrorDtcHeaderItemBinding;
import com.texa.careapp.databinding.ErrorDtcItemBinding;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.views.RelativeTimeTextView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ErrorDTCAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private static final String TAG = "ErrorDTCAdapter";
    private Context mContext;
    private final int TYPE_HEADER = 0;
    private final List<LampStatus> mLampStatusList = new ArrayList();

    ErrorDTCAdapter(Context context) {
        this.mContext = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 0) {
            return new ErrorHeaderDTCViewHolder((ErrorDtcHeaderItemBinding) DataBindingUtil.inflate(LayoutInflater.from(viewGroup.getContext()), R.layout.error_dtc_header_item, viewGroup, false));
        }
        return new ErrorDTCViewHolder((ErrorDtcItemBinding) DataBindingUtil.inflate(LayoutInflater.from(viewGroup.getContext()), R.layout.error_dtc_item, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (viewHolder instanceof ErrorHeaderDTCViewHolder) {
            ((ErrorHeaderDTCViewHolder) viewHolder).mTitle.setText(this.mLampStatusList.get(i).getHeaderTitle());
            return;
        }
        if (viewHolder instanceof ErrorDTCViewHolder) {
            ErrorDTCViewHolder errorDTCViewHolder = (ErrorDTCViewHolder) viewHolder;
            LampStatus lampStatus = this.mLampStatusList.get(i);
            if (lampStatus.getDataId() != null) {
                errorDTCViewHolder.mLampColorStatus.setBackgroundResource(lampStatus.getColor().intValue());
                errorDTCViewHolder.mLampInfo.setText(Utils.getLampLabel(this.mContext, lampStatus));
                errorDTCViewHolder.mLampImg.setImageResource(Constants.LAMP_STATUS_IMAGES.get(lampStatus.getDataId().longValue()).intValue());
            }
            if (lampStatus.getTime() != null) {
                errorDTCViewHolder.mLampTimeStamp.setReferenceTime(lampStatus.getTime().getTime());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.mLampStatusList.get(i).getHeaderTitle() != null ? 0 : 1;
    }

    public void update(List<LampStatus> list) {
        this.mLampStatusList.clear();
        this.mLampStatusList.addAll(list);
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mLampStatusList.size();
    }

    static class ErrorDTCViewHolder extends RecyclerView.ViewHolder {
        final View mLampColorStatus;
        final ImageView mLampImg;
        final TextView mLampInfo;
        final RelativeTimeTextView mLampTimeStamp;

        ErrorDTCViewHolder(ErrorDtcItemBinding errorDtcItemBinding) {
            super(errorDtcItemBinding.getRoot());
            this.mLampColorStatus = errorDtcItemBinding.errorDtcStatusLine;
            this.mLampInfo = errorDtcItemBinding.errorDtcInfoTextview;
            this.mLampTimeStamp = errorDtcItemBinding.errorDtcLastUpdateTextview;
            this.mLampImg = errorDtcItemBinding.errorDtcImgLamp;
        }
    }

    static class ErrorHeaderDTCViewHolder extends RecyclerView.ViewHolder {
        final TextView mTitle;

        ErrorHeaderDTCViewHolder(ErrorDtcHeaderItemBinding errorDtcHeaderItemBinding) {
            super(errorDtcHeaderItemBinding.getRoot());
            this.mTitle = errorDtcHeaderItemBinding.titleHeader;
        }
    }
}
