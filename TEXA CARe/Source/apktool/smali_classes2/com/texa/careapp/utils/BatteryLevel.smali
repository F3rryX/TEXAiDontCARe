.class public final enum Lcom/texa/careapp/utils/BatteryLevel;
.super Ljava/lang/Enum;
.source "BatteryLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/utils/BatteryLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/utils/BatteryLevel;

.field public static final enum GREEN:Lcom/texa/careapp/utils/BatteryLevel;

.field public static final enum RED:Lcom/texa/careapp/utils/BatteryLevel;

.field public static final enum YELLOW:Lcom/texa/careapp/utils/BatteryLevel;


# instance fields
.field private mColorRes:I

.field private final mDrawableRes:I

.field private final mPercent:I

.field private mStringRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 16
    new-instance v7, Lcom/texa/careapp/utils/BatteryLevel;

    const-string v1, "RED"

    const/4 v2, 0x0

    const v3, 0x7f11006e

    const v4, 0x7f0800e7

    const v5, 0x7f060074

    const/16 v6, 0x19

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/texa/careapp/utils/BatteryLevel;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lcom/texa/careapp/utils/BatteryLevel;->RED:Lcom/texa/careapp/utils/BatteryLevel;

    .line 21
    new-instance v0, Lcom/texa/careapp/utils/BatteryLevel;

    const-string v9, "YELLOW"

    const/4 v10, 0x1

    const v11, 0x7f110070

    const v12, 0x7f0800e6

    const v13, 0x7f0600f3

    const/16 v14, 0x32

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/texa/careapp/utils/BatteryLevel;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/texa/careapp/utils/BatteryLevel;->YELLOW:Lcom/texa/careapp/utils/BatteryLevel;

    .line 26
    new-instance v1, Lcom/texa/careapp/utils/BatteryLevel;

    const-string v16, "GREEN"

    const/16 v17, 0x2

    const v18, 0x7f11006f

    const v19, 0x7f0800e4

    const v20, 0x7f0600a8

    const/16 v21, 0x64

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/texa/careapp/utils/BatteryLevel;-><init>(Ljava/lang/String;IIIII)V

    sput-object v1, Lcom/texa/careapp/utils/BatteryLevel;->GREEN:Lcom/texa/careapp/utils/BatteryLevel;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/texa/careapp/utils/BatteryLevel;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 14
    sput-object v2, Lcom/texa/careapp/utils/BatteryLevel;->$VALUES:[Lcom/texa/careapp/utils/BatteryLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/texa/careapp/utils/BatteryLevel;->mStringRes:I

    .line 41
    iput p4, p0, Lcom/texa/careapp/utils/BatteryLevel;->mDrawableRes:I

    .line 42
    iput p5, p0, Lcom/texa/careapp/utils/BatteryLevel;->mColorRes:I

    .line 43
    iput p6, p0, Lcom/texa/careapp/utils/BatteryLevel;->mPercent:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/utils/BatteryLevel;
    .locals 1

    .line 14
    const-class v0, Lcom/texa/careapp/utils/BatteryLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/utils/BatteryLevel;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/utils/BatteryLevel;
    .locals 1

    .line 14
    sget-object v0, Lcom/texa/careapp/utils/BatteryLevel;->$VALUES:[Lcom/texa/careapp/utils/BatteryLevel;

    invoke-virtual {v0}, [Lcom/texa/careapp/utils/BatteryLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/utils/BatteryLevel;

    return-object v0
.end method


# virtual methods
.method public getColorRes()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/texa/careapp/utils/BatteryLevel;->mColorRes:I

    return v0
.end method

.method public getDrawableRes()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/texa/careapp/utils/BatteryLevel;->mDrawableRes:I

    return v0
.end method

.method public getPercent()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/texa/careapp/utils/BatteryLevel;->mPercent:I

    return v0
.end method

.method public getStringRes()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/texa/careapp/utils/BatteryLevel;->mStringRes:I

    return v0
.end method
