.class public Lcom/texa/careapp/networking/response/VehicleSelectionResponse;
.super Ljava/lang/Object;
.source "VehicleSelectionResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/networking/response/VehicleSelectionResponse$Selection;,
        Lcom/texa/careapp/networking/response/VehicleSelectionResponse$SelectionObject;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/networking/response/VehicleSelectionResponse$SelectionObject;",
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
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/networking/response/VehicleSelectionResponse$SelectionObject;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/texa/careapp/networking/response/VehicleSelectionResponse;->list:Ljava/util/List;

    return-object v0
.end method
