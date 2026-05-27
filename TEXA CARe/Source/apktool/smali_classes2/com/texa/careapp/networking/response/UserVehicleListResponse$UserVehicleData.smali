.class public Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;
.super Ljava/lang/Object;
.source "UserVehicleListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/networking/response/UserVehicleListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserVehicleData"
.end annotation


# instance fields
.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hwid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public plate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public selectionData:Lcom/texa/careapp/networking/response/UserVehicleListResponse$SelectionData;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final synthetic this$0:Lcom/texa/careapp/networking/response/UserVehicleListResponse;

.field public vehicleId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/networking/response/UserVehicleListResponse;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$UserVehicleData;->this$0:Lcom/texa/careapp/networking/response/UserVehicleListResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
