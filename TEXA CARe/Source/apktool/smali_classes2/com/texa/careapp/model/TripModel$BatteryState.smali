.class public Lcom/texa/careapp/model/TripModel$BatteryState;
.super Ljava/lang/Object;
.source "TripModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/model/TripModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatteryState"
.end annotation


# instance fields
.field public min:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public off:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public on:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
