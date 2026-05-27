.class public Lcom/texa/careapp/model/HeaderSettingsModel;
.super Ljava/lang/Object;
.source "HeaderSettingsModel.java"

# interfaces
.implements Lcom/texa/careapp/model/ISettingsModel;


# instance fields
.field private hasImage:Z

.field private mAction:I

.field private mImage:I

.field private mSubtitle:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:I

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->mTitle:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->mSubtitle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->hasImage:Z

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->mType:I

    .line 14
    iput v0, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->mImage:I

    .line 15
    iput v0, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->mAction:I

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->visible:Z

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->mAction:I

    return v0
.end method

.method public getImage()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->mImage:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->mSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->mType:I

    return v0
.end method

.method public getVisibility()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->visible:Z

    return v0
.end method

.method public hasImage()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->hasImage:Z

    return v0
.end method

.method public isVisible(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->visible:Z

    return-void
.end method

.method public setAction(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->mAction:I

    return-void
.end method

.method public setHasImage(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->hasImage:Z

    return-void
.end method

.method public setImage(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->mImage:I

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->mSubtitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/texa/careapp/model/HeaderSettingsModel;->mType:I

    return-void
.end method
