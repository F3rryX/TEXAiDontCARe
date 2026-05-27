.class Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;
.super Ljava/lang/Object;
.source "HttpServiceProtectionProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProtectionProcedureResponse"
.end annotation


# instance fields
.field private mSessionID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session_id"
    .end annotation
.end field

.field private mVerificationKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verification_key"
    .end annotation
.end field

.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 449
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;->mVerificationKey:Ljava/lang/String;

    .line 450
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;->mSessionID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;->mSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationKey()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;->mVerificationKey:Ljava/lang/String;

    return-object v0
.end method

.method public setSessionID(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;->mSessionID:Ljava/lang/String;

    return-object p0
.end method

.method public setVerificationKey(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceProtectionProcedure$ProtectionProcedureResponse;->mVerificationKey:Ljava/lang/String;

    return-object p0
.end method
