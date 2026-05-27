.class Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationPresenter;
.super Ljava/lang/Object;
.source "VehicleDataConfirmationPresenter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VehicleDataConfirmationPresenter"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmClicked(Landroid/widget/EditText;Lcom/texa/careapp/model/VehicleModel;Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;Lcom/texa/careapp/sync/CAReWorkerManager;)Z
    .locals 1

    .line 26
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    int-to-float v0, p1

    .line 35
    :try_start_1
    invoke-interface {p3, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/DataManagerConfiguration;->setStartingOdometer(F)V
    :try_end_1
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 37
    invoke-virtual {p3}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    .line 41
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/texa/careapp/model/VehicleModel;->setOdometer(Ljava/lang/Integer;)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p2, p1}, Lcom/texa/careapp/model/VehicleModel;->setSyncNeeded(Z)V

    .line 43
    invoke-virtual {p2, p1}, Lcom/texa/careapp/model/VehicleModel;->setConfirmedByUser(Z)V

    .line 45
    invoke-virtual {p4}, Lcom/texa/careapp/sync/CAReWorkerManager;->scheduleVehicleSync()V

    return p1

    :catch_1
    move-exception p2

    .line 28
    sget-object p3, Lcom/texa/careapp/app/vehicle/VehicleDataConfirmationPresenter;->TAG:Ljava/lang/String;

    const-string p4, "invalid value"

    invoke-static {p3, p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f110ab7

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    return p1
.end method
