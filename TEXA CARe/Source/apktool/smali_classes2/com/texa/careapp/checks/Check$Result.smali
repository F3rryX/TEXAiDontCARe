.class public final enum Lcom/texa/careapp/checks/Check$Result;
.super Ljava/lang/Enum;
.source "Check.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/checks/Check;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/checks/Check$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/checks/Check$Result;

.field public static final enum BLOCKING:Lcom/texa/careapp/checks/Check$Result;

.field public static final enum OK:Lcom/texa/careapp/checks/Check$Result;

.field public static final enum WARNING:Lcom/texa/careapp/checks/Check$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 26
    new-instance v0, Lcom/texa/careapp/checks/Check$Result;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/checks/Check$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    .line 27
    new-instance v1, Lcom/texa/careapp/checks/Check$Result;

    const-string v3, "WARNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/careapp/checks/Check$Result;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/careapp/checks/Check$Result;->WARNING:Lcom/texa/careapp/checks/Check$Result;

    .line 28
    new-instance v3, Lcom/texa/careapp/checks/Check$Result;

    const-string v5, "BLOCKING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/careapp/checks/Check$Result;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/careapp/checks/Check$Result;->BLOCKING:Lcom/texa/careapp/checks/Check$Result;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/careapp/checks/Check$Result;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 25
    sput-object v5, Lcom/texa/careapp/checks/Check$Result;->$VALUES:[Lcom/texa/careapp/checks/Check$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/checks/Check$Result;
    .locals 1

    .line 25
    const-class v0, Lcom/texa/careapp/checks/Check$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/checks/Check$Result;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/checks/Check$Result;
    .locals 1

    .line 25
    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->$VALUES:[Lcom/texa/careapp/checks/Check$Result;

    invoke-virtual {v0}, [Lcom/texa/careapp/checks/Check$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/checks/Check$Result;

    return-object v0
.end method
