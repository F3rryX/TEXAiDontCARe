.class public Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;
.super Ljava/lang/Object;
.source "CorePermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/utils/permission/CorePermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionRequestObject"
.end annotation


# instance fields
.field private mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private mDenyFunc:Lcom/texa/careapp/utils/permission/Func;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mGrantFunc:Lcom/texa/careapp/utils/permission/Func;

.field private mPermissionNames:[Ljava/lang/String;

.field private mPermissionsWeDontHave:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/texa/careapp/utils/permission/SinglePermission;",
            ">;"
        }
    .end annotation
.end field

.field private mRationalFunc:Lcom/texa/careapp/utils/permission/Func3;

.field private mRequestCode:I

.field private mResultFunc:Lcom/texa/careapp/utils/permission/Func2;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;[Ljava/lang/String;)V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 207
    iput-object p2, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mPermissionNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;[Ljava/lang/String;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mFragment:Landroidx/fragment/app/Fragment;

    .line 212
    iput-object p2, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mPermissionNames:[Ljava/lang/String;

    return-void
.end method

.method private askPermission(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 0

    .line 283
    invoke-static {p1, p2, p3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private needToAsk()Z
    .locals 7

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mPermissionsWeDontHave:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 246
    :goto_0
    iget-object v3, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mPermissionsWeDontHave:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    .line 247
    iget-object v3, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mPermissionsWeDontHave:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/utils/permission/SinglePermission;

    .line 250
    iget-object v5, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v5, :cond_0

    .line 251
    invoke-virtual {v3}, Lcom/texa/careapp/utils/permission/SinglePermission;->getPermissionName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 253
    :cond_0
    iget-object v5, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Lcom/texa/careapp/utils/permission/SinglePermission;->getPermissionName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    :goto_1
    if-nez v5, :cond_1

    .line 256
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 260
    :cond_1
    iget-object v5, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v5, :cond_2

    .line 262
    invoke-virtual {v3}, Lcom/texa/careapp/utils/permission/SinglePermission;->getPermissionName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    goto :goto_2

    .line 264
    :cond_2
    iget-object v5, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Lcom/texa/careapp/utils/permission/SinglePermission;->getPermissionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v5

    :goto_2
    if-eqz v5, :cond_3

    .line 268
    invoke-virtual {v3, v4}, Lcom/texa/careapp/utils/permission/SinglePermission;->setRationalNeeded(Z)V

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    :cond_4
    iput-object v0, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mPermissionsWeDontHave:Ljava/util/ArrayList;

    .line 273
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mPermissionNames:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 274
    :goto_4
    iget-object v2, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mPermissionsWeDontHave:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 275
    iget-object v2, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mPermissionNames:[Ljava/lang/String;

    iget-object v3, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mPermissionsWeDontHave:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/utils/permission/SinglePermission;

    invoke-virtual {v3}, Lcom/texa/careapp/utils/permission/SinglePermission;->getPermissionName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 277
    :cond_5
    iget-object v0, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mPermissionsWeDontHave:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method


# virtual methods
.method public ask(I)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;
    .locals 7

    .line 221
    iput p1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mRequestCode:I

    .line 222
    iget-object v0, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mPermissionNames:[Ljava/lang/String;

    array-length v0, v0

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mPermissionsWeDontHave:Ljava/util/ArrayList;

    .line 224
    iget-object v0, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mPermissionNames:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 225
    iget-object v5, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mPermissionsWeDontHave:Ljava/util/ArrayList;

    new-instance v6, Lcom/texa/careapp/utils/permission/SinglePermission;

    invoke-direct {v6, v4}, Lcom/texa/careapp/utils/permission/SinglePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    :cond_0
    invoke-static {}, Lcom/texa/careapp/utils/permission/CorePermission;->isVersionSDKOld()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->needToAsk()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Asking for permission"

    .line 229
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    .line 231
    iget-object v1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mPermissionNames:[Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mPermissionNames:[Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "No need to ask for permission"

    .line 236
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object p1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mGrantFunc:Lcom/texa/careapp/utils/permission/Func;

    if-eqz p1, :cond_3

    .line 238
    invoke-virtual {p1}, Lcom/texa/careapp/utils/permission/Func;->call()V

    :cond_3
    :goto_1
    return-object p0
.end method

.method public onAllGranted(Lcom/texa/careapp/utils/permission/Func;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mGrantFunc:Lcom/texa/careapp/utils/permission/Func;

    return-object p0
.end method

.method public onAnyDenied(Lcom/texa/careapp/utils/permission/Func;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mDenyFunc:Lcom/texa/careapp/utils/permission/Func;

    return-object p0
.end method

.method public onRational(Lcom/texa/careapp/utils/permission/Func3;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mRationalFunc:Lcom/texa/careapp/utils/permission/Func3;

    return-object p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 331
    iget v0, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mRequestCode:I

    if-ne v0, p1, :cond_6

    .line 333
    iget-object v0, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mResultFunc:Lcom/texa/careapp/utils/permission/Func2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Calling Results Func"

    .line 334
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mResultFunc:Lcom/texa/careapp/utils/permission/Func2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/texa/careapp/utils/permission/Func2;->call(I[Ljava/lang/String;[I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 339
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_4

    .line 340
    aget v0, p3, p1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 341
    iget-object p2, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mPermissionsWeDontHave:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/texa/careapp/utils/permission/SinglePermission;

    invoke-virtual {p2}, Lcom/texa/careapp/utils/permission/SinglePermission;->isRationalNeeded()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mRationalFunc:Lcom/texa/careapp/utils/permission/Func3;

    if-eqz p2, :cond_1

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Calling Rational Func"

    .line 342
    invoke-static {p3, p2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    iget-object p2, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mRationalFunc:Lcom/texa/careapp/utils/permission/Func3;

    iget-object p3, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mPermissionsWeDontHave:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/utils/permission/SinglePermission;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/permission/SinglePermission;->getPermissionName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/texa/careapp/utils/permission/Func3;->call(Ljava/lang/String;)V

    goto :goto_1

    .line 344
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mDenyFunc:Lcom/texa/careapp/utils/permission/Func;

    if-eqz p1, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Calling Deny Func"

    .line 345
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    iget-object p1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mDenyFunc:Lcom/texa/careapp/utils/permission/Func;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/permission/Func;->call()V

    goto :goto_1

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "NUll DENY FUNCTIONS"

    .line 348
    invoke-static {p2, p1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 356
    :cond_4
    iget-object p1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mGrantFunc:Lcom/texa/careapp/utils/permission/Func;

    if-eqz p1, :cond_5

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Calling Grant Func"

    .line 357
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    iget-object p1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mGrantFunc:Lcom/texa/careapp/utils/permission/Func;

    invoke-virtual {p1}, Lcom/texa/careapp/utils/permission/Func;->call()V

    goto :goto_2

    :cond_5
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "NUll GRANT FUNCTIONS"

    .line 360
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onResult(Lcom/texa/careapp/utils/permission/Func2;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->mResultFunc:Lcom/texa/careapp/utils/permission/Func2;

    return-object p0
.end method
