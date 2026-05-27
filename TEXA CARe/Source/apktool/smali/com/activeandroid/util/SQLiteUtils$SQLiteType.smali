.class public final enum Lcom/activeandroid/util/SQLiteUtils$SQLiteType;
.super Ljava/lang/Enum;
.source "SQLiteUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/activeandroid/util/SQLiteUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SQLiteType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/activeandroid/util/SQLiteUtils$SQLiteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

.field public static final enum BLOB:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

.field public static final enum INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

.field public static final enum REAL:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

.field public static final enum TEXT:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 47
    new-instance v0, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->INTEGER:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    new-instance v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    const-string v3, "REAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->REAL:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    new-instance v3, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    const-string v5, "TEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->TEXT:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    new-instance v5, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    const-string v7, "BLOB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->BLOB:Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 46
    sput-object v7, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->$VALUES:[Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/activeandroid/util/SQLiteUtils$SQLiteType;
    .locals 1

    .line 46
    const-class v0, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    return-object p0
.end method

.method public static values()[Lcom/activeandroid/util/SQLiteUtils$SQLiteType;
    .locals 1

    .line 46
    sget-object v0, Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->$VALUES:[Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    invoke-virtual {v0}, [Lcom/activeandroid/util/SQLiteUtils$SQLiteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/activeandroid/util/SQLiteUtils$SQLiteType;

    return-object v0
.end method
