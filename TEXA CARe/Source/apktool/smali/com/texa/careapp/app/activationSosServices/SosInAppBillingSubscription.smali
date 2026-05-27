.class public Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;
.super Lcom/texa/careapp/base/BaseActivity;
.source "SosInAppBillingSubscription.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# static fields
.field private static final RECONNECT_TIMER_MAX_TIME_MILLISECONDS:J = 0xdbba0L

.field private static final RECONNECT_TIMER_START_MILLISECONDS:J = 0x3e8L

.field public static final SERVICE_SKU:Ljava/lang/String; = "service-sku"

.field public static final TICKET_ID:Ljava/lang/String; = "lock-ticket-id"


# instance fields
.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field private final handler:Landroid/os/Handler;

.field private mBillingServiceReady:Z

.field protected mCareApplication:Lcom/texa/careapp/CareApplication;

.field mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private reconnectMilliseconds:J

.field private selectedSku:Ljava/lang/String;

.field serviceSku:Ljava/lang/String;

.field ticketId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    .line 58
    iput-wide v0, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->reconnectMilliseconds:J

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 70
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "lock-ticket-id"

    .line 71
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "service-sku"

    .line 72
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private buyInAppSubscription(Ljava/lang/String;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->selectedSku:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    const-string v2, "subs"

    .line 111
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    new-instance v2, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription$1;

    invoke-direct {v2, p0, p1}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription$1;-><init>(Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object p1

    .line 110
    invoke-virtual {v0, p1, p0}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    const-string v0, "Purchase requires Google Play Store (billing) on your Android."

    .line 103
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private completePurchaseAndClose(Lcom/android/billingclient/api/Purchase;)V
    .locals 4

    .line 291
    new-instance v0, Lcom/texa/careapp/model/PurchaseData;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->serviceSku:Ljava/lang/String;

    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->ticketId:Ljava/lang/String;

    const-string v3, "in_app"

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/texa/careapp/model/PurchaseData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/Purchase;)V

    .line 294
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error while saving purchase data"

    .line 296
    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    :goto_0
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;-><init>(Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->finish()V

    return-void
.end method

.method private initialiseBilling()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-static {p0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 97
    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method private processPurchaseList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 239
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    .line 240
    invoke-static {}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingUtil;->getSkus()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "SKU %s purchasing."

    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-static {}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingUtil;->getSkus()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->buyInAppSubscription(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_0
    invoke-static {}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingUtil;->getSkus()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v4, "SKU -> %s"

    .line 244
    invoke-static {v4, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/Purchase;

    .line 246
    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    aput-object v0, p1, v2

    const-string v1, "SKU %s not found, purchasing."

    .line 250
    invoke-static {v1, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-direct {p0, v0}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->buyInAppSubscription(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private retryBillingServiceConnectionWithExponentialBackoff()V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription$$ExternalSyntheticLambda2;-><init>(Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;)V

    iget-wide v2, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->reconnectMilliseconds:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    iget-wide v0, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->reconnectMilliseconds:J

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    const-wide/32 v2, 0xdbba0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->reconnectMilliseconds:J

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPurchasesUpdated$0$com-texa-careapp-app-activationSosServices-SosInAppBillingSubscription(Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/BillingResult;)V
    .locals 4

    .line 161
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 162
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "acknowledgePurchase finished: --> %1$s : %2$s"

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    if-nez p2, :cond_0

    .line 165
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->completePurchaseAndClose(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance p2, Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;

    invoke-direct {p2, v0}, Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;-><init>(Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->finish()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$refreshPurchasesAsync$1$com-texa-careapp-app-activationSosServices-SosInAppBillingSubscription(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    .line 229
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "Problem getting subscriptions: %1$s"

    invoke-static {p1, p2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 232
    :cond_0
    invoke-direct {p0, p2}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->processPurchaseList(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$retryBillingServiceConnectionWithExponentialBackoff$2$com-texa-careapp-app-activationSosServices-SosInAppBillingSubscription()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method public onBillingServiceDisconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->mBillingServiceReady:Z

    .line 209
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->retryBillingServiceConnectionWithExponentialBackoff()V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 4

    .line 214
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 215
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "onBillingSetupFinished: --> %1$s : %2$s"

    invoke-static {p1, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 218
    iput-wide v0, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->reconnectMilliseconds:J

    .line 219
    iput-boolean v2, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->mBillingServiceReady:Z

    .line 220
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->refreshPurchasesAsync()V

    goto :goto_0

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->retryBillingServiceConnectionWithExponentialBackoff()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->setRequestedOrientation(I)V

    :cond_0
    const p1, 0x7f0d003e

    .line 82
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "lock-ticket-id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->ticketId:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "service-sku"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->serviceSku:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->mCareApplication:Lcom/texa/careapp/CareApplication;

    .line 87
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;)V

    .line 89
    invoke-direct {p0}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->initialiseBilling()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->billingClient:Lcom/android/billingclient/api/BillingClient;

    :cond_0
    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 p2, 0x5

    if-eq v0, p2, :cond_2

    const/4 p2, 0x7

    if-eq v0, p2, :cond_1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 197
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "BillingResult [%1$s]: %2$s"

    invoke-static {p1, p2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "onPurchasesUpdated: The user already owns this item"

    .line 186
    invoke-static {p2, p1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "onPurchasesUpdated: Developer error means that Google Play does not recognize the configuration. If you are just getting started, make sure you have configured the application correctly in the Google Play Console. The SKU product ID must match and the APK you are using must be signed with release keys."

    .line 189
    invoke-static {p2, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "onPurchasesUpdated: User canceled the purchase"

    .line 181
    invoke-static {p2, p1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance p2, Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;

    invoke-direct {p2, v1}, Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;-><init>(Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->finish()V

    return-void

    .line 139
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Purchase list size is 0, ignoring."

    .line 140
    invoke-static {p2, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 143
    :cond_5
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/Purchase;

    new-array p2, v1, [Ljava/lang/Object;

    .line 144
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "Purchase state: %1$s"

    invoke-static {v0, p2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result p2

    if-ne p2, v1, :cond_9

    .line 147
    invoke-static {p1}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingUtil;->verifyDeveloperPayload(Lcom/android/billingclient/api/Purchase;)Z

    move-result p2

    if-nez p2, :cond_6

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Error purchasing. Authenticity verification failed."

    .line 148
    invoke-static {p2, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance p2, Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;

    invoke-direct {p2, v1}, Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;-><init>(Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 150
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->finish()V

    return-void

    .line 154
    :cond_6
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->selectedSku:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    new-array p2, v1, [Ljava/lang/Object;

    .line 156
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "Is purchase acknowledged: %1$b"

    invoke-static {v0, p2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result p2

    if-nez p2, :cond_7

    .line 158
    iget-object p2, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object v0

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;Lcom/android/billingclient/api/Purchase;)V

    .line 158
    invoke-virtual {p2, v0, v1}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    goto :goto_0

    .line 172
    :cond_7
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->completePurchaseAndClose(Lcom/android/billingclient/api/Purchase;)V

    :goto_0
    return-void

    :cond_8
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "purchase doesn\'t contain expected SKU"

    .line 176
    invoke-static {p2, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance p2, Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;

    invoke-direct {p2, v1}, Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;-><init>(Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 202
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->finish()V

    return-void
.end method

.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 268
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 269
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 270
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "onSkuDetailsResponse: %1$s %2$s"

    invoke-static {p1, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_2

    .line 272
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    .line 273
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->selectedSku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 275
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 276
    iget-object p2, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    if-nez p2, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "Billing ok waiting for result"

    .line 278
    invoke-static {p2, p1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array p2, v2, [Ljava/lang/Object;

    .line 280
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    const-string p1, "Billing failed: %1$s"

    invoke-static {p1, p2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 286
    :cond_2
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance p2, Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;

    invoke-direct {p2, v2}, Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;-><init>(Z)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 287
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->finish()V

    return-void
.end method

.method public refreshPurchasesAsync()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;)V

    const-string v2, "subs"

    invoke-virtual {v0, v2, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Refreshing purchases started."

    .line 235
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
