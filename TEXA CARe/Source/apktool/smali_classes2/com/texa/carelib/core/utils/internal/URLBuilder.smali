.class public Lcom/texa/carelib/core/utils/internal/URLBuilder;
.super Ljava/lang/Object;
.source "URLBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "URLBuilder"


# instance fields
.field private mHost:Ljava/lang/String;

.field private final mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPath:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder;->mItemsList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Lcom/texa/carelib/core/utils/internal/URLBuilder;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder;->mProtocol:Ljava/lang/String;

    .line 243
    iput-object p2, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder;->mHost:Ljava/lang/String;

    .line 244
    iput-object p3, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addAllQueryItem(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;",
            ">;)V"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder;->mItemsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addAllQueryItem(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 328
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 330
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 331
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/texa/carelib/core/utils/internal/URLBuilder;->addQueryItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/texa/carelib/core/utils/internal/URLBuilder;->addQueryItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addQueryItem(Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder;->mItemsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addQueryItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 255
    new-instance v0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;-><init>(Lcom/texa/carelib/core/utils/internal/URLBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/texa/carelib/core/utils/internal/URLBuilder;->addQueryItem(Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;)V

    return-void
.end method

.method public clearQueryItems()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder;->mItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    iget-object v1, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder;->mItemsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;

    .line 300
    invoke-virtual {v2}, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x26

    .line 301
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder;->mPath:Ljava/lang/String;

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "/"

    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 311
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 314
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 319
    :cond_2
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder;->mProtocol:Ljava/lang/String;

    iget-object v3, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder;->mHost:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public removeQueryItem(Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder;->mItemsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setHost(Ljava/lang/String;)Lcom/texa/carelib/core/utils/internal/URLBuilder;
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder;->mHost:Ljava/lang/String;

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/texa/carelib/core/utils/internal/URLBuilder;
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public setProtocol(Ljava/lang/String;)Lcom/texa/carelib/core/utils/internal/URLBuilder;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder;->mProtocol:Ljava/lang/String;

    return-object p0
.end method
