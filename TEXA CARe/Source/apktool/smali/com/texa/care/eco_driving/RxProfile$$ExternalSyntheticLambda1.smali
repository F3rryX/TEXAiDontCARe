.class public final synthetic Lcom/texa/care/eco_driving/RxProfile$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/profile/ProfileListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/care/eco_driving/RxProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/care/eco_driving/RxProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/care/eco_driving/RxProfile$$ExternalSyntheticLambda1;->f$0:Lcom/texa/care/eco_driving/RxProfile;

    return-void
.end method


# virtual methods
.method public final onAuthenticationError(Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/care/eco_driving/RxProfile$$ExternalSyntheticLambda1;->f$0:Lcom/texa/care/eco_driving/RxProfile;

    invoke-virtual {v0, p1}, Lcom/texa/care/eco_driving/RxProfile;->lambda$new$1$com-texa-care-eco_driving-RxProfile(Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;)V

    return-void
.end method
