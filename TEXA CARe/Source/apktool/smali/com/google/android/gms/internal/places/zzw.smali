.class public abstract Lcom/google/android/gms/internal/places/zzw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzeg:Lcom/google/android/gms/internal/places/zzw;

.field private static final zzeh:Lcom/google/android/gms/internal/places/zzac;

.field private static final zzej:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/gms/internal/places/zzw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzei:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/places/zzag;

    sget-object v1, Lcom/google/android/gms/internal/places/zzbd;->zziz:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzag;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/places/zzw;->zzeg:Lcom/google/android/gms/internal/places/zzw;

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/places/zzp;->zzy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/places/zzaf;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzaf;-><init>(Lcom/google/android/gms/internal/places/zzv;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/places/zzaa;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzaa;-><init>(Lcom/google/android/gms/internal/places/zzv;)V

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/places/zzw;->zzeh:Lcom/google/android/gms/internal/places/zzac;

    .line 44
    new-instance v0, Lcom/google/android/gms/internal/places/zzy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/places/zzy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/places/zzw;->zzej:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/places/zzw;->zzei:I

    return-void
.end method

.method private static zzb(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method static synthetic zzc(B)I
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/google/android/gms/internal/places/zzw;->zzb(B)I

    move-result p0

    return p0
.end method

.method static zzc(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    .line 32
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Beginning index larger than ending index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "End index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const/16 p2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Beginning index: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method public static zzc([BII)Lcom/google/android/gms/internal/places/zzw;
    .locals 2

    add-int v0, p1, p2

    .line 5
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/places/zzw;->zzc(III)I

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/places/zzag;

    sget-object v1, Lcom/google/android/gms/internal/places/zzw;->zzeh:Lcom/google/android/gms/internal/places/zzac;

    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/gms/internal/places/zzac;->zzd([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/places/zzag;-><init>([B)V

    return-object v0
.end method

.method public static zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/places/zzw;
    .locals 2

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/places/zzag;

    sget-object v1, Lcom/google/android/gms/internal/places/zzbd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/places/zzag;-><init>([B)V

    return-object v0
.end method

.method static zzk(I)Lcom/google/android/gms/internal/places/zzae;
    .locals 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/places/zzae;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/places/zzae;-><init>(ILcom/google/android/gms/internal/places/zzv;)V

    return-object v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 2

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/places/zzw;->zzei:I

    if-nez v0, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzw;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/gms/internal/places/zzw;->zzb(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 23
    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/places/zzw;->zzei:I

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/places/zzv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/places/zzv;-><init>(Lcom/google/android/gms/internal/places/zzw;)V

    return-object v0
.end method

.method public abstract size()I
.end method

.method public final toByteArray()[B
    .locals 3

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzw;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/places/zzbd;->zziz:[B

    return-object v0

    .line 11
    :cond_0
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/google/android/gms/internal/places/zzw;->zzb([BIII)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzw;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "<ByteString@%s size=%d>"

    .line 37
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzad()Ljava/lang/String;
    .locals 2

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/places/zzbd;->UTF_8:Ljava/nio/charset/Charset;

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/places/zzw;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/places/zzw;->zzb(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzae()Z
.end method

.method protected final zzaf()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/places/zzw;->zzei:I

    return v0
.end method

.method protected abstract zzb(III)I
.end method

.method public abstract zzb(II)Lcom/google/android/gms/internal/places/zzw;
.end method

.method protected abstract zzb(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method abstract zzb(Lcom/google/android/gms/internal/places/zzt;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract zzb([BIII)V
.end method

.method public abstract zzi(I)B
.end method

.method abstract zzj(I)B
.end method
