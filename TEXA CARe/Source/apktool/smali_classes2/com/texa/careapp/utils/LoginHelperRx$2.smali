.class Lcom/texa/careapp/utils/LoginHelperRx$2;
.super Ljava/lang/Object;
.source "LoginHelperRx.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/utils/LoginHelperRx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/utils/LoginHelperRx;


# direct methods
.method constructor <init>(Lcom/texa/careapp/utils/LoginHelperRx;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx$2;->this$0:Lcom/texa/careapp/utils/LoginHelperRx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 153
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/LoginHelperRx$2;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 0

    .line 156
    iget-object p1, p0, Lcom/texa/careapp/utils/LoginHelperRx$2;->this$0:Lcom/texa/careapp/utils/LoginHelperRx;

    iget-object p1, p1, Lcom/texa/careapp/utils/LoginHelperRx;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->removeAccount(Landroid/accounts/AccountManager;)V

    return-void
.end method
