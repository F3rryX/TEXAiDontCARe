.class public Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;
.super Ljava/lang/Object;
.source "VehiclePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter$CareColor;
    }
.end annotation


# static fields
.field static final CARE_COLOR_GREEN:I = 0x1

.field static final CARE_COLOR_ORANGE:I = 0x0

.field static final CARE_COLOR_RED:I = 0x3

.field static final CARE_COLOR_WHITE:I = 0x2


# instance fields
.field private careCondition:I

.field private mCarIconStatus:Landroid/widget/ImageView;

.field private mCarName:Landroidx/appcompat/widget/AppCompatTextView;

.field private mCarStatus:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private vehicleModel:Lcom/texa/careapp/model/VehicleModel;


# direct methods
.method constructor <init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Lcom/texa/careapp/model/VehicleModel;I)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;)V

    .line 53
    iput-object p2, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->vehicleModel:Lcom/texa/careapp/model/VehicleModel;

    .line 54
    iput p3, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->careCondition:I

    return-void
.end method

.method public static careConditions(Ljava/lang/Integer;Lcom/texa/careapp/carelib/CommunicationObservable$Status;)Ljava/lang/Integer;
    .locals 1

    .line 103
    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_NOT_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    if-ne p1, v0, :cond_0

    const/4 p0, 0x2

    .line 104
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 106
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p0, 0x1

    .line 107
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 108
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 111
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x3

    .line 109
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private displayVehicleName(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 1

    .line 68
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->mCarName:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->mCarName:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->mCarName:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static getIconColor(I)I
    .locals 2

    const v0, 0x106000b

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f060074

    goto :goto_0

    :cond_1
    const v0, 0x7f0600a8

    goto :goto_0

    :cond_2
    const v0, 0x7f0600f3

    :cond_3
    :goto_0
    return v0
.end method

.method private setIcon(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f060074

    invoke-static {p1, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->mContext:Landroid/content/Context;

    const v1, 0x106000b

    invoke-static {p1, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0600a8

    invoke-static {p1, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    .line 123
    :cond_3
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0600f3

    invoke-static {p1, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p1

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->mCarIconStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return v0
.end method


# virtual methods
.method public afterViewInjection(Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;)V
    .locals 1

    .line 58
    iget-object v0, p1, Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;->fragmentDashboardVehicleName:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->mCarName:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    iget-object v0, p1, Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;->fragmentDashboardVehicleStatus:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->mCarStatus:Landroid/widget/TextView;

    .line 60
    iget-object p1, p1, Lcom/texa/careapp/databinding/FragmentDashboardVehicleBinding;->fragmentDashboardVehicleIcon:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->mCarIconStatus:Landroid/widget/ImageView;

    .line 62
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->vehicleModel:Lcom/texa/careapp/model/VehicleModel;

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->displayVehicleName(Lcom/texa/careapp/model/VehicleModel;)V

    .line 63
    iget p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->careCondition:I

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->displayVehicleTitle(I)V

    .line 64
    iget p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->careCondition:I

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->displayVehicleIcon(I)V

    return-void
.end method

.method displayVehicleIcon(I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->setIcon(I)Z

    return-void
.end method

.method displayVehicleTitle(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 90
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f110d3d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f110cb2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f110d3c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 84
    :cond_2
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f110d3b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePresenter;->mCarStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
