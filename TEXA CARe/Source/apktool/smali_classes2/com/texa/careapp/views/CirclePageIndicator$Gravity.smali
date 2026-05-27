.class public final enum Lcom/texa/careapp/views/CirclePageIndicator$Gravity;
.super Ljava/lang/Enum;
.source "CirclePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/views/CirclePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gravity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/views/CirclePageIndicator$Gravity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

.field public static final enum CENTER:Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

.field public static final enum LEFT:Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

.field public static final enum RIGHT:Lcom/texa/careapp/views/CirclePageIndicator$Gravity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 42
    new-instance v0, Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/views/CirclePageIndicator$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/careapp/views/CirclePageIndicator$Gravity;->LEFT:Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    .line 43
    new-instance v1, Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/careapp/views/CirclePageIndicator$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/careapp/views/CirclePageIndicator$Gravity;->CENTER:Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    .line 44
    new-instance v3, Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/careapp/views/CirclePageIndicator$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/careapp/views/CirclePageIndicator$Gravity;->RIGHT:Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 41
    sput-object v5, Lcom/texa/careapp/views/CirclePageIndicator$Gravity;->$VALUES:[Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/views/CirclePageIndicator$Gravity;
    .locals 1

    .line 41
    const-class v0, Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/views/CirclePageIndicator$Gravity;
    .locals 1

    .line 41
    sget-object v0, Lcom/texa/careapp/views/CirclePageIndicator$Gravity;->$VALUES:[Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    invoke-virtual {v0}, [Lcom/texa/careapp/views/CirclePageIndicator$Gravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/views/CirclePageIndicator$Gravity;

    return-object v0
.end method
