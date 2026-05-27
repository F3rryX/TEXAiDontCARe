.class public Lcom/texa/careapp/utils/VehicleObserver$VehicleChangedEvent;
.super Ljava/lang/Object;
.source "VehicleObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/utils/VehicleObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VehicleChangedEvent"
.end annotation


# instance fields
.field private mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

.field final synthetic this$0:Lcom/texa/careapp/utils/VehicleObserver;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/utils/VehicleObserver;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/texa/careapp/utils/VehicleObserver$VehicleChangedEvent;->this$0:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/texa/careapp/utils/VehicleObserver$VehicleChangedEvent;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method


# virtual methods
.method public getVehicleModel()Lcom/texa/careapp/model/VehicleModel;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/texa/careapp/utils/VehicleObserver$VehicleChangedEvent;->mVehicleModel:Lcom/texa/careapp/model/VehicleModel;

    return-object v0
.end method
