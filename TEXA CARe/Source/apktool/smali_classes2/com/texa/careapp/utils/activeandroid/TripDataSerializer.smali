.class public final Lcom/texa/careapp/utils/activeandroid/TripDataSerializer;
.super Lcom/activeandroid/serializer/TypeSerializer;
.source "TripDataSerializer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TripDataSerializer"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/activeandroid/serializer/TypeSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/Object;)Lcom/texa/careapp/model/TripModel$TripData;
    .locals 5

    .line 47
    new-instance v0, Lcom/texa/careapp/model/TripModel$TripData;

    invoke-direct {v0}, Lcom/texa/careapp/model/TripModel$TripData;-><init>()V

    if-nez p1, :cond_0

    .line 49
    sget-object p1, Lcom/texa/careapp/utils/activeandroid/TripDataSerializer;->TAG:Ljava/lang/String;

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

    const-string v1, "odo"

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
    const-string v2, "time"

    .line 55
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    :cond_2
    if-eqz v1, :cond_3

    .line 58
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    iput p1, v0, Lcom/texa/careapp/model/TripModel$TripData;->odo:I

    :cond_3
    if-eqz v3, :cond_4

    .line 60
    new-instance p1, Ljava/util/Date;

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object p1, v0, Lcom/texa/careapp/model/TripModel$TripData;->time:Ljava/util/Date;

    :cond_4
    return-object v0
.end method

.method public bridge synthetic deserialize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/activeandroid/TripDataSerializer;->deserialize(Ljava/lang/Object;)Lcom/texa/careapp/model/TripModel$TripData;

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

    .line 22
    const-class v0, Lcom/texa/careapp/model/TripModel$TripData;

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

    .line 27
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/activeandroid/TripDataSerializer;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 35
    :cond_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 36
    check-cast p1, Lcom/texa/careapp/model/TripModel$TripData;

    .line 37
    iget v1, p1, Lcom/texa/careapp/model/TripModel$TripData;->odo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "odo"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 39
    iget-object v1, p1, Lcom/texa/careapp/model/TripModel$TripData;->time:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 40
    iget-object p1, p1, Lcom/texa/careapp/model/TripModel$TripData;->time:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "time"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 42
    :cond_1
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
