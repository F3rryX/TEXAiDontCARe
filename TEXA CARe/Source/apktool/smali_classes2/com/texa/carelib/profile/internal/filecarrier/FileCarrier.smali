.class public interface abstract Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier;
.super Ljava/lang/Object;
.source "FileCarrier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;
    }
.end annotation


# virtual methods
.method public abstract onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
.end method

.method public abstract receiveFileWithType(II)Z
.end method

.method public abstract receiveFileWithType(ILjava/lang/String;)Z
.end method

.method public abstract sendFile(Ljava/io/InputStream;ILcom/texa/carelib/profile/internal/filecarrier/FileCarrier$SendActionType;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract setFileCarrierListener(Lcom/texa/carelib/profile/internal/filecarrier/FileCarrierListener;)V
.end method
