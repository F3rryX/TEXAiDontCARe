.class public Lcom/activeandroid/util/SqlParser;
.super Ljava/lang/Object;
.source "SqlParser.java"


# static fields
.field public static final STATE_COMMENT:I = 0x2

.field public static final STATE_COMMENT_BLOCK:I = 0x3

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_STRING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isNewLine(C)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isWhitespace(C)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static parse(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    :try_start_0
    new-instance v2, Lcom/activeandroid/util/Tokenizer;

    invoke-direct {v2, v0}, Lcom/activeandroid/util/Tokenizer;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    .line 44
    :cond_0
    :goto_1
    invoke-virtual {v2}, Lcom/activeandroid/util/Tokenizer;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 45
    invoke-virtual {v2}, Lcom/activeandroid/util/Tokenizer;->next()I

    move-result v7

    int-to-char v7, v7

    if-ne v6, v4, :cond_1

    const-string v7, "*/"

    .line 48
    invoke-virtual {v2, v7}, Lcom/activeandroid/util/Tokenizer;->skip(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_1
    if-ne v6, v3, :cond_2

    .line 54
    invoke-static {v7}, Lcom/activeandroid/util/SqlParser;->isNewLine(C)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_2
    goto :goto_0

    :cond_2
    if-nez v6, :cond_3

    const-string v8, "/*"

    .line 59
    invoke-virtual {v2, v8}, Lcom/activeandroid/util/Tokenizer;->skip(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v6, 0x3

    goto :goto_1

    :cond_3
    if-nez v6, :cond_4

    const-string v8, "--"

    .line 63
    invoke-virtual {v2, v8}, Lcom/activeandroid/util/Tokenizer;->skip(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v6, 0x2

    goto :goto_1

    :cond_4
    if-nez v6, :cond_5

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_5

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 69
    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_1

    :cond_5
    const/16 v8, 0x27

    const/4 v9, 0x1

    if-nez v6, :cond_6

    if-ne v7, v8, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    if-ne v6, v9, :cond_7

    if-ne v7, v8, :cond_7

    const/4 v6, 0x0

    :cond_7
    :goto_3
    if-eqz v6, :cond_8

    if-ne v6, v9, :cond_0

    :cond_8
    if-nez v6, :cond_9

    .line 82
    invoke-static {v7}, Lcom/activeandroid/util/SqlParser;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_0

    .line 84
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 87
    :cond_9
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 93
    :cond_a
    invoke-static {v0}, Lcom/activeandroid/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object p0

    :catchall_0
    move-exception p0

    .line 93
    invoke-static {v0}, Lcom/activeandroid/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 94
    throw p0
.end method
