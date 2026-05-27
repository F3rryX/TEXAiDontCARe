.class Lcom/robotium/solo/TextEnterer;
.super Ljava/lang/Object;
.source "TextEnterer.java"


# instance fields
.field private final clicker:Lcom/robotium/solo/Clicker;

.field private final dialogUtils:Lcom/robotium/solo/DialogUtils;

.field private final inst:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Lcom/robotium/solo/Clicker;Lcom/robotium/solo/DialogUtils;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/robotium/solo/TextEnterer;->inst:Landroid/app/Instrumentation;

    .line 33
    iput-object p2, p0, Lcom/robotium/solo/TextEnterer;->clicker:Lcom/robotium/solo/Clicker;

    .line 34
    iput-object p3, p0, Lcom/robotium/solo/TextEnterer;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/robotium/solo/TextEnterer;)Lcom/robotium/solo/DialogUtils;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/robotium/solo/TextEnterer;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    return-object p0
.end method


# virtual methods
.method public setEditText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/robotium/solo/TextEnterer;->inst:Landroid/app/Instrumentation;

    new-instance v2, Lcom/robotium/solo/TextEnterer$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/robotium/solo/TextEnterer$1;-><init>(Lcom/robotium/solo/TextEnterer;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public typeText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/robotium/solo/TextEnterer;->inst:Landroid/app/Instrumentation;

    new-instance v1, Lcom/robotium/solo/TextEnterer$2;

    invoke-direct {v1, p0, p1}, Lcom/robotium/solo/TextEnterer$2;-><init>(Lcom/robotium/solo/TextEnterer;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 82
    iget-object v0, p0, Lcom/robotium/solo/TextEnterer;->clicker:Lcom/robotium/solo/Clicker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/robotium/solo/Clicker;->clickOnScreen(Landroid/view/View;ZI)V

    .line 83
    iget-object v0, p0, Lcom/robotium/solo/TextEnterer;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v2}, Lcom/robotium/solo/DialogUtils;->hideSoftKeyboard(Landroid/widget/EditText;ZZ)V

    const/4 v0, 0x0

    :goto_0
    if-nez v1, :cond_0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 91
    :try_start_0
    iget-object v3, p0, Lcom/robotium/solo/TextEnterer;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v3, p2}, Landroid/app/Instrumentation;->sendStringSync(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    .line 94
    :catch_0
    iget-object v3, p0, Lcom/robotium/solo/TextEnterer;->dialogUtils:Lcom/robotium/solo/DialogUtils;

    invoke-virtual {v3, p1, v2, v2}, Lcom/robotium/solo/DialogUtils;->hideSoftKeyboard(Landroid/widget/EditText;ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const-string p1, "Text can not be typed!"

    .line 99
    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
