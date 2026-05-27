.class public final enum Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;
.super Ljava/lang/Enum;
.source "ChecksServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/checks/ChecksServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckServiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;

.field public static final enum CHECK_SERVICE_GUARDIAN_ANGEL:Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;

.field public static final enum CHECK_SERVICE_TERMS:Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 34
    new-instance v0, Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;

    const-string v1, "CHECK_SERVICE_TERMS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;->CHECK_SERVICE_TERMS:Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;

    .line 35
    new-instance v1, Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;

    const-string v3, "CHECK_SERVICE_GUARDIAN_ANGEL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;->CHECK_SERVICE_GUARDIAN_ANGEL:Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 33
    sput-object v3, Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;->$VALUES:[Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;
    .locals 1

    .line 33
    const-class v0, Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;
    .locals 1

    .line 33
    sget-object v0, Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;->$VALUES:[Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;

    invoke-virtual {v0}, [Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;

    return-object v0
.end method
