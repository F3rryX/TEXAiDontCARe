.class public Lcom/texa/careapp/networking/response/ThresholdListResponse$ThresholdListResponseCollection;
.super Ljava/lang/Object;
.source "ThresholdListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/networking/response/ThresholdListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThresholdListResponseCollection"
.end annotation


# instance fields
.field public inspection:Lcom/texa/careapp/networking/response/ThresholdListResponse$ThresholdResponseItem;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inspection"
    .end annotation
.end field

.field public insuranceExp:Lcom/texa/careapp/networking/response/ThresholdListResponse$ThresholdResponseItem;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "insurance_exp"
    .end annotation
.end field

.field public service:Lcom/texa/careapp/networking/response/ThresholdListResponse$ThresholdResponseItem;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service"
    .end annotation
.end field

.field public taxExp:Lcom/texa/careapp/networking/response/ThresholdListResponse$ThresholdResponseItem;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tax_exp"
    .end annotation
.end field

.field public tyresFitting:Lcom/texa/careapp/networking/response/ThresholdListResponse$ThresholdResponseItem;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tyres_fitting"
    .end annotation
.end field

.field public tyresSwap:Lcom/texa/careapp/networking/response/ThresholdListResponse$ThresholdResponseItem;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tyres_swap"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
