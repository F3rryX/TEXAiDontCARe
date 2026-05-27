.class public final synthetic Lcom/texa/careapp/base/BaseActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/base/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/base/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/base/BaseActivity$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/base/BaseActivity;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/base/BaseActivity$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/base/BaseActivity;

    check-cast p1, Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/base/BaseActivity;->lambda$onResume$0$com-texa-careapp-base-BaseActivity(Lcom/texa/carelib/profile/events/AuthenticationErrorEvent;)Z

    move-result p1

    return p1
.end method
