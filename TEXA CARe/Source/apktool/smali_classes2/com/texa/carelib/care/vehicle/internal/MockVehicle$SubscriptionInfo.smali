.class Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;
.super Ljava/lang/Object;
.source "MockVehicle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/vehicle/internal/MockVehicle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubscriptionInfo"
.end annotation


# instance fields
.field private mDateLastNotify:Ljava/util/Date;

.field private mTimeout:J

.field final synthetic this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getDateLastNotify()Ljava/util/Date;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;->mDateLastNotify:Ljava/util/Date;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .line 507
    iget-wide v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;->mTimeout:J

    return-wide v0
.end method

.method setDateLastNotify(Ljava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;->mDateLastNotify:Ljava/util/Date;

    return-object p0
.end method

.method public setTimeout(J)Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;
    .locals 0

    .line 518
    iput-wide p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;->mTimeout:J

    return-object p0
.end method
