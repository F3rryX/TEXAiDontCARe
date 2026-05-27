.class Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$APIConfigurationInfoResponse;
.super Ljava/lang/Object;
.source "HttpServiceVehicleConfigurationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "APIConfigurationInfoResponse"
.end annotation


# instance fields
.field private final mConfigState:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "config_state"
    .end annotation
.end field

.field private mVehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$APIConfigurationInfoResponse;->mConfigState:Ljava/lang/String;

    .line 116
    sget-object v0, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->Undefined:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$APIConfigurationInfoResponse;->mVehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$APIConfigurationInfoResponse;
    .locals 2

    .line 122
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 123
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 126
    const-class v1, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$APIConfigurationInfoResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$APIConfigurationInfoResponse;

    if-eqz p0, :cond_2

    .line 130
    sget-object v0, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->Undefined:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$APIConfigurationInfoResponse;->mVehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    .line 132
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$APIConfigurationInfoResponse;->getConfigState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NEEDS_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->NeedsUpdated:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$APIConfigurationInfoResponse;->mVehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$APIConfigurationInfoResponse;->getConfigState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FIRST_CONFIGURATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    sget-object v0, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->FirstConfiguration:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$APIConfigurationInfoResponse;->mVehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$APIConfigurationInfoResponse;->getConfigState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    sget-object v0, Lcom/texa/carelib/webservices/VehicleConfigurationStatus;->Updated:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$APIConfigurationInfoResponse;->mVehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public getConfigState()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$APIConfigurationInfoResponse;->mConfigState:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigurationInfoStatus()Lcom/texa/carelib/webservices/VehicleConfigurationStatus;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleConfigurationInfo$APIConfigurationInfoResponse;->mVehicleConfigurationStatus:Lcom/texa/carelib/webservices/VehicleConfigurationStatus;

    return-object v0
.end method
