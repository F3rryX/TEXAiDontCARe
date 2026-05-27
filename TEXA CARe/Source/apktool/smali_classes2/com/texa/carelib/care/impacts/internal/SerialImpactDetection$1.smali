.class Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$1;
.super Ljava/util/TreeSet;
.source "SerialImpactDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;->updateSupportedFrequencies(Lcom/texa/carelib/care/impacts/internal/parser/GetCrashConfigurationParametersParser$GetCrashConfigurationParametersResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeSet<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection$1;->this$0:Lcom/texa/carelib/care/impacts/internal/SerialImpactDetection;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    return-void
.end method
