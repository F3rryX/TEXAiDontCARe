.class public Lcom/texa/careapp/utils/EcoDrivingUtils;
.super Ljava/lang/Object;
.source "EcoDrivingUtils.java"


# static fields
.field public static MAX_VALUE:I = 0x64

.field public static PROBLEM_VALUE:I = 0x1e

.field public static WARN_VALUE:I = 0x3c


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRandomHintColor(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f060064

    .line 54
    invoke-static {p0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f060065

    .line 55
    invoke-static {p0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f060066

    .line 56
    invoke-static {p0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f060067

    .line 57
    invoke-static {p0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f060068

    .line 58
    invoke-static {p0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f060069

    .line 59
    invoke-static {p0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f06006a

    .line 60
    invoke-static {p0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f06006b

    .line 61
    invoke-static {p0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    return-object v0
.end method

.method public static getReferenceColor(Landroid/content/Context;I)I
    .locals 2

    .line 30
    sget v0, Lcom/texa/careapp/utils/EcoDrivingUtils;->PROBLEM_VALUE:I

    if-gt p1, v0, :cond_0

    const p1, 0x7f06006f

    .line 31
    invoke-static {p0, p1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    .line 32
    :cond_0
    sget v1, Lcom/texa/careapp/utils/EcoDrivingUtils;->WARN_VALUE:I

    if-gt p1, v1, :cond_1

    if-le p1, v0, :cond_1

    const p1, 0x7f060071

    .line 33
    invoke-static {p0, p1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_1
    const p1, 0x7f06006e

    .line 35
    invoke-static {p0, p1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getReferenceDrawable(I)I
    .locals 2

    .line 42
    sget v0, Lcom/texa/careapp/utils/EcoDrivingUtils;->PROBLEM_VALUE:I

    if-gt p0, v0, :cond_0

    const p0, 0x7f0800d9

    goto :goto_0

    .line 44
    :cond_0
    sget v1, Lcom/texa/careapp/utils/EcoDrivingUtils;->WARN_VALUE:I

    if-gt p0, v1, :cond_1

    if-le p0, v0, :cond_1

    const p0, 0x7f0800ee

    goto :goto_0

    :cond_1
    const p0, 0x7f080117

    :goto_0
    return p0
.end method

.method private static getSpanStyle(Landroid/content/Context;)Lcom/texa/careapp/utils/CareTypefaceSpan;
    .locals 2

    .line 69
    new-instance v0, Lcom/texa/careapp/utils/CareTypefaceSpan;

    const/high16 v1, 0x7f090000

    invoke-static {p0, v1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/texa/careapp/utils/CareTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    return-object v0
.end method

.method public static getTripInfoData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;JJZ)Landroid/text/SpannableString;
    .locals 7

    move-object v0, p0

    if-eqz p9, :cond_0

    .line 78
    new-instance v1, Landroid/text/SpannableString;

    const v2, 0x7f110990

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 79
    :cond_0
    invoke-static {p1}, Lcom/texa/careapp/utils/EcoDrivingUtils;->notNullNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/texa/careapp/utils/EcoDrivingUtils;->notNullNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-static/range {p0 .. p8}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getTripInfoDataWithLocation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;JJ)Landroid/text/SpannableString;

    move-result-object v1

    goto/16 :goto_0

    :cond_1
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 83
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 84
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move-object v0, p0

    move-wide v3, p5

    move-wide v5, p7

    invoke-static/range {v0 .. v6}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getTripInfoDataWithOdometer(Landroid/content/Context;FFJJ)Landroid/text/SpannableString;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, p5, v3

    if-lez v5, :cond_3

    cmp-long v5, p7, v3

    if-lez v5, :cond_3

    const v3, 0x7f110995

    .line 86
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    cmp-long v5, p7, v3

    if-lez v5, :cond_4

    const v3, 0x7f110996

    .line 89
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 92
    :cond_4
    new-instance v1, Landroid/text/SpannableString;

    const-string v0, ""

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v1
.end method

.method private static getTripInfoDataWithLocation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;JJ)Landroid/text/SpannableString;
    .locals 13

    move-object v0, p0

    .line 102
    invoke-static {p1}, Lcom/texa/careapp/utils/EcoDrivingUtils;->splitCityLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {p2}, Lcom/texa/careapp/utils/EcoDrivingUtils;->splitCityLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 109
    invoke-static {p1}, Lcom/texa/careapp/utils/EcoDrivingUtils;->splitAddressLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {p2}, Lcom/texa/careapp/utils/EcoDrivingUtils;->splitAddressLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/16 v9, 0x21

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 112
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v12, v12, v4

    if-eqz v12, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v4, v12, v4

    if-eqz v4, :cond_1

    .line 113
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Float;->floatValue()F

    move-result v12

    sub-float/2addr v4, v12

    const/4 v12, 0x0

    cmpl-float v4, v4, v12

    if-ltz v4, :cond_1

    const v4, 0x7f110991

    .line 114
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v1, v7, v5

    aput-object v2, v7, v6

    .line 115
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    .line 114
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 116
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 117
    invoke-static {p0}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getSpanStyle(Landroid/content/Context;)Lcom/texa/careapp/utils/CareTypefaceSpan;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v10

    sub-int/2addr v3, v4

    .line 118
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 117
    invoke-virtual {v2, v0, v3, v1, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_1
    cmp-long v4, p5, v7

    if-lez v4, :cond_2

    cmp-long v4, p7, v7

    if-lez v4, :cond_2

    const v4, 0x7f110997

    .line 120
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v5

    aput-object v2, v7, v6

    .line 121
    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v11

    .line 120
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 122
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 123
    invoke-static {p0}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getSpanStyle(Landroid/content/Context;)Lcom/texa/careapp/utils/CareTypefaceSpan;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xc

    .line 124
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 123
    invoke-virtual {v2, v0, v3, v1, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_2
    cmp-long v4, p7, v7

    if-lez v4, :cond_4

    const v4, 0x7f110998

    .line 126
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v1, v7, v5

    aput-object v2, v7, v6

    .line 127
    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    .line 126
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 128
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 129
    invoke-static {p0}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getSpanStyle(Landroid/content/Context;)Lcom/texa/careapp/utils/CareTypefaceSpan;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v10

    sub-int/2addr v3, v4

    .line 130
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 129
    invoke-virtual {v2, v0, v3, v1, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_3
    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    .line 133
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_5

    .line 134
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move-object v0, p0

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    invoke-static/range {v0 .. v6}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getTripInfoDataWithOdometer(Landroid/content/Context;FFJJ)Landroid/text/SpannableString;

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    cmp-long v1, p5, v7

    if-lez v1, :cond_6

    cmp-long v1, p7, v7

    if-lez v1, :cond_6

    const v1, 0x7f110995

    .line 136
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    cmp-long v1, p7, v7

    if-lez v1, :cond_7

    const v1, 0x7f110996

    .line 139
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_7
    new-instance v2, Landroid/text/SpannableString;

    const-string v0, ""

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v2
.end method

.method private static getTripInfoDataWithOdometer(Landroid/content/Context;FFJJ)Landroid/text/SpannableString;
    .locals 6

    float-to-int p2, p2

    int-to-float p2, p2

    sub-float/2addr p2, p1

    .line 153
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x21

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    cmp-long v5, p3, v2

    if-lez v5, :cond_0

    cmp-long v5, p5, v2

    if-lez v5, :cond_0

    const v2, 0x7f110993

    .line 156
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 157
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, v1

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, v0

    aput-object p1, v3, v4

    .line 156
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 158
    new-instance p4, Landroid/text/SpannableString;

    invoke-direct {p4, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 159
    invoke-static {p0}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getSpanStyle(Landroid/content/Context;)Lcom/texa/careapp/utils/CareTypefaceSpan;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v4

    sub-int/2addr p5, p1

    .line 160
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    .line 159
    invoke-virtual {p4, p0, p5, p1, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    cmp-long p3, p5, v2

    if-lez p3, :cond_1

    const p3, 0x7f110994

    .line 162
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/Object;

    .line 163
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    aput-object p5, p4, v1

    aput-object p1, p4, v0

    .line 162
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 164
    new-instance p4, Landroid/text/SpannableString;

    invoke-direct {p4, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 165
    invoke-static {p0}, Lcom/texa/careapp/utils/EcoDrivingUtils;->getSpanStyle(Landroid/content/Context;)Lcom/texa/careapp/utils/CareTypefaceSpan;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v4

    sub-int/2addr p5, p1

    .line 166
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    .line 165
    invoke-virtual {p4, p0, p5, p1, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    return-object p4
.end method

.method public static isTripInProgress(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)Z
    .locals 12

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 205
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getIdParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_7

    .line 206
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/texa/careapp/app/ecodriving/model/EcoDrivingEventsDataManager;->getTripGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 207
    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndTrip()J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const/4 v5, 0x0

    .line 211
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    if-nez v5, :cond_3

    goto :goto_1

    .line 214
    :cond_3
    invoke-virtual {v6}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide v7

    invoke-virtual {v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getStartTrip()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_2

    :goto_1
    move-object v5, v6

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    .line 218
    invoke-virtual {v5}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndTrip()J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-nez p0, :cond_6

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndTrip()J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-nez p0, :cond_6

    :goto_2
    const/4 v0, 0x1

    :cond_6
    return v0

    .line 222
    :cond_7
    invoke-virtual {p0}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getEndTrip()J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-nez p0, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private static notNullNotEmpty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ""

    .line 173
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static splitAddressLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, " - "

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 198
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 199
    aget-object p0, p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static splitCityLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, " - "

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 190
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 191
    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static splitLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, " - "

    .line 178
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 179
    array-length v0, p0

    if-lez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 181
    :goto_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method
