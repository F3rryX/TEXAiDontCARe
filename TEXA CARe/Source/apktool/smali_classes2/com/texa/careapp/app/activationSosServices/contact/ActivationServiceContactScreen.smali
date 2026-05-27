.class public Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;
.super Lcom/texa/care/navigation/Screen;
.source "ActivationServiceContactScreen.java"


# instance fields
.field private activationServiceContactActivity:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;

.field private addContact:Landroid/widget/LinearLayout;

.field private confirmContacts:Landroid/widget/TextView;

.field private contacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ContactModel;",
            ">;"
        }
    .end annotation
.end field

.field private countryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filtered:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ContactModel;",
            ">;"
        }
    .end annotation
.end field

.field private firstContactLay:Landroid/widget/LinearLayout;

.field private firstPersonIcon:Landroid/widget/TextView;

.field private firstPersonName:Landroid/widget/TextView;

.field private firstPersonPhone:Landroid/widget/TextView;

.field private isSosLight:Z

.field private final mDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mFirstContactCountryAdapter:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceNumberPrefixSpinnerAdapter;

.field private mFirstContactCountrySpinner:Landroid/widget/Spinner;

.field private mPermissionNotEnabledAlert:Landroid/app/AlertDialog;

.field protected mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSecondContactCountryAdapter:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceNumberPrefixSpinnerAdapter;

.field private mSecondContactCountrySpinner:Landroid/widget/Spinner;

.field private mShowDialog:Z

.field protected mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private secondContactLay:Landroid/widget/LinearLayout;

.field private secondPersonIcon:Landroid/widget/TextView;

.field private secondPersonName:Landroid/widget/TextView;

.field private secondPersonPhone:Landroid/widget/TextView;

.field private sosContact:Lcom/texa/careapp/model/ContactModel;

.field private successSync:Z


# direct methods
.method public constructor <init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;Z)V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mShowDialog:Z

    .line 100
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 103
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    .line 104
    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;)V

    .line 105
    iput-object p2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->activationServiceContactActivity:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;

    .line 106
    iput-boolean p3, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->isSosLight:Z

    return-void
.end method

