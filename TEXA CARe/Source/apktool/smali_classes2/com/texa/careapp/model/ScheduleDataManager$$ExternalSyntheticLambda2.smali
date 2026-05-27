.class public final synthetic Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/model/ScheduleDataManager;

.field public final synthetic f$1:Lcom/texa/careapp/model/UserModel;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/model/ScheduleDataManager;Lcom/texa/careapp/model/UserModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/model/ScheduleDataManager;

    iput-object p2, p0, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda2;->f$1:Lcom/texa/careapp/model/UserModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda2;->f$0:Lcom/texa/careapp/model/ScheduleDataManager;

    iget-object v1, p0, Lcom/texa/careapp/model/ScheduleDataManager$$ExternalSyntheticLambda2;->f$1:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ScheduleDataManager;->lambda$syncUserToServer$0$com-texa-careapp-model-ScheduleDataManager(Lcom/texa/careapp/model/UserModel;)V

    return-void
.end method
