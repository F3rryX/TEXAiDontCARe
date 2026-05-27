.class Lcom/robotium/solo/Getter;
.super Ljava/lang/Object;
.source "Getter.java"


# instance fields
.field private final TIMEOUT:I

.field private final activityUtils:Lcom/robotium/solo/ActivityUtils;

.field private final instrumentation:Landroid/app/Instrumentation;

.field private final waiter:Lcom/robotium/solo/Waiter;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Lcom/robotium/solo/ActivityUtils;Lcom/robotium/solo/Waiter;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 25
    iput v0, p0, Lcom/robotium/solo/Getter;->TIMEOUT:I

    .line 36
    iput-object p1, p0, Lcom/robotium/solo/Getter;->instrumentation:Landroid/app/Instrumentation;

    .line 37
    iput-object p2, p0, Lcom/robotium/solo/Getter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    .line 38
    iput-object p3, p0, Lcom/robotium/solo/Getter;->waiter:Lcom/robotium/solo/Waiter;

    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/robotium/solo/Getter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 86
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/robotium/solo/Getter;->instrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, p1, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 104
    :cond_0
    invoke-virtual {p0, v1}, Lcom/robotium/solo/Getter;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getView(II)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, p1, p2, v0}, Lcom/robotium/solo/Getter;->getView(III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(III)Landroid/view/View;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/robotium/solo/Getter;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/robotium/solo/Waiter;->waitForView(III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(Ljava/lang/Class;I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/robotium/solo/Getter;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v0, p2, p1}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(Ljava/lang/Object;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, p1, p2, v0}, Lcom/robotium/solo/Getter;->getView(Ljava/lang/Object;II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(Ljava/lang/Object;II)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/robotium/solo/Getter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x1

    if-ge p2, v3, :cond_2

    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 187
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 189
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    if-eqz v0, :cond_3

    return-object v0

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/robotium/solo/Getter;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/robotium/solo/Waiter;->waitForView(Ljava/lang/Object;II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(Ljava/lang/String;I)Landroid/view/View;
    .locals 6

    .line 142
    iget-object v0, p0, Lcom/robotium/solo/Getter;->instrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3e8

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p0, v1, p2, v2}, Lcom/robotium/solo/Getter;->getView(III)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_1

    .line 151
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v5, "android"

    invoke-virtual {v0, p1, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {p0, p1, p2, v2}, Lcom/robotium/solo/Getter;->getView(III)Landroid/view/View;

    move-result-object v4

    :cond_1
    if-eqz v4, :cond_2

    return-object v4

    .line 160
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/robotium/solo/Getter;->getView(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(Ljava/lang/Class;Ljava/lang/String;Z)Landroid/widget/TextView;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/robotium/solo/Getter;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    int-to-long v4, v1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/robotium/solo/Waiter;->waitForText(Ljava/lang/Class;Ljava/lang/String;IJZZZ)Landroid/widget/TextView;

    move-result-object p3

    if-nez p3, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with text: \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not found!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :cond_0
    return-object p3
.end method
