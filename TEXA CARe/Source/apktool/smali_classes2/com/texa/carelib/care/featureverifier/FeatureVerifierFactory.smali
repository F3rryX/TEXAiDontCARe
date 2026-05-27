.class public Lcom/texa/carelib/care/featureverifier/FeatureVerifierFactory;
.super Ljava/lang/Object;
.source "FeatureVerifierFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFeatureVerifier(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;)Lcom/texa/carelib/care/featureverifier/FeatureVerifier;
    .locals 2

    .line 29
    instance-of v0, p0, Lcom/texa/carelib/profile/ProfileTypeProxy;

    if-eqz v0, :cond_1

    .line 30
    sget-object v0, Lcom/texa/carelib/care/featureverifier/FeatureVerifierFactory$1;->$SwitchMap$com$texa$carelib$profile$ProfileType:[I

    move-object v1, p0

    check-cast v1, Lcom/texa/carelib/profile/ProfileTypeProxy;

    invoke-interface {v1}, Lcom/texa/carelib/profile/ProfileTypeProxy;->getType()Lcom/texa/carelib/profile/ProfileType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/profile/ProfileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 38
    new-instance v0, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;

    invoke-direct {v0, p0, p1}, Lcom/texa/carelib/care/featureverifier/internal/CareFeatureVerifier;-><init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;)V

    .line 39
    invoke-interface {p0, v0}, Lcom/texa/carelib/profile/Profile;->addProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V

    return-object v0

    .line 32
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    invoke-interface {v0}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->getCommandVerifier()Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;

    invoke-direct {v1, p0, p1, v0}, Lcom/texa/carelib/care/featureverifier/internal/SerialCareFeatureVerifier;-><init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;)V

    .line 34
    invoke-interface {p0, v1}, Lcom/texa/carelib/profile/Profile;->addProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V

    return-object v1

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid profile type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
