.class public interface abstract Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager;
.super Ljava/lang/Object;
.source "SosFeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager$SosStatus;,
        Lcom/texa/careapp/app/sos/featuremanager/SosFeatureManager$ImpactType;
    }
.end annotation


# static fields
.field public static final IMPACT_TYPE_CARE:I = 0x1

.field public static final IMPACT_TYPE_SMART_PHONE:I = 0x2

.field public static final IMPACT_TYPE_UNDEFINED:I


# virtual methods
.method public abstract getButtonObservableSubscription()Lio/reactivex/disposables/Disposable;
.end method

.method public abstract getSosServiceStatusDescription(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getSosServiceStatusDescription(Landroid/content/Context;Lcom/texa/careapp/model/ServiceDataModel;)Ljava/lang/String;
.end method

.method public abstract initData(Lcom/texa/careapp/model/ServiceDataModel;)V
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract observeChecks()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/checks/Check$Result;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeChecksForNotification()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/checks/Check$Result;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeChecksForServices()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/checks/Check$Result;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerImpactDetectionListener()V
.end method

.method public abstract registerImpactDetectorListener()V
.end method

.method public abstract setFragmentManager(Landroidx/fragment/app/FragmentManager;)V
.end method

.method public abstract shouldCheckSosPrerequisites()Z
.end method

.method public abstract startButtonObserver()V
.end method

.method public abstract unregisterImpactDetectionListener()V
.end method

.method public abstract unregisterImpactDetectorListener()V
.end method
