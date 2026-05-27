.class public Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;
.super Lcom/texa/care/navigation/Screen;
.source "InsertNewThresholdScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$ThresholdTypeAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InsertNewThresholdScreen"


# instance fields
.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDate:Lcom/texa/careapp/views/EditableDateView;

.field private mInsertNewThresholdActivity:Landroid/app/Activity;

.field private mSpinner:Landroid/widget/Spinner;

.field protected mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mVehicleModel:Lcom/texa/careapp/model/VehicleModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->mInsertNewThresholdActivity:Landroid/app/Activity;

    return-void
.end method

.method private addThresholdConfirmed()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->mDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {v0}, Lcom/texa/careapp/views/EditableDateView;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ThresholdModel$Type;

    .line 132
    iget-object v1, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->mDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {v1}, Lcom/texa/careapp/views/EditableDateView;->getDate()Ljava/util/Date;

    move-result-object v1

    .line 133
    iget-object v2, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/texa/careapp/model/VehicleModel;->getThreshold(Lcom/texa/careapp/model/ThresholdModel$Type;Landroid/content/Context;)Lcom/texa/careapp/model/ThresholdModel;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ThresholdModel;->setDate(Ljava/util/Date;)V

    .line 136
    :try_start_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/ThresholdModel;->saveForSync()V

    .line 137
    iget-object v0, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->mInsertNewThresholdActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not save the new threshold."

    .line 140
    invoke-static {v0, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 129
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->mInsertNewThresholdActivity:Landroid/app/Activity;

    const v1, 0x7f11090f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method private existThresholdWithType(Ljava/util/List;Lcom/texa/careapp/model/ThresholdModel$Type;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ThresholdModel;",
            ">;",
            "Lcom/texa/careapp/model/ThresholdModel$Type;",
            ")Z"
        }
    .end annotation

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ThresholdModel;

    .line 147
    invoke-virtual {v0}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private populateTypeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ThresholdModel$Type;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getThresholds()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_0
    sget-object v0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "vehicle model is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 104
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->AC_SUBSCR_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-direct {p0, v0, v2}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->existThresholdWithType(Ljava/util/List;Lcom/texa/careapp/model/ThresholdModel$Type;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->AC_SUBSCR_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_1
    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->PARK_SUBSCR_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-direct {p0, v0, v2}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->existThresholdWithType(Ljava/util/List;Lcom/texa/careapp/model/ThresholdModel$Type;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 108
    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->PARK_SUBSCR_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_2
    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->GARAGE_RENT_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-direct {p0, v0, v2}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->existThresholdWithType(Ljava/util/List;Lcom/texa/careapp/model/ThresholdModel$Type;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 110
    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->GARAGE_RENT_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_3
    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->INS_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-direct {p0, v0, v2}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->existThresholdWithType(Ljava/util/List;Lcom/texa/careapp/model/ThresholdModel$Type;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 112
    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->INS_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_4
    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->INS_2_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-direct {p0, v0, v2}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->existThresholdWithType(Ljava/util/List;Lcom/texa/careapp/model/ThresholdModel$Type;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 114
    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->INS_2_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_5
    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->CAR_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-direct {p0, v0, v2}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->existThresholdWithType(Ljava/util/List;Lcom/texa/careapp/model/ThresholdModel$Type;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 116
    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->CAR_PAYM_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_6
    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->HWY_PASS_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-direct {p0, v0, v2}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->existThresholdWithType(Ljava/util/List;Lcom/texa/careapp/model/ThresholdModel$Type;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 118
    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->HWY_PASS_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_7
    sget-object v2, Lcom/texa/careapp/model/ThresholdModel$Type;->ZTL_PASS_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-direct {p0, v0, v2}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->existThresholdWithType(Ljava/util/List;Lcom/texa/careapp/model/ThresholdModel$Type;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 120
    sget-object v0, Lcom/texa/careapp/model/ThresholdModel$Type;->ZTL_PASS_EXP:Lcom/texa/careapp/model/ThresholdModel$Type;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v1
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;)V

    .line 63
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenInsertNewThresholdBinding;

    .line 64
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenInsertNewThresholdBinding;->thresholdTypeSpinner:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->mSpinner:Landroid/widget/Spinner;

    .line 65
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenInsertNewThresholdBinding;->editDateViewNewThreshold:Lcom/texa/careapp/views/EditableDateView;

    iput-object v0, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->mDate:Lcom/texa/careapp/views/EditableDateView;

    .line 66
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenInsertNewThresholdBinding;->layoutAddConfirmed:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenInsertNewThresholdBinding;->layoutSetDataNewThreshold:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    iget-object v0, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->mInsertNewThresholdActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/utils/VehicleDataManager;->getVehicleById(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleModel;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    .line 69
    new-instance p1, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$ThresholdTypeAdapter;

    iget-object v0, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->populateTypeList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen$ThresholdTypeAdapter;-><init>(Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;Landroid/content/Context;Ljava/util/List;)V

    .line 70
    iget-object v0, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00cb

    return v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-settings-insertnewthreshold-InsertNewThresholdScreen(Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->addThresholdConfirmed()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-settings-insertnewthreshold-InsertNewThresholdScreen(Landroid/view/View;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/texa/careapp/app/settings/insertnewthreshold/InsertNewThresholdScreen;->mDate:Lcom/texa/careapp/views/EditableDateView;

    invoke-virtual {p1}, Lcom/texa/careapp/views/EditableDateView;->showDatePicker()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 85
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 90
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    return-void
.end method
