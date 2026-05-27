.class public final synthetic Lcom/texa/care/eco_driving/RxProfile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/care/eco_driving/RxObservableObject$Supplier;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/profile/Profile;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/profile/Profile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/care/eco_driving/RxProfile$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/profile/Profile;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/care/eco_driving/RxProfile$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/profile/Profile;

    invoke-interface {v0}, Lcom/texa/carelib/profile/Profile;->isReady()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
