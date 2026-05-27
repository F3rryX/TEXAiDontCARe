.class Lorg/spongycastle/openpgp/operator/PGPUtil;
.super Ljava/lang/Object;
.source "PGPUtil.java"

# interfaces
.implements Lorg/spongycastle/bcpg/HashAlgorithmTags;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeKeyFromPassPhrase(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;ILorg/spongycastle/bcpg/S2K;[C)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    move/from16 v0, p1

    const/16 v1, 0x100

    const/16 v2, 0xc0

    const/16 v3, 0x80

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance v1, Lorg/spongycastle/openpgp/PGPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown symmetric algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/16 v1, 0x40

    goto :goto_0

    :pswitch_1
    const/16 v1, 0xc0

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x80

    .line 87
    :goto_0
    :pswitch_3
    invoke-static/range {p3 .. p3}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v0

    add-int/lit8 v1, v1, 0x7

    .line 88
    div-int/lit8 v1, v1, 0x8

    new-array v2, v1, [B

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    .line 95
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/bcpg/S2K;->getHashAlgorithm()I

    move-result v4

    invoke-interface/range {p0 .. p0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getAlgorithm()I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    const-string v1, "s2k/digestCalculator mismatch"

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    invoke-interface/range {p0 .. p0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getAlgorithm()I

    move-result v4

    if-ne v4, v3, :cond_e

    .line 108
    :goto_1
    invoke-interface/range {p0 .. p0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v6, v1, :cond_c

    if-eqz p2, :cond_8

    const/4 v8, 0x0

    :goto_3
    if-eq v8, v7, :cond_2

    .line 118
    :try_start_0
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 121
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/bcpg/S2K;->getIV()[B

    move-result-object v8

    .line 123
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/bcpg/S2K;->getType()I

    move-result v9

    if-eqz v9, :cond_7

    if-eq v9, v3, :cond_6

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    .line 133
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/bcpg/S2K;->getIterationCount()J

    move-result-wide v9

    .line 134
    invoke-virtual {v4, v8}, Ljava/io/OutputStream;->write([B)V

    .line 135
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 137
    array-length v11, v8

    array-length v12, v0

    add-int/2addr v11, v12

    int-to-long v11, v11

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x0

    :goto_4
    cmp-long v13, v9, v11

    if-lez v13, :cond_a

    .line 141
    array-length v13, v8

    int-to-long v13, v13

    cmp-long v15, v9, v13

    if-gez v15, :cond_3

    long-to-int v10, v9

    .line 143
    invoke-virtual {v4, v8, v5, v10}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    .line 148
    :cond_3
    invoke-virtual {v4, v8}, Ljava/io/OutputStream;->write([B)V

    .line 149
    array-length v13, v8

    int-to-long v13, v13

    sub-long/2addr v9, v13

    .line 152
    array-length v13, v0

    int-to-long v13, v13

    cmp-long v15, v9, v13

    if-gez v15, :cond_4

    long-to-int v10, v9

    .line 154
    invoke-virtual {v4, v0, v5, v10}, Ljava/io/OutputStream;->write([BII)V

    move-wide v9, v11

    goto :goto_4

    .line 159
    :cond_4
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 160
    array-length v13, v0

    int-to-long v13, v13

    sub-long/2addr v9, v13

    goto :goto_4

    .line 165
    :cond_5
    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown S2K type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/bcpg/S2K;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_6
    invoke-virtual {v4, v8}, Ljava/io/OutputStream;->write([B)V

    .line 130
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_6

    .line 126
    :cond_7
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_5
    if-eq v8, v7, :cond_9

    .line 172
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 175
    :cond_9
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 178
    :cond_a
    :goto_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 180
    invoke-interface/range {p0 .. p0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;->getDigest()[B

    move-result-object v8

    .line 182
    array-length v9, v8

    sub-int v10, v1, v6

    if-le v9, v10, :cond_b

    .line 184
    invoke-static {v8, v5, v2, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 188
    :cond_b
    array-length v9, v8

    invoke-static {v8, v5, v2, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    :goto_7
    array-length v8, v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Lorg/spongycastle/openpgp/PGPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception calculating digest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_c
    const/4 v1, 0x0

    .line 201
    :goto_8
    array-length v3, v0

    if-eq v1, v3, :cond_d

    .line 203
    aput-byte v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_d
    return-object v2

    .line 104
    :cond_e
    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    const-string v1, "digestCalculator not for MD5"

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static makeKeyFromPassPhrase(Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;ILorg/spongycastle/bcpg/S2K;[C)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 220
    invoke-virtual {p2}, Lorg/spongycastle/bcpg/S2K;->getHashAlgorithm()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 224
    invoke-interface {p0, v0}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object p0

    .line 227
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/openpgp/operator/PGPUtil;->makeKeyFromPassPhrase(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;ILorg/spongycastle/bcpg/S2K;[C)[B

    move-result-object p0

    return-object p0
.end method
