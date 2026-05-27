.class Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$FileCarrierListenerFacade;
.super Ljava/lang/Object;
.source "SerialFileCarrierFacade.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileCarrierListenerFacade"
.end annotation


# instance fields
.field private final mOuterListener:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;

.field final synthetic this$0:Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;


# direct methods
.method private constructor <init>(Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$FileCarrierListenerFacade;->this$0:Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p2, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$FileCarrierListenerFacade;->mOuterListener:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$1;)V
    .locals 0

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$FileCarrierListenerFacade;-><init>(Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;)V

    return-void
.end method


# virtual methods
.method public onFileReceived(Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$FileCarrierListenerFacade;->this$0:Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->access$102(Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;)Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;

    .line 262
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$FileCarrierListenerFacade;->mOuterListener:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;

    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;->onFileReceived(Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;)V

    :cond_0
    return-void
.end method

.method public onFileReceivedProgressChanged(Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedProgressChangedEvent;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$FileCarrierListenerFacade;->mOuterListener:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;

    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;->onFileReceivedProgressChanged(Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedProgressChangedEvent;)V

    :cond_0
    return-void
.end method

.method public onFileSent(Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentEvent;)V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$FileCarrierListenerFacade;->this$0:Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;->access$102(Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;)Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;

    .line 254
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$FileCarrierListenerFacade;->mOuterListener:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;->onFileSent(Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentEvent;)V

    :cond_0
    return-void
.end method

.method public onFileSentProgressChanged(Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentProgressChangedEvent;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade$FileCarrierListenerFacade;->mOuterListener:Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;

    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v0, p1}, Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;->onFileSentProgressChanged(Lcom/texa/carelib/profile/internal/filecarrier/events/FileSentProgressChangedEvent;)V

    :cond_0
    return-void
.end method
