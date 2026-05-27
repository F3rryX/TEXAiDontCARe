.class public Lcom/texa/carelib/webservices/utils/internal/GsonDTCStatusSerializer;
.super Ljava/lang/Object;
.source "GsonDTCStatusSerializer.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "Lcom/texa/carelib/care/vehicletroubles/DTCStatus;",
        ">;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lcom/texa/carelib/care/vehicletroubles/DTCStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GsonDTCStatusSerializer"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    .line 53
    :cond_0
    const-class p2, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    array-length p3, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    aget-object v2, p2, v1

    const/4 v3, 0x0

    .line 57
    :try_start_0
    const-class v4, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    invoke-virtual {v2}, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const-class v5, Lcom/google/gson/annotations/SerializedName;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/google/gson/annotations/SerializedName;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_1

    :catch_0
    move-exception v4

    .line 59
    sget-object v5, Lcom/texa/carelib/webservices/utils/internal/GsonDTCStatusSerializer;->TAG:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const-string v7, "Unknown DTCStatus value: %s"

    invoke-static {v5, v4, v7, v6}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_2
    sget-object p1, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->Unsupported:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    return-object p1

    .line 51
    :cond_3
    :goto_2
    sget-object p1, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->Unsupported:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    return-object p1
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/texa/carelib/webservices/utils/internal/GsonDTCStatusSerializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/texa/carelib/care/vehicletroubles/DTCStatus;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 3

    if-nez p1, :cond_0

    .line 31
    sget-object p1, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->Unsupported:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    :cond_0
    const/4 p2, 0x0

    .line 35
    :try_start_0
    const-class p3, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3

    const-class v0, Lcom/google/gson/annotations/SerializedName;

    invoke-virtual {p3, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p3

    check-cast p3, Lcom/google/gson/annotations/SerializedName;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p3

    goto :goto_0

    :catch_0
    move-exception p3

    .line 37
    sget-object v0, Lcom/texa/carelib/webservices/utils/internal/GsonDTCStatusSerializer;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Could not find DTCStatus: %s"

    invoke-static {v0, p3, p1, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 41
    invoke-interface {p2}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 44
    :goto_1
    new-instance p2, Lcom/google/gson/JsonPrimitive;

    invoke-direct {p2, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 22
    check-cast p1, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    invoke-virtual {p0, p1, p2, p3}, Lcom/texa/carelib/webservices/utils/internal/GsonDTCStatusSerializer;->serialize(Lcom/texa/carelib/care/vehicletroubles/DTCStatus;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
