.class public Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;
.super Ljava/lang/Object;
.source "HintPresenter.java"


# instance fields
.field private colorRes:I

.field private count:I

.field private hint:Lcom/texa/careapp/app/ecodriving/model/HintModel;

.field protected mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private position:I


# direct methods
.method constructor <init>(Lcom/texa/careapp/CareApplication$ApplicationComponent;Lcom/texa/careapp/app/ecodriving/model/HintModel;III)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;)V

    .line 37
    iput-object p2, p0, Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;->hint:Lcom/texa/careapp/app/ecodriving/model/HintModel;

    .line 38
    iput p3, p0, Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;->position:I

    .line 39
    iput p4, p0, Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;->count:I

    .line 40
    iput p5, p0, Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;->colorRes:I

    return-void
.end method


# virtual methods
.method public afterViewInjection(Lcom/texa/careapp/databinding/ScreenEcoDrivingHintBinding;)V
    .locals 7

    .line 44
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingHintBinding;->screenEcoDrivingHintIcon:Landroid/widget/ImageView;

    .line 45
    iget-object v1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingHintBinding;->screenEcoDrivingHintInfo:Landroid/widget/TextView;

    .line 46
    iget-object v2, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingHintBinding;->screenEcoDrivingHintTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    iget-object v3, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingHintBinding;->screenEcoDrivingHintDescription:Landroid/widget/TextView;

    .line 48
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenEcoDrivingHintBinding;->screenEcoDrivingHintBackground:Landroid/widget/RelativeLayout;

    .line 50
    iget v4, p0, Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;->colorRes:I

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 52
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;->hint:Lcom/texa/careapp/app/ecodriving/model/HintModel;

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object v4, p0, Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;->hint:Lcom/texa/careapp/app/ecodriving/model/HintModel;

    invoke-virtual {v4}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v4}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;->mContext:Landroid/content/Context;

    const v0, 0x7f110999

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;->position:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 56
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    iget v4, p0, Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;->count:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 55
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;->hint:Lcom/texa/careapp/app/ecodriving/model/HintModel;

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->getIdHint()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/texa/careapp/utils/Utils;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->getTranslation(Ljava/lang/String;Ljava/lang/String;)Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;->hint:Lcom/texa/careapp/app/ecodriving/model/HintModel;

    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->isViewed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 64
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;->hint:Lcom/texa/careapp/app/ecodriving/model/HintModel;

    invoke-virtual {p1, v6}, Lcom/texa/careapp/app/ecodriving/model/HintModel;->setViewed(Z)V

    .line 65
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/hint/HintPresenter;->hint:Lcom/texa/careapp/app/ecodriving/model/HintModel;

    invoke-static {p1}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->incrementHintCountView(Lcom/texa/careapp/app/ecodriving/model/HintModel;)V

    :cond_2
    return-void
.end method
