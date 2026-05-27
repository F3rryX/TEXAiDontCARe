.class public interface abstract Lcom/texa/carelib/profile/internal/SerialProfileProxy;
.super Ljava/lang/Object;
.source "SerialProfileProxy.java"


# virtual methods
.method public abstract enableCommandSubscription(ZI)V
.end method

.method public abstract getCommandVerifier()Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;
.end method

.method public abstract getSerialFileCarrier()Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;
.end method

.method public abstract sendMessage(Lcom/texa/carelib/communication/Message;)V
.end method
