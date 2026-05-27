.class public final synthetic Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/utils/GenericAdapter;


# static fields
.field public static final synthetic INSTANCE:Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$$ExternalSyntheticLambda0;->INSTANCE:Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adaptee(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/texa/carelib/care/vehicletroubles/DTC;

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getID()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
