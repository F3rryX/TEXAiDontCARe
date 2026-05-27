.class public final enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;
.super Ljava/lang/Enum;
.source "Column.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/activeandroid/annotation/Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForeignKeyAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/activeandroid/annotation/Column$ForeignKeyAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/activeandroid/annotation/Column$ForeignKeyAction;

.field public static final enum CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

.field public static final enum NO_ACTION:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

.field public static final enum RESTRICT:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

.field public static final enum SET_DEFAULT:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

.field public static final enum SET_NULL:Lcom/activeandroid/annotation/Column$ForeignKeyAction;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 32
    new-instance v0, Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    const-string v1, "SET_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/activeandroid/annotation/Column$ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->SET_NULL:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    new-instance v1, Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    const-string v3, "SET_DEFAULT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/activeandroid/annotation/Column$ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->SET_DEFAULT:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    new-instance v3, Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    const-string v5, "CASCADE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/activeandroid/annotation/Column$ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    new-instance v5, Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    const-string v7, "RESTRICT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/activeandroid/annotation/Column$ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->RESTRICT:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    new-instance v7, Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    const-string v9, "NO_ACTION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/activeandroid/annotation/Column$ForeignKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->NO_ACTION:Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 31
    sput-object v9, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->$VALUES:[Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .locals 1

    .line 31
    const-class v0, Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    return-object p0
.end method

.method public static values()[Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .locals 1

    .line 31
    sget-object v0, Lcom/activeandroid/annotation/Column$ForeignKeyAction;->$VALUES:[Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    invoke-virtual {v0}, [Lcom/activeandroid/annotation/Column$ForeignKeyAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/activeandroid/annotation/Column$ForeignKeyAction;

    return-object v0
.end method
