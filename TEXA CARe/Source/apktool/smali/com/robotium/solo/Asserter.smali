.class Lcom/robotium/solo/Asserter;
.super Ljava/lang/Object;
.source "Asserter.java"


# instance fields
.field private final activityUtils:Lcom/robotium/solo/ActivityUtils;

.field private final waiter:Lcom/robotium/solo/Waiter;


# direct methods
.method public constructor <init>(Lcom/robotium/solo/ActivityUtils;Lcom/robotium/solo/Waiter;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/robotium/solo/Asserter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    .line 27
    iput-object p2, p0, Lcom/robotium/solo/Asserter;->waiter:Lcom/robotium/solo/Waiter;

    return-void
.end method


# virtual methods
.method public assertCurrentActivity(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string v0, "The specified Activity is null!"

    .line 60
    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/robotium/solo/Asserter;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v0, p2}, Lcom/robotium/solo/Waiter;->waitForActivity(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/robotium/solo/Asserter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    invoke-virtual {v0}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "No activity found"

    invoke-static {p1, p2, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public assertCurrentActivity(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;Z)V"
        }
    .end annotation

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/robotium/solo/Asserter;->assertCurrentActivity(Ljava/lang/String;Ljava/lang/Class;)V

    .line 107
    iget-object p2, p0, Lcom/robotium/solo/Asserter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    .line 109
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1, p2, p3}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 113
    :goto_0
    iget-object v2, p0, Lcom/robotium/solo/Asserter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    invoke-virtual {v2}, Lcom/robotium/solo/ActivityUtils;->getAllOpenedActivities()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/robotium/solo/Asserter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    invoke-virtual {v2}, Lcom/robotium/solo/ActivityUtils;->getAllOpenedActivities()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1, p2, p3}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public assertCurrentActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/robotium/solo/Asserter;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v0, p2}, Lcom/robotium/solo/Waiter;->waitForActivity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/robotium/solo/Asserter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    invoke-virtual {v0}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "No actvity found"

    .line 46
    invoke-static {p1, p2, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public assertCurrentActivity(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/robotium/solo/Asserter;->assertCurrentActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lcom/robotium/solo/Asserter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    invoke-virtual {p2}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/robotium/solo/Asserter;->assertCurrentActivity(Ljava/lang/String;Ljava/lang/Class;Z)V

    :cond_0
    return-void
.end method

.method public assertMemoryNotLow()V
    .locals 4

    .line 126
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/robotium/solo/Asserter;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    invoke-virtual {v1}, Lcom/robotium/solo/ActivityUtils;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Low memory available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertFalse(Ljava/lang/String;Z)V

    return-void
.end method
