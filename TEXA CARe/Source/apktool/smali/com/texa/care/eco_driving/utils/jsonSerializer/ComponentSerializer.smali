.class public Lcom/texa/care/eco_driving/utils/jsonSerializer/ComponentSerializer;
.super Ljava/lang/Object;
.source "ComponentSerializer.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "Lcom/texa/care/eco_driving/score/OverallScore$Component;",
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
.method public serialize(Lcom/texa/care/eco_driving/score/OverallScore$Component;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1

    .line 18
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getWeight()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo v0, "weight"

    invoke-virtual {p2, v0, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 20
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getBaseScore()Lcom/texa/care/eco_driving/score/BaseScore;

    move-result-object p3

    invoke-virtual {p3}, Lcom/texa/care/eco_driving/score/BaseScore;->getScore()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "score"

    invoke-virtual {p2, v0, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 21
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getBaseScore()Lcom/texa/care/eco_driving/score/BaseScore;

    move-result-object p3

    iget p3, p3, Lcom/texa/care/eco_driving/score/BaseScore;->MAX_SCORE:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "max_score"

    invoke-virtual {p2, v0, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 22
    invoke-virtual {p1}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getBaseScore()Lcom/texa/care/eco_driving/score/BaseScore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/score/BaseScore;->getName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "type"

    invoke-virtual {p2, p3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 15
    check-cast p1, Lcom/texa/care/eco_driving/score/OverallScore$Component;

    invoke-virtual {p0, p1, p2, p3}, Lcom/texa/care/eco_driving/utils/jsonSerializer/ComponentSerializer;->serialize(Lcom/texa/care/eco_driving/score/OverallScore$Component;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
