.class public Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;
.super Ljava/lang/Object;
.source "CorePermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/utils/permission/CorePermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionObject"
.end annotation


# instance fields
.field private mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private mContext:Landroid/content/Context;

.field private mFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->mContext:Landroid/content/Context;

    return-void
.end method

.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private getPermissionValue(Ljava/lang/String;)I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 149
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 153
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public has(Ljava/lang/String;)Z
    .locals 2

    .line 114
    invoke-static {}, Lcom/texa/careapp/utils/permission/CorePermission;->isVersionSDKOld()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 117
    :cond_0
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->getPermissionValue(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public has(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 128
    invoke-static {}, Lcom/texa/careapp/utils/permission/CorePermission;->isVersionSDKOld()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 134
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 135
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 137
    invoke-direct {p0, v3}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->getPermissionValue(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public has([Ljava/lang/String;)Z
    .locals 0

    .line 123
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->has(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public request(Ljava/lang/String;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    iget-object v3, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-direct {v0, v3, v2}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;-><init>(Landroidx/appcompat/app/AppCompatActivity;[Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    new-instance v0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    iget-object v3, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->mFragment:Landroidx/fragment/app/Fragment;

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-direct {v0, v3, v2}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;-><init>(Landroidx/fragment/app/Fragment;[Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public request(Ljava/util/List;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;"
        }
    .end annotation

    .line 174
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 175
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 177
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_0
    new-instance p1, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    iget-object v0, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p1, v0, v1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;-><init>(Landroidx/appcompat/app/AppCompatActivity;[Ljava/lang/String;)V

    return-object p1
.end method

.method public varargs request([Ljava/lang/String;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;
    .locals 2

    .line 170
    new-instance v0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    iget-object v1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1, p1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;-><init>(Landroidx/appcompat/app/AppCompatActivity;[Ljava/lang/String;)V

    return-object v0
.end method
