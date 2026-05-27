.class public final enum Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;
.super Ljava/lang/Enum;
.source "GetSOSStatusParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SOSStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

.field public static final enum Absent:Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

.field public static final enum Error:Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

.field public static final enum Present:Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

.field public static final enum Undefined:Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 103
    new-instance v0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    const-string v1, "Undefined"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;->Undefined:Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    .line 104
    new-instance v1, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    const-string v3, "Absent"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;->Absent:Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    .line 105
    new-instance v3, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    const-string v5, "Present"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;->Present:Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    .line 106
    new-instance v5, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    const-string v7, "Error"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;->Error:Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 102
    sput-object v7, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;->$VALUES:[Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;
    .locals 1

    .line 102
    const-class v0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;
    .locals 1

    .line 102
    sget-object v0, Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;->$VALUES:[Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    invoke-virtual {v0}, [Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/care/impacts/internal/parser/GetSOSStatusParser$SOSStatus;

    return-object v0
.end method
