.class public Lcom/texa/careapp/networking/response/VehicleSelectionResponse$Selection;
.super Ljava/lang/Object;
.source "VehicleSelectionResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/networking/response/VehicleSelectionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Selection"
.end annotation


# instance fields
.field private brandId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private fragmentId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final synthetic this$0:Lcom/texa/careapp/networking/response/VehicleSelectionResponse;

.field private value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/networking/response/VehicleSelectionResponse;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/texa/careapp/networking/response/VehicleSelectionResponse$Selection;->this$0:Lcom/texa/careapp/networking/response/VehicleSelectionResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrandId()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/texa/careapp/networking/response/VehicleSelectionResponse$Selection;->brandId:J

    return-wide v0
.end method

.method public getFragmentId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/texa/careapp/networking/response/VehicleSelectionResponse$Selection;->fragmentId:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/texa/careapp/networking/response/VehicleSelectionResponse$Selection;->value:Ljava/lang/String;

    return-object v0
.end method
