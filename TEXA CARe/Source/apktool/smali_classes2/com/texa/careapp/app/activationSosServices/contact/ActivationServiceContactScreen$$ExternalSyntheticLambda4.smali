.class public final synthetic Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;

.field public final synthetic f$1:Lcom/texa/careapp/model/ContactModel;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;Lcom/texa/careapp/model/ContactModel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;

    iput-object p2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda4;->f$1:Lcom/texa/careapp/model/ContactModel;

    iput p3, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda4;->f$1:Lcom/texa/careapp/model/ContactModel;

    iget v2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$$ExternalSyntheticLambda4;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->lambda$showData$3$com-texa-careapp-app-activationSosServices-contact-ActivationServiceContactScreen(Lcom/texa/careapp/model/ContactModel;I)V

    return-void
.end method
