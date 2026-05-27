.class public Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;
.super Ljava/lang/Object;
.source "GetSettingsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/parser/GetSettingsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetSettingsResponse"
.end annotation


# instance fields
.field private mDiagnosticConfigurationType:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

.field private mEncryptionLevel:Lcom/texa/carelib/care/accessory/EncryptionLevel;

.field private mIsDTCEncrypted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;->ConfigurationFiles:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;->mDiagnosticConfigurationType:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    .line 68
    sget-object v0, Lcom/texa/carelib/care/accessory/EncryptionLevel;->DoubleLevelEncryption:Lcom/texa/carelib/care/accessory/EncryptionLevel;

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;->mEncryptionLevel:Lcom/texa/carelib/care/accessory/EncryptionLevel;

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;->mIsDTCEncrypted:Z

    return-void
.end method


# virtual methods
.method public getDiagnosticConfigurationDownloadMode()Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;->mDiagnosticConfigurationType:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    return-object v0
.end method

.method public getEncryptionLevel()Lcom/texa/carelib/care/accessory/EncryptionLevel;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;->mEncryptionLevel:Lcom/texa/carelib/care/accessory/EncryptionLevel;

    return-object v0
.end method

.method public isDTCEncrypted()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;->mIsDTCEncrypted:Z

    return v0
.end method

.method public setDTCEncrypted(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;->mIsDTCEncrypted:Z

    return-void
.end method

.method public setDiagnosticConfigurationDownloadMode(Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;->mDiagnosticConfigurationType:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    return-void
.end method

.method public setEncryptionLevel(Lcom/texa/carelib/care/accessory/EncryptionLevel;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;->mEncryptionLevel:Lcom/texa/carelib/care/accessory/EncryptionLevel;

    return-void
.end method
