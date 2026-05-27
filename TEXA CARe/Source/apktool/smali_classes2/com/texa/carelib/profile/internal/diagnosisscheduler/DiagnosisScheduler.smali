.class public Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;
.super Ljava/lang/Object;
.source "DiagnosisScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;
    }
.end annotation


# static fields
.field private static final MSG_ACCESSORY_DIAGNOSIS_MODE_CHANGED:I = 0x3

.field private static final MSG_ACCESSORY_STATUS_CHANGED:I = 0x2

.field private static final MSG_ACTION_COMPLETED:I = 0xb

.field private static final MSG_AVAILABLE_PARAMETERS_CHANGED:I = 0x9

.field private static final MSG_COMMUNICATION_STATUS_CHANGED:I = 0x1

.field private static final MSG_ECU_CHANGED:I = 0x7

.field private static final MSG_PEEK_NEXT_ACTION:I = 0x5

.field private static final MSG_START:I = 0x4

.field private static final MSG_SUBSCRIBED_OBJECT_PAYLOAD_COMPOSER:I = 0x6

.field private static final MSG_SUBSCRIPTION_COUNTERS_UPDATED:I = 0xa

.field private static final MSG_SUPPORTED_PARAMETERS_CHANGED:I = 0x8

.field private static final TAG:Ljava/lang/String; = "DiagnosisScheduler"

.field private static _Instance:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;


# instance fields
.field private mAccessoryDiagnosisMode:I

.field private mAccessoryStatus:I

.field private mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

.field private mCurrentAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

.field private mDTCSubscriptionInterval:Ljava/lang/Long;

.field private mDTCSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

.field private mDiagnosticParameterEngine:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mParameterSubscriptionStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/texa/carelib/care/vehicle/SubscriptionState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingActions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

