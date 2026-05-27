.class public Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureFactory;
.super Ljava/lang/Object;
.source "FirmwareUpgradeProcedureFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFirmwareUpgradeProcedure(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedure;
    .locals 2

    .line 28
    instance-of v0, p0, Lcom/texa/carelib/profile/ProfileTypeProxy;

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/texa/carelib/care/firmwareupgrade/FirmwareUpgradeProcedureFactory$1;->$SwitchMap$com$texa$carelib$profile$ProfileType:[I

    move-object v1, p0

    check-cast v1, Lcom/texa/carelib/profile/ProfileTypeProxy;

    invoke-interface {v1}, Lcom/texa/carelib/profile/ProfileTypeProxy;->getType()Lcom/texa/carelib/profile/ProfileType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/profile/ProfileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 31
    new-instance v0, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;

    invoke-direct {v0, p0, p1}, Lcom/texa/carelib/care/firmwareupgrade/internal/SerialFirmwareUpgradeProcedureSmart;-><init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V

    .line 32
    invoke-interface {p0, v0}, Lcom/texa/carelib/profile/Profile;->addProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V

    return-object v0

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Profile type is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
