.class public Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;
.super Ljava/lang/Object;
.source "VehicleResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/networking/response/VehicleResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Deadline"
.end annotation


# instance fields
.field public expireDate:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public expireOdo:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public startDate:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public startOdo:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final synthetic this$0:Lcom/texa/careapp/networking/response/VehicleResponse;

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/networking/response/VehicleResponse;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/texa/careapp/networking/response/VehicleResponse$Deadline;->this$0:Lcom/texa/careapp/networking/response/VehicleResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
