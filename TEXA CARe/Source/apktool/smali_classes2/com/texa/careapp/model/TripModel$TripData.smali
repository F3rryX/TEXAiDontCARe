.class public Lcom/texa/careapp/model/TripModel$TripData;
.super Ljava/lang/Object;
.source "TripModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/model/TripModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TripData"
.end annotation


# instance fields
.field public odo:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public time:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
