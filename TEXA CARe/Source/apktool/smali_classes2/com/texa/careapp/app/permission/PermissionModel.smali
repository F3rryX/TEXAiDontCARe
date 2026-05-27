.class Lcom/texa/careapp/app/permission/PermissionModel;
.super Ljava/lang/Object;
.source "PermissionModel.java"


# instance fields
.field private btnTextRes:I

.field private descriptionRes:I

.field private imageRes:I

.field private isBeta:Z

.field private isMandatory:Z

.field private permissionType:[Ljava/lang/String;

.field private skipBtnRes:I

.field private titleRes:I


# direct methods
.method public constructor <init>(IIII[Ljava/lang/String;ZIZ)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/texa/careapp/app/permission/PermissionModel;->titleRes:I

    iput p2, p0, Lcom/texa/careapp/app/permission/PermissionModel;->descriptionRes:I

    iput p3, p0, Lcom/texa/careapp/app/permission/PermissionModel;->btnTextRes:I

    iput p4, p0, Lcom/texa/careapp/app/permission/PermissionModel;->imageRes:I

    iput-object p5, p0, Lcom/texa/careapp/app/permission/PermissionModel;->permissionType:[Ljava/lang/String;

    iput-boolean p6, p0, Lcom/texa/careapp/app/permission/PermissionModel;->isBeta:Z

    iput p7, p0, Lcom/texa/careapp/app/permission/PermissionModel;->skipBtnRes:I

    iput-boolean p8, p0, Lcom/texa/careapp/app/permission/PermissionModel;->isMandatory:Z

    return-void
.end method


# virtual methods
.method public getBtnTextRes()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/texa/careapp/app/permission/PermissionModel;->btnTextRes:I

    return v0
.end method

.method public getDescriptionRes()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/texa/careapp/app/permission/PermissionModel;->descriptionRes:I

    return v0
.end method

.method public getImageRes()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/texa/careapp/app/permission/PermissionModel;->imageRes:I

    return v0
.end method

.method public getPermissionType()[Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionModel;->permissionType:[Ljava/lang/String;

    return-object v0
.end method

.method public getSkipBtnRes()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/texa/careapp/app/permission/PermissionModel;->skipBtnRes:I

    return v0
.end method

.method public getTitleRes()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/texa/careapp/app/permission/PermissionModel;->titleRes:I

    return v0
.end method

.method public isBeta()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/texa/careapp/app/permission/PermissionModel;->isBeta:Z

    return v0
.end method

.method public isMandatory()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/texa/careapp/app/permission/PermissionModel;->isMandatory:Z

    return v0
.end method
