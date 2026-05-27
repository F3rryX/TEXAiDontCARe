.class public Lcom/texa/careapp/utils/activeandroid/FirmwareVersionTypeSerializer;
.super Lcom/activeandroid/serializer/TypeSerializer;
.source "FirmwareVersionTypeSerializer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FirmwareVersionTypeSerializer"


# instance fields
.field private mGson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/activeandroid/serializer/TypeSerializer;-><init>()V

    .line 22
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/utils/activeandroid/FirmwareVersionTypeSerializer;->mGson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/lang/Object;)Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 51
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/texa/careapp/utils/activeandroid/FirmwareVersionTypeSerializer;->mGson:Lcom/google/gson/Gson;

    check-cast p1, Ljava/lang/String;

    const-class v2, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/core/utils/FirmwareVersion;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 53
    sget-object v1, Lcom/texa/careapp/utils/activeandroid/FirmwareVersionTypeSerializer;->TAG:Ljava/lang/String;

    const-string v2, "got exception"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public bridge synthetic deserialize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/activeandroid/FirmwareVersionTypeSerializer;->deserialize(Ljava/lang/Object;)Lcom/texa/carelib/core/utils/FirmwareVersion;

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

    .line 27
    const-class v0, Lcom/texa/carelib/core/utils/FirmwareVersion;

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

    .line 32
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/utils/activeandroid/FirmwareVersionTypeSerializer;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
