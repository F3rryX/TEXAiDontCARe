.class public final enum Lcom/texa/careapp/model/ScheduleType$TypeValue;
.super Ljava/lang/Enum;
.source "ScheduleType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/model/ScheduleType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/model/ScheduleType$TypeValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/model/ScheduleType$TypeValue;

.field public static final enum DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

.field public static final enum KM:Lcom/texa/careapp/model/ScheduleType$TypeValue;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 77
    new-instance v0, Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v1, "DATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/model/ScheduleType$TypeValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/careapp/model/ScheduleType$TypeValue;->DATE:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    .line 78
    new-instance v1, Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const-string v3, "KM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/careapp/model/ScheduleType$TypeValue;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/careapp/model/ScheduleType$TypeValue;->KM:Lcom/texa/careapp/model/ScheduleType$TypeValue;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/texa/careapp/model/ScheduleType$TypeValue;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 76
    sput-object v3, Lcom/texa/careapp/model/ScheduleType$TypeValue;->$VALUES:[Lcom/texa/careapp/model/ScheduleType$TypeValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/model/ScheduleType$TypeValue;
    .locals 1

    .line 76
    const-class v0, Lcom/texa/careapp/model/ScheduleType$TypeValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/model/ScheduleType$TypeValue;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/model/ScheduleType$TypeValue;
    .locals 1

    .line 76
    sget-object v0, Lcom/texa/careapp/model/ScheduleType$TypeValue;->$VALUES:[Lcom/texa/careapp/model/ScheduleType$TypeValue;

    invoke-virtual {v0}, [Lcom/texa/careapp/model/ScheduleType$TypeValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/model/ScheduleType$TypeValue;

    return-object v0
.end method
