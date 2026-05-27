.class public Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;
.super Lcom/texa/careapp/app/ecodriving/EcoDrivingRxBus;
.source "MainEcoDrivingBus.java"


# static fields
.field private static instance:Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;

    invoke-direct {v0}, Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;-><init>()V

    sput-object v0, Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;->instance:Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/texa/careapp/app/ecodriving/EcoDrivingRxBus;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;
    .locals 1

    .line 12
    sget-object v0, Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;->instance:Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;

    invoke-direct {v0}, Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;-><init>()V

    sput-object v0, Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;->instance:Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;

    .line 14
    :cond_0
    sget-object v0, Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;->instance:Lcom/texa/careapp/app/ecodriving/MainEcoDrivingBus;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic post(Lcom/texa/careapp/app/ecodriving/UpdateEcoDrivingDataEvent;)V
    .locals 0

    .line 7
    invoke-super {p0, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingRxBus;->post(Lcom/texa/careapp/app/ecodriving/UpdateEcoDrivingDataEvent;)V

    return-void
.end method
