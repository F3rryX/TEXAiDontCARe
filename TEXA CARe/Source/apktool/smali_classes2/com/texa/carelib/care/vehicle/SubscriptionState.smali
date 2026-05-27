.class public final enum Lcom/texa/carelib/care/vehicle/SubscriptionState;
.super Ljava/lang/Enum;
.source "SubscriptionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/care/vehicle/SubscriptionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/care/vehicle/SubscriptionState;

.field public static final enum NotSubscribed:Lcom/texa/carelib/care/vehicle/SubscriptionState;

.field public static final enum SubscribePending:Lcom/texa/carelib/care/vehicle/SubscriptionState;

.field public static final enum Subscribed:Lcom/texa/carelib/care/vehicle/SubscriptionState;

.field public static final enum UnsubscribePending:Lcom/texa/carelib/care/vehicle/SubscriptionState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 12
    new-instance v0, Lcom/texa/carelib/care/vehicle/SubscriptionState;

    const-string v1, "NotSubscribed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/care/vehicle/SubscriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/care/vehicle/SubscriptionState;->NotSubscribed:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    .line 16
    new-instance v1, Lcom/texa/carelib/care/vehicle/SubscriptionState;

    const-string v3, "UnsubscribePending"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/care/vehicle/SubscriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/care/vehicle/SubscriptionState;->UnsubscribePending:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    .line 20
    new-instance v3, Lcom/texa/carelib/care/vehicle/SubscriptionState;

    const-string v5, "SubscribePending"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/care/vehicle/SubscriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/care/vehicle/SubscriptionState;->SubscribePending:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    .line 24
    new-instance v5, Lcom/texa/carelib/care/vehicle/SubscriptionState;

    const-string v7, "Subscribed"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/care/vehicle/SubscriptionState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/care/vehicle/SubscriptionState;->Subscribed:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/texa/carelib/care/vehicle/SubscriptionState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 8
    sput-object v7, Lcom/texa/carelib/care/vehicle/SubscriptionState;->$VALUES:[Lcom/texa/carelib/care/vehicle/SubscriptionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/care/vehicle/SubscriptionState;
    .locals 1

    .line 8
    const-class v0, Lcom/texa/carelib/care/vehicle/SubscriptionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/vehicle/SubscriptionState;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/care/vehicle/SubscriptionState;
    .locals 1

    .line 8
    sget-object v0, Lcom/texa/carelib/care/vehicle/SubscriptionState;->$VALUES:[Lcom/texa/carelib/care/vehicle/SubscriptionState;

    invoke-virtual {v0}, [Lcom/texa/carelib/care/vehicle/SubscriptionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/care/vehicle/SubscriptionState;

    return-object v0
.end method
