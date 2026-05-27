package com.texa.careapp.app.schedule;

import android.content.Context;
import android.view.View;
import androidx.core.content.res.ResourcesCompat;
import com.texa.care.R;
import com.texa.careapp.model.IScheduleModel;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleObserver;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class BinderScheduleView {
    private final SimpleDateFormat formatDays = new SimpleDateFormat("dd", Locale.getDefault());
    private final SimpleDateFormat formatMonth = new SimpleDateFormat("MMM", Locale.getDefault());
    private final SimpleDateFormat formatYear = new SimpleDateFormat("yyyy", Locale.getDefault());
    Context mContext;
    VehicleObserver vehicleObserver;

    public BinderScheduleView(Context context, VehicleObserver vehicleObserver) {
        this.mContext = context;
        this.vehicleObserver = vehicleObserver;
    }

    public IScheduleViewHolder setItemRefreshButtonListener(IScheduleViewHolder iScheduleViewHolder, IScheduleModel iScheduleModel, View.OnClickListener onClickListener) {
        if (iScheduleModel.getExpiringStatus() == -1 && Utils.isScheduleEditableByUser(iScheduleModel)) {
            iScheduleViewHolder.mContainer.setOnClickListener(onClickListener);
        } else {
            iScheduleViewHolder.mContainer.setOnClickListener(null);
        }
        return iScheduleViewHolder;
    }

    public IScheduleViewHolder setItemDeleteButtonListener(IScheduleViewHolder iScheduleViewHolder, IScheduleModel iScheduleModel, View.OnClickListener onClickListener) {
        if (Utils.isScheduleEditableByUser(iScheduleModel)) {
            iScheduleViewHolder.mDeleteButton.setOnClickListener(onClickListener);
        } else {
            iScheduleViewHolder.mDeleteButton.setOnClickListener(null);
        }
        return iScheduleViewHolder;
    }

    public IScheduleViewHolder setItemContainerButtonListener(IScheduleViewHolder iScheduleViewHolder, IScheduleModel iScheduleModel, View.OnLongClickListener onLongClickListener) {
        iScheduleViewHolder.mContainer.setOnLongClickListener(onLongClickListener);
        return iScheduleViewHolder;
    }

    public IScheduleViewHolder setItemUndeletableButtonListener(IScheduleViewHolder iScheduleViewHolder, IScheduleModel iScheduleModel, View.OnClickListener onClickListener) {
        if (Utils.isScheduleEditableByUser(iScheduleModel)) {
            iScheduleViewHolder.mUnDeletableButton.setOnClickListener(null);
        } else {
            iScheduleViewHolder.mUnDeletableButton.setOnClickListener(onClickListener);
        }
        return iScheduleViewHolder;
    }

    public IScheduleViewHolder bindView(IScheduleViewHolder iScheduleViewHolder, IScheduleModel iScheduleModel) {
        setTitle(iScheduleViewHolder, iScheduleModel);
        setDescription(iScheduleViewHolder, iScheduleModel);
        setCircle(iScheduleViewHolder, iScheduleModel);
        setRefreshLabel(iScheduleViewHolder, iScheduleModel);
        setDeleteLabel(iScheduleViewHolder, iScheduleModel);
        return iScheduleViewHolder;
    }

    private void setTitle(IScheduleViewHolder iScheduleViewHolder, IScheduleModel iScheduleModel) {
        iScheduleViewHolder.mTitle.setText(Utils.getScheduleTitle(iScheduleModel, this.mContext));
        if (iScheduleModel.getExpiringStatus() == -1) {
            iScheduleViewHolder.mTitle.setTextColor(Utils.getColorResource(this.mContext, R.color.error));
        } else {
            iScheduleViewHolder.mTitle.setTextColor(Utils.getColorResource(this.mContext, R.color.secondary_text));
        }
    }

    private void setDescription(IScheduleViewHolder iScheduleViewHolder, IScheduleModel iScheduleModel) {
        iScheduleViewHolder.mDescription.setText(iScheduleModel.getDesciption());
    }

    private void setCircle(IScheduleViewHolder iScheduleViewHolder, IScheduleModel iScheduleModel) {
        setCircleBackground(iScheduleViewHolder, iScheduleModel);
        setCircleLabel(iScheduleViewHolder, iScheduleModel);
    }

    private void setCircleBackground(IScheduleViewHolder iScheduleViewHolder, IScheduleModel iScheduleModel) {
        if (iScheduleModel.getExpiringStatus() == -1) {
            iScheduleViewHolder.mCircleBackground.setBackground(ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.schedule_circle_error_background, null));
        } else {
            iScheduleViewHolder.mCircleBackground.setBackground(ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.schedule_circle_background, null));
        }
    }

    private void setCircleLabel(IScheduleViewHolder iScheduleViewHolder, IScheduleModel iScheduleModel) {
        setCircleLabelView(iScheduleViewHolder, iScheduleModel);
        setCircleLabelValues(iScheduleViewHolder, iScheduleModel);
    }

    private void setCircleLabelView(IScheduleViewHolder iScheduleViewHolder, IScheduleModel iScheduleModel) {
        int expiringStatus = iScheduleModel.getExpiringStatus();
        if (expiringStatus == -1) {
            iScheduleViewHolder.mBetweenText.setVisibility(8);
            iScheduleViewHolder.mScheduleValue.setVisibility(8);
            iScheduleViewHolder.mScheduleMeasure.setVisibility(8);
            return;
        }
        if (expiringStatus == 0) {
            iScheduleViewHolder.mBetweenText.setVisibility(0);
            iScheduleViewHolder.mBetweenText.setTextColor(Utils.getColorResource(this.mContext, R.color.secondary_text));
            iScheduleViewHolder.mScheduleValue.setVisibility(0);
            iScheduleViewHolder.mScheduleValue.setTextColor(Utils.getColorResource(this.mContext, R.color.warning));
            iScheduleViewHolder.mScheduleMeasure.setVisibility(0);
            iScheduleViewHolder.mScheduleMeasure.setTextColor(Utils.getColorResource(this.mContext, R.color.secondary_text));
            return;
        }
        if (expiringStatus == 1) {
            iScheduleViewHolder.mBetweenText.setVisibility(0);
            iScheduleViewHolder.mBetweenText.setTextColor(Utils.getColorResource(this.mContext, R.color.secondary_text));
            iScheduleViewHolder.mScheduleValue.setVisibility(0);
            iScheduleViewHolder.mScheduleValue.setTextColor(Utils.getColorResource(this.mContext, R.color.schedule_green_text));
            iScheduleViewHolder.mScheduleMeasure.setVisibility(0);
            iScheduleViewHolder.mScheduleMeasure.setTextColor(Utils.getColorResource(this.mContext, R.color.secondary_text));
            return;
        }
        if (expiringStatus == 2) {
            if (iScheduleModel.getExpireDate() != null) {
                iScheduleViewHolder.mBetweenText.setVisibility(0);
                iScheduleViewHolder.mBetweenText.setTextColor(Utils.getColorResource(this.mContext, R.color.schedule_green_text));
                iScheduleViewHolder.mScheduleValue.setVisibility(0);
                iScheduleViewHolder.mScheduleValue.setTextColor(Utils.getColorResource(this.mContext, R.color.schedule_green_text));
                iScheduleViewHolder.mScheduleMeasure.setVisibility(0);
                iScheduleViewHolder.mScheduleMeasure.setTextColor(Utils.getColorResource(this.mContext, R.color.schedule_green_text));
                return;
            }
            if (iScheduleModel.getExpireOdo() != null) {
                iScheduleViewHolder.mBetweenText.setVisibility(0);
                iScheduleViewHolder.mBetweenText.setTextColor(Utils.getColorResource(this.mContext, R.color.secondary_text));
                iScheduleViewHolder.mScheduleValue.setVisibility(0);
                iScheduleViewHolder.mScheduleValue.setTextColor(Utils.getColorResource(this.mContext, R.color.schedule_green_text));
                iScheduleViewHolder.mScheduleMeasure.setVisibility(0);
                iScheduleViewHolder.mScheduleMeasure.setTextColor(Utils.getColorResource(this.mContext, R.color.secondary_text));
                return;
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException();
    }

    private void setCircleLabelValues(IScheduleViewHolder iScheduleViewHolder, IScheduleModel iScheduleModel) {
        if (iScheduleModel.getExpireDate() != null) {
            setCircleLabelValuesForDataSchedule(iScheduleViewHolder, iScheduleModel);
        } else {
            if (iScheduleModel.getExpireOdo() != null) {
                setCircleLabelValuesForOdometerSchedule(iScheduleViewHolder, iScheduleModel);
                return;
            }
            throw new IllegalArgumentException();
        }
    }

    private void setCircleLabelValuesForDataSchedule(IScheduleViewHolder iScheduleViewHolder, IScheduleModel iScheduleModel) {
        int expiringStatus = iScheduleModel.getExpiringStatus();
        if (expiringStatus == -1) {
            iScheduleViewHolder.mBetweenText.setText("");
            iScheduleViewHolder.mScheduleValue.setText("!");
            iScheduleViewHolder.mScheduleMeasure.setText("");
            return;
        }
        if (expiringStatus != 0 && expiringStatus != 1) {
            if (expiringStatus == 2) {
                Date expireDate = iScheduleModel.getExpireDate();
                iScheduleViewHolder.mBetweenText.setText(this.formatDays.format(expireDate));
                iScheduleViewHolder.mScheduleValue.setText(this.formatMonth.format(expireDate).toUpperCase());
                iScheduleViewHolder.mScheduleMeasure.setText(this.formatYear.format(expireDate));
                return;
            }
            throw new IllegalArgumentException();
        }
        long jDaysToExpire = iScheduleModel.daysToExpire();
        String string = this.mContext.getString(R.string.days);
        if (jDaysToExpire > 30) {
            jDaysToExpire /= 30;
            string = this.mContext.getString(R.string.months);
        }
        iScheduleViewHolder.mBetweenText.setText(R.string.between);
        iScheduleViewHolder.mScheduleValue.setText(String.valueOf(jDaysToExpire));
        iScheduleViewHolder.mScheduleMeasure.setText(string);
    }

    private void setCircleLabelValuesForOdometerSchedule(IScheduleViewHolder iScheduleViewHolder, IScheduleModel iScheduleModel) {
        if (iScheduleModel.getExpiringStatus() == -1) {
            iScheduleViewHolder.mBetweenText.setText("");
            iScheduleViewHolder.mScheduleValue.setText("!");
            iScheduleViewHolder.mScheduleMeasure.setText("");
        } else {
            if (this.vehicleObserver.getSelectedVehicle() != null) {
                int iNonNegativeSubtraction = Utils.nonNegativeSubtraction(iScheduleModel.getExpireOdo().intValue(), this.vehicleObserver.getSelectedVehicle().getOdometer().intValue());
                iScheduleViewHolder.mBetweenText.setText(R.string.between);
                iScheduleViewHolder.mScheduleValue.setText(String.valueOf(iNonNegativeSubtraction));
                iScheduleViewHolder.mScheduleMeasure.setText(R.string.km_string);
                return;
            }
            iScheduleViewHolder.mBetweenText.setText("");
            iScheduleViewHolder.mScheduleValue.setText("!");
            iScheduleViewHolder.mScheduleMeasure.setText("");
        }
    }

    private void setRefreshLabel(IScheduleViewHolder iScheduleViewHolder, IScheduleModel iScheduleModel) {
        if (iScheduleModel.getExpiringStatus() == -1) {
            if (Utils.isScheduleEditableByUser(iScheduleModel)) {
                iScheduleViewHolder.mRefreshButton.setVisibility(0);
                return;
            } else {
                iScheduleViewHolder.mRefreshButton.setVisibility(8);
                return;
            }
        }
        iScheduleViewHolder.mRefreshButton.setVisibility(8);
    }

    private void setDeleteLabel(IScheduleViewHolder iScheduleViewHolder, IScheduleModel iScheduleModel) {
        if (iScheduleModel.isDeletable()) {
            if (Utils.isScheduleEditableByUser(iScheduleModel)) {
                iScheduleViewHolder.mDeleteButton.setVisibility(0);
                iScheduleViewHolder.mUnDeletableButton.setVisibility(8);
                return;
            } else {
                iScheduleViewHolder.mDeleteButton.setVisibility(8);
                iScheduleViewHolder.mUnDeletableButton.setVisibility(0);
                return;
            }
        }
        iScheduleViewHolder.mDeleteButton.setVisibility(8);
        iScheduleViewHolder.mUnDeletableButton.setVisibility(8);
    }
}
