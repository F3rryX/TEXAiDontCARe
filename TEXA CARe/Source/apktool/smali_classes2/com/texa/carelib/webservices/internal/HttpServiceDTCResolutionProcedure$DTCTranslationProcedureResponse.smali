.class Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$DTCTranslationProcedureResponse;
.super Ljava/lang/Object;
.source "HttpServiceDTCResolutionProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DTCTranslationProcedureResponse"
.end annotation


# instance fields
.field private final mDTCs:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "translations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;


# direct methods
.method private constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$DTCTranslationProcedureResponse;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 271
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$DTCTranslationProcedureResponse;->mDTCs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDTC()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/care/vehicletroubles/DTC;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$DTCTranslationProcedureResponse;->mDTCs:Ljava/util/ArrayList;

    return-object v0
.end method
