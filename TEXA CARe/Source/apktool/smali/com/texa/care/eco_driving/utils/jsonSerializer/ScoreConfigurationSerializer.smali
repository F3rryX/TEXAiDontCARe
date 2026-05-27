.class public Lcom/texa/care/eco_driving/utils/jsonSerializer/ScoreConfigurationSerializer;
.super Ljava/lang/Object;
.source "ScoreConfigurationSerializer.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 18
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 19
    invoke-interface {p1}, Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;->getDrivingProfile()Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/score/BaseScore$DrivingProfile;->name()Ljava/lang/String;

    move-result-object p1

    const-string p3, "driverProfile"

    invoke-virtual {p2, p3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 15
    check-cast p1, Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/texa/care/eco_driving/utils/jsonSerializer/ScoreConfigurationSerializer;->serialize(Lcom/texa/care/eco_driving/score/ScoreConfigurationProvider;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
