.class Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription$1;
.super Ljava/util/ArrayList;
.source "SosInAppBillingSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;->buyInAppSubscription(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription$1;->this$0:Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription;

    iput-object p2, p0, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription$1;->val$sku:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Lcom/texa/careapp/app/activationSosServices/SosInAppBillingSubscription$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
