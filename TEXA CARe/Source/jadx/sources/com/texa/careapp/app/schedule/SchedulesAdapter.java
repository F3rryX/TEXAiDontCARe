package com.texa.careapp.app.schedule;

import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.core.content.ContextCompat;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.texa.care.R;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.settings.tyres.SettingsTyresActivity;
import com.texa.careapp.databinding.ScheduleHeaderListItemBinding;
import com.texa.careapp.databinding.ScheduleListItem2Binding;
import com.texa.careapp.model.HeaderScheduleModel;
import com.texa.careapp.model.IScheduleModel;
import com.texa.careapp.model.ScheduleDataManager;
import com.texa.careapp.model.ScheduleType;
import com.texa.careapp.model.VehicleModel;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.utils.VehicleObserver;
import java.util.List;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class SchedulesAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private final int TYPE_HEADER = 0;
    private final int TYPE_NOT_HEADER = 1;
    private List<IScheduleModel> list;

    @Inject
    BinderScheduleView mBinderScheduleView;
    private Context mContext;
    private final Navigator mNavigator;

    @Inject
    ScheduleDataManager mScheduleDataManager;

    @Inject
    VehicleObserver vehicleObserver;

    public SchedulesAdapter(List<IScheduleModel> list, Navigator navigator) {
        this.list = list;
        this.mNavigator = navigator;
        CareApplication careApplication = (CareApplication) navigator.getApplication();
        this.mContext = careApplication.getApplicationContext();
        careApplication.component().inject(this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(viewGroup.getContext());
        if (i == 0) {
            return new IScheduleHeaderViewHolder((ScheduleHeaderListItemBinding) DataBindingUtil.inflate(layoutInflaterFrom, R.layout.schedule_header_list_item, viewGroup, false));
        }
        return new IScheduleViewHolder((ScheduleListItem2Binding) DataBindingUtil.inflate(layoutInflaterFrom, R.layout.schedule_list_item2, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return this.list.get(i) instanceof HeaderScheduleModel ? 0 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (this.list.get(i) instanceof HeaderScheduleModel) {
            ((IScheduleHeaderViewHolder) viewHolder).mTitle.setText(((HeaderScheduleModel) this.list.get(i)).getMTitle());
            return;
        }
        final IScheduleViewHolder iScheduleViewHolder = (IScheduleViewHolder) viewHolder;
        final IScheduleModel iScheduleModel = this.list.get(i);
        this.mBinderScheduleView.bindView(iScheduleViewHolder, iScheduleModel);
        this.mBinderScheduleView.setItemContainerButtonListener(iScheduleViewHolder, iScheduleModel, new View.OnLongClickListener() { // from class: com.texa.careapp.app.schedule.SchedulesAdapter$$ExternalSyntheticLambda3
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.m348xca586927(iScheduleModel, iScheduleViewHolder, view);
            }
        });
        this.mBinderScheduleView.setItemDeleteButtonListener(iScheduleViewHolder, iScheduleModel, new View.OnClickListener() { // from class: com.texa.careapp.app.schedule.SchedulesAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m349x4230b06(iScheduleModel, view);
            }
        });
        this.mBinderScheduleView.setItemRefreshButtonListener(iScheduleViewHolder, iScheduleModel, new View.OnClickListener() { // from class: com.texa.careapp.app.schedule.SchedulesAdapter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m350x3dedace5(iScheduleModel, view);
            }
        });
        this.mBinderScheduleView.setItemUndeletableButtonListener(iScheduleViewHolder, iScheduleModel, new View.OnClickListener() { // from class: com.texa.careapp.app.schedule.SchedulesAdapter$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m351x77b84ec4(iScheduleModel, view);
            }
        });
        if (Build.VERSION.SDK_INT < 21) {
            Drawable drawable = ContextCompat.getDrawable(this.mContext, R.drawable.schedule_text_background);
            drawable.setColorFilter(Utils.getColorResource(this.mContext, R.color.edit_text_light_gray), PorterDuff.Mode.MULTIPLY);
            iScheduleViewHolder.mRefreshButton.setBackground(drawable);
            Drawable drawable2 = ContextCompat.getDrawable(this.mContext, R.drawable.schedule_text_background);
            drawable2.setColorFilter(Utils.getColorResource(this.mContext, R.color.warning), PorterDuff.Mode.MULTIPLY);
            iScheduleViewHolder.mUnDeletableButton.setBackground(drawable2);
            Drawable drawable3 = ContextCompat.getDrawable(this.mContext, R.drawable.schedule_text_background);
            drawable3.setColorFilter(Utils.getColorResource(this.mContext, R.color.error), PorterDuff.Mode.MULTIPLY);
            iScheduleViewHolder.mDeleteButton.setBackground(drawable3);
        }
    }

    /* JADX INFO: renamed from: lambda$onBindViewHolder$0$com-texa-careapp-app-schedule-SchedulesAdapter, reason: not valid java name */
    public /* synthetic */ boolean m348xca586927(IScheduleModel iScheduleModel, IScheduleViewHolder iScheduleViewHolder, View view) {
        return deletableScheduleLongClicked(iScheduleModel, iScheduleViewHolder);
    }

    /* JADX INFO: renamed from: lambda$onBindViewHolder$1$com-texa-careapp-app-schedule-SchedulesAdapter, reason: not valid java name */
    public /* synthetic */ void m349x4230b06(IScheduleModel iScheduleModel, View view) {
        this.mScheduleDataManager.deleteSchedule(iScheduleModel, this.vehicleObserver.getSelectedVehicle());
    }

    /* JADX INFO: renamed from: lambda$onBindViewHolder$2$com-texa-careapp-app-schedule-SchedulesAdapter, reason: not valid java name */
    public /* synthetic */ void m350x3dedace5(IScheduleModel iScheduleModel, View view) {
        expiredScheduleClicked(iScheduleModel);
    }

    /* JADX INFO: renamed from: lambda$onBindViewHolder$3$com-texa-careapp-app-schedule-SchedulesAdapter, reason: not valid java name */
    public /* synthetic */ void m351x77b84ec4(IScheduleModel iScheduleModel, View view) {
        notDeletableScheduleClicked(iScheduleModel);
    }

    private void notDeletableScheduleClicked(IScheduleModel iScheduleModel) {
        this.mNavigator.goTo(new AlertDialogScreen(iScheduleModel));
    }

    private boolean deletableScheduleLongClicked(IScheduleModel iScheduleModel, IScheduleViewHolder iScheduleViewHolder) {
        iScheduleModel.setDeletable(!iScheduleModel.isDeletable());
        if (iScheduleModel.isDeletable()) {
            if (Utils.isScheduleEditableByUser(iScheduleModel)) {
                iScheduleViewHolder.mDeleteButton.setVisibility(0);
                iScheduleViewHolder.mDeleteButton.startAnimation(createAnimation(iScheduleViewHolder));
            } else {
                iScheduleViewHolder.mUnDeletableButton.setVisibility(0);
                iScheduleViewHolder.mUnDeletableButton.startAnimation(createAnimation(iScheduleViewHolder));
            }
        } else {
            notifyItemChanged(iScheduleViewHolder.getAdapterPosition());
        }
        return true;
    }

    private Animation createAnimation(final IScheduleViewHolder iScheduleViewHolder) {
        final Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.mContext, R.anim.bounce_animation);
        animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.texa.careapp.app.schedule.SchedulesAdapter.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                SchedulesAdapter.this.notifyItemChanged(iScheduleViewHolder.getAdapterPosition());
                animationLoadAnimation.setAnimationListener(null);
            }
        });
        return animationLoadAnimation;
    }

    /* JADX INFO: renamed from: com.texa.careapp.app.schedule.SchedulesAdapter$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$careapp$model$ScheduleType;

        static {
            int[] iArr = new int[ScheduleType.values().length];
            $SwitchMap$com$texa$careapp$model$ScheduleType = iArr;
            try {
                iArr[ScheduleType.TYRES_SWAP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    private void expiredScheduleClicked(IScheduleModel iScheduleModel) {
        if (AnonymousClass2.$SwitchMap$com$texa$careapp$model$ScheduleType[iScheduleModel.getType().ordinal()] == 1) {
            Intent intent = new Intent(this.mContext, (Class<?>) SettingsTyresActivity.class);
            intent.putExtra(VehicleModel.COLUMN_UID, this.vehicleObserver.getSelectedVehicle().getUid() + "");
            intent.addFlags(268435456);
            this.mContext.startActivity(intent);
            return;
        }
        this.mNavigator.goTo(new ResetExpiredScheduleScreen(iScheduleModel));
    }
}
