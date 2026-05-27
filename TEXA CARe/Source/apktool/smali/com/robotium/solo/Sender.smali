.class Lcom/robotium/solo/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# instance fields
.field private final inst:Landroid/app/Instrumentation;

.field private final sleeper:Lcom/robotium/solo/Sleeper;


# direct methods
.method constructor <init>(Landroid/app/Instrumentation;Lcom/robotium/solo/Sleeper;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/robotium/solo/Sender;->inst:Landroid/app/Instrumentation;

    .line 30
    iput-object p2, p0, Lcom/robotium/solo/Sender;->sleeper:Lcom/robotium/solo/Sleeper;

    return-void
.end method


# virtual methods
.method public goBack()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/robotium/solo/Sender;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/robotium/solo/Sleeper;->sleep()V

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/robotium/solo/Sender;->inst:Landroid/app/Instrumentation;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 57
    iget-object v0, p0, Lcom/robotium/solo/Sender;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/robotium/solo/Sleeper;->sleep()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public sendKeyCode(I)V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/robotium/solo/Sender;->sleeper:Lcom/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/robotium/solo/Sleeper;->sleep()V

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/robotium/solo/Sender;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendCharacterSync(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not complete action! ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
