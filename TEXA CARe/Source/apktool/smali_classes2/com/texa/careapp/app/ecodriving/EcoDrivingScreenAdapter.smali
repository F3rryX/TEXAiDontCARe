.class Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;
.super Lcom/texa/careapp/views/ParallaxRecyclerAdapter;
.source "EcoDrivingScreenAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/texa/careapp/views/ParallaxRecyclerAdapter<",
        "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
        ">;"
    }
.end annotation


# instance fields
.field private avgCalculator:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

.field private content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;"
        }
    .end annotation
.end field

.field private dayOfWeekFormat:Ljava/text/SimpleDateFormat;

.field private hourMinuteFormat:Ljava/text/SimpleDateFormat;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private tripVehicle:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p2}, Lcom/texa/careapp/views/ParallaxRecyclerAdapter;-><init>(Ljava/util/List;)V

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "EEEE"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->dayOfWeekFormat:Ljava/text/SimpleDateFormat;

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "HH.mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->hourMinuteFormat:Ljava/text/SimpleDateFormat;

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->content:Ljava/util/List;

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 53
    new-instance p1, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    invoke-direct {p1}, Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->avgCalculator:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->tripVehicle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->tripVehicle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->dayOfWeekFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->hourMinuteFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$300(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;)Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->avgCalculator:Lcom/texa/careapp/app/ecodriving/utils/AvgCalculator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;Lcom/texa/careapp/views/CircleDisplay;Landroid/view/View;IJ)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->initCircleDisplayAndView(Lcom/texa/careapp/views/CircleDisplay;Landroid/view/View;IJ)V

    return-void
.end method

.method private initCircleDisplayAndView(Lcom/texa/careapp/views/CircleDisplay;Landroid/view/View;IJ)V
    .locals 5

    const/16 v0, 0x64

    const/4 v1, -0x1

    if-le p3, v1, :cond_0

    if-gt p3, v0, :cond_0

    int-to-float v2, p3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 139
    :goto_0
    sget v3, Lcom/texa/careapp/utils/EcoDrivingUtils;->MAX_VALUE:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Lcom/texa/careapp/views/CircleDisplay;->showValue(FFZ)V

    .line 141
    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p3}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getReferenceColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/texa/careapp/views/CircleDisplay;->setColor(I)V

    const-wide/16 v2, 0x0

    cmp-long v4, p4, v2

    if-eqz v4, :cond_1

    .line 143
    iget-object p4, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->mContext:Landroid/content/Context;

    invoke-static {p4, p3}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getReferenceColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 145
    :cond_1
    iget-object p4, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->mContext:Landroid/content/Context;

    const p5, 0x7f06006c

    invoke-static {p4, p5}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    const p2, 0x7f090002

    .line 147
    invoke-virtual {p1, p2}, Lcom/texa/careapp/views/CircleDisplay;->setTypeface(I)V

    if-le p3, v1, :cond_2

    if-gt p3, v0, :cond_2

    .line 148
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->mContext:Landroid/content/Context;

    const p3, 0x7f1109a6

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/careapp/views/CircleDisplay;->setCustomText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItemCountImpl(Lcom/texa/careapp/views/ParallaxRecyclerAdapter;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/views/ParallaxRecyclerAdapter<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;)I"
        }
    .end annotation

    .line 68
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->content:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public onBindViewHolderImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/texa/careapp/views/ParallaxRecyclerAdapter;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Lcom/texa/careapp/views/ParallaxRecyclerAdapter<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;I)V"
        }
    .end annotation

    .line 58
    check-cast p1, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;

    iget-object p2, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->content:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {p1, p2, p3}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;->bindView(Landroid/content/Context;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)V

    return-void
.end method

.method public onCreateViewHolderImpl(Landroid/view/ViewGroup;Lcom/texa/careapp/views/ParallaxRecyclerAdapter;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/texa/careapp/views/ParallaxRecyclerAdapter<",
            "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
            ">;I)",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    .line 63
    new-instance p2, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;

    iget-object p3, p0, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00c6

    const/4 v1, 0x0

    invoke-static {p3, v0, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;

    invoke-direct {p2, p0, p1}, Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter$ViewHolder;-><init>(Lcom/texa/careapp/app/ecodriving/EcoDrivingScreenAdapter;Lcom/texa/careapp/databinding/ScreenEcoDrivingTripItemBinding;)V

    return-object p2
.end method
