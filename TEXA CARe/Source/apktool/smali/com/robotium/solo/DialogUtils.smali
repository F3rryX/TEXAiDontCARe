.class Lcom/robotium/solo/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# static fields
.field private static final TIMEOUT_DIALOG_TO_CLOSE:I = 0x3e8


# instance fields
.field private final MINISLEEP:I

.field private final activityUtils:Lcom/robotium/solo/ActivityUtils;

.field private final instrumentation:Landroid/app/Instrumentation;

.field private final sleeper:Lcom/robotium/solo/Sleeper;

.field private final viewFetcher:Lcom/robotium/solo/ViewFetcher;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Lcom/robotium/solo/ActivityUtils;Lcom/robotium/solo/ViewFetcher;Lcom/robotium/solo/Sleeper;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 28
    iput v0, p0, Lcom/robotium/solo/DialogUtils;->MINISLEEP:I

    .line 39
    iput-object p1, p0, Lcom/robotium/solo/DialogUtils;->instrumentation:Landroid/app/Instrumentation;

    .line 40
    iput-object p2, p0, Lcom/robotium/solo/DialogUtils;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    .line 41
    iput-object p3, p0, Lcom/robotium/solo/DialogUtils;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    .line 42
    iput-object p4, p0, Lcom/robotium/solo/DialogUtils;->sleeper:Lcom/robotium/solo/Sleeper;

    return-void
.end method

.method private isDialog(Landroid/app/Activity;Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 130
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 135
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 138
    :cond_1
    instance-of v2, v1, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_2

    .line 139
    check-cast v1, Landroid/view/ContextThemeWrapper;

    .line 140
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 143
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 144
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eq p2, p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_0
    return v0
.end method

.method private isDialogOpen()Z
    .locals 7

    .line 104
    iget-object v0, p0, Lcom/robotium/solo/DialogUtils;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    .line 105
    iget-object v2, p0, Lcom/robotium/solo/DialogUtils;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-virtual {v2}, Lcom/robotium/solo/ViewFetcher;->getWindowDecorViews()[Landroid/view/View;

    move-result-object v2

    .line 106
    iget-object v3, p0, Lcom/robotium/solo/DialogUtils;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    invoke-virtual {v3, v2}, Lcom/robotium/solo/ViewFetcher;->getRecentDecorView([Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 108
    invoke-direct {p0, v0, v3}, Lcom/robotium/solo/DialogUtils;->isDialog(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 109
    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 110
    invoke-direct {p0, v0, v6}, Lcom/robotium/solo/DialogUtils;->isDialog(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    return v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    return v4
.end method


# virtual methods
.method public hideSoftKeyboard(Landroid/widget/EditText;ZZ)V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/robotium/solo/DialogUtils;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    invoke-virtual {v0, p2}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "input_method"

    if-nez p2, :cond_0

    .line 159
    iget-object v1, p0, Lcom/robotium/solo/DialogUtils;->instrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v1}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    .line 169
    :cond_1
    invoke-virtual {p2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    .line 171
    instance-of p2, p1, Landroid/widget/EditText;

    if-nez p2, :cond_2

    .line 172
    iget-object p2, p0, Lcom/robotium/solo/DialogUtils;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const-class v2, Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/robotium/solo/ViewFetcher;->getFreshestView(Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    if-eqz p2, :cond_2

    move-object p1, p2

    :cond_2
    if-eqz p1, :cond_3

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3
    if-eqz p3, :cond_4

    .line 181
    iget-object p1, p0, Lcom/robotium/solo/DialogUtils;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {p1}, Lcom/robotium/solo/Sleeper;->sleep()V

    :cond_4
    return-void
.end method

.method public waitForDialogToClose(J)Z
    .locals 4

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    .line 54
    invoke-virtual {p0, v0, v1, v2}, Lcom/robotium/solo/DialogUtils;->waitForDialogToOpen(JZ)Z

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 57
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    cmp-long v3, p1, v0

    if-gez v3, :cond_1

    .line 59
    invoke-direct {p0}, Lcom/robotium/solo/DialogUtils;->isDialogOpen()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/robotium/solo/DialogUtils;->sleeper:Lcom/robotium/solo/Sleeper;

    const/16 p2, 0xc8

    invoke-virtual {p1, p2}, Lcom/robotium/solo/Sleeper;->sleep(I)V

    goto :goto_0

    :cond_1
    return v2
.end method

.method public waitForDialogToOpen(JZ)Z
    .locals 4

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 78
    invoke-direct {p0}, Lcom/robotium/solo/DialogUtils;->isDialogOpen()Z

    move-result p1

    if-eqz p3, :cond_0

    .line 81
    iget-object p2, p0, Lcom/robotium/solo/DialogUtils;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {p2}, Lcom/robotium/solo/Sleeper;->sleep()V

    :cond_0
    const/4 p2, 0x1

    if-eqz p1, :cond_1

    return p2

    .line 87
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-gez p1, :cond_3

    .line 89
    invoke-direct {p0}, Lcom/robotium/solo/DialogUtils;->isDialogOpen()Z

    move-result p1

    if-eqz p1, :cond_2

    return p2

    .line 92
    :cond_2
    iget-object p1, p0, Lcom/robotium/solo/DialogUtils;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {p1}, Lcom/robotium/solo/Sleeper;->sleepMini()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
