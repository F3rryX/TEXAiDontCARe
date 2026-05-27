.class public final synthetic Lcom/texa/careapp/dagger/CareModule$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/communication/DeviceFilter;


# static fields
.field public static final synthetic INSTANCE:Lcom/texa/careapp/dagger/CareModule$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/texa/careapp/dagger/CareModule$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/texa/careapp/dagger/CareModule$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/texa/careapp/dagger/CareModule$$ExternalSyntheticLambda1;->INSTANCE:Lcom/texa/careapp/dagger/CareModule$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isValidDevice(Lcom/texa/carelib/communication/DeviceInfo;)Z
    .locals 0

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isCAReDevice(Lcom/texa/carelib/communication/DeviceInfo;)Z

    move-result p1

    return p1
.end method
