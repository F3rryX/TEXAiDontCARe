.class public Lcom/texa/careapp/networking/response/VehicleResponse;
.super Ljava/lang/Object;
.source "VehicleResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/networking/response/VehicleResponse$Threshold;,
        Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;,
        Lcom/texa/careapp/networking/response/VehicleResponse$LampStatusResponseItem;,
        Lcom/texa/careapp/networking/response/VehicleResponse$LampStatusResponseCollection;,
        Lcom/texa/careapp/networking/response/VehicleResponse$ParameterStatusResponseItem;,
        Lcom/texa/careapp/networking/response/VehicleResponse$ParameterStatusReponseCollection;,
        Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;,
        Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmResponse;,
        Lcom/texa/careapp/networking/response/VehicleResponse$VehicleAlarmCollectionResponse;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VehicleResponse"


# instance fields
.field public vehicle:Lcom/texa/careapp/networking/response/VehicleResponse$VehicleObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
