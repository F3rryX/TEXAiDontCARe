.class Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBAdapter;
.super Ljava/lang/Object;
.source "LocalDTCResolutionProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DTCDBAdapter"
.end annotation


# instance fields
.field private mExtDTCFile:Ljava/io/File;

.field final synthetic this$0:Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;Ljava/io/File;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBAdapter;->this$0:Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p2, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBAdapter;->mExtDTCFile:Ljava/io/File;

    return-void
.end method

.method private hasTable(Ljava/lang/String;)Z
    .locals 4

    .line 243
    new-instance v0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBHelper;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBAdapter;->this$0:Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;

    invoke-static {v1}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->access$000(Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBAdapter;->mExtDTCFile:Ljava/io/File;

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBHelper;-><init>(Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "table"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "SELECT COUNT(*) FROM sqlite_master WHERE type = ? AND name = ?"

    .line 248
    invoke-virtual {v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 249
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 252
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 253
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-lez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method getDTCInfo(JJJ)Landroid/database/Cursor;
    .locals 4

    .line 203
    new-instance v0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBHelper;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBAdapter;->this$0:Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;

    invoke-static {v1}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->access$000(Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBAdapter;->mExtDTCFile:Ljava/io/File;

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBHelper;-><init>(Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "SELECT E.ECU_URN, E.ECUType, D.DTC_PCODE FROM TblECU E INNER JOIN TblDTC D ON E.ECU_URN=D.ECU_URN AND E.SysID = ? AND E.TblID = ? AND DTC_RCODE = ?"

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method getDTCTranslations(Ljava/lang/String;JLjava/util/List;)Landroid/database/Cursor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 209
    new-instance v0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBHelper;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBAdapter;->this$0:Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;

    invoke-static {v1}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;->access$000(Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBAdapter;->mExtDTCFile:Ljava/io/File;

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBHelper;-><init>(Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure;Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT Lang, Description from TblDTCTranslations WHERE ECU_URN=? AND DTC_RCODE=?"

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, " AND Lang IN("

    .line 219
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 220
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 221
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Locale;

    const-string p3, ",?"

    if-nez p1, :cond_0

    const-string v3, "?"

    goto :goto_1

    :cond_0
    move-object v3, p3

    .line 222
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 225
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {p2}, Lcom/texa/carelib/core/LocaleHelper;->toRFC3066(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const-string p1, ")"

    .line 229
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 233
    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method supportsTranslations()Z
    .locals 1

    const-string v0, "TblDTCTranslations"

    .line 239
    invoke-direct {p0, v0}, Lcom/texa/carelib/care/vehicletroubles/LocalDTCResolutionProcedure$DTCDBAdapter;->hasTable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
