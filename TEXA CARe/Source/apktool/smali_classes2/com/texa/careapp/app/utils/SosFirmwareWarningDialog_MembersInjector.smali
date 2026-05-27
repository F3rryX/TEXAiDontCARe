.class public final Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog_MembersInjector;
.super Ljava/lang/Object;
.source "SosFirmwareWarningDialog_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCommunicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/carelib/communication/Communication;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog_MembersInjector;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMCommunication(Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;Lcom/texa/carelib/communication/Communication;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;->mCommunication:Lcom/texa/carelib/communication/Communication;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog_MembersInjector;->mCommunicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog_MembersInjector;->injectMCommunication(Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;Lcom/texa/carelib/communication/Communication;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog_MembersInjector;->injectMembers(Lcom/texa/careapp/app/utils/SosFirmwareWarningDialog;)V

    return-void
.end method
