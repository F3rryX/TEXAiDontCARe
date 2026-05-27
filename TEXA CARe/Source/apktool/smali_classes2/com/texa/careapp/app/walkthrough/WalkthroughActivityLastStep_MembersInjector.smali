.class public final Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;
.super Ljava/lang/Object;
.source "WalkthroughActivityLastStep_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDongleDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mDongleDataManagerProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalBroadcastManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoggerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoginHelperRxProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferencesProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mRxProfileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/RxProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/RxProfile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p2, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p3, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p4, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p5, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->mRxProfileProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p6, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->mLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p7, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->mPreferencesProvider2:Ljavax/inject/Provider;

    .line 57
    iput-object p8, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->mDongleDataManagerProvider2:Ljavax/inject/Provider;

    .line 58
    iput-object p9, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->mLoginHelperRxProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/UserDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/remotelogger/LoggerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/care/eco_driving/RxProfile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/localbroadcastmanager/content/LocalBroadcastManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/model/DongleDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/LoginHelperRx;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v10, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static injectMDongleDataManager(Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;Lcom/texa/careapp/model/DongleDataManager;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    return-void
.end method

.method public static injectMLoginHelperRx(Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->mLoginHelperRx:Lcom/texa/careapp/utils/LoginHelperRx;

    return-void
.end method

.method public static injectMPreferences(Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->mUserDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/UserDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMUserDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/utils/UserDataManager;)V

    .line 76
    iget-object v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->mDongleDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMPreferences(Lcom/texa/careapp/base/BaseActivity;Landroid/content/SharedPreferences;)V

    .line 78
    iget-object v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->mLoggerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/remotelogger/LoggerManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLoggerManager(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/careapp/remotelogger/LoggerManager;)V

    .line 79
    iget-object v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->mRxProfileProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/care/eco_driving/RxProfile;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMRxProfile(Lcom/texa/careapp/base/BaseActivity;Lcom/texa/care/eco_driving/RxProfile;)V

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->mLocalBroadcastManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/base/BaseActivity_MembersInjector;->injectMLocalBroadcastManager(Lcom/texa/careapp/base/BaseActivity;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;)V

    .line 81
    iget-object v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->mPreferencesProvider2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->injectMPreferences(Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;Landroid/content/SharedPreferences;)V

    .line 82
    iget-object v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->mDongleDataManagerProvider2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleDataManager;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->injectMDongleDataManager(Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;Lcom/texa/careapp/model/DongleDataManager;)V

    .line 83
    iget-object v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->mLoginHelperRxProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->injectMLoginHelperRx(Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;Lcom/texa/careapp/utils/LoginHelperRx;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep_MembersInjector;->injectMembers(Lcom/texa/careapp/app/walkthrough/WalkthroughActivityLastStep;)V

    return-void
.end method
