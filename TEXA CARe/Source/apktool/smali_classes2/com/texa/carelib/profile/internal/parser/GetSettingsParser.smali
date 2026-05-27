.class public Lcom/texa/carelib/profile/internal/parser/GetSettingsParser;
.super Ljava/lang/Object;
.source "GetSettingsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GetSettingsParser"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;
    .locals 4

    .line 26
    new-instance v0, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;

    invoke-direct {v0}, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v1

    if-nez v1, :cond_3

    .line 30
    invoke-virtual {p0}, Lcom/texa/carelib/communication/Message;->getData()[B

    move-result-object p0

    if-eqz p0, :cond_3

    .line 34
    array-length v1, p0

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 36
    aget-byte v2, p0, v1

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;->setDTCEncrypted(Z)V

    .line 39
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 40
    sget-object v2, Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;->Database:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    invoke-virtual {v0, v2}, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;->setDiagnosticConfigurationDownloadMode(Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;)V

    goto :goto_1

    .line 42
    :cond_1
    sget-object v2, Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;->ConfigurationFiles:Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;

    invoke-virtual {v0, v2}, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;->setDiagnosticConfigurationDownloadMode(Lcom/texa/carelib/care/accessory/DiagnosticConfigurationType;)V

    .line 45
    :goto_1
    aget-byte p0, p0, v1

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_2

    .line 46
    sget-object p0, Lcom/texa/carelib/care/accessory/EncryptionLevel;->SingleLevelEncryption:Lcom/texa/carelib/care/accessory/EncryptionLevel;

    invoke-virtual {v0, p0}, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;->setEncryptionLevel(Lcom/texa/carelib/care/accessory/EncryptionLevel;)V

    goto :goto_2

    .line 48
    :cond_2
    sget-object p0, Lcom/texa/carelib/care/accessory/EncryptionLevel;->DoubleLevelEncryption:Lcom/texa/carelib/care/accessory/EncryptionLevel;

    invoke-virtual {v0, p0}, Lcom/texa/carelib/profile/internal/parser/GetSettingsParser$GetSettingsResponse;->setEncryptionLevel(Lcom/texa/carelib/care/accessory/EncryptionLevel;)V

    :cond_3
    :goto_2
    return-object v0
.end method
