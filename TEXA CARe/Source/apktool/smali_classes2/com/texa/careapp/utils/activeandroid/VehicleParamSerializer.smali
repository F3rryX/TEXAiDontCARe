.class public Lcom/texa/careapp/utils/activeandroid/VehicleParamSerializer;
.super Ljava/lang/Object;
.source "VehicleParamSerializer.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "Lcom/texa/careapp/model/VehicleParam;",
        ">;"
    }
.end annotation


# static fields
.field public static final PROPERTY_TYPE:Ljava/lang/String; = "type"

.field public static final PROPERTY_UNIT:Ljava/lang/String; = "unit"

.field public static final PROPERTY_VALUE:Ljava/lang/String; = "value"

.field public static final UNIT_STATE:Ljava/lang/String; = "STATE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/texa/careapp/model/VehicleParam;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 6

    .line 32
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueDataType()Lcom/texa/carelib/care/vehicle/ValueDataType;

    move-result-object p3

    .line 36
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getUnit()Lcom/texa/careapp/utils/MeasureUnit;

    move-result-object v0

    const-string/jumbo v1, "unit"

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/texa/careapp/utils/MeasureUnit;->getServerCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    sget-object v0, Lcom/texa/careapp/utils/activeandroid/VehicleParamSerializer$1;->$SwitchMap$com$texa$carelib$care$vehicle$ValueDataType:[I

    invoke-virtual {p3}, Lcom/texa/carelib/care/vehicle/ValueDataType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "value"

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "P_STRING"

    .line 55
    invoke-virtual {p2, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    sget-object p3, Lcom/texa/careapp/Constants;->STATUS_CONVERSION_MAP:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueStatus()J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 49
    invoke-virtual {p2, v3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "STATE"

    .line 50
    invoke-virtual {p2, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleParam;->getValueNumeric()Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "P_NUMBER"

    .line 45
    invoke-virtual {p2, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 23
    check-cast p1, Lcom/texa/careapp/model/VehicleParam;

    invoke-virtual {p0, p1, p2, p3}, Lcom/texa/careapp/utils/activeandroid/VehicleParamSerializer;->serialize(Lcom/texa/careapp/model/VehicleParam;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
