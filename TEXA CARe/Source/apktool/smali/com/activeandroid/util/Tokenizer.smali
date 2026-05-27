.class public Lcom/activeandroid/util/Tokenizer;
.super Ljava/lang/Object;
.source "Tokenizer.java"


# instance fields
.field private mCurrent:I

.field private mIsNext:Z

.field private final mStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/activeandroid/util/Tokenizer;->mStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-boolean v0, p0, Lcom/activeandroid/util/Tokenizer;->mIsNext:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 38
    iput-boolean v1, p0, Lcom/activeandroid/util/Tokenizer;->mIsNext:Z

    .line 39
    iget-object v0, p0, Lcom/activeandroid/util/Tokenizer;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/activeandroid/util/Tokenizer;->mCurrent:I

    .line 41
    :cond_0
    iget v0, p0, Lcom/activeandroid/util/Tokenizer;->mCurrent:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-boolean v0, p0, Lcom/activeandroid/util/Tokenizer;->mIsNext:Z

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/activeandroid/util/Tokenizer;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/activeandroid/util/Tokenizer;->mCurrent:I

    :cond_0
    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/activeandroid/util/Tokenizer;->mIsNext:Z

    .line 50
    iget v0, p0, Lcom/activeandroid/util/Tokenizer;->mCurrent:I

    return v0
.end method

.method public skip(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget v2, p0, Lcom/activeandroid/util/Tokenizer;->mCurrent:I

    if-eq v1, v2, :cond_1

    return v0

    .line 63
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 64
    iget-object v2, p0, Lcom/activeandroid/util/Tokenizer;->mStream:Ljava/io/InputStream;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v1, :cond_3

    .line 67
    iget-object v4, p0, Lcom/activeandroid/util/Tokenizer;->mStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 69
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2

    .line 70
    iget-object p1, p0, Lcom/activeandroid/util/Tokenizer;->mStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v0
.end method
