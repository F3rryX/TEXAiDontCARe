.class Lcom/robotium/solo/Presser;
.super Ljava/lang/Object;
.source "Presser.java"


# instance fields
.field private final clicker:Lcom/robotium/solo/Clicker;

.field private final dialogUtils:Lcom/robotium/solo/DialogUtils;

.field private final inst:Landroid/app/Instrumentation;

.field private final sleeper:Lcom/robotium/solo/Sleeper;

.field private final viewFetcher:Lcom/robotium/solo/ViewFetcher;

.field private final waiter:Lcom/robotium/solo/Waiter;


# direct methods
.method public constructor <init>(Lcom/robotium/solo/ViewFetcher;Lcom/robotium/solo/Clicker;Landroid/app/Instrumentation;Lcom/robotium/solo/Sleeper;Lcom/robotium/solo/Waiter;Lcom/robotium/solo/DialogUtils;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/robotium/solo/Presser;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    .line 40
    iput-object p2, p0, Lcom/robotium/solo/Presser;->clicker:Lcom/robotium/solo/Clicker;

    .line 41
    iput-object p3, p0, Lcom/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    .line 42
    iput-object p4, p0, Lcom/robotium/solo/Presser;->sleeper:Lcom/robotium/solo/Sleeper;

    .line 43
    iput-object p5, p0, Lcom/robotium/solo/Presser;->waiter:Lcom/robotium/solo/Waiter;

    .line 44
    iput-object p6, p0, Lcom/robotium/solo/Presser;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    return-void
.end method


# virtual methods
.method public pressMenuItem(I)V
    .locals 1

    const/4 v0, 0x3

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/robotium/solo/Presser;->pressMenuItem(II)V

    return-void
.end method

.method public pressMenuItem(II)V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    mul-int v3, p2, v2

    .line 72
    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_0
    iget-object p2, p0, Lcom/robotium/solo/Presser;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {p2}, Lcom/robotium/solo/Sleeper;->sleep()V

    .line 76
    :try_start_0
    iget-object p2, p0, Lcom/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    const/16 v2, 0x52

    invoke-virtual {p2, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 77
    iget-object p2, p0, Lcom/robotium/solo/Presser;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p2, v2, v3, v1}, Lcom/robotium/solo/DialogUtils;->waitForDialogToOpen(JZ)Z

    .line 78
    iget-object p2, p0, Lcom/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    const/16 v2, 0x13

    invoke-virtual {p2, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 79
    iget-object p2, p0, Lcom/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    invoke-virtual {p2, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p2, "Can not press the menu!"

    .line 81
    invoke-static {p2}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 83
    :goto_1
    aget p2, v0, v1

    const/16 v2, 0x16

    if-ge p1, p2, :cond_1

    const/4 p2, 0x0

    :goto_2
    if-ge p2, p1, :cond_3

    .line 85
    iget-object v0, p0, Lcom/robotium/solo/Presser;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/robotium/solo/Sleeper;->sleepMini()V

    .line 86
    iget-object v0, p0, Lcom/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v0, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 88
    :cond_1
    aget p2, v0, v1

    const/16 v3, 0x14

    const/4 v4, 0x2

    if-lt p1, p2, :cond_2

    aget p2, v0, v4

    if-ge p1, p2, :cond_2

    .line 89
    iget-object p2, p0, Lcom/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    invoke-virtual {p2, v3}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 91
    aget p2, v0, v1

    :goto_3
    if-ge p2, p1, :cond_3

    .line 92
    iget-object v0, p0, Lcom/robotium/solo/Presser;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/robotium/solo/Sleeper;->sleepMini()V

    .line 93
    iget-object v0, p0, Lcom/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v0, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 95
    :cond_2
    aget p2, v0, v4

    if-lt p1, p2, :cond_3

    .line 96
    iget-object p2, p0, Lcom/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    invoke-virtual {p2, v3}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 97
    iget-object p2, p0, Lcom/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    invoke-virtual {p2, v3}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 99
    aget p2, v0, v4

    :goto_4
    if-ge p2, p1, :cond_3

    .line 100
    iget-object v0, p0, Lcom/robotium/solo/Presser;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/robotium/solo/Sleeper;->sleepMini()V

    .line 101
    iget-object v0, p0, Lcom/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v0, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 106
    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    const/16 p2, 0x42

    invoke-virtual {p1, p2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public pressSoftKeyboard(I)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/robotium/solo/Presser;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const-class v1, Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/robotium/solo/ViewFetcher;->getFreshestView(Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    new-instance v2, Lcom/robotium/solo/Presser$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/robotium/solo/Presser$1;-><init>(Lcom/robotium/solo/Presser;Landroid/widget/EditText;I)V

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public pressSpinnerItem(II)V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/robotium/solo/Presser;->clicker:Lcom/robotium/solo/Clicker;

    iget-object v1, p0, Lcom/robotium/solo/Presser;->waiter:Lcom/robotium/solo/Waiter;

    const-class v2, Landroid/widget/Spinner;

    invoke-virtual {v1, p1, v2}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;)V

    .line 142
    iget-object p1, p0, Lcom/robotium/solo/Presser;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/robotium/solo/DialogUtils;->waitForDialogToOpen(JZ)Z

    const/16 p1, 0x14

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v0, 0x0

    if-gez p2, :cond_0

    mul-int/lit8 p2, p2, -0x1

    const/4 v2, 0x0

    :cond_0
    :goto_1
    if-ge v0, p2, :cond_2

    .line 155
    iget-object v1, p0, Lcom/robotium/solo/Presser;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v1}, Lcom/robotium/solo/Sleeper;->sleepMini()V

    if-eqz v2, :cond_1

    .line 158
    :try_start_1
    iget-object v1, p0, Lcom/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v1, p1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    goto :goto_2

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/robotium/solo/Presser;->inst:Landroid/app/Instrumentation;

    const/16 p2, 0x42

    invoke-virtual {p1, p2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
