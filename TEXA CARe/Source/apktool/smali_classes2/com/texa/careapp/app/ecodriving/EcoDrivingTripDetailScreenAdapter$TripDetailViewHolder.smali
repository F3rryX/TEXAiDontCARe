.class Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EcoDrivingTripDetailScreenAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TripDetailViewHolder"
.end annotation


# static fields
.field private static final ACQUIRE_POSITION_DISPOSABLE_KEY:Ljava/lang/String; = "ACQUIRE_POSITION_DISPOSABLE_KEY"


# instance fields
.field final dateFormat:Ljava/text/SimpleDateFormat;

.field final mDate:Landroid/widget/TextView;

.field final mDescription:Landroidx/appcompat/widget/AppCompatTextView;

.field private final mDisposableHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field final mIcon:Landroid/widget/ImageView;

.field final mItemButton:Landroid/widget/RelativeLayout;

.field final mTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field final separator:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;)V
    .locals 3

    .line 102
    invoke-virtual {p1}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 91
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "EEE HH.mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->mDisposableHashMap:Ljava/util/HashMap;

    .line 103
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->screenEcoDrivingTripEventItemButton:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->mItemButton:Landroid/widget/RelativeLayout;

    .line 104
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->screenEcoDrivingTripEventItemDate:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->mDate:Landroid/widget/TextView;

    .line 105
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->screenEcoDrivingTripEventItemTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->mTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 106
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->screenEcoDrivingTripEventItemDescription:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->mDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->screenEcoDrivingTripEventItemIcon:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 108
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->screenEcoDrivingTripEventItemSeparator:Landroid/view/View;

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->separator:Landroid/view/View;

    .line 109
    invoke-virtual {p1}, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripEventItemBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private acquiredPosition(Landroidx/appcompat/widget/AppCompatTextView;Landroid/content/Context;Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;)V
    .locals 9

    if-eqz p3, :cond_0

    .line 212
    invoke-virtual {p4}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLat()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLng()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->mDisposableHashMap:Ljava/util/HashMap;

    const-string v1, "ACQUIRE_POSITION_DISPOSABLE_KEY"

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeDispose(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->mDisposableHashMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 215
    invoke-virtual {p4}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLat()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p4}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLng()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const/4 v8, 0x1

    move-object v2, p3

    .line 214
    invoke-virtual/range {v2 .. v8}, Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;->getReverseGeocodeObservable(Ljava/util/Locale;DDI)Lio/reactivex/Observable;

    move-result-object p3

    .line 216
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {p3, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    .line 217
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {p3, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance v2, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2, p4}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;Landroidx/appcompat/widget/AppCompatTextView;Landroid/content/Context;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;)V

    .line 218
    invoke-virtual {p3, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    sget-object p3, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda4;

    .line 228
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p2

    .line 229
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda1;-><init>(Landroidx/appcompat/widget/AppCompatTextView;)V

    sget-object p1, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda2;->INSTANCE:Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda2;

    .line 230
    invoke-virtual {p2, p3, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 214
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private getHumanReadableAddress(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 237
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 238
    invoke-static {p2}, Lcom/texa/careapp/utils/Utils;->checkDoubleAddress(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/Address;

    invoke-virtual {p2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 241
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f110b00

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    invoke-virtual {p1}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    .line 243
    :goto_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/Address;

    invoke-virtual {p2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_4

    .line 247
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    move-object p2, v2

    :goto_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " - "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    move-object v2, p1

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    return-object p1
.end method

.method private isDurationValid(Ljava/lang/Float;Ljava/lang/Float;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 207
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$acquiredPosition$2(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$acquiredPosition$3(Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 230
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$acquiredPosition$4(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UNABLE TO GET REVERSE GEO CODING"

    .line 231
    invoke-static {p0, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateEventLocation(Landroidx/appcompat/widget/AppCompatTextView;Landroid/content/Context;Ljava/util/List;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;)Lcom/texa/careapp/app/ecodriving/model/TripEventModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/widget/AppCompatTextView;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
            ")",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    if-eqz p3, :cond_3

    .line 253
    invoke-direct {p0, p2, p3}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->getHumanReadableAddress(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->setLabel(Ljava/lang/String;)V

    .line 254
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p4, p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->setLastMod(Ljava/util/Date;)V

    .line 256
    invoke-virtual {p4}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTripObject()Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object p1

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p4}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_START:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 259
    invoke-direct {p0, p2, p3}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->getHumanReadableAddress(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setStartLabel(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 261
    :cond_0
    invoke-virtual {p4}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 262
    invoke-virtual {p4}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->DRIVING_STOP_TEMP:Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;

    invoke-virtual {v2}, Lcom/texa/care/eco_driving/events/drivingevents/DrivingEventType;->getNumericType()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 263
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->getHumanReadableAddress(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setEndLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_2
    :goto_1
    invoke-static {p4, p2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    if-eqz v0, :cond_3

    .line 269
    invoke-virtual {p1, v3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setSyncNeeded(Z)V

    .line 270
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p3}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->setLastMod(Ljava/util/Date;)V

    .line 271
    invoke-static {p1, p2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    :cond_3
    return-object p4
.end method


# virtual methods
.method public bindView(Landroid/content/Context;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;ZLpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Lcom/texa/careapp/CareApplication$ApplicationComponent;Lcom/texa/care/navigation/Navigator;Ljava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
            "Z",
            "Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;",
            "Lcom/texa/careapp/CareApplication$ApplicationComponent;",
            "Lcom/texa/care/navigation/Navigator;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripEventModel;",
            ">;I)V"
        }
    .end annotation

    move-object v8, p0

    move-object v9, p1

    .line 116
    iget-object v10, v8, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->mItemButton:Landroid/widget/RelativeLayout;

    new-instance v11, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda0;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p6

    move-object/from16 v5, p5

    move/from16 v6, p8

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;Landroid/content/Context;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;Lcom/texa/care/navigation/Navigator;Lcom/texa/careapp/CareApplication$ApplicationComponent;ILjava/util/List;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, v8, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->mDate:Landroid/widget/TextView;

    iget-object v1, v8, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTimestamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, v8, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->mDate:Landroid/widget/TextView;

    sget-object v1, Lcom/texa/careapp/Constants;->ECO_DRIVING_COLOR:Landroid/util/SparseIntArray;

    .line 181
    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 180
    invoke-static {p1, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    iget-object v0, v8, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->mTitle:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v1, Lcom/texa/careapp/Constants;->ECO_DRIVING_TEXT:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 184
    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, v8, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->mDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/utils/EcoDrivingUtils;->splitLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, v8, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->mDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    move-object v1, p2

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLng()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLat()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    :cond_1
    iget-object v0, v8, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->mDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 190
    iget-object v0, v8, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->mDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f110cc4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 191
    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLat()Ljava/lang/Double;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLng()Ljava/lang/Double;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 190
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, v8, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->mDescription:Landroidx/appcompat/widget/AppCompatTextView;

    move-object v1, p2

    move-object/from16 v3, p4

    invoke-direct {p0, v0, p1, v3, p2}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->acquiredPosition(Landroidx/appcompat/widget/AppCompatTextView;Landroid/content/Context;Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;)V

    goto :goto_0

    :cond_2
    move-object v1, p2

    .line 194
    iget-object v0, v8, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->mDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 196
    :goto_0
    iget-object v0, v8, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->mIcon:Landroid/widget/ImageView;

    sget-object v3, Lcom/texa/careapp/Constants;->ECO_DRIVING_IMAGES:Landroid/util/SparseIntArray;

    .line 197
    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTypeId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 196
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_3

    .line 200
    iget-object v0, v8, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->separator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 202
    :cond_3
    iget-object v0, v8, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->separator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$acquiredPosition$1$com-texa-careapp-app-ecodriving-EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder(Landroidx/appcompat/widget/AppCompatTextView;Landroid/content/Context;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;Ljava/util/List;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    :try_start_0
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->updateEventLocation(Landroidx/appcompat/widget/AppCompatTextView;Landroid/content/Context;Ljava/util/List;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;)Lcom/texa/careapp/app/ecodriving/model/TripEventModel;

    move-result-object p1

    .line 222
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getLabel()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 224
    invoke-virtual {p1}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    const-string p1, ""

    .line 226
    :goto_0
    invoke-static {p1}, Lcom/texa/careapp/utils/EcoDrivingUtils;->splitLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$bindView$0$com-texa-careapp-app-ecodriving-EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder(Landroid/content/Context;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;Lcom/texa/care/navigation/Navigator;Lcom/texa/careapp/CareApplication$ApplicationComponent;ILjava/util/List;Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 117
    invoke-static/range {p1 .. p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_TAPPED_EVENT:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v3}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, " - "

    if-eqz p2, :cond_9

    .line 125
    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTripObject()Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    .line 128
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 129
    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTripObject()Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->isParent()Z

    move-result v5

    if-nez v5, :cond_1

    .line 130
    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTripObject()Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getIdParent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getParentTrip(Ljava/lang/String;)Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 132
    invoke-virtual {v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getTripDuration()J

    move-result-wide v8

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x0

    .line 134
    :goto_0
    invoke-virtual {v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartOdo()Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndOdo()Ljava/lang/Float;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->isDurationValid(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 135
    invoke-virtual {v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndOdo()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartOdo()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTripObject()Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getTripDuration()J

    move-result-wide v8

    .line 139
    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTripObject()Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartOdo()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTripObject()Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndOdo()Ljava/lang/Float;

    move-result-object v10

    invoke-direct {v0, v5, v10}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder;->isDurationValid(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTripObject()Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndOdo()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTripObject()Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartOdo()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 144
    :cond_2
    :goto_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v10

    .line 145
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v12

    sub-long/2addr v8, v12

    .line 147
    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTripObject()Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartLabel()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 148
    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTripObject()Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartLabel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/texa/careapp/utils/EcoDrivingUtils;->splitCityLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v2

    .line 149
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTripObject()Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndLabel()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 150
    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTripObject()Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndLabel()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/texa/careapp/utils/EcoDrivingUtils;->splitCityLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_4
    move-object v12, v2

    :goto_3
    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v5, :cond_5

    const-string v6, ""

    .line 151
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v12, :cond_5

    .line 152
    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const v6, 0x7f110992

    .line 153
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v5, v7, v14

    aput-object v12, v7, v15

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_5
    move-object v5, v2

    .line 157
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v3, v6, v3

    if-eqz v3, :cond_6

    const v3, 0x7f110985

    .line 158
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v15, [Ljava/lang/Object;

    .line 159
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v14

    .line 158
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_6
    move-object v3, v2

    .line 162
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/texa/careapp/app/ecodriving/model/TripEventModel;->getTripObject()Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndTrip()J

    move-result-wide v6

    const-wide/16 v16, 0x0

    cmp-long v4, v6, v16

    if-lez v4, :cond_8

    cmp-long v4, v10, v16

    if-lez v4, :cond_7

    cmp-long v4, v8, v16

    if-lez v4, :cond_7

    const v2, 0x7f110986

    .line 165
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v13, [Ljava/lang/Object;

    .line 166
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v14

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v15

    .line 164
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_7
    const-wide/16 v6, 0x0

    cmp-long v4, v8, v6

    if-lez v4, :cond_8

    const v2, 0x7f110987

    .line 169
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/Object;

    .line 170
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v14

    .line 168
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_8
    :goto_6
    move-object v9, v2

    move-object v8, v3

    move-object v7, v5

    goto :goto_7

    :cond_9
    move-object v7, v2

    move-object v8, v7

    move-object v9, v8

    .line 175
    :goto_7
    new-instance v1, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;

    move-object v3, v1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/texa/careapp/app/ecodriving/EcoDrivingTripDetailMapScreen;-><init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/app/ecodriving/model/TripEventModel;)V

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method
