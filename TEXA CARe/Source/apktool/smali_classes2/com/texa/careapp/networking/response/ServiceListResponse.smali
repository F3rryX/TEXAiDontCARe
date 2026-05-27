.class public Lcom/texa/careapp/networking/response/ServiceListResponse;
.super Ljava/lang/Object;
.source "ServiceListResponse.java"


# instance fields
.field private list:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "services"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataFromTypeId(Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;)Lcom/texa/careapp/model/ServiceDataModel;
    .locals 3

    .line 49
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/ServiceListResponse;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/ServiceDataModel;

    .line 50
    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/texa/careapp/networking/response/ServiceListResponse;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/ServiceDataModel;

    .line 34
    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->serviceModelIsConsistent(Lcom/texa/careapp/model/ServiceDataModel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/networking/response/ServiceListResponse;->list:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/texa/careapp/networking/response/ServiceListResponse;->list:Ljava/util/List;

    return-void
.end method
