.class Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$5$2;
.super Ljava/util/HashMap;
.source "MockServiceDTCResolutionProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$5;


# direct methods
.method constructor <init>(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$5;)V
    .locals 4

    .line 172
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$5$2;->this$1:Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$5;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 174
    iget-object v0, p1, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$5;->this$0:Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;

    iget-object v1, p1, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$5;->this$0:Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v3, Lcom/texa/carelib/webservices/R$string;->p0215_detail:I

    invoke-static {v1, v2, v3}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->access$000(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->access$100(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "detail"

    invoke-virtual {p0, v1, v0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$5$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p1, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$5;->this$0:Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;

    iget-object p1, p1, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$5;->this$0:Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget v2, Lcom/texa/carelib/webservices/R$string;->p0215_help:I

    invoke-static {p1, v1, v2}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->access$000(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->access$100(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "help"

    invoke-virtual {p0, v0, p1}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$5$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
