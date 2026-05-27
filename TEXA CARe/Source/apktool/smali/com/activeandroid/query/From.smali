.class public final Lcom/activeandroid/query/From;
.super Ljava/lang/Object;
.source "From.java"

# interfaces
.implements Lcom/activeandroid/query/Sqlable;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupBy:Ljava/lang/String;

.field private mHaving:Ljava/lang/String;

.field private mJoins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/activeandroid/query/Join;",
            ">;"
        }
    .end annotation
.end field

.field private mLimit:Ljava/lang/String;

.field private mOffset:Ljava/lang/String;

.field private mOrderBy:Ljava/lang/String;

.field private mQueryBase:Lcom/activeandroid/query/Sqlable;

.field private mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhere:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/activeandroid/query/Sqlable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;",
            "Lcom/activeandroid/query/Sqlable;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    .line 47
    iput-object p1, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    .line 49
    iput-object p2, p0, Lcom/activeandroid/query/From;->mQueryBase:Lcom/activeandroid/query/Sqlable;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/activeandroid/query/From;->mArguments:Ljava/util/List;

    return-void
.end method

.method private addFrom(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "FROM "

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v0, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    invoke-static {v0}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Lcom/activeandroid/query/From;->mAlias:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "AS "

    .line 172
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v1, p0, Lcom/activeandroid/query/From;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private addGroupBy(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/activeandroid/query/From;->mGroupBy:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "GROUP BY "

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v0, p0, Lcom/activeandroid/query/From;->mGroupBy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private addHaving(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/activeandroid/query/From;->mHaving:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "HAVING "

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v0, p0, Lcom/activeandroid/query/From;->mHaving:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private addJoins(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/activeandroid/query/Join;

    .line 180
    invoke-virtual {v1}, Lcom/activeandroid/query/Join;->toSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addLimit(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/activeandroid/query/From;->mLimit:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "LIMIT "

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v0, p0, Lcom/activeandroid/query/From;->mLimit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    .line 220
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private addOffset(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/activeandroid/query/From;->mOffset:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "OFFSET "

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v0, p0, Lcom/activeandroid/query/From;->mOffset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private addOrderBy(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/activeandroid/query/From;->mOrderBy:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "ORDER BY "

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v0, p0, Lcom/activeandroid/query/From;->mOrderBy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private addWhere(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "WHERE "

    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v0, " "

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private sqlString(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3

    .line 234
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 238
    invoke-static {}, Lcom/activeandroid/util/Log;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/activeandroid/util/Log;->v(Ljava/lang/String;)I

    :cond_0
    return-object p1
.end method


# virtual methods
.method addArguments([Ljava/lang/Object;)V
    .locals 5

    .line 159
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 160
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Boolean;

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 161
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 163
    :cond_1
    iget-object v3, p0, Lcom/activeandroid/query/From;->mArguments:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public and(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p1

    return-object p1
.end method

.method public varargs and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    return-object p1
.end method

.method public as(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/activeandroid/query/From;->mAlias:Ljava/lang/String;

    return-object p0
.end method

.method public count()I
    .locals 2

    .line 333
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toCountSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/activeandroid/util/SQLiteUtils;->intQuery(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public crossJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/query/Join;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/activeandroid/query/Join;

    sget-object v1, Lcom/activeandroid/query/Join$JoinType;->CROSS:Lcom/activeandroid/query/Join$JoinType;

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    .line 86
    iget-object p1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public execute()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/activeandroid/Model;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/activeandroid/query/From;->mQueryBase:Lcom/activeandroid/query/Sqlable;

    instance-of v0, v0, Lcom/activeandroid/query/Select;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/activeandroid/util/SQLiteUtils;->rawQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/activeandroid/util/SQLiteUtils;->execSql(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/activeandroid/content/ContentProvider;->createUri(Ljava/lang/Class;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object v2
.end method

.method public executeSingle()Lcom/activeandroid/Model;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/activeandroid/Model;",
            ">()TT;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/activeandroid/query/From;->mQueryBase:Lcom/activeandroid/query/Sqlable;

    instance-of v0, v0, Lcom/activeandroid/query/Select;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0, v1}, Lcom/activeandroid/query/From;->limit(I)Lcom/activeandroid/query/From;

    .line 311
    iget-object v0, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/activeandroid/util/SQLiteUtils;->rawQuerySingle(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/activeandroid/Model;

    move-result-object v0

    return-object v0

    .line 314
    :cond_0
    invoke-virtual {p0, v1}, Lcom/activeandroid/query/From;->limit(I)Lcom/activeandroid/query/From;

    .line 315
    iget-object v0, p0, Lcom/activeandroid/query/From;->mType:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/activeandroid/util/SQLiteUtils;->rawQuerySingle(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Lcom/activeandroid/Model;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/Model;->delete()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public exists()Z
    .locals 2

    .line 326
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->toExistsSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->getArguments()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/activeandroid/util/SQLiteUtils;->intQuery(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getArguments()[Ljava/lang/String;
    .locals 4

    .line 337
    iget-object v0, p0, Lcom/activeandroid/query/From;->mArguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 338
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 341
    iget-object v3, p0, Lcom/activeandroid/query/From;->mArguments:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public groupBy(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/activeandroid/query/From;->mGroupBy:Ljava/lang/String;

    return-object p0
.end method

.method public having(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/activeandroid/query/From;->mHaving:Ljava/lang/String;

    return-object p0
.end method

.method public innerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/query/Join;"
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/activeandroid/query/Join;

    sget-object v1, Lcom/activeandroid/query/Join$JoinType;->INNER:Lcom/activeandroid/query/Join$JoinType;

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    .line 80
    iget-object p1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public join(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/query/Join;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/activeandroid/query/Join;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    .line 62
    iget-object p1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public leftJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/query/Join;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/activeandroid/query/Join;

    sget-object v1, Lcom/activeandroid/query/Join$JoinType;->LEFT:Lcom/activeandroid/query/Join$JoinType;

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    .line 68
    iget-object p1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public limit(I)Lcom/activeandroid/query/From;
    .locals 0

    .line 141
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->limit(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p1

    return-object p1
.end method

.method public limit(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/activeandroid/query/From;->mLimit:Ljava/lang/String;

    return-object p0
.end method

.method public offset(I)Lcom/activeandroid/query/From;
    .locals 0

    .line 150
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->offset(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p1

    return-object p1
.end method

.method public offset(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/activeandroid/query/From;->mOffset:Ljava/lang/String;

    return-object p0
.end method

.method public or(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public varargs or(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->or(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/activeandroid/query/From;->addArguments([Ljava/lang/Object;)V

    return-object p0
.end method

.method public orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/activeandroid/query/From;->mOrderBy:Ljava/lang/String;

    return-object p0
.end method

.method public outerJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/query/Join;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/activeandroid/query/Join;

    sget-object v1, Lcom/activeandroid/query/Join$JoinType;->OUTER:Lcom/activeandroid/query/Join$JoinType;

    invoke-direct {v0, p0, p1, v1}, Lcom/activeandroid/query/Join;-><init>(Lcom/activeandroid/query/From;Ljava/lang/Class;Lcom/activeandroid/query/Join$JoinType;)V

    .line 74
    iget-object p1, p0, Lcom/activeandroid/query/From;->mJoins:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public toCountSql()Ljava/lang/String;
    .locals 2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT COUNT(*) "

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addFrom(Ljava/lang/StringBuilder;)V

    .line 286
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addJoins(Ljava/lang/StringBuilder;)V

    .line 287
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addWhere(Ljava/lang/StringBuilder;)V

    .line 288
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addGroupBy(Ljava/lang/StringBuilder;)V

    .line 289
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addHaving(Ljava/lang/StringBuilder;)V

    .line 290
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addLimit(Ljava/lang/StringBuilder;)V

    .line 291
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addOffset(Ljava/lang/StringBuilder;)V

    .line 293
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->sqlString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toExistsSql()Ljava/lang/String;
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT EXISTS(SELECT 1 "

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addFrom(Ljava/lang/StringBuilder;)V

    .line 268
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addJoins(Ljava/lang/StringBuilder;)V

    .line 269
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addWhere(Ljava/lang/StringBuilder;)V

    .line 270
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addGroupBy(Ljava/lang/StringBuilder;)V

    .line 271
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addHaving(Ljava/lang/StringBuilder;)V

    .line 272
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addLimit(Ljava/lang/StringBuilder;)V

    .line 273
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addOffset(Ljava/lang/StringBuilder;)V

    const-string v1, ")"

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->sqlString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSql()Ljava/lang/String;
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    iget-object v1, p0, Lcom/activeandroid/query/From;->mQueryBase:Lcom/activeandroid/query/Sqlable;

    invoke-interface {v1}, Lcom/activeandroid/query/Sqlable;->toSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addFrom(Ljava/lang/StringBuilder;)V

    .line 251
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addJoins(Ljava/lang/StringBuilder;)V

    .line 252
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addWhere(Ljava/lang/StringBuilder;)V

    .line 253
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addGroupBy(Ljava/lang/StringBuilder;)V

    .line 254
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addHaving(Ljava/lang/StringBuilder;)V

    .line 255
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addOrderBy(Ljava/lang/StringBuilder;)V

    .line 256
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addLimit(Ljava/lang/StringBuilder;)V

    .line 257
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->addOffset(Ljava/lang/StringBuilder;)V

    .line 259
    invoke-direct {p0, v0}, Lcom/activeandroid/query/From;->sqlString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public where(Ljava/lang/String;)Lcom/activeandroid/query/From;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/activeandroid/query/From;->mWhere:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public varargs where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/activeandroid/query/From;->addArguments([Ljava/lang/Object;)V

    return-object p0
.end method
