.class Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater$1;
.super Ljava/util/TimerTask;
.source "MockAccessory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->beginUpdateAccessoryStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater$1;->this$1:Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 840
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater$1;->this$1:Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;

    invoke-static {v0}, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->access$000(Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 842
    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater$1;->this$1:Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;

    invoke-static {v1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->access$100(Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater$1;->this$1:Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;

    invoke-static {v1, v0}, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->access$002(Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;I)I

    .line 844
    iget-object v0, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater$1;->this$1:Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;

    iget-object v0, v0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->this$0:Lcom/texa/carelib/care/accessory/internal/MockAccessory;

    iget-object v1, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater$1;->this$1:Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;

    invoke-static {v1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->access$100(Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater$1;->this$1:Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;

    invoke-static {v2}, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;->access$000(Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater;)I

    move-result v2

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/texa/carelib/care/accessory/internal/MockAccessory;->access$200(Lcom/texa/carelib/care/accessory/internal/MockAccessory;I)V

    goto :goto_0

    .line 846
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/accessory/internal/MockAccessory$AccessoryStatusUpdater$1;->cancel()Z

    :goto_0
    return-void
.end method
