.class Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$APIVehicleInfoResponse;
.super Ljava/lang/Object;
.source "HttpServiceVehicleInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "APIVehicleInfoResponse"
.end annotation


# instance fields
.field private mVehicles:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/webservices/VehicleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$APIVehicleInfoResponse;
    .locals 2

    .line 124
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 125
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 128
    const-class v1, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$APIVehicleInfoResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$APIVehicleInfoResponse;

    return-object p0
.end method


# virtual methods
.method public getVehicles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/webservices/VehicleInfo;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$APIVehicleInfoResponse;->mVehicles:Ljava/util/List;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$APIVehicleInfoResponse;->mVehicles:Ljava/util/List;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceVehicleInfo$APIVehicleInfoResponse;->mVehicles:Ljava/util/List;

    return-object v0
.end method
