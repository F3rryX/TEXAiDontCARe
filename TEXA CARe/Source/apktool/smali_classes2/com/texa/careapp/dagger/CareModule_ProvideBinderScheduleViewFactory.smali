.class public final Lcom/texa/careapp/dagger/CareModule_ProvideBinderScheduleViewFactory;
.super Ljava/lang/Object;
.source "CareModule_ProvideBinderScheduleViewFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/texa/careapp/app/schedule/BinderScheduleView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mVehicleObserverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/texa/careapp/dagger/CareModule;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideBinderScheduleViewFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    .line 24
    iput-object p2, p0, Lcom/texa/careapp/dagger/CareModule_ProvideBinderScheduleViewFactory;->mVehicleObserverProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)Lcom/texa/careapp/dagger/CareModule_ProvideBinderScheduleViewFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/dagger/CareModule;",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/utils/VehicleObserver;",
            ">;)",
            "Lcom/texa/careapp/dagger/CareModule_ProvideBinderScheduleViewFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/texa/careapp/dagger/CareModule_ProvideBinderScheduleViewFactory;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/dagger/CareModule_ProvideBinderScheduleViewFactory;-><init>(Lcom/texa/careapp/dagger/CareModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBinderScheduleView(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/utils/VehicleObserver;)Lcom/texa/careapp/app/schedule/BinderScheduleView;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/texa/careapp/dagger/CareModule;->provideBinderScheduleView(Lcom/texa/careapp/utils/VehicleObserver;)Lcom/texa/careapp/app/schedule/BinderScheduleView;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/texa/careapp/app/schedule/BinderScheduleView;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/texa/careapp/dagger/CareModule_ProvideBinderScheduleViewFactory;->module:Lcom/texa/careapp/dagger/CareModule;

    iget-object v1, p0, Lcom/texa/careapp/dagger/CareModule_ProvideBinderScheduleViewFactory;->mVehicleObserverProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/utils/VehicleObserver;

    invoke-static {v0, v1}, Lcom/texa/careapp/dagger/CareModule_ProvideBinderScheduleViewFactory;->provideBinderScheduleView(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/utils/VehicleObserver;)Lcom/texa/careapp/app/schedule/BinderScheduleView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/CareModule_ProvideBinderScheduleViewFactory;->get()Lcom/texa/careapp/app/schedule/BinderScheduleView;

    move-result-object v0

    return-object v0
.end method
