.class public Lcom/texa/careapp/utils/permission/SinglePermission;
.super Ljava/lang/Object;
.source "SinglePermission.java"


# instance fields
.field private mPermissionName:Ljava/lang/String;

.field private mRationalNeeded:Z

.field private mReason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/texa/careapp/utils/permission/SinglePermission;->mRationalNeeded:Z

    .line 15
    iput-object p1, p0, Lcom/texa/careapp/utils/permission/SinglePermission;->mPermissionName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/texa/careapp/utils/permission/SinglePermission;->mRationalNeeded:Z

    .line 19
    iput-object p1, p0, Lcom/texa/careapp/utils/permission/SinglePermission;->mPermissionName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/texa/careapp/utils/permission/SinglePermission;->mReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPermissionName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/utils/permission/SinglePermission;->mPermissionName:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/texa/careapp/utils/permission/SinglePermission;->mReason:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public isRationalNeeded()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/texa/careapp/utils/permission/SinglePermission;->mRationalNeeded:Z

    return v0
.end method

.method public setPermissionName(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/texa/careapp/utils/permission/SinglePermission;->mPermissionName:Ljava/lang/String;

    return-void
.end method

.method public setRationalNeeded(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/texa/careapp/utils/permission/SinglePermission;->mRationalNeeded:Z

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/texa/careapp/utils/permission/SinglePermission;->mReason:Ljava/lang/String;

    return-void
.end method
