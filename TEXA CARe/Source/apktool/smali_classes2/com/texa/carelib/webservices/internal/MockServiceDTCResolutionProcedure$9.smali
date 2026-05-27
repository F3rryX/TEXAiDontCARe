.class Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$9;
.super Ljava/util/HashMap;
.source "MockServiceDTCResolutionProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->initTranslations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/util/Locale;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;


# direct methods
.method constructor <init>(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;)V
    .locals 1

    .line 235
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$9;->this$0:Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 237
    sget-object p1, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    new-instance v0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$9$1;

    invoke-direct {v0, p0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$9$1;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$9;)V

    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$9$2;

    invoke-direct {v0, p0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$9$2;-><init>(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$9;)V

    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$9;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
