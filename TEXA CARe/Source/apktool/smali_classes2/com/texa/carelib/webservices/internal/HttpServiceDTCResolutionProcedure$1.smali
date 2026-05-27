.class Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;
.super Ljava/lang/Object;
.source "HttpServiceDTCResolutionProcedure.java"

# interfaces
.implements Lcom/texa/carelib/webservices/internal/HttpAPIRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->resolveDTCIDs(Ljava/util/Map;[Ljava/util/Locale;Ljava/lang/String;Ljava/util/Date;Lcom/texa/carelib/core/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;

.field final synthetic val$callback:Lcom/texa/carelib/core/Callback;

.field final synthetic val$languages:[Ljava/util/Locale;

.field final synthetic val$toBeResolvedDTCIDs:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;Lcom/texa/carelib/core/Callback;Ljava/util/Map;[Ljava/util/Locale;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;

    iput-object p2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;->val$callback:Lcom/texa/carelib/core/Callback;

    iput-object p3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;->val$toBeResolvedDTCIDs:Ljava/util/Map;

    iput-object p4, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;->val$languages:[Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/String;)V
    .locals 5

    .line 135
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DTC resolution completed"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;

    invoke-virtual {v0, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->createFromJSON(Ljava/lang/String;)Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$DTCTranslationProcedureResponse;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 139
    invoke-virtual {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$DTCTranslationProcedureResponse;->getDTC()Ljava/util/List;

    move-result-object p1

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 142
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/care/vehicletroubles/DTC;

    .line 144
    invoke-virtual {v1}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;->val$toBeResolvedDTCIDs:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;->val$toBeResolvedDTCIDs:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/texa/carelib/care/vehicletroubles/DTC;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;

    .line 146
    invoke-virtual {v1}, Lcom/texa/carelib/care/vehicletroubles/DTC;->edit()Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->getSourceNode()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setSourceNode(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/texa/carelib/care/vehicletroubles/DTCDetail;->getOccurrences()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->setOccurrences(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/carelib/care/vehicletroubles/DTC$Builder;->build()Lcom/texa/carelib/care/vehicletroubles/DTC;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 154
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;

    invoke-static {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->access$100(Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;)Lcom/texa/carelib/core/utils/DTCCache;

    move-result-object p1

    iget-object v1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;->val$languages:[Ljava/util/Locale;

    sget-object v2, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1$$ExternalSyntheticLambda0;->INSTANCE:Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0, v1, v2}, Lcom/texa/carelib/core/utils/DTCCache;->update(Ljava/util/List;[Ljava/util/Locale;Lcom/texa/carelib/core/utils/GenericAdapter;)V

    .line 158
    :cond_2
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;

    invoke-static {p1}, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->access$200(Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object p1

    const-string v1, "HttpAPIRequestListener#onCompleted"

    invoke-virtual {p1, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 160
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;

    invoke-static {v2}, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->access$300(Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v2, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;

    invoke-static {v2}, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->access$200(Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 167
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;->val$callback:Lcom/texa/carelib/core/Callback;

    new-instance v1, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;-><init>(Ljava/lang/Object;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 163
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;

    invoke-static {v0}, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->access$200(Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw p1

    .line 173
    :cond_4
    iget-object p1, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;->val$callback:Lcom/texa/carelib/core/Callback;

    new-instance v0, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/texa/carelib/core/CareError$Builder;

    const/4 v3, 0x2

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;

    invoke-static {v3}, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->access$400(Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;)Lcom/texa/carelib/webservices/internal/HttpTexaService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/webservices/internal/HttpTexaService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/texa/carelib/webservices/R$string;->error_service_invalid_response_body:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;-><init>(Ljava/lang/Object;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public onError(Lcom/texa/carelib/core/CareError;)V
    .locals 4

    .line 129
    sget-object v0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "DTC resolution fails due to: %s"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;->val$callback:Lcom/texa/carelib/core/Callback;

    new-instance v1, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure$1;->this$0:Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;

    invoke-static {v3, p1}, Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;->access$000(Lcom/texa/carelib/webservices/internal/HttpServiceDTCResolutionProcedure;Lcom/texa/carelib/core/CareError;)Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-direct {v1, p0, v2, p1}, Lcom/texa/carelib/webservices/DTCTranslationCompletedEvent;-><init>(Ljava/lang/Object;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method
