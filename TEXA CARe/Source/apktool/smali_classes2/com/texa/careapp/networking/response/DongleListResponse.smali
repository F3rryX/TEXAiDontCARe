.class public Lcom/texa/careapp/networking/response/DongleListResponse;
.super Ljava/lang/Object;
.source "DongleListResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/networking/response/DongleListResponse$DongleVehicleDetails;
    }
.end annotation


# instance fields
.field public list:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/networking/response/DongleListResponse$DongleVehicleDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
