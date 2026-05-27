.class public Lcom/texa/careapp/networking/response/UserVehicleListResponse$Selection;
.super Ljava/lang/Object;
.source "UserVehicleListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/networking/response/UserVehicleListResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Selection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/networking/response/UserVehicleListResponse;

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/networking/response/UserVehicleListResponse;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/texa/careapp/networking/response/UserVehicleListResponse$Selection;->this$0:Lcom/texa/careapp/networking/response/UserVehicleListResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
