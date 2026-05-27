.class Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;
.super Ljava/lang/Object;
.source "HttpServiceFirmwareInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HttpFirmwareInfoProcedureResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;
    }
.end annotation


# instance fields
.field private mApplications:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "applications"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;->mApplications:Ljava/util/List;

    return-void
.end method

.method static synthetic access$802(Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;->mApplications:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getApplications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse$VersionInfo;",
            ">;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;->mApplications:Ljava/util/List;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;->mApplications:Ljava/util/List;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceFirmwareInfo$HttpFirmwareInfoProcedureResponse;->mApplications:Ljava/util/List;

    return-object v0
.end method
