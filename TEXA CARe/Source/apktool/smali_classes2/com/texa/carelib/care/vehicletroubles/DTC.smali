.class public Lcom/texa/carelib/care/vehicletroubles/DTC;
.super Ljava/lang/Object;
.source "DTC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOCALE:Ljava/util/Locale;

.field public static final TAG:Ljava/lang/String; = "DTC"


# instance fields
.field private mAcquisitionDate:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field private mCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private mDescriptionLangs:Ljava/util/LinkedHashMap;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "descriptions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/util/Locale;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mECU:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ecu"
    .end annotation
.end field

.field private mID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dtc_id"
    .end annotation
.end field

.field private mOccurrences:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "occurrences"
    .end annotation
.end field

.field private mSourceNode:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_node"
    .end annotation
.end field

.field private mStatus:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private mToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dtc_token"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 536
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sput-object v0, Lcom/texa/carelib/care/vehicletroubles/DTC;->DEFAULT_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mID:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mAcquisitionDate:Ljava/util/Date;

    .line 32
    iput-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mCode:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mECU:Ljava/lang/String;

    .line 34
    sget-object v1, Lcom/texa/carelib/care/vehicletroubles/DTCStatus;->Unsupported:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    iput-object v1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mStatus:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    .line 35
    iput-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mToken:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mOccurrences:Ljava/lang/Long;

    .line 37
    iput-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mSourceNode:Ljava/lang/Long;

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mDescriptionLangs:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/care/vehicletroubles/DTC;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/texa/carelib/care/vehicletroubles/DTC;-><init>()V

    if-eqz p1, :cond_2

    .line 45
    iget-object v0, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mID:Ljava/lang/String;

    iput-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mID:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getAcquisitionDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mAcquisitionDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mAcquisitionDate:Ljava/util/Date;

    .line 49
    :cond_0
    iget-object v0, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mCode:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mDescriptionLangs:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mDescriptionLangs:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mDescriptionLangs:Ljava/util/LinkedHashMap;

    .line 54
    :cond_1
    iget-object v0, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mECU:Ljava/lang/String;

    iput-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mECU:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mToken:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mStatus:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    iput-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mStatus:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    .line 57
    iget-object v0, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mSourceNode:Ljava/lang/Long;

    iput-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mSourceNode:Ljava/lang/Long;

    .line 58
    iget-object p1, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mOccurrences:Ljava/lang/Long;

    iput-object p1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mOccurrences:Ljava/lang/Long;

    :cond_2
    return-void
.end method

.method static synthetic access$002(Lcom/texa/carelib/care/vehicletroubles/DTC;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/texa/carelib/care/vehicletroubles/DTC;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/texa/carelib/care/vehicletroubles/DTC;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/texa/carelib/care/vehicletroubles/DTC;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mECU:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/texa/carelib/care/vehicletroubles/DTC;Lcom/texa/carelib/care/vehicletroubles/DTCStatus;)Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mStatus:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    return-object p1
.end method

