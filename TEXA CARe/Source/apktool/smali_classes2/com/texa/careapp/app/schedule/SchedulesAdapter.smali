.class public Lcom/texa/careapp/app/schedule/SchedulesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SchedulesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final TYPE_HEADER:I

.field private final TYPE_NOT_HEADER:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/IScheduleModel;",
            ">;"
        }
    .end annotation
.end field

.field mBinderScheduleView:Lcom/texa/careapp/app/schedule/BinderScheduleView;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mNavigator:Lcom/texa/care/navigation/Navigator;

.field mScheduleDataManager:Lcom/texa/careapp/model/ScheduleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field vehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/texa/care/navigation/Navigator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/IScheduleModel;",
            ">;",
            "Lcom/texa/care/navigation/Navigator;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->TYPE_HEADER:I

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->TYPE_NOT_HEADER:I

    .line 60
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->list:Ljava/util/List;

    .line 61
    iput-object p2, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mNavigator:Lcom/texa/care/navigation/Navigator;

    .line 62
    invoke-virtual {p2}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/CareApplication;

    .line 63
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/schedule/SchedulesAdapter;)V

    return-void
.end method

.method private createAnimation(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;)Landroid/view/animation/Animation;
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 154
    new-instance v1, Lcom/texa/careapp/app/schedule/SchedulesAdapter$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/texa/careapp/app/schedule/SchedulesAdapter$1;-><init>(Lcom/texa/careapp/app/schedule/SchedulesAdapter;Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method private deletableScheduleLongClicked(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/app/schedule/IScheduleViewHolder;)Z
    .locals 2

    .line 133
    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->isDeletable()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/texa/careapp/model/IScheduleModel;->setDeletable(Z)V

    .line 134
    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->isDeletable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isScheduleEditableByUser(Lcom/texa/careapp/model/IScheduleModel;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p2, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mDeleteButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    invoke-direct {p0, p2}, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->createAnimation(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;)Landroid/view/animation/Animation;

    move-result-object p1

    .line 138
    iget-object p2, p2, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mDeleteButton:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p2, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mUnDeletableButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 141
    invoke-direct {p0, p2}, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->createAnimation(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;)Landroid/view/animation/Animation;

    move-result-object p1

    .line 142
    iget-object p2, p2, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mUnDeletableButton:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p2}, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->notifyItemChanged(I)V

    :goto_0
    return v1
.end method

.method private expiredScheduleClicked(Lcom/texa/careapp/model/IScheduleModel;)V
    .locals 2

    .line 173
    sget-object v0, Lcom/texa/careapp/app/schedule/SchedulesAdapter$2;->$SwitchMap$com$texa$careapp$model$ScheduleType:[I

    invoke-interface {p1}, Lcom/texa/careapp/model/IScheduleModel;->getType()Lcom/texa/careapp/model/ScheduleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/model/ScheduleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v1, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;

    invoke-direct {v1, p1}, Lcom/texa/careapp/app/schedule/ResetExpiredScheduleScreen;-><init>(Lcom/texa/careapp/model/IScheduleModel;)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    goto :goto_0

    .line 175
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/texa/careapp/app/settings/tyres/SettingsTyresActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->vehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 177
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private notDeletableScheduleClicked(Lcom/texa/careapp/model/IScheduleModel;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mNavigator:Lcom/texa/care/navigation/Navigator;

    new-instance v1, Lcom/texa/careapp/app/schedule/AlertDialogScreen;

    invoke-direct {v1, p1}, Lcom/texa/careapp/app/schedule/AlertDialogScreen;-><init>(Lcom/texa/careapp/model/IScheduleModel;)V

    invoke-virtual {v0, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/texa/careapp/model/HeaderScheduleModel;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$onBindViewHolder$0$com-texa-careapp-app-schedule-SchedulesAdapter(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Landroid/view/View;)Z
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->deletableScheduleLongClicked(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/app/schedule/IScheduleViewHolder;)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$onBindViewHolder$1$com-texa-careapp-app-schedule-SchedulesAdapter(Lcom/texa/careapp/model/IScheduleModel;Landroid/view/View;)V
    .locals 1

    .line 108
    iget-object p2, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mScheduleDataManager:Lcom/texa/careapp/model/ScheduleDataManager;

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->vehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/texa/careapp/model/ScheduleDataManager;->deleteSchedule(Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/model/VehicleModel;)Z

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$2$com-texa-careapp-app-schedule-SchedulesAdapter(Lcom/texa/careapp/model/IScheduleModel;Landroid/view/View;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->expiredScheduleClicked(Lcom/texa/careapp/model/IScheduleModel;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$3$com-texa-careapp-app-schedule-SchedulesAdapter(Lcom/texa/careapp/model/IScheduleModel;Landroid/view/View;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->notDeletableScheduleClicked(Lcom/texa/careapp/model/IScheduleModel;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/texa/careapp/model/HeaderScheduleModel;

    if-eqz v0, :cond_0

    .line 97
    check-cast p1, Lcom/texa/careapp/app/schedule/IScheduleHeaderViewHolder;

    .line 98
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/model/HeaderScheduleModel;

    .line 99
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleHeaderViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/texa/careapp/model/HeaderScheduleModel;->getMTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 101
    :cond_0
    check-cast p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;

    .line 102
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/model/IScheduleModel;

    .line 104
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mBinderScheduleView:Lcom/texa/careapp/app/schedule/BinderScheduleView;

    invoke-virtual {v0, p1, p2}, Lcom/texa/careapp/app/schedule/BinderScheduleView;->bindView(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)Lcom/texa/careapp/app/schedule/IScheduleViewHolder;

    .line 107
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mBinderScheduleView:Lcom/texa/careapp/app/schedule/BinderScheduleView;

    new-instance v1, Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/schedule/SchedulesAdapter;Lcom/texa/careapp/model/IScheduleModel;Lcom/texa/careapp/app/schedule/IScheduleViewHolder;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/texa/careapp/app/schedule/BinderScheduleView;->setItemContainerButtonListener(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;Landroid/view/View$OnLongClickListener;)Lcom/texa/careapp/app/schedule/IScheduleViewHolder;

    .line 108
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mBinderScheduleView:Lcom/texa/careapp/app/schedule/BinderScheduleView;

    new-instance v1, Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/schedule/SchedulesAdapter;Lcom/texa/careapp/model/IScheduleModel;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/texa/careapp/app/schedule/BinderScheduleView;->setItemDeleteButtonListener(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;Landroid/view/View$OnClickListener;)Lcom/texa/careapp/app/schedule/IScheduleViewHolder;

    .line 109
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mBinderScheduleView:Lcom/texa/careapp/app/schedule/BinderScheduleView;

    new-instance v1, Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/schedule/SchedulesAdapter;Lcom/texa/careapp/model/IScheduleModel;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/texa/careapp/app/schedule/BinderScheduleView;->setItemRefreshButtonListener(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;Landroid/view/View$OnClickListener;)Lcom/texa/careapp/app/schedule/IScheduleViewHolder;

    .line 110
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mBinderScheduleView:Lcom/texa/careapp/app/schedule/BinderScheduleView;

    new-instance v1, Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lcom/texa/careapp/app/schedule/SchedulesAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/schedule/SchedulesAdapter;Lcom/texa/careapp/model/IScheduleModel;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/texa/careapp/app/schedule/BinderScheduleView;->setItemUndeletableButtonListener(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;Landroid/view/View$OnClickListener;)Lcom/texa/careapp/app/schedule/IScheduleViewHolder;

    .line 112
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p2, v0, :cond_1

    .line 113
    iget-object p2, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f080182

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 114
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f060073

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 115
    iget-object v1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mRefreshButton:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object p2, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 118
    iget-object v1, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0600f3

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 119
    iget-object v1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mUnDeletableButton:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object p2, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 122
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/SchedulesAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f060074

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 123
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mDeleteButton:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 71
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const p2, 0x7f0d009e

    .line 74
    new-instance v2, Lcom/texa/careapp/app/schedule/IScheduleHeaderViewHolder;

    invoke-static {v0, p2, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScheduleHeaderListItemBinding;

    invoke-direct {v2, p1}, Lcom/texa/careapp/app/schedule/IScheduleHeaderViewHolder;-><init>(Lcom/texa/careapp/databinding/ScheduleHeaderListItemBinding;)V

    return-object v2

    :cond_0
    const p2, 0x7f0d009f

    .line 77
    new-instance v2, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;

    invoke-static {v0, p2, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScheduleListItem2Binding;

    invoke-direct {v2, p1}, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;-><init>(Lcom/texa/careapp/databinding/ScheduleListItem2Binding;)V

    return-object v2
.end method
