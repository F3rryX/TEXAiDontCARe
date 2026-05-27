.class synthetic Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$1;
.super Ljava/lang/Object;
.source "SettingsServicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$careapp$model$ServiceDataModel$DongleServiceStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 171
    invoke-static {}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->values()[Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$1;->$SwitchMap$com$texa$careapp$model$ServiceDataModel$DongleServiceStatus:[I

    :try_start_0
    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$1;->$SwitchMap$com$texa$careapp$model$ServiceDataModel$DongleServiceStatus:[I

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->INACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$1;->$SwitchMap$com$texa$careapp$model$ServiceDataModel$DongleServiceStatus:[I

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->PENDING:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/texa/careapp/app/settings/services/SettingsServicesAdapter$1;->$SwitchMap$com$texa$careapp$model$ServiceDataModel$DongleServiceStatus:[I

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->AVAILABLE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
