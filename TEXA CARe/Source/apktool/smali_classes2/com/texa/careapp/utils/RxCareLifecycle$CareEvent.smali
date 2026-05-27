.class public final enum Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;
.super Ljava/lang/Enum;
.source "RxCareLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/utils/RxCareLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CareEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

.field public static final enum CONNECTED:Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

.field public static final enum DISCONNECTED:Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

.field public static final enum TRIP_START:Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 79
    new-instance v0, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    const-string v1, "TRIP_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;->TRIP_START:Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    new-instance v1, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    const-string v3, "CONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;->CONNECTED:Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    new-instance v3, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    const-string v5, "DISCONNECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;->DISCONNECTED:Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 78
    sput-object v5, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;->$VALUES:[Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;
    .locals 1

    .line 78
    const-class v0, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;
    .locals 1

    .line 78
    sget-object v0, Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;->$VALUES:[Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    invoke-virtual {v0}, [Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/utils/RxCareLifecycle$CareEvent;

    return-object v0
.end method
