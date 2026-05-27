.class Lcom/texa/careapp/utils/BatteryServiceAnalyzer$1;
.super Ljava/lang/Object;
.source "BatteryServiceAnalyzer.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/utils/BatteryServiceAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/utils/BatteryServiceAnalyzer;


# direct methods
.method constructor <init>(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer$1;->this$0:Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 3

    .line 105
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_STANDBY_CRANK_REPORT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_LOW_POWER_RECENT_HISTOGRAM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_OPERATING_CRANK_REPORT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "com.texa.carelib.care.batteryanalyzer.BatteryAnalyzer#PROPERTY_LOW_POWER_TOTAL_HISTOGRAM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 128
    :pswitch_0
    iget-object p1, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer$1;->this$0:Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    iget-object p1, p1, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->mBatteryAnalyzer:Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;

    invoke-interface {p1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;->getStandByCrankReport()Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer$1;->this$0:Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    invoke-static {v0, p1}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->access$200(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/carelib/care/batteryanalyzer/CrankReport;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer$1;->this$0:Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    const-string v2, "standby_crank_report"

    invoke-static {v0, p1, v2}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->access$300(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/String;)Lcom/texa/careapp/model/BatteryAnalyzeModel;

    move-result-object p1

    goto :goto_2

    .line 107
    :pswitch_1
    iget-object p1, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer$1;->this$0:Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    iget-object p1, p1, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->mBatteryAnalyzer:Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;

    invoke-interface {p1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;->getLowPowerRecentHistogram()Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer$1;->this$0:Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    invoke-static {v0, p1}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->access$000(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer$1;->this$0:Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    const-string v2, "low_power_recent_histogram"

    invoke-static {v0, p1, v2}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->access$100(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;Ljava/lang/String;)Lcom/texa/careapp/model/BatteryAnalyzeModel;

    move-result-object p1

    goto :goto_2

    .line 121
    :pswitch_2
    iget-object p1, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer$1;->this$0:Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    iget-object p1, p1, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->mBatteryAnalyzer:Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;

    invoke-interface {p1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;->getOperatingCrankReport()Lcom/texa/carelib/care/batteryanalyzer/CrankReport;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer$1;->this$0:Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    invoke-static {v0, p1}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->access$200(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/carelib/care/batteryanalyzer/CrankReport;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer$1;->this$0:Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    const-string v2, "operating_crank_report"

    invoke-static {v0, p1, v2}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->access$300(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/carelib/care/batteryanalyzer/CrankReport;Ljava/lang/String;)Lcom/texa/careapp/model/BatteryAnalyzeModel;

    move-result-object p1

    goto :goto_2

    .line 114
    :pswitch_3
    iget-object p1, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer$1;->this$0:Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    iget-object p1, p1, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->mBatteryAnalyzer:Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;

    invoke-interface {p1}, Lcom/texa/carelib/care/batteryanalyzer/BatteryAnalyzer;->getLowPowerTotalHistogram()Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer$1;->this$0:Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    invoke-static {v0, p1}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->access$000(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, p0, Lcom/texa/careapp/utils/BatteryServiceAnalyzer$1;->this$0:Lcom/texa/careapp/utils/BatteryServiceAnalyzer;

    const-string v2, "low_power_total_histogram"

    invoke-static {v0, p1, v2}, Lcom/texa/careapp/utils/BatteryServiceAnalyzer;->access$100(Lcom/texa/careapp/utils/BatteryServiceAnalyzer;Lcom/texa/carelib/care/batteryanalyzer/BatteryVoltageHistogram;Ljava/lang/String;)Lcom/texa/careapp/model/BatteryAnalyzeModel;

    move-result-object p1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    .line 137
    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/BatteryAnalyzeModel;->setSyncNeeded(Z)V

    .line 139
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 141
    invoke-virtual {p1}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    :cond_5
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6cb79ddf -> :sswitch_3
        -0x5a0dc25b -> :sswitch_2
        0x17864728 -> :sswitch_1
        0x5347e879 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
