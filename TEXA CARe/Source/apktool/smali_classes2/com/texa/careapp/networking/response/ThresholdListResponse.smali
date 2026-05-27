.class public Lcom/texa/careapp/networking/response/ThresholdListResponse;
.super Ljava/lang/Object;
.source "ThresholdListResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/networking/response/ThresholdListResponse$ThresholdResponseItem;,
        Lcom/texa/careapp/networking/response/ThresholdListResponse$ThresholdListResponseCollection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThresholdListResponse"


# instance fields
.field public list:Lcom/texa/careapp/networking/response/ThresholdListResponse$ThresholdListResponseCollection;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
