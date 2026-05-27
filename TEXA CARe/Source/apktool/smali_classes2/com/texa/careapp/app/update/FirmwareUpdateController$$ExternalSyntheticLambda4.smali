.class public final synthetic Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function5;


# static fields
.field public static final synthetic INSTANCE:Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda4;->INSTANCE:Lcom/texa/careapp/app/update/FirmwareUpdateController$$ExternalSyntheticLambda4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    new-instance v6, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    move-object v2, p2

    check-cast v2, Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-object v3, p3

    check-cast v3, Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-object v4, p4

    check-cast v4, Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-object v5, p5

    check-cast v5, Lcom/texa/carelib/core/utils/FirmwareVersion;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/texa/careapp/app/update/FirmwareUpdateController$FwUpdateInfos;-><init>(Ljava/lang/String;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;)V

    return-object v6
.end method
