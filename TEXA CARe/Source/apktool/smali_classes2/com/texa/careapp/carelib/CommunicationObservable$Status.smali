.class public final enum Lcom/texa/careapp/carelib/CommunicationObservable$Status;
.super Ljava/lang/Enum;
.source "CommunicationObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/carelib/CommunicationObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/careapp/carelib/CommunicationObservable$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/careapp/carelib/CommunicationObservable$Status;

.field public static final enum CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

.field public static final enum CARE_NOT_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 245
    new-instance v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    const-string v1, "CARE_CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/carelib/CommunicationObservable$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    .line 246
    new-instance v1, Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    const-string v3, "CARE_NOT_CONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/careapp/carelib/CommunicationObservable$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->CARE_NOT_CONNECTED:Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 244
    sput-object v3, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->$VALUES:[Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 244
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/careapp/carelib/CommunicationObservable$Status;
    .locals 1

    .line 244
    const-class v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    return-object p0
.end method

.method public static values()[Lcom/texa/careapp/carelib/CommunicationObservable$Status;
    .locals 1

    .line 244
    sget-object v0, Lcom/texa/careapp/carelib/CommunicationObservable$Status;->$VALUES:[Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    invoke-virtual {v0}, [Lcom/texa/careapp/carelib/CommunicationObservable$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/careapp/carelib/CommunicationObservable$Status;

    return-object v0
.end method
