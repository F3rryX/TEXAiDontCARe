.class public Lcom/texa/careapp/app/MainActivity$RequestTyresSwapConfigurationDialogEvent;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestTyresSwapConfigurationDialogEvent"
.end annotation


# instance fields
.field private mVehicleId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity$RequestTyresSwapConfigurationDialogEvent;->mVehicleId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getVehicleId()Ljava/lang/String;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity$RequestTyresSwapConfigurationDialogEvent;->mVehicleId:Ljava/lang/String;

    return-object v0
.end method
