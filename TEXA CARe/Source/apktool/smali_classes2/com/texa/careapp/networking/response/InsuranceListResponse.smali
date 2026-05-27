.class public Lcom/texa/careapp/networking/response/InsuranceListResponse;
.super Ljava/lang/Object;
.source "InsuranceListResponse.java"


# instance fields
.field private list:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/schedule/addThreshold/Insurance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/schedule/addThreshold/Insurance;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/texa/careapp/networking/response/InsuranceListResponse;->list:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/schedule/addThreshold/Insurance;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/texa/careapp/networking/response/InsuranceListResponse;->list:Ljava/util/List;

    return-void
.end method
