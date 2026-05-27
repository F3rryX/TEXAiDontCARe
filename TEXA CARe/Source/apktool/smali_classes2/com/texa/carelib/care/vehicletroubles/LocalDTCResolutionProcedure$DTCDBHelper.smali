.class Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LocalDTCResolutionProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DTCDBHelper"
.end annotation


# instance fields
.field private final mDatabaseFile:Ljava/io/File;

.field final synthetic this$0:Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    .line 261
    iput-object p1, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBHelper;->this$0:Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;

    const-string p1, ""

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 262
    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 264
    iput-object p3, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBHelper;->mDatabaseFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
