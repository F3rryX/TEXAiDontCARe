.class public Lcom/texa/careapp/utils/gson/ThresholdModelSerializer;
.super Ljava/lang/Object;
.source "ThresholdModelSerializer.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "Lcom/texa/careapp/model/ThresholdModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final PROPERTY_DATE:Ljava/lang/String; = "date"

.field public static final PROPERTY_ODOMETER:Ljava/lang/String; = "odometer"


# instance fields
.field private mGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Ljava/util/Date;

    new-instance v2, Lcom/texa/careapp/utils/DateTypeAdapter;

    invoke-direct {v2}, Lcom/texa/careapp/utils/DateTypeAdapter;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/utils/gson/ThresholdModelSerializer;->mGson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public serialize(Lcom/texa/careapp/model/ThresholdModel;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 2

    .line 33
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 34
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->getDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/texa/careapp/utils/gson/ThresholdModelSerializer;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {p3, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "odometer"

    invoke-virtual {p3, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/utils/gson/ThresholdModelSerializer;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p2
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 20
    check-cast p1, Lcom/texa/careapp/model/ThresholdModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/texa/careapp/utils/gson/ThresholdModelSerializer;->serialize(Lcom/texa/careapp/model/ThresholdModel;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
