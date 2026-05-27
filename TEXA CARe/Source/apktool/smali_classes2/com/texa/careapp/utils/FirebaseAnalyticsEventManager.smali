.class public Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager;
.super Ljava/lang/Object;
.source "FirebaseAnalyticsEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 17
    iput-object p1, p0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public sendFirebaseAnalyticsEvent(Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;Landroid/os/Bundle;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
