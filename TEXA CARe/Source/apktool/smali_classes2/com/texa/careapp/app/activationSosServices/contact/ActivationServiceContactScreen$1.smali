.class Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$1;
.super Lcom/texa/careapp/utils/permission/Func;
.source "ActivationServiceContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->addContact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$1;->this$0:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;

    invoke-direct {p0}, Lcom/texa/careapp/utils/permission/Func;-><init>()V

    return-void
.end method


# virtual methods
.method protected call()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Some/All Permission not enabled"

    .line 299
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen$1;->this$0:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;

    invoke-virtual {v0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->showPermissionErrorAlert()V

    return-void
.end method
