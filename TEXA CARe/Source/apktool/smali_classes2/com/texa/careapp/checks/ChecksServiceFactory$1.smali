.class synthetic Lcom/texa/careapp/checks/ChecksServiceFactory$1;
.super Ljava/lang/Object;
.source "ChecksServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/checks/ChecksServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$texa$careapp$checks$ChecksServiceFactory$CheckServiceType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    invoke-static {}, Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;->values()[Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/texa/careapp/checks/ChecksServiceFactory$1;->$SwitchMap$com$texa$careapp$checks$ChecksServiceFactory$CheckServiceType:[I

    :try_start_0
    sget-object v1, Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;->CHECK_SERVICE_TERMS:Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;

    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/texa/careapp/checks/ChecksServiceFactory$1;->$SwitchMap$com$texa$careapp$checks$ChecksServiceFactory$CheckServiceType:[I

    sget-object v1, Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;->CHECK_SERVICE_GUARDIAN_ANGEL:Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;

    invoke-virtual {v1}, Lcom/texa/careapp/checks/ChecksServiceFactory$CheckServiceType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
