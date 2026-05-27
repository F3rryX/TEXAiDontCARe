.class public Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;
.super Ljava/lang/Object;
.source "EcoDrivingScore.java"


# instance fields
.field private final distance:Ljava/lang/Float;

.field private duration:Ljava/lang/Float;

.field private final tripId:Ljava/lang/String;

.field private final typeId:Ljava/lang/Integer;

.field private final value:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p5, p0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->tripId:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->typeId:Ljava/lang/Integer;

    .line 35
    iput-object p2, p0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->distance:Ljava/lang/Float;

    .line 36
    iput-object p3, p0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->duration:Ljava/lang/Float;

    .line 37
    iput-object p4, p0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->value:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public getDistance()Ljava/lang/Float;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->distance:Ljava/lang/Float;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Float;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->duration:Ljava/lang/Float;

    return-object v0
.end method

.method public getTripId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->tripId:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()Ljava/lang/Integer;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->typeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getValue()Ljava/lang/Double;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->value:Ljava/lang/Double;

    return-object v0
.end method

.method public setDuration(Ljava/lang/Float;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/utils/EcoDrivingScore;->duration:Ljava/lang/Float;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->buildGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
