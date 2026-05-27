.class public final Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog_MembersInjector;
.super Ljava/lang/Object;
.source "ParametersChooseChartDialog_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/greenrobot/eventbus/EventBus;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMEventBus(Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static injectMPreferences(Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog_MembersInjector;->injectMPreferences(Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;Landroid/content/SharedPreferences;)V

    .line 35
    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog_MembersInjector;->mEventBusProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog_MembersInjector;->injectMEventBus(Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;Lorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog_MembersInjector;->injectMembers(Lcom/texa/careapp/app/dashboard/card/ParametersChooseChartDialog;)V

    return-void
.end method
