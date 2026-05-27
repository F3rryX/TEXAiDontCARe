.class public final synthetic Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer;

    invoke-virtual {v0}, Lcom/texa/carelib/care/batteryanalyzer/internal/MockBatteryAnalyzer;->lambda$loadBatteryAnalyzerInfo$0$com-texa-carelib-care-batteryanalyzer-internal-MockBatteryAnalyzer()V

    return-void
.end method
