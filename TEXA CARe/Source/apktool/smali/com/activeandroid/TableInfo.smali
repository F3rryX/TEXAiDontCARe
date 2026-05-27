.class public final Lcom/activeandroid/TableInfo;
.super Ljava/lang/Object;
.source "TableInfo.java"


# instance fields
.field private mColumnNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIdName:Ljava/lang/String;

.field private mTableName:Ljava/lang/String;

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


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Id"

    .line 41
    iput-object v0, p0, Lcom/activeandroid/TableInfo;->mIdName:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/activeandroid/TableInfo;->mColumnNames:Ljava/util/Map;

    .line 50
    iput-object p1, p0, Lcom/activeandroid/TableInfo;->mType:Ljava/lang/Class;

    .line 52
    const-class v0, Lcom/activeandroid/annotation/Table;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/annotation/Table;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/activeandroid/annotation/Table;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/activeandroid/TableInfo;->mTableName:Ljava/lang/String;

    .line 56
    invoke-interface {v0}, Lcom/activeandroid/annotation/Table;->id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/activeandroid/TableInfo;->mIdName:Ljava/lang/String;

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/activeandroid/TableInfo;->mTableName:Ljava/lang/String;

    .line 63
    :goto_0
    invoke-direct {p0, p1}, Lcom/activeandroid/TableInfo;->getIdField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/activeandroid/TableInfo;->mColumnNames:Ljava/util/Map;

    iget-object v2, p0, Lcom/activeandroid/TableInfo;->mIdName:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p1}, Lcom/activeandroid/util/ReflectionUtils;->getDeclaredColumnFields(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 67
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 70
    const-class v1, Lcom/activeandroid/annotation/Column;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-class v1, Lcom/activeandroid/annotation/Column;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/activeandroid/annotation/Column;

    .line 72
    invoke-interface {v1}, Lcom/activeandroid/annotation/Column;->name()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/activeandroid/TableInfo;->mColumnNames:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method private getIdField(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 109
    const-class v0, Lcom/activeandroid/Model;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "mId"

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Impossible!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/activeandroid/TableInfo;->getIdField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/activeandroid/TableInfo;->mColumnNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getFields()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/activeandroid/TableInfo;->mColumnNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getIdName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/activeandroid/TableInfo;->mIdName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/activeandroid/TableInfo;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/activeandroid/TableInfo;->mType:Ljava/lang/Class;

    return-object v0
.end method
