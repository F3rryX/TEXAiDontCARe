.class public Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;
.super Landroidx/fragment/app/Fragment;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private zzde:Landroid/view/View;

.field private zzdf:Landroid/view/View;

.field private zzdg:Landroid/widget/EditText;

.field private zzdh:Z

.field private zzdi:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private zzdj:Lcom/google/android/gms/location/places/AutocompleteFilter;

.field private zzdk:Lcom/google/android/gms/location/places/ui/PlaceSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdh:Z

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzn()V

    return-void
.end method

.method private final zzm()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdg:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdf:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final zzn()V
    .locals 6

    const-string v0, "Could not open autocomplete activity"

    const-string v1, "Places"

    const/4 v2, -0x1

    .line 33
    :try_start_0
    new-instance v3, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;-><init>(I)V

    iget-object v4, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdi:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 34
    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;->setBoundsBias(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdj:Lcom/google/android/gms/location/places/AutocompleteFilter;

    .line 35
    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;->setFilter(Lcom/google/android/gms/location/places/AutocompleteFilter;)Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdg:Landroid/widget/EditText;

    .line 36
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;->zzg(Ljava/lang/String;)Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;

    move-result-object v3

    const/4 v4, 0x1

    .line 37
    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;->zzd(I)Lcom/google/android/gms/location/places/ui/PlaceAutocomplete$IntentBuilder;

    move-result-object v3

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/location/places/ui/zzc;->build(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v3

    .line 39
    iput-boolean v4, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdh:Z

    const/16 v4, 0x76d5

    .line 40
    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 47
    iget v4, v3, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I

    .line 48
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v3

    .line 43
    invoke-virtual {v3}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getConnectionStatusCode()I

    move-result v4

    .line 44
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eq v4, v2, :cond_0

    .line 50
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x76d6

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorDialogFragment(Landroid/app/Activity;II)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdh:Z

    const/16 v0, 0x76d5

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete;->getPlace(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/location/places/Place;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdk:Lcom/google/android/gms/location/places/ui/PlaceSelectionListener;

    if-eqz v1, :cond_0

    .line 58
    invoke-interface {v1, v0}, Lcom/google/android/gms/location/places/ui/PlaceSelectionListener;->onPlaceSelected(Lcom/google/android/gms/location/places/Place;)V

    .line 59
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/location/places/Place;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/google/android/gms/location/places/ui/PlaceAutocomplete;->getStatus(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdk:Lcom/google/android/gms/location/places/ui/PlaceSelectionListener;

    if-eqz v1, :cond_2

    .line 63
    invoke-interface {v1, v0}, Lcom/google/android/gms/location/places/ui/PlaceSelectionListener;->onError(Lcom/google/android/gms/common/api/Status;)V

    .line 64
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 2
    sget p3, Lcom/google/android/gms/location/places/R$layout;->place_autocomplete_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    sget p2, Lcom/google/android/gms/location/places/R$id;->place_autocomplete_search_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzde:Landroid/view/View;

    .line 4
    sget p2, Lcom/google/android/gms/location/places/R$id;->place_autocomplete_clear_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdf:Landroid/view/View;

    .line 5
    sget p2, Lcom/google/android/gms/location/places/R$id;->place_autocomplete_search_input:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdg:Landroid/widget/EditText;

    .line 6
    new-instance p2, Lcom/google/android/gms/location/places/ui/zzg;

    invoke-direct {p2, p0}, Lcom/google/android/gms/location/places/ui/zzg;-><init>(Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;)V

    .line 7
    iget-object p3, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzde:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p3, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdg:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdf:Landroid/view/View;

    new-instance p3, Lcom/google/android/gms/location/places/ui/zzf;

    invoke-direct {p3, p0}, Lcom/google/android/gms/location/places/ui/zzf;-><init>(Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzm()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzde:Landroid/view/View;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdf:Landroid/view/View;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdg:Landroid/widget/EditText;

    .line 15
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public setBoundsBias(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdi:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-void
.end method

.method public setFilter(Lcom/google/android/gms/location/places/AutocompleteFilter;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdj:Lcom/google/android/gms/location/places/AutocompleteFilter;

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdg:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzde:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnPlaceSelectedListener(Lcom/google/android/gms/location/places/ui/PlaceSelectionListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdk:Lcom/google/android/gms/location/places/ui/PlaceSelectionListener;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzdg:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/location/places/ui/SupportPlaceAutocompleteFragment;->zzm()V

    return-void
.end method
