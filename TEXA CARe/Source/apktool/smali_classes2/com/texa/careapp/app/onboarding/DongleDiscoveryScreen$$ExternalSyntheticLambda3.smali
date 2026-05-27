.class public final synthetic Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/texa/careapp/app/onboarding/DongleDiscoveryScreen;->lambda$resetDongleList$6$com-texa-careapp-app-onboarding-DongleDiscoveryScreen(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
