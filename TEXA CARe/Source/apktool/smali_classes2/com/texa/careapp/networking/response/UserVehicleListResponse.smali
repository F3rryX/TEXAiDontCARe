.class public Lcom/texa/careapp/networking/response/UserVehicleListResponse;
.super Ljava/lang/Object;
.source "UserVehicleListResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/networking/response/UserVehicleListResponse$Selection;,
        Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;,
        Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;
    }
.end annotation


# instance fields
.field public userVehicleDataList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getByHwId(Ljava/lang/String;)Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/texa/careapp/networking/response/UserVehicleListResponse;->userVehicleDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;

    .line 23
    iget-object v2, v1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->hwid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getByPlate(Ljava/lang/String;)Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/texa/careapp/networking/response/UserVehicleListResponse;->userVehicleDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;

    .line 33
    iget-object v2, v1, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->plate:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
