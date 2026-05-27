.class public final Lcom/texa/carelib/care/vehicle/internal/MockDataID$Parameter;
.super Ljava/lang/Object;
.source "MockDataID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/vehicle/internal/MockDataID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Parameter"
.end annotation


# static fields
.field public static final BATTERY_VOLT:J = 0x50001L

.field public static final CRUISING_RANGE:J = 0x20005L

.field public static final DAYS_LAST_OIL_CHANGE:J = 0x70002L

.field public static final DAYS_LAST_SERVICE:J = 0x70009L

.field public static final DAYS_NEXT_SERVICE:J = 0x70007L

.field public static final DISTANCE_AT_LAST_SERVICE:J = 0x7000aL

.field public static final DISTANCE_AT_OIL_CHANGE:J = 0x70004L

.field public static final DISTANCE_LAST_OIL_CHANGE:J = 0x70003L

.field public static final DISTANCE_LAST_SERVICE:J = 0x70008L

.field public static final DISTANCE_NEXT_OIL_CHANGE:J = 0x70001L

.field public static final DISTANCE_NEXT_SERVICE:J = 0x70006L

.field public static final DSOCKET_BATTERY_VOLT:J = 0x50000L

.field public static final ENGINE_RPM:J = 0x40000L

.field public static final ENGINE_TEMP:J = 0x40001L

.field public static final FUEL_LEVEL_ABS:J = 0x20002L

.field public static final FUEL_LEVEL_REL:J = 0x20001L

.field public static final ODOMETER_KM:J = 0x20004L

.field public static final OIL_LEVEL_ABS:J = 0x40003L

.field public static final OIL_LEVEL_REL:J = 0x40002L

.field public static final OUTSIDE_TEMPERATURE:J = 0x20006L

.field public static final VEHICLE_SPEED:J = 0x20000L


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/care/vehicle/internal/MockDataID;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/care/vehicle/internal/MockDataID;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockDataID$Parameter;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockDataID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
