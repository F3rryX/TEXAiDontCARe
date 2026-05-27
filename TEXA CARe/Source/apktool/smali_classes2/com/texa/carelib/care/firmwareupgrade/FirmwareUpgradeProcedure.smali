.class public interface abstract Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;
.super Ljava/lang/Object;
.source "FirmwareUpgradeProcedure.java"


# virtual methods
.method public abstract isUpdatingMainApp()Z
.end method

.method public abstract isUpdatingServiceApp()Z
.end method

.method public abstract rebootToMainApp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract rebootToMainApp(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract rebootToServiceApp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract rebootToServiceApp(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract updateMainApp(Ljava/io/File;Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract updateServiceApp(Ljava/io/File;Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method
