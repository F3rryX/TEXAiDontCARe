.class public Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;
.super Lcom/texa/care/navigation/Screen;
.source "CountryScreenDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;,
        Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountrySelectedEvent;
    }
.end annotation


# instance fields
.field private countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSearch:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/CareApplication;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 53
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;)V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->updateList()V

    return-void
.end method

.method private closeKeyboard(Landroid/view/View;)V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private getCountries(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 117
    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v5

    .line 118
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;

    .line 119
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v5, v7}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 120
    new-instance v6, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, p0, v5, v4}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method private getSearchText()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->mSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private setupUI(Landroid/view/View;)V
    .locals 3

    .line 135
    instance-of v0, p1, Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 142
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 143
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 144
    invoke-direct {p0, v1}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->setupUI(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateList()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->countries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 107
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->countries:Ljava/util/List;

    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->getSearchText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->getCountries(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->mAdapter:Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;

    invoke-virtual {v0}, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 3

    .line 58
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenDialogCountryBinding;

    .line 59
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDialogCountryBinding;->screenDialogCountrySearch:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->mSearch:Landroid/widget/EditText;

    .line 61
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDialogCountryBinding;->screenDialogCountryLay:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->setupUI(Landroid/view/View;)V

    const-string v0, ""

    .line 63
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->getCountries(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->countries:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->countries:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->mAdapter:Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;

    .line 66
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDialogCountryBinding;->screenDialogCountryRecycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 67
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDialogCountryBinding;->screenDialogCountryRecycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->mAdapter:Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 68
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDialogCountryBinding;->screenDialogCountryRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 69
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenDialogCountryBinding;->screenDialogCountryRecycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 71
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenDialogCountryBinding;->screenDialogCountryCancel:Landroid/widget/TextView;

    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->mAdapter:Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;

    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;)V

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/onboarding/adapters/CountryDialogAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->mSearch:Landroid/widget/EditText;

    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$1;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$1;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->mSearch:Landroid/widget/EditText;

    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 185
    const-class v0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00b4

    return v0
.end method

.method public getType()Lcom/texa/care/navigation/ScreenType;
    .locals 1

    .line 190
    sget-object v0, Lcom/texa/care/navigation/ScreenType;->DIALOG_FULL_WIDTH:Lcom/texa/care/navigation/ScreenType;

    return-object v0
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-onboarding-dialogs-CountryScreenDialog(Landroid/view/View;)V
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-onboarding-dialogs-CountryScreenDialog(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance p2, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountrySelectedEvent;

    iget-object p4, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->countries:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;

    invoke-direct {p2, p0, p3}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountrySelectedEvent;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    return-void
.end method

.method public synthetic lambda$afterViewInjection$2$com-texa-careapp-app-onboarding-dialogs-CountryScreenDialog(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->updateList()V

    .line 98
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->closeKeyboard(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$setupUI$3$com-texa-careapp-app-onboarding-dialogs-CountryScreenDialog(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;->closeKeyboard(Landroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method
