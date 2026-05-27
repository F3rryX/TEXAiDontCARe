.class Lcom/texa/carelib/care/vehicle/internal/SubscribedObjectsPayloadComposerLegacy;
.super Ljava/lang/Object;
.source "SubscribedObjectsPayloadComposerLegacy.java"

# interfaces
.implements Lcom/texa/carelib/care/vehicle/internal/SubscribedObjectsPayloadComposer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommandId()B
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getPayload(IJLjava/util/Set;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)[B"
        }
    .end annotation

    .line 21
    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 22
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 26
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    .line 27
    invoke-static {v0, p4}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedInt(Ljava/nio/ByteBuffer;Ljava/lang/Long;)Z

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedInt(Ljava/nio/ByteBuffer;Ljava/lang/Long;)Z

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
