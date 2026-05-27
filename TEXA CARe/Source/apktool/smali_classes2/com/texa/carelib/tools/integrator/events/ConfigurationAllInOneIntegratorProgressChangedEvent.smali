.class public Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorProgressChangedEvent;
.super Ljava/lang/Object;
.source "ConfigurationAllInOneIntegratorProgressChangedEvent.java"


# instance fields
.field private final mProgress:F

.field private final mStatus:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;F)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorProgressChangedEvent;->mStatus:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    .line 27
    iput p2, p0, Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorProgressChangedEvent;->mProgress:F

    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    .line 35
    iget v0, p0, Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorProgressChangedEvent;->mProgress:F

    return v0
.end method

.method public getStatus()Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/events/ConfigurationAllInOneIntegratorProgressChangedEvent;->mStatus:Lcom/texa/carelib/tools/integrator/ConfigurationAllInOneIntegratorStatus;

    return-object v0
.end method
