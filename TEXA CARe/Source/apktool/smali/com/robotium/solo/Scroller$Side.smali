.class public final enum Lcom/robotium/solo/Scroller$Side;
.super Ljava/lang/Enum;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/robotium/solo/Scroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Side"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/robotium/solo/Scroller$Side;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/robotium/solo/Scroller$Side;

.field public static final enum LEFT:Lcom/robotium/solo/Scroller$Side;

.field public static final enum RIGHT:Lcom/robotium/solo/Scroller$Side;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Lcom/robotium/solo/Scroller$Side;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/robotium/solo/Scroller$Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/robotium/solo/Scroller$Side;->LEFT:Lcom/robotium/solo/Scroller$Side;

    new-instance v1, Lcom/robotium/solo/Scroller$Side;

    const-string v3, "RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/robotium/solo/Scroller$Side;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/robotium/solo/Scroller$Side;->RIGHT:Lcom/robotium/solo/Scroller$Side;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/robotium/solo/Scroller$Side;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/robotium/solo/Scroller$Side;->$VALUES:[Lcom/robotium/solo/Scroller$Side;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/robotium/solo/Scroller$Side;
    .locals 1

    .line 33
    const-class v0, Lcom/robotium/solo/Scroller$Side;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/robotium/solo/Scroller$Side;

    return-object p0
.end method

.method public static values()[Lcom/robotium/solo/Scroller$Side;
    .locals 1

    .line 33
    sget-object v0, Lcom/robotium/solo/Scroller$Side;->$VALUES:[Lcom/robotium/solo/Scroller$Side;

    invoke-virtual {v0}, [Lcom/robotium/solo/Scroller$Side;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/robotium/solo/Scroller$Side;

    return-object v0
.end method
