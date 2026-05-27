.class public Lcom/texa/careapp/utils/permission/CorePermission;
.super Ljava/lang/Object;
.source "CorePermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;,
        Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;
    }
.end annotation


# static fields
.field public static final DRAW_OVERLAY:[Ljava/lang/String;

.field public static final REQUEST_CODE_ALL:I = 0x1

.field public static final REQUEST_CODE_BATTERY:I = 0x7

.field public static final REQUEST_CODE_CONTACTS:I = 0x2

.field public static final REQUEST_CODE_LOCATION:I = 0x4

.field public static final REQUEST_CODE_OVERLAY:I = 0x6

.field public static final REQUEST_CODE_PHONE:I = 0x5

.field public static final REQUEST_CODE_STORAGE:I = 0x3

.field public static final USE_ACCESS_BACKGROUND_LOCATION:[Ljava/lang/String;

.field public static final USE_ACCESS_LOCATION:[Ljava/lang/String;

.field public static final USE_CONTACTS:[Ljava/lang/String;

.field public static final USE_NEARBY_DEVICES:[Ljava/lang/String;

.field public static final USE_PHONE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.READ_CONTACTS"

    .line 68
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/utils/permission/CorePermission;->USE_CONTACTS:[Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 69
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/utils/permission/CorePermission;->USE_ACCESS_LOCATION:[Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 70
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/utils/permission/CorePermission;->USE_ACCESS_BACKGROUND_LOCATION:[Ljava/lang/String;

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    .line 71
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/utils/permission/CorePermission;->USE_NEARBY_DEVICES:[Ljava/lang/String;

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 72
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/utils/permission/CorePermission;->USE_PHONE:[Ljava/lang/String;

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 73
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/utils/permission/CorePermission;->DRAW_OVERLAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isVersionSDKOld()Z
    .locals 2

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static shouldRequestPermissions(Landroid/content/Context;)Z
    .locals 3

    .line 76
    sget-object v0, Lcom/texa/careapp/utils/permission/CorePermission;->USE_ACCESS_LOCATION:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/texa/careapp/utils/Utils;->isPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/texa/careapp/utils/permission/CorePermission;->USE_ACCESS_BACKGROUND_LOCATION:[Ljava/lang/String;

    .line 77
    invoke-static {p0, v0}, Lcom/texa/careapp/utils/Utils;->isPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    sget-object v0, Lcom/texa/careapp/utils/permission/CorePermission;->USE_PHONE:[Ljava/lang/String;

    .line 78
    invoke-static {p0, v0}, Lcom/texa/careapp/utils/Utils;->isPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 79
    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->isAlreadyIgnoringBatteryOptimization(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_2

    sget-object v0, Lcom/texa/careapp/utils/permission/CorePermission;->USE_NEARBY_DEVICES:[Ljava/lang/String;

    .line 80
    invoke-static {p0, v0}, Lcom/texa/careapp/utils/Utils;->isPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_3

    .line 81
    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static with(Landroid/content/Context;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;
    .locals 1

    .line 93
    new-instance v0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static with(Landroidx/appcompat/app/AppCompatActivity;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;
    .locals 1

    .line 85
    new-instance v0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-object v0
.end method

.method public static with(Landroidx/fragment/app/Fragment;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;
    .locals 1

    .line 89
    new-instance v0, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method
