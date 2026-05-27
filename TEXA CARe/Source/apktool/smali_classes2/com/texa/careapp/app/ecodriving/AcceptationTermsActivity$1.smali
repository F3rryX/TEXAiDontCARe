.class Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;
.super Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;
.source "AcceptationTermsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;->this$0:Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;

    invoke-direct {p0, p2}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsScreen;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acceptedCondition()V
    .locals 6

    .line 74
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ACCEPTED"

    .line 75
    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v2, Lcom/texa/careapp/model/TermsModel;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const-string v4, "privacy"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/texa/careapp/model/TermsModel;-><init>(Ljava/lang/String;ILjava/util/Date;)V

    .line 78
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v3, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;->this$0:Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;

    invoke-static {v3}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->access$000(Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;)Lio/reactivex/disposables/CompositeDisposable;

    move-result-object v3

    iget-object v4, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    new-instance v5, Lcom/texa/careapp/model/TermsModelsEntity;

    invoke-direct {v5, v1}, Lcom/texa/careapp/model/TermsModelsEntity;-><init>(Ljava/util/List;)V

    invoke-interface {v4, v5}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->acceptTerms(Lcom/texa/careapp/model/TermsModelsEntity;)Lio/reactivex/Completable;

    move-result-object v1

    .line 80
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    .line 81
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v4, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;)V

    .line 82
    invoke-virtual {v1, v4}, Lio/reactivex/Completable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v4, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, v0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;Lcom/texa/careapp/model/TermsModel;Lcom/texa/careapp/model/UserModel;)V

    new-instance v0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;)V

    .line 83
    invoke-virtual {v1, v4, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 79
    invoke-virtual {v3, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public synthetic lambda$acceptedCondition$0$com-texa-careapp-app-ecodriving-AcceptationTermsActivity$1(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;->createProgressDialogScreen()V

    return-void
.end method

.method public synthetic lambda$acceptedCondition$1$com-texa-careapp-app-ecodriving-AcceptationTermsActivity$1(Lcom/texa/careapp/model/TermsModel;Lcom/texa/careapp/model/UserModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    invoke-virtual {p1, p2}, Lcom/texa/careapp/model/TermsModel;->setUser(Lcom/texa/careapp/model/UserModel;)V

    .line 86
    :try_start_0
    iget-object p2, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;->this$0:Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;

    invoke-static {p2}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;->access$100(Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    iget-object p1, p0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance p2, Lcom/texa/careapp/app/events/CloseActivityEvent;

    const-class v0, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity;

    invoke-direct {p2, v0}, Lcom/texa/careapp/app/events/CloseActivityEvent;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;->dismissProgressDialogScreen()V

    return-void

    :catch_0
    move-exception p1

    .line 88
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public synthetic lambda$acceptedCondition$2$com-texa-careapp-app-ecodriving-AcceptationTermsActivity$1(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Eco driving Terms not accepted"

    .line 93
    invoke-static {p1, v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/AcceptationTermsActivity$1;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f110a25

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
