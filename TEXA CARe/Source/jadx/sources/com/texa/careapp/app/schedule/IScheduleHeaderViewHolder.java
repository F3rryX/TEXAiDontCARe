package com.texa.careapp.app.schedule;

import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.texa.careapp.databinding.ScheduleHeaderListItemBinding;

/* JADX INFO: compiled from: SchedulesAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
class IScheduleHeaderViewHolder extends RecyclerView.ViewHolder {
    public TextView mTitle;

    public IScheduleHeaderViewHolder(ScheduleHeaderListItemBinding scheduleHeaderListItemBinding) {
        super(scheduleHeaderListItemBinding.getRoot());
        this.mTitle = scheduleHeaderListItemBinding.titleHeader;
    }
}
