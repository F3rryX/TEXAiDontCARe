.class public final synthetic Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/utils/LoginHelperRx;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda22;->f$0:Lcom/texa/careapp/utils/LoginHelperRx;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/utils/LoginHelperRx$$ExternalSyntheticLambda22;->f$0:Lcom/texa/careapp/utils/LoginHelperRx;

    check-cast p1, Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/LoginHelperRx;->lambda$doRegistration$14$com-texa-careapp-utils-LoginHelperRx(Lcom/texa/careapp/model/UserModel;)V

    return-void
.end method
