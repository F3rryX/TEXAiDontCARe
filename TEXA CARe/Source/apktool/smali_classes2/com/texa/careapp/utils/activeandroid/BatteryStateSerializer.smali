.class public Lcom/texa/careapp/utils/activeandroid/BatteryStateSerializer;
.super Lcom/activeandroid/serializer/TypeSerializer;
.source "BatteryStateSerializer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BatteryStateSerializer"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/activeandroid/serializer/TypeSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/Object;)Lcom/texa/careapp/model/TripModel$BatteryState;
    .locals 6

    .line 45
    new-instance v0, Lcom/texa/careapp/model/TripModel$BatteryState;

    invoke-direct {v0}, Lcom/texa/careapp/model/TripModel$BatteryState;-><init>()V

    if-nez p1, :cond_0

    .line 48
    sget-object p1, Lcom/texa/careapp/utils/activeandroid/BatteryStateSerializer;->TAG:Ljava/lang/String;

    const-string v1, "deserialize obj null"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 52
    :cond_0
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;

    const-string v1, "off"

    .line 54
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    const-string v2, "on"

    .line 55
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    const-string v4, "min"

    .line 56
    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    :cond_3
    if-eqz v1, :cond_4

    .line 59
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p1

    iput p1, v0, Lcom/texa/careapp/model/TripModel$BatteryState;->off:F

    :cond_4
    if-eqz v2, :cond_5

    .line 61
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p1

    iput p1, v0, Lcom/texa/careapp/model/TripModel$BatteryState;->on:F

    :cond_5
    if-eqz v3, :cond_6

    .line 63
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p1

    iput p1, v0, Lcom/texa/careapp/model/TripModel$BatteryState;->min:F

    :cond_6
    return-object v0
.end method

.method public bridge synthetic deserialize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/activeandroid/BatteryStateSerializer;->deserialize(Ljava/lang/Object;)Lcom/texa/careapp/model/TripModel$BatteryState;

    move-result-object p1

    return-object p1
.end method

.method public getDeserializedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 20
    const-class v0, Lcom/texa/careapp/model/TripModel$BatteryState;

    return-object v0
.end method

.method public getSerializedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 25
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/activeandroid/BatteryStateSerializer;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 33
    :cond_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 34
    check-cast p1, Lcom/texa/careapp/model/TripModel$BatteryState;

    .line 36
    iget v1, p1, Lcom/texa/careapp/model/TripModel$BatteryState;->off:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 37
    iget v1, p1, Lcom/texa/careapp/model/TripModel$BatteryState;->on:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 38
    iget p1, p1, Lcom/texa/careapp/model/TripModel$BatteryState;->min:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "min"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 40
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
