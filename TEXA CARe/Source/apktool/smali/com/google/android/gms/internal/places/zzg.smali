.class public final Lcom/google/android/gms/internal/places/zzg;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/places/zzg;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzda:Lcom/google/android/gms/internal/places/zzg;

.field private static final zzdb:Lcom/google/android/gms/internal/places/zzg;


# instance fields
.field private final zzdc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/places/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/places/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/places/zzg;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/places/zzg;

    const-string v1, "Home"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/places/zzg;->zzda:Lcom/google/android/gms/internal/places/zzg;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/places/zzg;

    const-string v1, "Work"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/places/zzg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/places/zzg;->zzdb:Lcom/google/android/gms/internal/places/zzg;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/places/zzg;->zzdc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/places/zzg;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/places/zzg;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzg;->zzdc:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/places/zzg;->zzdc:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzg;->zzdc:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/places/zzg;->zzdc:Ljava/lang/String;

    const-string v2, "alias"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/places/zzg;->zzdc:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 18
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
