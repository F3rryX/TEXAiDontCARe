.class public Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;
.super Lcom/google/android/gms/location/places/ui/zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/ui/PlaceAutocomplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const-string v0, "com.google.android.gms.location.places.ui.AUTOCOMPLETE"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/location/places/ui/zzc;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;->intent:Landroid/content/Intent;

    sget v1, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    const-string v2, "gmscore_client_jar_version"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v0, "origin"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public build(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    .line 20
    invoke-super {p0, p1}, Lcom/google/android/gms/location/places/ui/zzc;->build(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public setBoundsBias(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;
    .locals 2

    const-string v0, "bounds"

    if-eqz p1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setFilter(Lcom/google/android/gms/location/places/AutocompleteFilter;)Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;
    .locals 2

    const-string v0, "filter"

    if-eqz p1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final zzd(I)Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;
    .locals 2

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;->intent:Landroid/content/Intent;

    const-string v0, "origin"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;
    .locals 2

    const-string v0, "initial_query"

    if-eqz p1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
