.class public Lcom/texa/carelib/core/utils/FirmwareVersion;
.super Ljava/lang/Object;
.source "FirmwareVersion.java"


# instance fields
.field private mAppType:Lcom/texa/carelib/core/AppType;

.field private mApplicationName:Ljava/lang/String;

.field private mBoardName:Ljava/lang/String;

.field private mCustomerName:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mProductName:Ljava/lang/String;

.field private mVersion:Lcom/texa/carelib/core/utils/Version;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/texa/carelib/core/utils/Version;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/texa/carelib/core/utils/Version;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mVersion:Lcom/texa/carelib/core/utils/Version;

    .line 89
    sget-object p1, Lcom/texa/carelib/core/AppType;->UNDEF:Lcom/texa/carelib/core/AppType;

    iput-object p1, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mAppType:Lcom/texa/carelib/core/AppType;

    return-void
.end method

.method public static fromFileName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 303
    invoke-static {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->isValidFileName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string v0, "["

    const-string v3, ""

    .line 307
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 311
    new-instance v3, Lcom/texa/carelib/core/utils/FirmwareVersion;

    invoke-direct {v3}, Lcom/texa/carelib/core/utils/FirmwareVersion;-><init>()V

    .line 312
    invoke-virtual {v3, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setFileName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    const-string p0, "_"

    .line 314
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 320
    :goto_0
    array-length v9, p0

    if-ge v0, v9, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v8, 0x8

    .line 359
    aget-object v8, p0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    :pswitch_1
    const/4 v7, 0x7

    .line 355
    aget-object v7, p0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    :pswitch_2
    const/4 v6, 0x6

    .line 351
    aget-object v6, p0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :pswitch_3
    const/4 v5, 0x5

    .line 347
    aget-object v5, p0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 339
    :pswitch_4
    aget-object v9, p0, v4

    const-string v10, "MA"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 340
    sget-object v9, Lcom/texa/carelib/core/AppType;->MAIN:Lcom/texa/carelib/core/AppType;

    invoke-virtual {v3, v9}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setAppType(Lcom/texa/carelib/core/AppType;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    goto :goto_1

    .line 341
    :cond_0
    aget-object v9, p0, v4

    const-string v10, "SA"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 342
    sget-object v9, Lcom/texa/carelib/core/AppType;->SERVICE:Lcom/texa/carelib/core/AppType;

    invoke-virtual {v3, v9}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setAppType(Lcom/texa/carelib/core/AppType;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    goto :goto_1

    :pswitch_5
    const/4 v9, 0x3

    .line 335
    aget-object v9, p0, v9

    invoke-virtual {v3, v9}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setBoardName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    goto :goto_1

    :pswitch_6
    const/4 v9, 0x2

    .line 331
    aget-object v9, p0, v9

    invoke-virtual {v3, v9}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setApplicationName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    goto :goto_1

    .line 327
    :pswitch_7
    aget-object v9, p0, v1

    invoke-virtual {v3, v9}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setCustomerName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    goto :goto_1

    .line 323
    :pswitch_8
    aget-object v9, p0, v2

    invoke-virtual {v3, v9}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setProductName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_2
    new-instance p0, Lcom/texa/carelib/core/utils/Version;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/texa/carelib/core/utils/Version;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 365
    invoke-virtual {v3, p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->setVersion(Lcom/texa/carelib/core/utils/Version;)Lcom/texa/carelib/core/utils/FirmwareVersion;

    return-object v3

    .line 304
    :cond_3
    new-instance v0, Lcom/texa/carelib/core/CareLibException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string p0, "Invalid file name \"%1$s\". The file name does not match the naming rules."

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isValid(Lcom/texa/carelib/core/utils/FirmwareVersion;)Z
    .locals 4

    const/4 v0, 0x0

    .line 392
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez p0, :cond_0

    return v0

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->getVersion()Lcom/texa/carelib/core/utils/Version;

    move-result-object p0

    .line 392
    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/Version;->getMajor()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/texa/carelib/core/utils/internal/Utils;->getValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/Version;->getMinor()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/texa/carelib/core/utils/internal/Utils;->getValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/Version;->getBuild()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/texa/carelib/core/utils/internal/Utils;->getValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/texa/carelib/core/utils/Version;->getRevision()Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/texa/carelib/core/utils/internal/Utils;->getValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr v2, p0

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isValidFileName(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^([0-9a-zA-Z]{4})_\\[([0-9a-zA-Z]{3})\\]_\\[([0-9a-zA-Z]{3})\\]_\\[([0-9a-zA-Z]{3})\\]_\\[(MA|SA)_[0-9a-zA-Z]*_[0-9a-zA-Z]*_[0-9a-zA-Z]*_[0-9a-zA-Z]*\\].([0-9a-zA-Z]{3})$"

    .line 288
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 251
    :cond_0
    instance-of v1, p1, Lcom/texa/carelib/core/utils/FirmwareVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 253
    :cond_1
    check-cast p1, Lcom/texa/carelib/core/utils/FirmwareVersion;

    .line 255
    iget-object v1, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mBoardName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/texa/carelib/core/utils/FirmwareVersion;->mBoardName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/texa/carelib/core/utils/FirmwareVersion;->mBoardName:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_0
    return v2

    .line 257
    :cond_3
    iget-object v1, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mApplicationName:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v3, p1, Lcom/texa/carelib/core/utils/FirmwareVersion;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/texa/carelib/core/utils/FirmwareVersion;->mApplicationName:Ljava/lang/String;

    if-eqz v1, :cond_5

    :goto_1
    return v2

    .line 259
    :cond_5
    iget-object v1, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mCustomerName:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v3, p1, Lcom/texa/carelib/core/utils/FirmwareVersion;->mCustomerName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_6
    iget-object v1, p1, Lcom/texa/carelib/core/utils/FirmwareVersion;->mCustomerName:Ljava/lang/String;

    if-eqz v1, :cond_7

    :goto_2
    return v2

    .line 261
    :cond_7
    iget-object v1, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mFileName:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v3, p1, Lcom/texa/carelib/core/utils/FirmwareVersion;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    :cond_8
    iget-object v1, p1, Lcom/texa/carelib/core/utils/FirmwareVersion;->mFileName:Ljava/lang/String;

    if-eqz v1, :cond_9

    :goto_3
    return v2

    .line 263
    :cond_9
    iget-object v1, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mProductName:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v3, p1, Lcom/texa/carelib/core/utils/FirmwareVersion;->mProductName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_4

    :cond_a
    iget-object v1, p1, Lcom/texa/carelib/core/utils/FirmwareVersion;->mProductName:Ljava/lang/String;

    if-eqz v1, :cond_b

    :goto_4
    return v2

    .line 265
    :cond_b
    iget-object v1, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mAppType:Lcom/texa/carelib/core/AppType;

    iget-object v3, p1, Lcom/texa/carelib/core/utils/FirmwareVersion;->mAppType:Lcom/texa/carelib/core/AppType;

    if-eq v1, v3, :cond_c

    return v2

    .line 266
    :cond_c
    iget-object v1, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mVersion:Lcom/texa/carelib/core/utils/Version;

    iget-object p1, p1, Lcom/texa/carelib/core/utils/FirmwareVersion;->mVersion:Lcom/texa/carelib/core/utils/Version;

    if-eqz v1, :cond_d

    invoke-virtual {v1, p1}, Lcom/texa/carelib/core/utils/Version;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5

    :cond_d
    if-nez p1, :cond_e

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public getAppType()Lcom/texa/carelib/core/AppType;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mAppType:Lcom/texa/carelib/core/AppType;

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mApplicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getBoardName()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mBoardName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerName()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mCustomerName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Lcom/texa/carelib/core/utils/Version;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mVersion:Lcom/texa/carelib/core/utils/Version;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mBoardName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 272
    iget-object v2, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mApplicationName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 273
    iget-object v2, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mCustomerName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 274
    iget-object v2, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mFileName:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 275
    iget-object v2, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mProductName:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 276
    iget-object v2, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mAppType:Lcom/texa/carelib/core/AppType;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/texa/carelib/core/AppType;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 277
    iget-object v2, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mVersion:Lcom/texa/carelib/core/utils/Version;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/texa/carelib/core/utils/Version;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 376
    invoke-static {p0}, Lcom/texa/carelib/core/utils/FirmwareVersion;->isValid(Lcom/texa/carelib/core/utils/FirmwareVersion;)Z

    move-result v0

    return v0
.end method

.method public setAppType(Lcom/texa/carelib/core/AppType;)Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mAppType:Lcom/texa/carelib/core/AppType;

    return-object p0
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mApplicationName:Ljava/lang/String;

    return-object p0
.end method

.method public setBoardName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mBoardName:Ljava/lang/String;

    return-object p0
.end method

.method public setCustomerName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mCustomerName:Ljava/lang/String;

    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public setProductName(Ljava/lang/String;)Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mProductName:Ljava/lang/String;

    return-object p0
.end method

.method public setVersion(Lcom/texa/carelib/core/utils/Version;)Lcom/texa/carelib/core/utils/FirmwareVersion;
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mVersion:Lcom/texa/carelib/core/utils/Version;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FirmwareVersion{mBoardName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mBoardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mApplicationName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCustomerName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mCustomerName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mFileName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mProductName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mAppType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mAppType:Lcom/texa/carelib/core/AppType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/core/utils/FirmwareVersion;->mVersion:Lcom/texa/carelib/core/utils/Version;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
