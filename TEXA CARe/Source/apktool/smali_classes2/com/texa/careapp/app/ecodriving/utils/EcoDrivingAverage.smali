.class public Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;
.super Ljava/lang/Object;
.source "EcoDrivingAverage.java"


# instance fields
.field private duration:Ljava/lang/Double;

.field private final typeId:Ljava/lang/Integer;

.field private final value:Ljava/lang/Double;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Ljava/lang/Double;D)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->typeId:Ljava/lang/Integer;

    .line 27
    iput-object p2, p0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->value:Ljava/lang/Double;

    .line 28
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->duration:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public getDuration()Ljava/lang/Double;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->duration:Ljava/lang/Double;

    return-object v0
.end method

.method public getTypeId()Ljava/lang/Integer;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->typeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getValue()Ljava/lang/Double;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->value:Ljava/lang/Double;

    return-object v0
.end method

.method public setDuration(Ljava/lang/Double;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingAverage;->duration:Ljava/lang/Double;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->buildGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
