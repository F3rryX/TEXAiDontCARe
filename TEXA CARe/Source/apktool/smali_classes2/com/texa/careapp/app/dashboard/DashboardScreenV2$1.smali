.class Lcom/texa/careapp/app/dashboard/DashboardScreenV2$1;
.super Ljava/lang/Object;
.source "DashboardScreenV2.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->afterViewInjection(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/dashboard/DashboardScreenV2;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$1;->this$0:Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$1;->this$0:Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    iget-object v0, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$1;->this$0:Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    invoke-static {v1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->access$000(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->getItem(I)Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/model/VehicleModel;->getHwid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/DongleDataManager;->setDongleLikeSelectedWithHWID(Ljava/lang/String;)Lcom/texa/careapp/model/DongleModel;

    .line 209
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$1;->this$0:Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    iget-object v0, v0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleDataManager:Lcom/texa/careapp/utils/VehicleDataManager;

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$1;->this$0:Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    invoke-static {v1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->access$000(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/texa/careapp/app/dashboard/vehicle/VehiclePagerAdapter;->getItem(I)Lcom/texa/careapp/model/VehicleModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/VehicleDataManager;->setVehicleLikeSelected(Ljava/lang/String;)Lcom/texa/careapp/model/VehicleModel;

    .line 210
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$1;->this$0:Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    iget-object p1, p1, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/VehicleObserver;->forceUpdate()V

    .line 211
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$1;->this$0:Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->access$102(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Z)Z

    .line 213
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$1;->this$0:Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    iget-object v1, p1, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mVehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->access$200(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;Lcom/texa/careapp/model/VehicleModel;)V

    .line 214
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$1;->this$0:Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    invoke-static {p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->access$300(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)V

    .line 215
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$1;->this$0:Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    invoke-static {p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->access$400(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenAdapter;->updateViews()V

    .line 216
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$1;->this$0:Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    invoke-static {p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->access$500(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->mCanMoveCard:Z

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/DashboardScreenV2$1;->this$0:Lcom/texa/careapp/app/dashboard/DashboardScreenV2;

    invoke-static {p1}, Lcom/texa/careapp/app/dashboard/DashboardScreenV2;->access$600(Lcom/texa/careapp/app/dashboard/DashboardScreenV2;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method
