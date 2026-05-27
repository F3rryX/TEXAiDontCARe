.class public Lcom/texa/careapp/utils/gson/ThresholdListSerializer;
.super Ljava/lang/Object;
.source "ThresholdListSerializer.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "Lcom/texa/careapp/model/ThresholdModelList;",
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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 31
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    new-instance v2, Lcom/texa/careapp/utils/DateTypeAdapter;

    invoke-direct {v2}, Lcom/texa/careapp/utils/DateTypeAdapter;-><init>()V

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/utils/gson/ThresholdListSerializer;->mGson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public serialize(Lcom/texa/careapp/model/ThresholdModelList;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 4

    .line 39
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 41
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/texa/careapp/model/ThresholdModelList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ThresholdModel;

    .line 44
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 46
    invoke-virtual {v0}, Lcom/texa/careapp/model/ThresholdModel;->getDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/texa/careapp/utils/gson/ThresholdListSerializer;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0}, Lcom/texa/careapp/model/ThresholdModel;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v2

    const-string v3, "date"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 50
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/ThresholdModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {v0}, Lcom/texa/careapp/model/ThresholdModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "odometer"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/texa/careapp/utils/gson/ThresholdListSerializer;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0}, Lcom/texa/careapp/model/ThresholdModel;->getType()Lcom/texa/careapp/model/ThresholdModel$Type;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_2
    const-string p1, "list"

    .line 59
    invoke-virtual {p2, p1, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object p2
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 22
    check-cast p1, Lcom/texa/careapp/model/ThresholdModelList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/texa/careapp/utils/gson/ThresholdListSerializer;->serialize(Lcom/texa/careapp/model/ThresholdModelList;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
