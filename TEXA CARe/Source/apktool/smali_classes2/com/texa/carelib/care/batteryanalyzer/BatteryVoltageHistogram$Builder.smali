.class public Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;
.super Ljava/lang/Object;
.source "BatteryVoltageHistogram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBatteryVoltageHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 87
    new-instance v0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;-><init>(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$1;)V

    invoke-direct {p0, v0}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;-><init>(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;)V

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->mBatteryVoltageHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    return-void
.end method


# virtual methods
.method public build()Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->mBatteryVoltageHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    return-object v0
.end method

.method public setBeamList(Ljava/util/List;)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/CounterInfo;",
            ">;)",
            "Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->mBatteryVoltageHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->access$602(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->mBatteryVoltageHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->access$602(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;Ljava/util/List;)Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public setBeamWidth(Ljava/lang/Float;)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->mBatteryVoltageHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->access$402(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;Ljava/lang/Float;)Ljava/lang/Float;

    return-object p0
.end method

.method public setData([B)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->mBatteryVoltageHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->access$102(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;[B)[B

    return-object p0
.end method

.method public setSmoothFactor(Ljava/lang/Float;)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->mBatteryVoltageHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->access$502(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;Ljava/lang/Float;)Ljava/lang/Float;

    return-object p0
.end method

.method public setTimestamp(Ljava/util/Date;)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->mBatteryVoltageHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->access$302(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;Ljava/util/Date;)Ljava/util/Date;

    return-object p0
.end method

.method public setVersion(I)Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram$Builder;->mBatteryVoltageHistogram:Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    invoke-static {v0, p1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;->access$202(Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;I)I

    return-object p0
.end method
