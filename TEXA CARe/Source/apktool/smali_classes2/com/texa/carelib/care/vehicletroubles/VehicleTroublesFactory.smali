.class public Lcom/texa/carelib/care/vehicletroubles/VehicleTroublesFactory;
.super Ljava/lang/Object;
.source "VehicleTroublesFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVehicleTroubles(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)Lcom/texa/carelib/care/vehicletroubles/VehicleTroubles;
    .locals 2

    .line 36
    instance-of v0, p0, Lcom/texa/carelib/profile/ProfileTypeProxy;

    if-eqz v0, :cond_1

    .line 37
    sget-object v0, Lcom/texa/carelib/care/vehicletroubles/VehicleTroublesFactory$1;->$SwitchMap$com$texa$carelib$profile$ProfileType:[I

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

    .line 44
    new-instance v0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->singletonInstance()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;-><init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;)V

    .line 45
    invoke-interface {p0, v0}, Lcom/texa/carelib/profile/Profile;->addProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V

    return-object v0

    .line 39
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-static {}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->singletonInstance()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;->singletonInstance(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/care/accessory/Accessory;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;)Lcom/texa/carelib/care/vehicle/internal/SerialVehicle;

    move-result-object p1

    .line 40
    invoke-interface {p0, p1}, Lcom/texa/carelib/profile/Profile;->addProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V

    return-object p1

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Profile type is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