.field private mSubscriptionIntervals:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1_xH6ka0WuMyiS0K7OYcZdYSfko(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DiagnosisSchedulerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 44
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mPendingActions:Ljava/util/LinkedList;

    .line 48
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mParameterSubscriptionStates:Landroid/util/LongSparseArray;

    .line 49
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mSubscriptionIntervals:Landroid/util/LongSparseArray;

    .line 50
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->IDLE:Lcom/texa/carelib/communication/CommunicationStatus;

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    .line 51
    sget-object v0, Lcom/texa/carelib/care/vehicle/SubscriptionState;->NotSubscribed:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDTCSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    .line 52
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->DongleNotConnected:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->setState(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;)V

    return-void
.end method

.method private createSubscribedObjectsPayloadComposer()V
    .locals 2

    .line 374
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->CreateSubscribedObjectsPayloadComposer:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->setState(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;)V

    .line 375
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDiagnosticParameterEngine:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;

    new-instance v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda6;-><init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;->createSubscribedObjectsPayloadComposer(Lcom/texa/carelib/core/Callback;)V

    return-void
.end method

.method private enqueueAction(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;)V
    .locals 5

    .line 298
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Enqueue action: %1$s"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    sget-object v2, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$1;->$SwitchMap$com$texa$carelib$profile$internal$diagnosisscheduler$DiagnosisSchedulerActionType:[I

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getAction()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 301
    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->isReadPending(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 302
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mPendingActions:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 304
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "Read Skipped because action is already in the queue. Action info: %1$s"

    invoke-static {v0, p1, v1}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 335
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Diagnosis scheduler action not handled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 311
    :cond_2
    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->removePendingSubscribeUnsubscribe(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;)V

    .line 312
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mPendingActions:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 314
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;->Subscribe:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getAction()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    .line 315
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getObjectDataType()I

    move-result v0

    if-nez v0, :cond_3

    .line 316
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getDataIDs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 317
    sget-object v2, Lcom/texa/carelib/care/vehicle/SubscriptionState;->SubscribePending:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getNewInterval()Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->setSubscriptionState(Ljava/lang/Long;Lcom/texa/carelib/care/vehicle/SubscriptionState;Ljava/lang/Long;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 319
    :cond_3
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getObjectDataType()I

    move-result v0

    if-ne v1, v0, :cond_6

    .line 320
    sget-object v0, Lcom/texa/carelib/care/vehicle/SubscriptionState;->SubscribePending:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDTCSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    .line 321
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getNewInterval()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDTCSubscriptionInterval:Ljava/lang/Long;

    goto :goto_2

    .line 323
    :cond_4
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;->Unsubscribe:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getAction()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    move-result-object v2

    if-ne v0, v2, :cond_6

    .line 324
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getObjectDataType()I

    move-result v0

    if-nez v0, :cond_5

    .line 325
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getDataIDs()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 326
    sget-object v1, Lcom/texa/carelib/care/vehicle/SubscriptionState;->UnsubscribePending:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    invoke-direct {p0, v0, v1, v3, v3}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->setSubscriptionState(Ljava/lang/Long;Lcom/texa/carelib/care/vehicle/SubscriptionState;Ljava/lang/Long;Lcom/texa/carelib/core/CareError;)V

    goto :goto_1

    .line 328
    :cond_5
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getObjectDataType()I

    move-result p1

    if-ne v1, p1, :cond_6

    .line 329
    sget-object p1, Lcom/texa/carelib/care/vehicle/SubscriptionState;->UnsubscribePending:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDTCSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    :cond_6
    :goto_2
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 226
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "handleMessage %1%d"

    invoke-static {v0, p1, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 221
    :pswitch_0
    sget-object p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "handleMessage MSG_ACTION_COMPLETED"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->updateSubscriptionCounters()V

    return v3

    .line 206
    :pswitch_1
    sget-object p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "handleMessage MSG_SUBSCRIPTION_COUNTERS_UPDATED"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    iget v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryStatus:I

    iget v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryDiagnosisMode:I

    invoke-direct {p0, p1, v0, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->onSchedulerStateChanged(Lcom/texa/carelib/communication/CommunicationStatus;II)V

    return v3

    .line 201
    :pswitch_2
    sget-object p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "handleMessage MSG_AVAILABLE_PARAMETERS_CHANGED"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    iget v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryStatus:I

    iget v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryDiagnosisMode:I

    invoke-direct {p0, p1, v0, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->onSchedulerStateChanged(Lcom/texa/carelib/communication/CommunicationStatus;II)V

    return v3

    .line 196
    :pswitch_3
    sget-object p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "handleMessage MSG_SUPPORTED_PARAMETERS_CHANGED"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    iget v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryStatus:I

    iget v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryDiagnosisMode:I

    invoke-direct {p0, p1, v0, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->onSchedulerStateChanged(Lcom/texa/carelib/communication/CommunicationStatus;II)V

    return v3

    .line 191
    :pswitch_4
    sget-object p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "handleMessage MSG_ECU_CHANGED"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    iget v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryStatus:I

    iget v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryDiagnosisMode:I

    invoke-direct {p0, p1, v0, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->onSchedulerStateChanged(Lcom/texa/carelib/communication/CommunicationStatus;II)V

    return v3

    .line 186
    :pswitch_5
    sget-object p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "handleMessage MSG_SUBSCRIBED_OBJECT_PAYLOAD_COMPOSER"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    iget v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryStatus:I

    iget v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryDiagnosisMode:I

    invoke-direct {p0, p1, v0, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->onSchedulerStateChanged(Lcom/texa/carelib/communication/CommunicationStatus;II)V

    return v3

    .line 216
    :pswitch_6
    sget-object p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "handleMessage MSG_PEEK_NEXT_ACTION"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->peekNextAction()V

    return v3

    .line 211
    :pswitch_7
    sget-object p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "handleMessage MSG_START"

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    iget v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryStatus:I

    iget v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryDiagnosisMode:I

    invoke-direct {p0, p1, v0, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->onSchedulerStateChanged(Lcom/texa/carelib/communication/CommunicationStatus;II)V

    return v3

    .line 180
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryDiagnosisMode:I

    .line 181
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object p1, v1, v2

    iget p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryDiagnosisMode:I

    invoke-static {p1}, Lcom/texa/carelib/care/accessory/AccessoryDiagnosisMode;->getName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "handleMessage MSG_ACCESSORY_DIAGNOSIS_MODE_CHANGED %1$d %2$s"

    invoke-static {v0, p1, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    iget v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryStatus:I

    iget v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryDiagnosisMode:I

    invoke-direct {p0, p1, v0, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->onSchedulerStateChanged(Lcom/texa/carelib/communication/CommunicationStatus;II)V

    return v3

    .line 174
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryStatus:I

    .line 175
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object p1, v1, v2

    iget p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryStatus:I

    invoke-static {p1}, Lcom/texa/carelib/care/accessory/AccessoryStatus;->getName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "handleMessage MSG_ACCESSORY_STATUS_CHANGED %1$d %2$s"

    invoke-static {v0, p1, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    iget v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryStatus:I

    iget v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryDiagnosisMode:I

    invoke-direct {p0, p1, v0, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->onSchedulerStateChanged(Lcom/texa/carelib/communication/CommunicationStatus;II)V

    return v3

    .line 159
    :pswitch_a
    invoke-static {}, Lcom/texa/carelib/communication/CommunicationStatus;->values()[Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    .line 160
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    aput-object p1, v1, v3

    const-string p1, "handleMessage MSG_COMMUNICATION_STATUS_CHANGED %1$d %2$s"

    invoke-static {v0, p1, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    sget-object p1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 163
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDTCSubscriptionInterval:Ljava/lang/Long;

    .line 164
    sget-object p1, Lcom/texa/carelib/care/vehicle/SubscriptionState;->NotSubscribed:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDTCSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    .line 165
    iput v2, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryDiagnosisMode:I

    const/16 p1, 0xff

    .line 166
    iput p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryStatus:I

    .line 167
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mParameterSubscriptionStates:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->clear()V

    .line 168
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mSubscriptionIntervals:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->clear()V

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCommunicationStatus:Lcom/texa/carelib/communication/CommunicationStatus;

    iget v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryStatus:I

    iget v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mAccessoryDiagnosisMode:I

    invoke-direct {p0, p1, v0, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->onSchedulerStateChanged(Lcom/texa/carelib/communication/CommunicationStatus;II)V

    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private idle()V
    .locals 1

    .line 454
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->Idle:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->setState(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;)V

    return-void
.end method

.method private isConnected(Lcom/texa/carelib/communication/CommunicationStatus;)Z
    .locals 1

    .line 235
    sget-object v0, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isDiagnosisReady(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq v1, p1, :cond_0

    const/16 v1, 0x84

    if-ne v1, p1, :cond_1

    :cond_0
    if-ne v0, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isReadPending(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;)Z
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mPendingActions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 269
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    .line 271
    sget-object v2, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;->Read:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    invoke-virtual {v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getAction()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    move-result-object v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getObjectDataType()I

    move-result v2

    invoke-virtual {v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getObjectDataType()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getDataIDs()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getDataIDs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onDiagnosisNotReady()V
    .locals 2

    .line 363
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->DiagnosisNotReady:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->setState(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;)V

    .line 365
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCurrentAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    if-eqz v0, :cond_0

    .line 366
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mPendingActions:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCurrentAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    return-void
.end method

.method private onNotConnected()V
    .locals 2

    .line 352
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->DongleNotConnected:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->setState(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;)V

    const/4 v0, 0x0

    .line 354
    iput-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCurrentAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    .line 355
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mPendingActions:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 356
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mParameterSubscriptionStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 357
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mSubscriptionIntervals:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 359
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private onSchedulerStateChanged(Lcom/texa/carelib/communication/CommunicationStatus;II)V
    .locals 0

    .line 243
    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->isConnected(Lcom/texa/carelib/communication/CommunicationStatus;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 244
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->isDiagnosisReady(II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 245
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mState:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->ordinal()I

    move-result p1

    sget-object p2, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->DiagnosisNotReady:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    invoke-virtual {p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->ordinal()I

    move-result p2

    if-gt p1, p2, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->createSubscribedObjectsPayloadComposer()V

    goto :goto_0

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mState:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    sget-object p2, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->CreateSubscribedObjectsPayloadComposer:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    if-ne p1, p2, :cond_1

    .line 248
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->updateECUs()V

    goto :goto_0

    .line 249
    :cond_1
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mState:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    sget-object p2, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->UpdateECUs:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    if-ne p1, p2, :cond_2

    .line 250
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->updateSupportedParameters()V

    goto :goto_0

    .line 251
    :cond_2
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mState:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    sget-object p2, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->UpdateSupportedParameters:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    if-ne p1, p2, :cond_3

    .line 252
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->updateAvailableParameters()V

    goto :goto_0

    .line 253
    :cond_3
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mState:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    sget-object p2, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->UpdateAvailableParameters:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    if-ne p1, p2, :cond_4

    .line 254
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->updateSubscriptionCounters()V

    goto :goto_0

    .line 255
    :cond_4
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mState:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    sget-object p2, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->UpdateSubscriptionCount:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    if-eq p1, p2, :cond_5

    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mState:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    sget-object p2, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->Idle:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    if-ne p1, p2, :cond_8

    .line 256
    :cond_5
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->peekNextAction()V

    goto :goto_0

    .line 259
    :cond_6
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->onDiagnosisNotReady()V

    goto :goto_0

    .line 262
    :cond_7
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->onNotConnected()V

    :cond_8
    :goto_0
    return-void
.end method

.method private peekNextAction()V
    .locals 1

    .line 443
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->PeekNextAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->setState(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;)V

    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCurrentAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    .line 445
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mPendingActions:Ljava/util/LinkedList;

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/Utils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->idle()V

    goto :goto_0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mPendingActions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCurrentAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    .line 449
    invoke-direct {p0, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->runAction(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;)V

    :goto_0
    return-void
.end method

.method private removePendingSubscribeUnsubscribe(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;)V
    .locals 5

    .line 280
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mPendingActions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 282
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    .line 284
    sget-object v2, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$1;->$SwitchMap$com$texa$carelib$profile$internal$diagnosisscheduler$DiagnosisSchedulerActionType:[I

    invoke-virtual {v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getAction()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getDataIDs()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getDataIDs()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    sget-object v2, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "Applying pending action optimisation for: %1$s"

    invoke-static {v2, v1, v3}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private runAction(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;)V
    .locals 5

    .line 458
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->RunAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->setState(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;)V

    .line 460
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Running action: %1$s"

    invoke-static {v0, v3, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$1;->$SwitchMap$com$texa$carelib$profile$internal$diagnosisscheduler$DiagnosisSchedulerActionType:[I

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getAction()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 463
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getObjectDataType()I

    move-result v0

    .line 464
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getDataIDs()Ljava/util/Set;

    move-result-object p1

    .line 466
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDiagnosticParameterEngine:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;

    new-instance v2, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda9;-><init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;ILjava/util/Set;)V

    invoke-interface {v1, v0, p1, v2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;->read(ILjava/util/Set;Lcom/texa/carelib/core/Callback;)V

    goto :goto_0

    .line 549
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Ooops, this state has not be handled!!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 517
    :cond_1
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getObjectDataType()I

    move-result v0

    .line 518
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getDataIDs()Ljava/util/Set;

    move-result-object p1

    .line 519
    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDiagnosticParameterEngine:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;

    new-instance v2, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda10;-><init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;ILjava/util/Set;)V

    invoke-interface {v1, v0, p1, v2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;->unsubscribe(ILjava/util/Set;Lcom/texa/carelib/core/Callback;)V

    goto :goto_0

    .line 479
    :cond_2
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getNewInterval()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 483
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getObjectDataType()I

    move-result v0

    .line 484
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getDataIDs()Ljava/util/Set;

    move-result-object v1

    .line 485
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getNewInterval()Ljava/lang/Long;

    move-result-object p1

    .line 486
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDiagnosticParameterEngine:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;

    new-instance v3, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda8;-><init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;ILjava/lang/Long;Ljava/util/Set;)V

    invoke-interface {v2, v0, p1, v1, v3}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;->subscribe(ILjava/lang/Long;Ljava/util/Set;Lcom/texa/carelib/core/Callback;)V

    :goto_0
    return-void

    .line 480
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Interval could not be null subscribe action."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sendMessage(Landroid/os/Handler;I)V
    .locals 0

    .line 555
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 556
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setSubscriptionState(Ljava/lang/Long;Lcom/texa/carelib/care/vehicle/SubscriptionState;Ljava/lang/Long;Lcom/texa/carelib/core/CareError;)V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mParameterSubscriptionStates:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 343
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mSubscriptionIntervals:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object p3, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mSubscriptionIntervals:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 348
    :goto_0
    iget-object p3, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDiagnosticParameterEngine:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;

    invoke-interface {p3, p1, p2, p4}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;->onSubscriptionStateChanged(Ljava/lang/Long;Lcom/texa/carelib/care/vehicle/SubscriptionState;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method public static singletonInstance()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;
    .locals 1

    .line 35
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->_Instance:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    invoke-direct {v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;-><init>()V

    sput-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->_Instance:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    .line 39
    :cond_0
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->_Instance:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;

    return-object v0
.end method

.method private updateAvailableParameters()V
    .locals 2

    .line 411
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->UpdateAvailableParameters:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->setState(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;)V

    .line 413
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDiagnosticParameterEngine:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;

    new-instance v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda3;-><init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;->updateAvailableParameters(Lcom/texa/carelib/core/Callback;)V

    return-void
.end method

.method private updateECUs()V
    .locals 2

    .line 386
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->UpdateECUs:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->setState(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;)V

    .line 388
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDiagnosticParameterEngine:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;

    new-instance v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda5;-><init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;->updateECUs(Lcom/texa/carelib/core/Callback;)V

    return-void
.end method

.method private updateParameters()V
    .locals 0

    return-void
.end method

.method private updateSubscriptionCounters()V
    .locals 2

    .line 431
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->UpdateSubscriptionCount:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->setState(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;)V

    .line 433
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDiagnosticParameterEngine:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;

    new-instance v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda4;-><init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;->updateSubscriptionCounters(Lcom/texa/carelib/core/Callback;)V

    return-void
.end method

.method private updateSupportedParameters()V
    .locals 2

    .line 399
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->UpdateSupportedParameters:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    invoke-virtual {p0, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->setState(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;)V

    .line 401
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDiagnosticParameterEngine:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;

    new-instance v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda7;-><init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;)V

    invoke-interface {v0, v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;->updateSupportedParameters(Lcom/texa/carelib/core/Callback;)V

    return-void
.end method


# virtual methods
.method public attachDiagnosticParameterEngine(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDiagnosticParameterEngine:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisEngine;

    return-void
.end method

.method public getCurrentAction()Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCurrentAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    return-object v0
.end method

.method public getSubscriptionInterval(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mSubscriptionIntervals:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method public getSubscriptionState(Ljava/lang/Long;)Lcom/texa/carelib/care/vehicle/SubscriptionState;
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mParameterSubscriptionStates:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p1, Lcom/texa/carelib/care/vehicle/SubscriptionState;->NotSubscribed:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    invoke-virtual {v0, v1, v2, p1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/carelib/care/vehicle/SubscriptionState;

    return-object p1
.end method

.method public synthetic lambda$createSubscribedObjectsPayloadComposer$3$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler(Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SubscribedObjectsPayloadComposerCreatedEvent;)V
    .locals 3

    .line 376
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SubscribedObjectsPayloadComposerCreatedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 378
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not create subscribe object payload composer."

    invoke-static {v0, p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->sendMessage(Landroid/os/Handler;I)V

    return-void
.end method

.method public synthetic lambda$read$0$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler(Ljava/util/Set;I)V
    .locals 10

    .line 81
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 82
    new-instance v7, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    sget-object v2, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;->Read:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mParameterSubscriptionStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v3, Lcom/texa/carelib/care/vehicle/SubscriptionState;->NotSubscribed:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    invoke-virtual {v1, v5, v6, v3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/texa/carelib/care/vehicle/SubscriptionState;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mSubscriptionIntervals:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Long;

    move-object v1, v7

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;-><init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;ILjava/util/Set;Lcom/texa/carelib/care/vehicle/SubscriptionState;Ljava/lang/Long;)V

    invoke-direct {p0, v7}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->enqueueAction(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;)V

    goto :goto_0

    .line 85
    :cond_0
    sget-object p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->Idle:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    iget-object p2, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mState:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    if-ne p1, p2, :cond_1

    .line 86
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->sendMessage(Landroid/os/Handler;I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$runAction$10$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler(ILjava/util/Set;Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineUnsubscribeCompletedEvent;)V
    .locals 5

    .line 520
    invoke-virtual {p3}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineUnsubscribeCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p3, :cond_1

    .line 522
    sget-object p3, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {p2}, Lcom/texa/carelib/care/vehicle/internal/DataIDFormatter;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Unsubscribe completed: ObjectDataType: %1$d DataIDs: %2$s"

    invoke-static {p3, v0, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 524
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 525
    iget-object p3, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mParameterSubscriptionStates:Landroid/util/LongSparseArray;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 526
    iget-object p3, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mSubscriptionIntervals:Landroid/util/LongSparseArray;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_0

    :cond_0
    if-ne v2, p1, :cond_3

    .line 529
    sget-object p1, Lcom/texa/carelib/care/vehicle/SubscriptionState;->NotSubscribed:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDTCSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    const/4 p1, 0x0

    .line 530
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDTCSubscriptionInterval:Ljava/lang/Long;

    goto :goto_2

    .line 533
    :cond_1
    sget-object v3, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {p2}, Lcom/texa/carelib/care/vehicle/internal/DataIDFormatter;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Unsubscribe error: ObjectDataType: %1$d DataIDs: %2$s"

    invoke-static {v3, p3, v0, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_2

    .line 536
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 537
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCurrentAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    invoke-virtual {v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getOldSubscriptionState()Lcom/texa/carelib/care/vehicle/SubscriptionState;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCurrentAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    invoke-virtual {v1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getOldInterval()Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1, p3}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->setSubscriptionState(Ljava/lang/Long;Lcom/texa/carelib/care/vehicle/SubscriptionState;Ljava/lang/Long;Lcom/texa/carelib/core/CareError;)V

    goto :goto_1

    :cond_2
    if-ne v2, p1, :cond_3

    .line 540
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCurrentAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getOldSubscriptionState()Lcom/texa/carelib/care/vehicle/SubscriptionState;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDTCSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    .line 541
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCurrentAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getOldInterval()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDTCSubscriptionInterval:Ljava/lang/Long;

    .line 544
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandler:Landroid/os/Handler;

    const/16 p2, 0xb

    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->sendMessage(Landroid/os/Handler;I)V

    return-void
.end method

.method public synthetic lambda$runAction$8$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler(ILjava/util/Set;Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineReadCompletedEvent;)V
    .locals 4

    .line 467
    invoke-virtual {p3}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineReadCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez p3, :cond_0

    .line 469
    sget-object p3, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2}, Lcom/texa/carelib/care/vehicle/internal/DataIDFormatter;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "Read completed: ObjectDataType: %1$d DataIDs: %2$s"

    invoke-static {p3, p1, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 471
    :cond_0
    sget-object v3, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2}, Lcom/texa/carelib/care/vehicle/internal/DataIDFormatter;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "Read error: ObjectDataType: %1$d DataIDs: %2$s"

    invoke-static {v3, p3, p1, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    :goto_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandler:Landroid/os/Handler;

    const/16 p2, 0xb

    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->sendMessage(Landroid/os/Handler;I)V

    return-void
.end method

.method public synthetic lambda$runAction$9$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler(ILjava/lang/Long;Ljava/util/Set;Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineSubscribeCompletedEvent;)V
    .locals 6

    .line 487
    invoke-virtual {p4}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineSubscribeCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez p4, :cond_1

    .line 490
    sget-object v4, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    aput-object p2, v2, v3

    invoke-static {p3}, Lcom/texa/carelib/care/vehicle/internal/DataIDFormatter;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "Subscribe completed: ObjectDataType: %1$d Interval: %2$d DataIDs: %3$s"

    invoke-static {v4, v0, v2}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 492
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    .line 493
    sget-object v0, Lcom/texa/carelib/care/vehicle/SubscriptionState;->Subscribed:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    invoke-direct {p0, p3, v0, p2, p4}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->setSubscriptionState(Ljava/lang/Long;Lcom/texa/carelib/care/vehicle/SubscriptionState;Ljava/lang/Long;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    :cond_0
    if-ne v3, p1, :cond_3

    .line 496
    sget-object p1, Lcom/texa/carelib/care/vehicle/SubscriptionState;->Subscribed:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDTCSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    .line 497
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCurrentAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getNewInterval()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDTCSubscriptionInterval:Ljava/lang/Long;

    goto :goto_2

    .line 500
    :cond_1
    sget-object v4, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    aput-object p2, v2, v3

    invoke-static {p3}, Lcom/texa/carelib/care/vehicle/internal/DataIDFormatter;->toString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v0

    const-string p2, "Subscribe error: ObjectDataType: %1$d Interval: %2$d DataIDs: %3$s"

    invoke-static {v4, p4, p2, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_2

    .line 503
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 504
    iget-object p3, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCurrentAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    invoke-virtual {p3}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getOldSubscriptionState()Lcom/texa/carelib/care/vehicle/SubscriptionState;

    move-result-object p3

    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCurrentAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    invoke-virtual {v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getOldInterval()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->setSubscriptionState(Ljava/lang/Long;Lcom/texa/carelib/care/vehicle/SubscriptionState;Ljava/lang/Long;Lcom/texa/carelib/core/CareError;)V

    goto :goto_1

    :cond_2
    if-ne v3, p1, :cond_3

    .line 507
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCurrentAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getOldSubscriptionState()Lcom/texa/carelib/care/vehicle/SubscriptionState;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDTCSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    .line 508
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mCurrentAction:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;->getOldInterval()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDTCSubscriptionInterval:Ljava/lang/Long;

    .line 512
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandler:Landroid/os/Handler;

    const/16 p2, 0xb

    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->sendMessage(Landroid/os/Handler;I)V

    return-void
.end method

.method public synthetic lambda$subscribe$1$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler(ILjava/util/Set;Ljava/lang/Long;)V
    .locals 11

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 103
    new-instance p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    sget-object v2, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;->Subscribe:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDTCSubscriptionState:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    iget-object v7, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mDTCSubscriptionInterval:Ljava/lang/Long;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;-><init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;ILjava/util/Set;Ljava/lang/Long;Lcom/texa/carelib/care/vehicle/SubscriptionState;Ljava/lang/Long;)V

    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->enqueueAction(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;)V

    goto :goto_1

    .line 105
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 106
    new-instance v8, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    sget-object v2, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;->Subscribe:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mParameterSubscriptionStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v3, Lcom/texa/carelib/care/vehicle/SubscriptionState;->NotSubscribed:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    invoke-virtual {v1, v5, v6, v3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/texa/carelib/care/vehicle/SubscriptionState;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mSubscriptionIntervals:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Long;

    move-object v1, v8

    move v3, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;-><init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;ILjava/util/Set;Ljava/lang/Long;Lcom/texa/carelib/care/vehicle/SubscriptionState;Ljava/lang/Long;)V

    invoke-direct {p0, v8}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->enqueueAction(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;)V

    goto :goto_0

    .line 110
    :cond_1
    :goto_1
    sget-object p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->Idle:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    iget-object p2, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mState:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    if-ne p1, p2, :cond_2

    .line 111
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->sendMessage(Landroid/os/Handler;I)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$unsubscribe$2$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler(Ljava/util/Set;I)V
    .locals 10

    .line 126
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 127
    new-instance v7, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;

    sget-object v2, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;->Unsubscribe:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mParameterSubscriptionStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v3, Lcom/texa/carelib/care/vehicle/SubscriptionState;->NotSubscribed:Lcom/texa/carelib/care/vehicle/SubscriptionState;

    invoke-virtual {v1, v5, v6, v3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/texa/carelib/care/vehicle/SubscriptionState;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mSubscriptionIntervals:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Long;

    move-object v1, v7

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;-><init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerActionType;ILjava/util/Set;Lcom/texa/carelib/care/vehicle/SubscriptionState;Ljava/lang/Long;)V

    invoke-direct {p0, v7}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->enqueueAction(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisSchedulerAction;)V

    goto :goto_0

    .line 130
    :cond_0
    sget-object p1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->Idle:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    iget-object p2, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mState:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    if-ne p1, p2, :cond_1

    .line 131
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->sendMessage(Landroid/os/Handler;I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$updateAvailableParameters$6$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler(Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/AvailableParameterUpdateCompletedEvent;)V
    .locals 3

    .line 414
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/AvailableParameterUpdateCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 416
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not update available parameters."

    invoke-static {v0, p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->sendMessage(Landroid/os/Handler;I)V

    return-void
.end method

.method public synthetic lambda$updateECUs$4$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler(Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/ECUUpdateCompletedEvent;)V
    .locals 3

    .line 389
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/ECUUpdateCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 391
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not update supported ECUs."

    invoke-static {v0, p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->sendMessage(Landroid/os/Handler;I)V

    return-void
.end method

.method public synthetic lambda$updateSubscriptionCounters$7$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler(Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineUpdateSubscriptionCountersCompletedEvent;)V
    .locals 3

    .line 434
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/DiagnosisEngineUpdateSubscriptionCountersCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 436
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not update subscription counters."

    invoke-static {v0, p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->sendMessage(Landroid/os/Handler;I)V

    return-void
.end method

.method public synthetic lambda$updateSupportedParameters$5$com-texa-carelib-profile-internal-diagnosisscheduler-DiagnosisScheduler(Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SupportedParameterUpdateCompletedEvent;)V
    .locals 3

    .line 402
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/events/SupportedParameterUpdateCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 404
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not update supported parameters."

    invoke-static {v0, p1, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->sendMessage(Landroid/os/Handler;I)V

    return-void
.end method

.method public notifyCommunicationStatusChanged(Lcom/texa/carelib/communication/CommunicationStatus;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/CommunicationStatus;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public read(ILjava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->DongleNotConnected:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mState:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    if-eq v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;Ljava/util/Set;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 77
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public varargs read(I[Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->read(ILjava/util/Set;)V

    return-void
.end method

.method public setAccessoryDiagnosisMode(I)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public setAccessoryStatus(I)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public setState(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;)V
    .locals 3

    .line 147
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "State: %1$s"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mState:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    return-void
.end method

.method public subscribe(ILjava/lang/Long;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 97
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->DongleNotConnected:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mState:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    if-eq v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda11;-><init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;ILjava/util/Set;Ljava/lang/Long;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 98
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public varargs subscribe(ILjava/lang/Long;[Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->subscribe(ILjava/lang/Long;Ljava/util/Set;)V

    return-void
.end method

.method public unsubscribe(ILjava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 121
    sget-object v0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;->DongleNotConnected:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mState:Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$State;

    if-eq v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler$$ExternalSyntheticLambda2;-><init>(Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;Ljava/util/Set;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 122
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public varargs unsubscribe(I[Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/profile/internal/diagnosisscheduler/DiagnosisScheduler;->unsubscribe(ILjava/util/Set;)V

    return-void
.end method
