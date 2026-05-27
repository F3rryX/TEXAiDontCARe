.class public Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;
.super Ljava/lang/Object;
.source "HttpServiceImpactDetection.java"

# interfaces
.implements Lcom/texa/carelib/webservices/ServiceImpactDetection;


# static fields
.field private static final API_UPLOAD_CRASH_DATA:Ljava/lang/String; = "/crashloader/api/crash/binary"

.field private static final KEY_CRASH_CONTENT:Ljava/lang/String; = "crash_content"

.field public static final TAG:Ljava/lang/String; = "HttpServiceImpactDetection"


# instance fields
.field private final mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpTexaService;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;->getError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object p0

    return-object p0
.end method

.method private getError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;
    .locals 3

    .line 66
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v1, 0x2

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    invoke-virtual {v1}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/texa/carelib/webservices/R$string;->error_service_upload_crash_reports_fails:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/texa/carelib/core/CareError$Builder;->setInnerError(Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public uploadCrashData(Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/CrashDataUploadedEvent;",
            ">;)V"
        }
    .end annotation

    .line 36
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x2

    .line 39
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string v0, "crash_content"

    .line 41
    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;->mService:Lcom/texa/carelib/webservices/internal/HttpTexaService;

    new-instance v5, Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection$1;

    invoke-direct {v5, p0, p2}, Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection$1;-><init>(Lcom/texa/carelib/webservices/internal/HttpServiceImpactDetection;Lcom/texa/carelib/core/Callback;)V

    const-string v1, "/crashloader/api/crash/binary"

    const-string v2, "POST"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->accessAPIAtPath(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;)V

    return-void
.end method