.method private addContact()V
    .locals 3

    .line 288
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->isReadContactPermissionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->activationServiceContactActivity:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;

    invoke-virtual {v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->getReadContactPermissionRequest()Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$2;-><init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;)V

    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->onAllGranted(Lcom/texa/careapp/utils/permission/Func;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$1;-><init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;)V

    .line 295
    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->onAnyDenied(Lcom/texa/careapp/utils/permission/Func;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object v0

    const/4 v1, 0x2

    .line 302
    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->ask(I)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    goto :goto_0

    .line 304
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 305
    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->activationServiceContactActivity:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private checkNumberPrefix(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 261
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->countryList:Ljava/util/List;

    invoke-static {p2, v0}, Lcom/texa/careapp/utils/Utils;->startWithPrefix(Ljava/lang/String;Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 262
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 264
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private close()V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v1}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/events/CloseActivityEvent;

    const-class v2, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;

    invoke-direct {v1, v2}, Lcom/texa/careapp/app/events/CloseActivityEvent;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private error()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/events/CancelProgressEvent;

    invoke-direct {v1}, Lcom/texa/careapp/app/events/CancelProgressEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private initDialog(Lcom/texa/careapp/model/ContactModel;)V
    .locals 1

    .line 332
    new-instance v0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;

    invoke-direct {v0, p1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;-><init>(Lcom/texa/careapp/model/ContactModel;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method private intiDeleteFirstContact()Z
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->filtered:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ContactModel;

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->initDialog(Lcom/texa/careapp/model/ContactModel;)V

    const/4 v0, 0x1

    return v0
.end method

.method private intiDeleteSecondContact()Z
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->filtered:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ContactModel;

    invoke-direct {p0, v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->initDialog(Lcom/texa/careapp/model/ContactModel;)V

    return v1
.end method

.method private isReadContactPermissionEnabled()Z
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->activationServiceContactActivity:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;

    sget-object v1, Lcom/texa/careapp/utils/permission/CorePermission;->USE_CONTACTS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->isPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setValues(Lcom/texa/careapp/model/ContactModel;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Spinner;)V
    .locals 2

    .line 367
    invoke-virtual {p1}, Lcom/texa/careapp/model/ContactModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    invoke-virtual {p1}, Lcom/texa/careapp/model/ContactModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 371
    invoke-virtual {p1}, Lcom/texa/careapp/model/ContactModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 374
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual {p1}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    new-instance p2, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$3;

    invoke-direct {p2, p0, p1, p5}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$3;-><init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;Lcom/texa/careapp/model/ContactModel;Landroid/widget/Spinner;)V

    invoke-virtual {p5, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private showData()V
    .locals 11

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->filtered:Ljava/util/List;

    .line 154
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->contacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/ContactModel;

    .line 155
    invoke-virtual {v1}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->filtered:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->filtered:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x7f080076

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    .line 159
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->filtered:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/texa/careapp/model/ContactModel;

    iget-object v7, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->firstPersonName:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->firstPersonIcon:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->firstPersonPhone:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mFirstContactCountrySpinner:Landroid/widget/Spinner;

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->setValues(Lcom/texa/careapp/model/ContactModel;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Spinner;)V

    .line 161
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mFirstContactCountrySpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->filtered:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/careapp/model/ContactModel;

    invoke-virtual {v5}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->checkNumberPrefix(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->firstContactLay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->secondContactLay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->addContact:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->confirmContacts:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 166
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->confirmContacts:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_1

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->filtered:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    .line 168
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->filtered:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/texa/careapp/model/ContactModel;

    iget-object v7, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->firstPersonName:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->firstPersonIcon:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->firstPersonPhone:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mFirstContactCountrySpinner:Landroid/widget/Spinner;

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->setValues(Lcom/texa/careapp/model/ContactModel;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Spinner;)V

    .line 170
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mFirstContactCountrySpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->filtered:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/careapp/model/ContactModel;

    invoke-virtual {v5}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->checkNumberPrefix(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->filtered:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/texa/careapp/model/ContactModel;

    iget-object v7, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->secondPersonName:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->secondPersonIcon:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->secondPersonPhone:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mSecondContactCountrySpinner:Landroid/widget/Spinner;

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->setValues(Lcom/texa/careapp/model/ContactModel;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Spinner;)V

    .line 173
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mSecondContactCountrySpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->filtered:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/careapp/model/ContactModel;

    invoke-virtual {v5}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->checkNumberPrefix(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->firstContactLay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->secondContactLay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->addContact:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->confirmContacts:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 178
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->confirmContacts:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->firstContactLay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->secondContactLay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->addContact:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->confirmContacts:Landroid/widget/TextView;

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 184
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->confirmContacts:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 187
    :goto_1
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->confirmContacts:Landroid/widget/TextView;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda3;-><init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateData(Lcom/texa/careapp/model/ContactModel;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 341
    invoke-virtual {p1}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f110c6b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 343
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 344
    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 345
    iput-boolean v1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mShowDialog:Z

    .line 346
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->sosContact:Lcom/texa/careapp/model/ContactModel;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 349
    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->contacts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/ContactModel;

    .line 350
    invoke-virtual {v3}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 351
    invoke-virtual {p1}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/texa/careapp/model/ContactModel;->setPhoneNumber(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Lcom/texa/careapp/model/ContactModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/texa/careapp/model/ContactModel;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    .line 358
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->contacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->showData()V

    :cond_5
    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 111
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;

    .line 112
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactFirstContact:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->firstContactLay:Landroid/widget/LinearLayout;

    .line 113
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactSecondContact:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->secondContactLay:Landroid/widget/LinearLayout;

    .line 114
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactFirstContactIcon:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->firstPersonIcon:Landroid/widget/TextView;

    .line 115
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactFirstContactName:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->firstPersonName:Landroid/widget/TextView;

    .line 116
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactFirstContactNumber:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->firstPersonPhone:Landroid/widget/TextView;

    .line 117
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactSecondContactIcon:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->secondPersonIcon:Landroid/widget/TextView;

    .line 118
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactSecondContactName:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->secondPersonName:Landroid/widget/TextView;

    .line 119
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactSecondContactNumber:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->secondPersonPhone:Landroid/widget/TextView;

    .line 120
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactAdd:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->addContact:Landroid/widget/LinearLayout;

    .line 121
    new-instance v1, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->firstContactLay:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->secondContactLay:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactConfirm:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->confirmContacts:Landroid/widget/TextView;

    .line 125
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactFirstContactNumberPrefix:Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mFirstContactCountrySpinner:Landroid/widget/Spinner;

    .line 126
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenActivationServiceContactBinding;->screenActivationServiceContactSecondContactNumberPrefix:Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mSecondContactCountrySpinner:Landroid/widget/Spinner;

    .line 128
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/model/UserModel;->getSosLightContacts()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->contacts:Ljava/util/List;

    .line 129
    invoke-static {}, Lcom/texa/careapp/utils/Iso2Phone;->getAll()Ljava/util/Map;

    move-result-object p1

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->countryList:Ljava/util/List;

    .line 131
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->showData()V

    .line 132
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->initCountrySpinner()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "ActivationServiceContactScreen"

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00a6

    return v0
.end method

.method public initCountrySpinner()V
    .locals 2

    .line 136
    new-instance v0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceNumberPrefixSpinnerAdapter;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceNumberPrefixSpinnerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mFirstContactCountryAdapter:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceNumberPrefixSpinnerAdapter;

    .line 137
    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mFirstContactCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 138
    new-instance v0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceNumberPrefixSpinnerAdapter;

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceNumberPrefixSpinnerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mSecondContactCountryAdapter:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceNumberPrefixSpinnerAdapter;

    .line 139
    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mSecondContactCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 140
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->setCurrentCountry()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-contact-ActivationServiceContactScreen(Landroid/view/View;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->addContact()V

    return-void
.end method

.method public synthetic lambda$afterViewInjection$1$com-texa-careapp-app-activationSosServices-contact-ActivationServiceContactScreen(Landroid/view/View;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->intiDeleteFirstContact()Z

    return-void
.end method

.method public synthetic lambda$afterViewInjection$2$com-texa-careapp-app-activationSosServices-contact-ActivationServiceContactScreen(Landroid/view/View;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->intiDeleteSecondContact()Z

    return-void
.end method

.method public synthetic lambda$showData$3$com-texa-careapp-app-activationSosServices-contact-ActivationServiceContactScreen(Lcom/texa/careapp/model/ContactModel;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 211
    invoke-virtual {p1}, Lcom/texa/careapp/exceptions/DatabaseIOException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    .line 213
    iput-boolean p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->successSync:Z

    .line 214
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->contacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    if-ne p2, v0, :cond_1

    .line 215
    iget-boolean p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->isSosLight:Z

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object p2, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_SOS_LIGHT_ACTIVATION_SOS_LIGHT_CONTACTS_COMPLETED:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {p2}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->close()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$showData$4$com-texa-careapp-app-activationSosServices-contact-ActivationServiceContactScreen(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mRetrofitErrorParser:Lcom/texa/careapp/utils/RetrofitErrorParser;

    check-cast p1, Lretrofit2/HttpException;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/RetrofitErrorParser;->parseToString(Lretrofit2/HttpException;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "KO_CONTACT-NOT_EDITABLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->close()V

    :cond_0
    const/4 p1, 0x0

    .line 226
    iput-boolean p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->successSync:Z

    .line 227
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->error()V

    return-void
.end method

.method public synthetic lambda$showData$5$com-texa-careapp-app-activationSosServices-contact-ActivationServiceContactScreen(Lcom/texa/careapp/model/ContactModel;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 235
    invoke-virtual {p1}, Lcom/texa/careapp/model/ContactModel;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/careapp/model/ContactModel;->deleteSOSContact(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 236
    iput-boolean p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->successSync:Z

    .line 237
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->contacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    if-ne p2, v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->close()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showData$6$com-texa-careapp-app-activationSosServices-contact-ActivationServiceContactScreen(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DELETE CONTACT FAILED"

    .line 240
    invoke-static {p1, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iput-boolean v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->successSync:Z

    .line 242
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->error()V

    return-void
.end method

.method public synthetic lambda$showData$7$com-texa-careapp-app-activationSosServices-contact-ActivationServiceContactScreen(Landroid/view/View;)V
    .locals 4

    .line 188
    new-instance p1, Lcom/texa/careapp/app/events/ShowProgressEvent;

    invoke-direct {p1}, Lcom/texa/careapp/app/events/ShowProgressEvent;-><init>()V

    .line 189
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110c71

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/careapp/app/events/ShowProgressEvent;->setMessage(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 192
    iput-boolean p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->successSync:Z

    const/4 p1, 0x0

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->contacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 194
    iget-boolean v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->successSync:Z

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->contacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ContactModel;

    .line 197
    invoke-virtual {v0}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {v0}, Lcom/texa/careapp/model/ContactModel;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->countryList:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->startWithPrefix(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/texa/careapp/model/ContactModel;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ContactModel;->setPhoneNumber(Ljava/lang/String;)V

    .line 202
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ContactModel;->setPhoneNumber(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-interface {v2, v0}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->updateContacts(Lcom/texa/careapp/model/ContactModel;)Lio/reactivex/Completable;

    move-result-object v2

    .line 205
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v2

    .line 206
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v2

    new-instance v3, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0, p1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda4;-><init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;Lcom/texa/careapp/model/ContactModel;I)V

    new-instance v0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda6;-><init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;)V

    .line 207
    invoke-virtual {v2, v3, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 204
    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_1

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-virtual {v0}, Lcom/texa/careapp/model/ContactModel;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->deleteContacts(Ljava/lang/String;)Lio/reactivex/Completable;

    move-result-object v2

    .line 232
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v2

    .line 233
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v2

    new-instance v3, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0, p1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda5;-><init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;Lcom/texa/careapp/model/ContactModel;I)V

    new-instance v0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda7;-><init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;)V

    .line 234
    invoke-virtual {v2, v3, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 231
    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 416
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onDestroyView()V

    .line 417
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->safeDispose(Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog$DeleteContact;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->contacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/ContactModel;

    .line 407
    invoke-virtual {v1}, Lcom/texa/careapp/model/ContactModel;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog$DeleteContact;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 408
    invoke-virtual {v1, p1}, Lcom/texa/careapp/model/ContactModel;->setPhoneNumber(Ljava/lang/String;)V

    .line 411
    :cond_1
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->showData()V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog$PickContactNumber;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 401
    invoke-virtual {p1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog$PickContactNumber;->getSosContact()Lcom/texa/careapp/model/ContactModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->updateData(Lcom/texa/careapp/model/ContactModel;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 279
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onPause()V

    .line 280
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 269
    invoke-super {p0}, Lcom/texa/care/navigation/Screen;->onResume()V

    .line 270
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 271
    iget-boolean v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mShowDialog:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mShowDialog:Z

    .line 273
    new-instance v0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->sosContact:Lcom/texa/careapp/model/ContactModel;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;-><init>(Lcom/texa/careapp/model/ContactModel;)V

    invoke-virtual {p0, v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->goTo(Lcom/texa/care/navigation/Screen;)V

    :cond_0
    return-void
.end method

.method public setCurrentCountry()V
    .locals 4

    .line 144
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mFirstContactCountrySpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mFirstContactCountryAdapter:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceNumberPrefixSpinnerAdapter;

    .line 147
    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceNumberPrefixSpinnerAdapter;->getCountryPosition(Ljava/lang/String;)I

    move-result v2

    .line 146
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 148
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mSecondContactCountrySpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mSecondContactCountryAdapter:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceNumberPrefixSpinnerAdapter;

    .line 149
    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceNumberPrefixSpinnerAdapter;->getCountryPosition(Ljava/lang/String;)I

    move-result v1

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method setSosContact(Lcom/texa/careapp/model/ContactModel;)V
    .locals 0

    .line 336
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->updateData(Lcom/texa/careapp/model/ContactModel;)V

    return-void
.end method

.method public showPermissionErrorAlert()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mPermissionNotEnabledAlert:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->activationServiceContactActivity:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->createPermissionExplanationAlertDialog(Landroid/app/Activity;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mPermissionNotEnabledAlert:Landroid/app/AlertDialog;

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mPermissionNotEnabledAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->mPermissionNotEnabledAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method
