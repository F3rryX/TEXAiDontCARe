.class public Lcom/texa/carelib/care/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/DateTime$Precision;
    }
.end annotation


# instance fields
.field private final mPrecision:Lcom/texa/carelib/care/DateTime$Precision;

.field private final mTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 30
    sget-object v0, Lcom/texa/carelib/care/DateTime$Precision;->Second:Lcom/texa/carelib/care/DateTime$Precision;

    invoke-direct {p0, p1, p2, v0}, Lcom/texa/carelib/care/DateTime;-><init>(JLcom/texa/carelib/care/DateTime$Precision;)V

    return-void
.end method

.method public constructor <init>(JLcom/texa/carelib/care/DateTime$Precision;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/texa/carelib/care/DateTime;->mTime:Ljava/util/Date;

    .line 40
    iput-object p3, p0, Lcom/texa/carelib/care/DateTime;->mPrecision:Lcom/texa/carelib/care/DateTime$Precision;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/texa/carelib/care/DateTime;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    goto :goto_0

    .line 181
    :pswitch_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 182
    sget-object v0, Lcom/texa/carelib/care/DateTime$Precision;->Second:Lcom/texa/carelib/care/DateTime$Precision;

    goto :goto_0

    .line 188
    :pswitch_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyyMMddHHmm"

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 189
    sget-object v0, Lcom/texa/carelib/care/DateTime$Precision;->Minute:Lcom/texa/carelib/care/DateTime$Precision;

    goto :goto_0

    .line 195
    :pswitch_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyyMMddHH"

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 196
    sget-object v0, Lcom/texa/carelib/care/DateTime$Precision;->Hour:Lcom/texa/carelib/care/DateTime$Precision;

    goto :goto_0

    .line 202
    :pswitch_3
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyyMMdd"

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 203
    sget-object v0, Lcom/texa/carelib/care/DateTime$Precision;->Day:Lcom/texa/carelib/care/DateTime$Precision;

    goto :goto_0

    .line 209
    :pswitch_4
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyyMM"

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 210
    sget-object v0, Lcom/texa/carelib/care/DateTime$Precision;->Month:Lcom/texa/carelib/care/DateTime$Precision;

    goto :goto_0

    .line 214
    :pswitch_5
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy"

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 215
    sget-object v0, Lcom/texa/carelib/care/DateTime$Precision;->Year:Lcom/texa/carelib/care/DateTime$Precision;

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "UTC"

    .line 224
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 227
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 228
    new-instance v1, Lcom/texa/carelib/care/DateTime;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Lcom/texa/carelib/care/DateTime;-><init>(JLcom/texa/carelib/care/DateTime$Precision;)V

    return-object v1

    .line 221
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid date time format."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 75
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 76
    check-cast p1, Lcom/texa/carelib/care/DateTime;

    goto :goto_0

    .line 77
    :cond_2
    const-class v2, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_a

    .line 78
    new-instance v2, Lcom/texa/carelib/care/DateTime;

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-object p1, Lcom/texa/carelib/care/DateTime$Precision;->Second:Lcom/texa/carelib/care/DateTime$Precision;

    invoke-direct {v2, v3, v4, p1}, Lcom/texa/carelib/care/DateTime;-><init>(JLcom/texa/carelib/care/DateTime$Precision;)V

    move-object p1, v2

    .line 83
    :goto_0
    iget-object v2, p0, Lcom/texa/carelib/care/DateTime;->mPrecision:Lcom/texa/carelib/care/DateTime$Precision;

    iget-object v3, p1, Lcom/texa/carelib/care/DateTime;->mPrecision:Lcom/texa/carelib/care/DateTime$Precision;

    invoke-static {v2, v3}, Lcom/texa/carelib/core/utils/internal/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 87
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 88
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 90
    iget-object v4, p0, Lcom/texa/carelib/care/DateTime;->mTime:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 91
    iget-object p1, p1, Lcom/texa/carelib/care/DateTime;->mTime:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 93
    iget-object p1, p0, Lcom/texa/carelib/care/DateTime;->mPrecision:Lcom/texa/carelib/care/DateTime$Precision;

    sget-object v4, Lcom/texa/carelib/care/DateTime$Precision;->Year:Lcom/texa/carelib/care/DateTime$Precision;

    invoke-virtual {p1, v4}, Lcom/texa/carelib/care/DateTime$Precision;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_4

    .line 94
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq p1, v4, :cond_4

    return v1

    .line 98
    :cond_4
    iget-object p1, p0, Lcom/texa/carelib/care/DateTime;->mPrecision:Lcom/texa/carelib/care/DateTime$Precision;

    sget-object v4, Lcom/texa/carelib/care/DateTime$Precision;->Month:Lcom/texa/carelib/care/DateTime$Precision;

    invoke-virtual {p1, v4}, Lcom/texa/carelib/care/DateTime$Precision;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_5

    const/4 p1, 0x2

    .line 99
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq v4, p1, :cond_5

    return v1

    .line 103
    :cond_5
    iget-object p1, p0, Lcom/texa/carelib/care/DateTime;->mPrecision:Lcom/texa/carelib/care/DateTime$Precision;

    sget-object v4, Lcom/texa/carelib/care/DateTime$Precision;->Day:Lcom/texa/carelib/care/DateTime$Precision;

    invoke-virtual {p1, v4}, Lcom/texa/carelib/care/DateTime$Precision;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_6

    const/4 p1, 0x5

    .line 104
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq v4, p1, :cond_6

    return v1

    .line 108
    :cond_6
    iget-object p1, p0, Lcom/texa/carelib/care/DateTime;->mPrecision:Lcom/texa/carelib/care/DateTime$Precision;

    sget-object v4, Lcom/texa/carelib/care/DateTime$Precision;->Hour:Lcom/texa/carelib/care/DateTime$Precision;

    invoke-virtual {p1, v4}, Lcom/texa/carelib/care/DateTime$Precision;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_7

    const/16 p1, 0xb

    .line 109
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq v4, p1, :cond_7

    return v1

    .line 113
    :cond_7
    iget-object p1, p0, Lcom/texa/carelib/care/DateTime;->mPrecision:Lcom/texa/carelib/care/DateTime$Precision;

    sget-object v4, Lcom/texa/carelib/care/DateTime$Precision;->Minute:Lcom/texa/carelib/care/DateTime$Precision;

    invoke-virtual {p1, v4}, Lcom/texa/carelib/care/DateTime$Precision;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_8

    const/16 p1, 0xc

    .line 114
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq v4, p1, :cond_8

    return v1

    .line 118
    :cond_8
    iget-object p1, p0, Lcom/texa/carelib/care/DateTime;->mPrecision:Lcom/texa/carelib/care/DateTime$Precision;

    sget-object v4, Lcom/texa/carelib/care/DateTime$Precision;->Second:Lcom/texa/carelib/care/DateTime$Precision;

    invoke-virtual {p1, v4}, Lcom/texa/carelib/care/DateTime$Precision;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_9

    const/16 p1, 0xd

    .line 119
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq v2, p1, :cond_9

    return v1

    :cond_9
    return v0

    :cond_a
    return v1
.end method

.method public format()Ljava/lang/String;
    .locals 1

    .line 138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/care/DateTime;->format(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 149
    sget-object v0, Lcom/texa/carelib/care/DateTime$1;->$SwitchMap$com$texa$carelib$care$DateTime$Precision:[I

    invoke-virtual {p0}, Lcom/texa/carelib/care/DateTime;->getPrecision()Lcom/texa/carelib/care/DateTime$Precision;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/care/DateTime$Precision;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 167
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0}, Lcom/texa/carelib/care/DateTime;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 163
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0}, Lcom/texa/carelib/care/DateTime;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 160
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:00"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0}, Lcom/texa/carelib/care/DateTime;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 157
    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0}, Lcom/texa/carelib/care/DateTime;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 154
    :cond_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0}, Lcom/texa/carelib/care/DateTime;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 151
    :cond_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0}, Lcom/texa/carelib/care/DateTime;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrecision()Lcom/texa/carelib/care/DateTime$Precision;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/texa/carelib/care/DateTime;->mPrecision:Lcom/texa/carelib/care/DateTime$Precision;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/texa/carelib/care/DateTime;->mTime:Ljava/util/Date;

    return-object v0
.end method

.method public getTimeInMillis()J
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/texa/carelib/care/DateTime;->mTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 128
    iget-object v1, p0, Lcom/texa/carelib/care/DateTime;->mTime:Ljava/util/Date;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/texa/carelib/care/DateTime;->mPrecision:Lcom/texa/carelib/care/DateTime$Precision;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
