.class public Lcom/texa/careapp/model/VehicleListSettingsModel;
.super Ljava/lang/Object;
.source "VehicleListSettingsModel.java"

# interfaces
.implements Lcom/texa/careapp/model/ISettingsModel;


# instance fields
.field private hasImage:Z

.field private mAction:I

.field private mImage:I

.field private mSubtitle:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:I

.field private mVehicleModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation
.end field

.field private visibility:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->mTitle:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->mSubtitle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->hasImage:Z

    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->mType:I

    .line 16
    iput v1, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->mImage:I

    .line 17
    iput v1, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->mAction:I

    .line 18
    iput-boolean v0, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->visibility:Z

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->mVehicleModels:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->mAction:I

    return v0
.end method

.method public getImage()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->mImage:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->mSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->mType:I

    return v0
.end method

.method public getVehicleModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->mVehicleModels:Ljava/util/List;

    return-object v0
.end method

.method public getVisibility()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->visibility:Z

    return v0
.end method

.method public hasImage()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->hasImage:Z

    return v0
.end method

.method public isVisible(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->visibility:Z

    return-void
.end method

.method public setAction(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->mAction:I

    return-void
.end method

.method public setHasImage(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->hasImage:Z

    return-void
.end method

.method public setImage(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->mImage:I

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->mSubtitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->mType:I

    return-void
.end method

.method public setVehicleModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;)V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/texa/careapp/model/VehicleListSettingsModel;->mVehicleModels:Ljava/util/List;

    return-void
.end method
