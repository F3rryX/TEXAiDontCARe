.class public Lcom/texa/carelib/care/vehicleinfo/VehicleInfoFactory;
.super Ljava/lang/Object;
.source "VehicleInfoFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVehicleInfo(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/vehicleinfo/VehicleInfo;
    .locals 2

    .line 34
    instance-of v0, p0, Lcom/texa/carelib/profile/ProfileTypeProxy;

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Lcom/texa/carelib/care/vehicleinfo/VehicleInfoFactory$1;->$SwitchMap$com$texa$carelib$profile$ProfileType:[I

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

    .line 42
    new-instance v0, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;

    invoke-direct {v0, p0, p1}, Lcom/texa/carelib/care/vehicleinfo/internal/MockVehicleInfo;-><init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V

    .line 43
    invoke-interface {p0, v0}, Lcom/texa/carelib/profile/Profile;->addProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;

    invoke-direct {v0, p0, p1}, Lcom/texa/carelib/care/vehicleinfo/internal/SerialVehicleInfo;-><init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V

    .line 38
    invoke-interface {p0, v0}, Lcom/texa/carelib/profile/Profile;->addProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V

    return-object v0

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Profile type is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
