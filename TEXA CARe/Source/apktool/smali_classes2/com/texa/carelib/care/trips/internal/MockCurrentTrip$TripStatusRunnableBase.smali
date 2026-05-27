.class abstract Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripStatusRunnableBase;
.super Ljava/lang/Object;
.source "MockCurrentTrip.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "TripStatusRunnableBase"
.end annotation


# instance fields
.field private final mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field final synthetic this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripStatusRunnableBase;->this$0:Lcom/texa/carelib/care/trips/internal/MockCurrentTrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p2, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripStatusRunnableBase;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method protected getScheduler()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/texa/carelib/care/trips/internal/MockCurrentTrip$TripStatusRunnableBase;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
