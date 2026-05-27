.class public final synthetic Lcom/texa/careapp/checks/CheckResolver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/checks/CheckResolver;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/checks/CheckResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/checks/CheckResolver$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/checks/CheckResolver;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/checks/CheckResolver$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/checks/CheckResolver;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/texa/careapp/checks/CheckResolver;->$r8$lambda$kIhHlcLssHFvmld8CiehF_pQHoQ(Lcom/texa/careapp/checks/CheckResolver;[Ljava/lang/Object;)Lcom/texa/careapp/checks/Check$Result;

    move-result-object p1

    return-object p1
.end method
