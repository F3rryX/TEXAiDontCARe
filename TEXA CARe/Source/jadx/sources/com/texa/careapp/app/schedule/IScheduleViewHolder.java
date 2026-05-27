package com.texa.careapp.app.schedule;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.texa.careapp.databinding.ScheduleListItem2Binding;

/* JADX INFO: compiled from: SchedulesAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
class IScheduleViewHolder extends RecyclerView.ViewHolder {
    public TextView mBetweenText;
    public LinearLayout mCircleBackground;
    public View mContainer;
    public View mDeleteButton;
    public TextView mDescription;
    public View mRefreshButton;
    public AppCompatTextView mScheduleMeasure;
    public AppCompatTextView mScheduleValue;
    public AppCompatTextView mTitle;
    public View mUnDeletableButton;

    public IScheduleViewHolder(ScheduleListItem2Binding scheduleListItem2Binding) {
        super(scheduleListItem2Binding.getRoot());
        this.mScheduleValue = scheduleListItem2Binding.scheduleDay;
        this.mScheduleMeasure = scheduleListItem2Binding.scheduleMonth;
        this.mBetweenText = scheduleListItem2Binding.betweenText;
        this.mTitle = scheduleListItem2Binding.scheduleTitle;
        this.mDescription = scheduleListItem2Binding.scheduleDescription;
        this.mCircleBackground = scheduleListItem2Binding.scheduleListCircleBackground;
        this.mContainer = scheduleListItem2Binding.cardView;
        this.mDeleteButton = scheduleListItem2Binding.deleteButton;
        this.mRefreshButton = scheduleListItem2Binding.refreshButton;
        this.mUnDeletableButton = scheduleListItem2Binding.undeletableButton;
    }
}
