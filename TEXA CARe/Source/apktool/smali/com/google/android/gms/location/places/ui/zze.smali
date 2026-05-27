.class final Lcom/google/android/gms/location/places/ui/zze;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic zzdl:Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/location/places/ui/zze;->zzdl:Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/location/places/ui/zze;->zzdl:Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;

    invoke-static {p1}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzb(Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/location/places/ui/zze;->zzdl:Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;

    invoke-static {p1}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->zzc(Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;)V

    :cond_0
    return-void
.end method
