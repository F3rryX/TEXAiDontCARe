.class public Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;
.super Ljava/lang/Object;
.source "URLBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/core/utils/internal/URLBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryItem"
.end annotation


# static fields
.field public static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"


# instance fields
.field private mEncoding:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/texa/carelib/core/utils/internal/URLBuilder;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/core/utils/internal/URLBuilder;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->this$0:Lcom/texa/carelib/core/utils/internal/URLBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 95
    iput-object p1, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->mName:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->mValue:Ljava/lang/String;

    const-string p1, "UTF-8"

    .line 97
    iput-object p1, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->mEncoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/core/utils/internal/URLBuilder;Ljava/lang/String;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;-><init>(Lcom/texa/carelib/core/utils/internal/URLBuilder;)V

    .line 108
    iput-object p2, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/core/utils/internal/URLBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;-><init>(Lcom/texa/carelib/core/utils/internal/URLBuilder;Ljava/lang/String;)V

    .line 121
    iput-object p3, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/core/utils/internal/URLBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;-><init>(Lcom/texa/carelib/core/utils/internal/URLBuilder;)V

    .line 136
    iput-object p2, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->mName:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->mValue:Ljava/lang/String;

    .line 138
    iput-object p4, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->mEncoding:Ljava/lang/String;

    return-void
.end method

.method private encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 145
    :try_start_0
    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    sget-object p2, Lcom/texa/carelib/core/utils/internal/URLBuilder;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Encoding not supported"

    invoke-static {p2, p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->mEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    iget-object v1, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 158
    iget-object v2, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->mEncoding:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->mValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x3d

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    iget-object v1, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->mValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->mEncoding:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/texa/carelib/core/utils/internal/URLBuilder$QueryItem;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
