.class Lcom/robotium/solo/Setter;
.super Ljava/lang/Object;
.source "Setter.java"


# instance fields
.field private final CLOSED:I

.field private final OPENED:I

.field private final activityUtils:Lcom/robotium/solo/ActivityUtils;

.field private final clicker:Lcom/robotium/solo/Clicker;

.field private final getter:Lcom/robotium/solo/Getter;

.field private final waiter:Lcom/robotium/solo/Waiter;


# direct methods
.method public constructor <init>(Lcom/robotium/solo/ActivityUtils;Lcom/robotium/solo/Getter;Lcom/robotium/solo/Clicker;Lcom/robotium/solo/Waiter;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/robotium/solo/Setter;->CLOSED:I

    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lcom/robotium/solo/Setter;->OPENED:I

    .line 38
    iput-object p1, p0, Lcom/robotium/solo/Setter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    .line 39
    iput-object p2, p0, Lcom/robotium/solo/Setter;->getter:Lcom/robotium/solo/Getter;

    .line 40
    iput-object p3, p0, Lcom/robotium/solo/Setter;->clicker:Lcom/robotium/solo/Clicker;

    .line 41
    iput-object p4, p0, Lcom/robotium/solo/Setter;->waiter:Lcom/robotium/solo/Waiter;

    return-void
.end method


# virtual methods
.method public setDatePicker(Landroid/widget/DatePicker;III)V
    .locals 8

    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/robotium/solo/Setter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v7, Lcom/robotium/solo/Setter$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/robotium/solo/Setter$1;-><init>(Lcom/robotium/solo/Setter;Landroid/widget/DatePicker;III)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setNavigationDrawer(I)V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/robotium/solo/Setter;->getter:Lcom/robotium/solo/Getter;

    const-string v1, "home"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/robotium/solo/Getter;->getView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/robotium/solo/Setter;->getter:Lcom/robotium/solo/Getter;

    const-string v3, "left_drawer"

    invoke-virtual {v1, v3, v2}, Lcom/robotium/solo/Getter;->getView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 174
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_2

    .line 175
    iget-object p1, p0, Lcom/robotium/solo/Setter;->clicker:Lcom/robotium/solo/Clicker;

    invoke-virtual {p1, v0}, Lcom/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;)V

    .line 177
    new-instance p1, Lcom/robotium/solo/Setter$5;

    invoke-direct {p1, p0, v1}, Lcom/robotium/solo/Setter$5;-><init>(Lcom/robotium/solo/Setter;Landroid/view/View;)V

    .line 184
    iget-object v0, p0, Lcom/robotium/solo/Setter;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Waiter;->waitForCondition(Lcom/robotium/solo/Condition;I)Z

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 169
    iget-object p1, p0, Lcom/robotium/solo/Setter;->clicker:Lcom/robotium/solo/Clicker;

    invoke-virtual {p1, v0}, Lcom/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/robotium/solo/Setter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v1, Lcom/robotium/solo/Setter$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/robotium/solo/Setter$3;-><init>(Lcom/robotium/solo/Setter;Landroid/widget/ProgressBar;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setSlidingDrawer(Landroid/widget/SlidingDrawer;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/robotium/solo/Setter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v1, Lcom/robotium/solo/Setter$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/robotium/solo/Setter$4;-><init>(Lcom/robotium/solo/Setter;ILandroid/widget/SlidingDrawer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setTimePicker(Landroid/widget/TimePicker;II)V
    .locals 2

    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/robotium/solo/Setter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v1, Lcom/robotium/solo/Setter$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/robotium/solo/Setter$2;-><init>(Lcom/robotium/solo/Setter;Landroid/widget/TimePicker;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
