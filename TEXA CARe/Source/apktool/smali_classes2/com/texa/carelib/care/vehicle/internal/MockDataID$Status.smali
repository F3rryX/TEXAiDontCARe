.class public final Lcom/texa/carelib/care/vehicle/internal/MockDataID$Status;
.super Ljava/lang/Object;
.source "MockDataID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/vehicle/internal/MockDataID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Status"
.end annotation


# static fields
.field public static final ABS_LAMP_STATUS:J = 0x10002L

.field public static final AIRBAG_LAMP_STATUS:J = 0x10007L

.field public static final BRAKE_LL_LAMP_STATUS:J = 0x10001L

.field public static final BRAKE_PAD_LAMP_STATUS:J = 0x10000L

.field public static final CAR_CRASH_STATUS:J = 0x30000L

.field public static final LOW_FUEL_LAMP_STATUS:J = 0x1000bL

.field public static final MIL_LAMP_STATUS:J = 0x10004L

.field public static final OIL_LEVEL_STATUS:J = 0x40004L

.field public static final SERVICE_LAMP_STATUS:J = 0x1000aL

.field public static final TIRE_PRESS_LAMP_STATUS:J = 0x10003L


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/care/vehicle/internal/MockDataID;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/care/vehicle/internal/MockDataID;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockDataID$Status;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockDataID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