.method static synthetic access$502(Lcom/texa/carelib/care/vehicletroubles/DTC;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mAcquisitionDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$602(Lcom/texa/carelib/care/vehicletroubles/DTC;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mOccurrences:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$702(Lcom/texa/carelib/care/vehicletroubles/DTC;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mSourceNode:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$800(Lcom/texa/carelib/care/vehicletroubles/DTC;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mDescriptionLangs:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/texa/carelib/care/vehicletroubles/DTC;Ljava/util/Map;Ljava/util/Locale;)Lcom/texa/carelib/care/vehicletroubles/DTCInfo;
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getDTCInfo(Ljava/util/Map;Ljava/util/Locale;)Lcom/texa/carelib/care/vehicletroubles/DTCInfo;

    move-result-object p0

    return-object p0
.end method

.method private getDTCInfo(Ljava/util/Map;Ljava/util/Locale;)Lcom/texa/carelib/care/vehicletroubles/DTCInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCInfo;",
            ">;",
            "Ljava/util/Locale;",
            ")",
            "Lcom/texa/carelib/care/vehicletroubles/DTCInfo;"
        }
    .end annotation

    .line 340
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/vehicletroubles/DTCInfo;

    return-object p1

    .line 345
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getDTCInfoByLanguage(Ljava/util/Map;Ljava/util/Locale;)Lcom/texa/carelib/care/vehicletroubles/DTCInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDTCInfo(Ljava/util/Map;Ljava/util/Locale;Ljava/util/Locale;)Lcom/texa/carelib/care/vehicletroubles/DTCInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCInfo;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/util/Locale;",
            ")",
            "Lcom/texa/carelib/care/vehicletroubles/DTCInfo;"
        }
    .end annotation

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getDTCInfo(Ljava/util/Map;Ljava/util/Locale;)Lcom/texa/carelib/care/vehicletroubles/DTCInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 358
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getDTCInfo(Ljava/util/Map;Ljava/util/Locale;)Lcom/texa/carelib/care/vehicletroubles/DTCInfo;

    move-result-object p1

    return-object p1
.end method

.method private getDTCInfoByLanguage(Ljava/util/Map;Ljava/util/Locale;)Lcom/texa/carelib/care/vehicletroubles/DTCInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCInfo;",
            ">;",
            "Ljava/util/Locale;",
            ")",
            "Lcom/texa/carelib/care/vehicletroubles/DTCInfo;"
        }
    .end annotation

    .line 370
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 372
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/vehicletroubles/DTCInfo;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public edit()Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;
    .locals 1

    .line 64
    new-instance v0, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    invoke-direct {v0, p0}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;-><init>(Lcom/texa/carelib/care/vehicletroubles/DTC;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 290
    :cond_0
    instance-of v1, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 294
    :cond_1
    check-cast p1, Lcom/texa/carelib/care/vehicletroubles/DTC;

    .line 296
    iget-object v1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mID:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 297
    iget-object v1, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mID:Ljava/lang/String;

    if-eqz v1, :cond_3

    return v2

    .line 300
    :cond_2
    iget-object v3, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 304
    :cond_3
    iget-object v1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mToken:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 305
    iget-object v1, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mToken:Ljava/lang/String;

    if-eqz v1, :cond_5

    return v2

    .line 308
    :cond_4
    iget-object v3, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 312
    :cond_5
    iget-object v1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mStatus:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getStatus()Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    move-result-object v3

    if-eq v1, v3, :cond_6

    return v2

    .line 316
    :cond_6
    iget-object v1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mOccurrences:Ljava/lang/Long;

    if-nez v1, :cond_7

    .line 317
    iget-object v1, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mOccurrences:Ljava/lang/Long;

    if-eqz v1, :cond_8

    return v2

    .line 320
    :cond_7
    iget-object v3, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mOccurrences:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 324
    :cond_8
    iget-object v1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mSourceNode:Ljava/lang/Long;

    if-nez v1, :cond_9

    .line 325
    iget-object v1, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mSourceNode:Ljava/lang/Long;

    if-eqz v1, :cond_a

    return v2

    .line 328
    :cond_9
    iget-object v3, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mSourceNode:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 332
    :cond_a
    iget-object v1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mAcquisitionDate:Ljava/util/Date;

    if-nez v1, :cond_c

    .line 333
    iget-object p1, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mAcquisitionDate:Ljava/util/Date;

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 334
    :cond_c
    iget-object p1, p1, Lcom/texa/carelib/care/vehicletroubles/DTC;->mAcquisitionDate:Ljava/util/Date;

    invoke-virtual {v1, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAcquisitionDate()Ljava/util/Date;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mAcquisitionDate:Ljava/util/Date;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionLangs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Lcom/texa/carelib/care/vehicletroubles/DTCInfo;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mDescriptionLangs:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mDescriptionLangs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :cond_1
    if-nez v2, :cond_2

    return-object v1

    :cond_2
    if-nez v3, :cond_3

    move-object v3, v2

    .line 238
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getDetail(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetail(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 250
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/Check;->notNull(Ljava/lang/Object;)V

    .line 251
    sget-object v0, Lcom/texa/carelib/care/vehicletroubles/DTC;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getDetail(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDetail(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 264
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/Check;->notNull(Ljava/lang/Object;)V

    .line 265
    invoke-static {p2}, Lcom/texa/carelib/core/utils/internal/Check;->notNull(Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mDescriptionLangs:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0, p1, p2}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getDTCInfo(Ljava/util/Map;Ljava/util/Locale;Ljava/util/Locale;)Lcom/texa/carelib/care/vehicletroubles/DTCInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 273
    :cond_0
    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicletroubles/DTCInfo;->getDetail()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getECU()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mECU:Ljava/lang/String;

    return-object v0
.end method

.method public getHelp()Ljava/lang/String;
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mDescriptionLangs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :cond_1
    if-nez v2, :cond_2

    return-object v1

    :cond_2
    if-nez v3, :cond_3

    move-object v3, v2

    .line 177
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getHelp(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHelp(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 188
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/Check;->notNull(Ljava/lang/Object;)V

    .line 189
    sget-object v0, Lcom/texa/carelib/care/vehicletroubles/DTC;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getHelp(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHelp(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 201
    invoke-static {p1}, Lcom/texa/carelib/core/utils/internal/Check;->notNull(Ljava/lang/Object;)V

    .line 202
    invoke-static {p2}, Lcom/texa/carelib/core/utils/internal/Check;->notNull(Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mDescriptionLangs:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0, p1, p2}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getDTCInfo(Ljava/util/Map;Ljava/util/Locale;Ljava/util/Locale;)Lcom/texa/carelib/care/vehicletroubles/DTCInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 209
    :cond_0
    invoke-virtual {p1}, Lcom/texa/carelib/care/vehicletroubles/DTCInfo;->getHelp()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getOccurrences()Ljava/lang/Long;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mOccurrences:Ljava/lang/Long;

    return-object v0
.end method

.method public getSourceNode()Ljava/lang/Long;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mSourceNode:Ljava/lang/Long;

    return-object v0
.end method

.method public getStatus()Lcom/texa/carelib/care/vehicletroubles/DTCStatus;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mStatus:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 279
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 282
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DTC{mID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mECU=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mECU:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mStatus=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mStatus:Lcom/texa/carelib/care/vehicletroubles/DTCStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mAcquisitionDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mAcquisitionDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDescriptionLangs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicletroubles/DTC;->mDescriptionLangs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
