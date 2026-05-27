.class public Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;
.super Ljava/lang/Object;
.source "UserVehicleListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/networking/response/UserVehicleListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectionData"
.end annotation


# instance fields
.field public selections:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/networking/response/UserVehicleListResponse$Selection;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/texa/careapp/networking/response/UserVehicleListResponse;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/networking/response/UserVehicleListResponse;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;->this$0:Lcom/texa/careapp/networking/response/UserVehicleListResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectionBrand()Ljava/lang/String;
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;->selections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/networking/response/UserVehicleListResponse$Selection;

    .line 70
    iget-object v3, v2, Lcom/texa/careapp/networking/response/UserVehicleListResponse$Selection;->type:Ljava/lang/String;

    const-string v4, "brand"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    iget-object v1, v2, Lcom/texa/careapp/networking/response/UserVehicleListResponse$Selection;->value:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getSelectionModel()Ljava/lang/String;
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;->selections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/networking/response/UserVehicleListResponse$Selection;

    .line 61
    iget-object v3, v2, Lcom/texa/careapp/networking/response/UserVehicleListResponse$Selection;->type:Ljava/lang/String;

    const-string v4, "model"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    iget-object v1, v2, Lcom/texa/careapp/networking/response/UserVehicleListResponse$Selection;->value:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-object v1
.end method
