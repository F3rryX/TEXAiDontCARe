.class Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$1$1;
.super Ljava/util/HashMap;
.source "MockServiceDTCResolutionProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$1;
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
.field final synthetic this$1:Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$1;


# direct methods
.method constructor <init>(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$1;)V
    .locals 3

    .line 92
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$1$1;->this$1:Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$1;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 94
    iget-object v0, p1, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;

    iget-object p1, p1, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;

    sget-object v1, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    sget v2, Lcom/texa/carelib/webservices/R$string;->mock_p0001_detail:I

    invoke-static {p1, v1, v2}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->access$000(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;->access$100(Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "detail"

    invoke-virtual {p0, v0, p1}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "help"

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/webservices/internal/MockServiceDTCResolutionProcedure$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
