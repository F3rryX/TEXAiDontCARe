.class public Lcom/texa/careapp/networking/response/VehicleResponse$Threshold;
.super Ljava/lang/Object;
.source "VehicleResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/networking/response/VehicleResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Threshold"
.end annotation


# instance fields
.field public date:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public odometer:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final synthetic this$0:Lcom/texa/careapp/networking/response/VehicleResponse;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/networking/response/VehicleResponse;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/texa/careapp/networking/response/VehicleResponse$Threshold;->this$0:Lcom/texa/careapp/networking/response/VehicleResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
