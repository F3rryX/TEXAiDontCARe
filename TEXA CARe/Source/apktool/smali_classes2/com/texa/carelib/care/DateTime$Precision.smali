.class public final enum Lcom/texa/carelib/care/DateTime$Precision;
.super Ljava/lang/Enum;
.source "DateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Precision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/texa/carelib/care/DateTime$Precision;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/texa/carelib/care/DateTime$Precision;

.field public static final enum Day:Lcom/texa/carelib/care/DateTime$Precision;

.field public static final enum Hour:Lcom/texa/carelib/care/DateTime$Precision;

.field public static final enum Minute:Lcom/texa/carelib/care/DateTime$Precision;

.field public static final enum Month:Lcom/texa/carelib/care/DateTime$Precision;

.field public static final enum Second:Lcom/texa/carelib/care/DateTime$Precision;

.field public static final enum Year:Lcom/texa/carelib/care/DateTime$Precision;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 239
    new-instance v0, Lcom/texa/carelib/care/DateTime$Precision;

    const-string v1, "Year"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/care/DateTime$Precision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/texa/carelib/care/DateTime$Precision;->Year:Lcom/texa/carelib/care/DateTime$Precision;

    .line 244
    new-instance v1, Lcom/texa/carelib/care/DateTime$Precision;

    const-string v3, "Month"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/texa/carelib/care/DateTime$Precision;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/texa/carelib/care/DateTime$Precision;->Month:Lcom/texa/carelib/care/DateTime$Precision;

    .line 249
    new-instance v3, Lcom/texa/carelib/care/DateTime$Precision;

    const-string v5, "Day"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/texa/carelib/care/DateTime$Precision;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/texa/carelib/care/DateTime$Precision;->Day:Lcom/texa/carelib/care/DateTime$Precision;

    .line 254
    new-instance v5, Lcom/texa/carelib/care/DateTime$Precision;

    const-string v7, "Hour"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/texa/carelib/care/DateTime$Precision;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/texa/carelib/care/DateTime$Precision;->Hour:Lcom/texa/carelib/care/DateTime$Precision;

    .line 259
    new-instance v7, Lcom/texa/carelib/care/DateTime$Precision;

    const-string v9, "Minute"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/texa/carelib/care/DateTime$Precision;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/texa/carelib/care/DateTime$Precision;->Minute:Lcom/texa/carelib/care/DateTime$Precision;

    .line 264
    new-instance v9, Lcom/texa/carelib/care/DateTime$Precision;

    const-string v11, "Second"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/texa/carelib/care/DateTime$Precision;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/texa/carelib/care/DateTime$Precision;->Second:Lcom/texa/carelib/care/DateTime$Precision;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/texa/carelib/care/DateTime$Precision;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 234
    sput-object v11, Lcom/texa/carelib/care/DateTime$Precision;->$VALUES:[Lcom/texa/carelib/care/DateTime$Precision;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/texa/carelib/care/DateTime$Precision;
    .locals 1

    .line 234
    const-class v0, Lcom/texa/carelib/care/DateTime$Precision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/texa/carelib/care/DateTime$Precision;

    return-object p0
.end method

.method public static values()[Lcom/texa/carelib/care/DateTime$Precision;
    .locals 1

    .line 234
    sget-object v0, Lcom/texa/carelib/care/DateTime$Precision;->$VALUES:[Lcom/texa/carelib/care/DateTime$Precision;

    invoke-virtual {v0}, [Lcom/texa/carelib/care/DateTime$Precision;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/texa/carelib/care/DateTime$Precision;

    return-object v0
.end method
