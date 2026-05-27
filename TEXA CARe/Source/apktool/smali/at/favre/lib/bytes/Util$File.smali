.class final Lat/favre/lib/bytes/Util$File;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/bytes/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "File"
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x1000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readFromDataInput(Ljava/io/DataInput;I)[B
    .locals 5

    .line 1005
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    move v2, p1

    :goto_0
    if-ge v1, p1, :cond_0

    const/16 v3, 0x1000

    .line 1010
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v4, v3, [B

    .line 1011
    invoke-interface {p0, v4}, Ljava/io/DataInput;->readFully([B)V

    .line 1012
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    sub-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1015
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1017
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "could not read from data input"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static readFromFile(Ljava/io/File;)[B
    .locals 2

    .line 1028
    invoke-static {p0}, Lat/favre/lib/bytes/Util$Validation;->access$000(Ljava/io/File;)V

    .line 1031
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1033
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "could not read from file"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static readFromFile(Ljava/io/File;II)[B
    .locals 2

    .line 1046
    invoke-static {p0}, Lat/favre/lib/bytes/Util$Validation;->access$000(Ljava/io/File;)V

    .line 1047
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long p0, p1

    .line 1048
    :try_start_1
    invoke-virtual {v0, p0, p1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1049
    invoke-static {v0, p2}, Lat/favre/lib/bytes/Util$File;->readFromDataInput(Ljava/io/DataInput;I)[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1050
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1047
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1050
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 1051
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "could not read from random access file"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static readFromStream(Ljava/io/InputStream;I)[B
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 978
    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    if-eqz v2, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    move v4, p1

    :goto_1
    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v4, v1, [B

    :goto_2
    if-nez v2, :cond_2

    if-lez p1, :cond_5

    :cond_2
    const/16 v5, 0x1000

    if-eqz v2, :cond_3

    const/16 v6, 0x1000

    goto :goto_3

    :cond_3
    move v6, p1

    .line 981
    :goto_3
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 982
    array-length v6, v4

    if-eq v6, v5, :cond_4

    .line 983
    new-array v4, v5, [B

    .line 985
    :cond_4
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v0, :cond_6

    .line 992
    :cond_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_6
    sub-int/2addr p1, v5

    .line 990
    invoke-virtual {v3, v4, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 994
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "could not read from input stream"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
