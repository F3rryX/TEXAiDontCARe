.class public Lcom/texa/carelib/profile/internal/SerialProfile;
.super Lcom/texa/carelib/profile/internal/ProfileBase;
.source "SerialProfile.java"

# interfaces
.implements Lcom/texa/carelib/profile/ProfileTypeProxy;
.implements Lcom/texa/carelib/profile/internal/SerialProfileProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/profile/internal/SerialProfile$OutgoingMessageQueue;,
        Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;,
        Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;,
        Lcom/texa/carelib/profile/internal/SerialProfile$WriteFailedException;,
        Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTaskState;
    }
.end annotation


# static fields
.field private static final MAX_ERROR_RETRIES:I = 0x2

.field private static final MAX_TIMEOUT_RETRIES:I = 0x2

.field private static final MAX_WRITE_RETRIES:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SerialProfile"

.field private static final TIMEOUT_TIME:I = 0x1388


# instance fields
.field private final mCareAuthenticationProcedure:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;

.field private final mCareProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

.field private final mCommunication:Lcom/texa/carelib/communication/Communication;

.field private final mCommunicationPropertyChangeListener:Ljava/beans/PropertyChangeListener;

.field private mDataReaderTask:Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;

.field private mDataWriterTask:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;

.field private final mSerialCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/SerialCommandVerifier;

.field private final mSerialFileCarrierFacade:Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;

.field private final mSerialProfileCommandSubscriptionController:Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;

.field private final mSerialProfileMessageReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mUIHandler:Landroid/os/Handler;

.field private final mWorkingParameterConfiguration:Lcom/texa/carelib/profile/internal/SerialWorkingParameterConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/communication/Communication;)V
    .locals 3

    .line 63
    invoke-direct {p0}, Lcom/texa/carelib/profile/internal/ProfileBase;-><init>()V

    .line 471
    new-instance v0, Lcom/texa/carelib/profile/internal/SerialProfile$1;

    invoke-direct {v0, p0}, Lcom/texa/carelib/profile/internal/SerialProfile$1;-><init>(Lcom/texa/carelib/profile/internal/SerialProfile;)V

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mCommunicationPropertyChangeListener:Ljava/beans/PropertyChangeListener;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mSerialProfileMessageReceivers:Ljava/util/List;

    .line 65
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mUIHandler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mCommunication:Lcom/texa/carelib/communication/Communication;

    .line 68
    invoke-interface {p1, v0}, Lcom/texa/carelib/communication/Communication;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    .line 70
    new-instance p1, Lcom/texa/carelib/care/featureverifier/internal/SerialCommandVerifier;

    invoke-direct {p1, p0}, Lcom/texa/carelib/care/featureverifier/internal/SerialCommandVerifier;-><init>(Lcom/texa/carelib/profile/Profile;)V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mSerialCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/SerialCommandVerifier;

    .line 71
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->addProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V

    .line 73
    new-instance p1, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;

    invoke-direct {p1, p0}, Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;-><init>(Lcom/texa/carelib/profile/internal/SerialProfile;)V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mSerialFileCarrierFacade:Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;

    .line 74
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->addProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V

    .line 76
    new-instance p1, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;

    invoke-direct {p1, p0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;-><init>(Lcom/texa/carelib/profile/internal/SerialProfile;)V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mCareAuthenticationProcedure:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;

    .line 77
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->addProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V

    .line 79
    new-instance p1, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    invoke-direct {p1, p0}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;-><init>(Lcom/texa/carelib/profile/internal/SerialProfile;)V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mCareProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    .line 80
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->addProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V

    .line 82
    new-instance p1, Lcom/texa/carelib/profile/internal/SerialWorkingParameterConfiguration;

    invoke-direct {p1, p0}, Lcom/texa/carelib/profile/internal/SerialWorkingParameterConfiguration;-><init>(Lcom/texa/carelib/profile/internal/SerialProfile;)V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mWorkingParameterConfiguration:Lcom/texa/carelib/profile/internal/SerialWorkingParameterConfiguration;

    .line 83
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->addProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V

    .line 85
    new-instance p1, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;

    new-instance v0, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda3;-><init>(Lcom/texa/carelib/profile/internal/SerialProfile;)V

    invoke-direct {p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;-><init>(Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$NotificationListener;)V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mSerialProfileCommandSubscriptionController:Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;

    .line 90
    new-instance p1, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;

    invoke-direct {p1, p0}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;-><init>(Lcom/texa/carelib/profile/internal/SerialProfile;)V

    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mDataWriterTask:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;

    .line 91
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->start()V

    .line 93
    new-instance p1, Lcom/texa/carelib/profile/taskexecutor/internal/ThreadExecutor;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/texa/carelib/profile/taskexecutor/internal/ThreadExecutor;-><init>(Z)V

    invoke-static {p1}, Lcom/texa/carelib/profile/taskexecutor/TaskSynchronizer;->createInstance(Lcom/texa/carelib/profile/taskexecutor/CareExecutor;)V

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/profile/internal/SerialProfile;)Lcom/texa/carelib/communication/Communication;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mCommunication:Lcom/texa/carelib/communication/Communication;

    return-object p0
.end method

.method static synthetic access$101(Lcom/texa/carelib/profile/internal/SerialProfile;Ljava/beans/PropertyChangeEvent;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/texa/carelib/profile/internal/ProfileBase;->onCommunicationStatusChanged(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method static synthetic access$201(Lcom/texa/carelib/profile/internal/SerialProfile;Ljava/beans/PropertyChangeEvent;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/texa/carelib/profile/internal/ProfileBase;->onCommunicationStatusChanged(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/texa/carelib/profile/internal/SerialProfile;)Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mDataReaderTask:Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;

    return-object p0
.end method

.method static synthetic access$302(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;)Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mDataReaderTask:Lcom/texa/carelib/profile/internal/SerialProfile$DataReaderTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/texa/carelib/profile/internal/SerialProfile;)Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mDataWriterTask:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;

    return-object p0
.end method

.method static synthetic access$500(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/internal/SerialProfile;->forwardMessage(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method static synthetic access$600(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/carelib/profile/internal/SerialProfile;->onResponseMessageReceived(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method static synthetic access$700(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/core/CareError;
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->getError(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/core/CareError;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/carelib/profile/internal/SerialProfile;->onErrorMessageReceived(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method static synthetic access$900(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/communication/Message;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->onNotificationReceived(Lcom/texa/carelib/communication/Message;)V

    return-void
.end method

.method private addSerialProfileMessageListener(Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;)V
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mSerialProfileMessageReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mSerialProfileMessageReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private beginAuthentication(Lcom/texa/carelib/communication/DeviceInfo;Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            "Ljava/lang/String;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 259
    new-instance v0, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/communication/DeviceInfo;Lcom/texa/carelib/core/Callback;)V

    .line 277
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getCareAuthenticationProcedure()Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;->beginAuthentication(Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V

    const/4 p1, 0x0

    .line 278
    invoke-virtual {p0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->setReady(Z)V

    return-void
.end method

.method private fireMessageReceived(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 8

    .line 305
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mSerialProfileMessageReceivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;

    .line 306
    iget-object v2, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mSerialProfileMessageReceivers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 308
    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 311
    :try_start_0
    invoke-interface {v4, p0, p1, p2}, Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;->onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 313
    sget-object v6, Lcom/texa/carelib/profile/internal/SerialProfile;->TAG:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    const-string v4, "Forward message to class %s generate exception."

    invoke-static {v6, v5, v4, v7}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private forwardMessage(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/internal/SerialProfile;->fireMessageReceived(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    return-void
.end method

.method private getAuthenticationPin(Lcom/texa/carelib/communication/DeviceInfo;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/ProfileDelegate;->getPassword(Lcom/texa/carelib/communication/DeviceInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getError(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/core/CareError;
    .locals 7

    .line 347
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    .line 348
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 353
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/communication/Commands;->getName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const-string v0, " CommandID=0x%X(%s)"

    invoke-static {v2, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/texa/carelib/communication/CommandStatus;->getStatusName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, " Status=0x%X(%s)"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    new-instance v0, Lcom/texa/carelib/core/CareError$Builder;

    const/16 v2, 0xb

    invoke-direct {v0, v5, v2}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    const/16 v3, 0xa

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    const/16 v2, 0x7e

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    .line 461
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_unknown:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 377
    :pswitch_0
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_external_flash:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 453
    :pswitch_1
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_wrong_data_manager_parameter:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 449
    :pswitch_2
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_file_update_manager_write_error:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 445
    :pswitch_3
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_invalid_block_size_error:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 441
    :pswitch_4
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_invalid_file_type_error:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 437
    :pswitch_5
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_file_offset_error:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 389
    :pswitch_6
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_file_check_failed:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 393
    :pswitch_7
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_file_not_available:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 401
    :pswitch_8
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_invalid_file_id:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 369
    :pswitch_9
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_diagnosis_not_available:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 385
    :pswitch_a
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_index_out_of_range:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 417
    :pswitch_b
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_parameter_not_admitted:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 457
    :pswitch_c
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_too_much_subscriptions:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 405
    :pswitch_d
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_not_admitted_diagnosis_mode:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 413
    :pswitch_e
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_not_supported_diagnosis_mode:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 365
    :pswitch_f
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_diagnosis_module_busy:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 425
    :pswitch_10
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_system_resource_warning:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 361
    :pswitch_11
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_authentication_error:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 433
    :pswitch_12
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_vci_communication_error:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 421
    :pswitch_13
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_protection_error:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto/16 :goto_0

    .line 409
    :pswitch_14
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_not_available_in_current_diagnosis_mode:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto :goto_0

    .line 397
    :pswitch_15
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_generic_fail:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto :goto_0

    .line 429
    :cond_1
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_unknown_command:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto :goto_0

    .line 381
    :cond_2
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_pairing_must_be_repeated:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    goto :goto_0

    .line 373
    :cond_3
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/texa/carelib/profile/R$string;->error_command_status_no_disk_space:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    :goto_0
    const-string v1, "EXTRA_COMMAND_STATUS#CommandStatus"

    .line 466
    invoke-virtual {v0, v1, p1}, Lcom/texa/carelib/core/CareError$Builder;->putExtra(Ljava/lang/String;I)Lcom/texa/carelib/core/CareError$Builder;

    .line 467
    invoke-virtual {v0}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
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

.method private isAuthenticationCommand(I)Z
    .locals 1

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private onErrorMessageReceived(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    const/16 v2, 0xb

    .line 160
    invoke-virtual {p3}, Lcom/texa/carelib/core/CareError;->getErrorCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 161
    sget-object v2, Lcom/texa/carelib/profile/internal/SerialProfile;->TAG:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const-string v4, "Received from Dongle(with status error): %s"

    invoke-static {v2, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 163
    :cond_0
    sget-object v2, Lcom/texa/carelib/profile/internal/SerialProfile;->TAG:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/texa/carelib/core/CareError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "Transmission error occurred: %s"

    invoke-static {v2, v4, v3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getStatus()I

    move-result v2

    const/4 v3, 0x5

    if-ne v3, v2, :cond_4

    .line 170
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/texa/carelib/profile/internal/SerialProfile;->isAuthenticationCommand(I)Z

    move-result p3

    if-nez p3, :cond_3

    .line 172
    iget-object p2, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {p2}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 175
    :try_start_0
    invoke-direct {p0, p2}, Lcom/texa/carelib/profile/internal/SerialProfile;->getAuthenticationPin(Lcom/texa/carelib/communication/DeviceInfo;)Ljava/lang/String;

    move-result-object p3

    .line 176
    invoke-static {p3}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 p3, 0x6

    invoke-direct {p1, v0, p3}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object p3

    invoke-virtual {p3}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/texa/carelib/profile/R$string;->error_authentication_no_pin:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->fireAuthenticationError(Lcom/texa/carelib/communication/DeviceInfo;Lcom/texa/carelib/core/CareError;)V

    goto :goto_1

    .line 179
    :cond_2
    new-instance v0, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda1;-><init>(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/communication/DeviceInfo;)V

    invoke-direct {p0, p2, p3, v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->beginAuthentication(Lcom/texa/carelib/communication/DeviceInfo;Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 191
    sget-object p2, Lcom/texa/carelib/profile/internal/SerialProfile;->TAG:Ljava/lang/String;

    new-array p3, v1, [Ljava/lang/Object;

    const-string v0, "Could not authenticate at this moment."

    invoke-static {p2, p1, v0, p3}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 196
    :cond_3
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialProfile;->TAG:Ljava/lang/String;

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    const-string p2, "CARe couldn\'t process the command %s. AUTHENTICATION IS REQUIRED"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    if-ne v0, v2, :cond_5

    .line 198
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getServiceProxy()Lcom/texa/carelib/webservices/ServiceProxy;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 199
    new-instance p3, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p2, p1}, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda2;-><init>(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/communication/Message;)V

    .line 212
    invoke-virtual {p0, p3}, Lcom/texa/carelib/profile/internal/SerialProfile;->beginProtectionSession(Lcom/texa/carelib/core/Callback;)Z

    goto :goto_1

    .line 215
    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/profile/internal/SerialProfile;->forwardMessage(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private onNotificationReceived(Lcom/texa/carelib/communication/Message;)V
    .locals 2

    .line 220
    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    const/16 v1, 0x71

    if-ne v1, v0, :cond_0

    .line 223
    new-instance v0, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v0, p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>(Lcom/texa/carelib/communication/Message;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/texa/carelib/communication/Message$Builder;->setStatus(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->forwardMessage(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mSerialProfileCommandSubscriptionController:Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;

    invoke-virtual {p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->onCommandNotify(I)V

    :goto_0
    return-void
.end method

.method private onResponseMessageReceived(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 230
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result p1

    .line 233
    invoke-direct {p0, p2, p3}, Lcom/texa/carelib/profile/internal/SerialProfile;->forwardMessage(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    const/16 p3, 0x4e

    if-ne p3, p1, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getServiceProxy()Lcom/texa/carelib/webservices/ServiceProxy;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getServiceProxy()Lcom/texa/carelib/webservices/ServiceProxy;

    move-result-object p1

    invoke-static {p2}, Lcom/texa/carelib/profile/internal/parser/GetSessionIDPacketParser;->parse(Lcom/texa/carelib/communication/Message;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/texa/carelib/webservices/ServiceProxy;->setSessionID(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private removeSerialProfileMessageListener(Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;)V
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mSerialProfileMessageReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V
    .locals 1

    .line 564
    instance-of v0, p1, Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;

    if-eqz v0, :cond_0

    .line 565
    move-object v0, p1

    check-cast v0, Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;

    invoke-direct {p0, v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->addSerialProfileMessageListener(Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;)V

    .line 568
    :cond_0
    invoke-super {p0, p1}, Lcom/texa/carelib/profile/internal/ProfileBase;->addProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V

    return-void
.end method

.method public beginProtectionSession(Lcom/texa/carelib/core/Callback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;",
            ">;)Z"
        }
    .end annotation

    .line 144
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialProfile;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "beginProtectionSession"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getCareProtectionProcedure()Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;->beginProtection(Lcom/texa/carelib/core/Callback;)Z

    move-result p1

    return p1
.end method

.method public enableCommandSubscription(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 321
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mSerialProfileCommandSubscriptionController:Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;

    invoke-virtual {p1, p2}, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->subscribe(I)V

    goto :goto_0

    .line 323
    :cond_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mSerialProfileCommandSubscriptionController:Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;

    invoke-virtual {p1, p2}, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;->unsubscribe(I)V

    :goto_0
    return-void
.end method

.method public forceAuthentication(Lcom/texa/carelib/core/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 250
    invoke-direct {p0, v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getAuthenticationPin(Lcom/texa/carelib/communication/DeviceInfo;)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {v1}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    invoke-direct {p0, v0, v1, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->beginAuthentication(Lcom/texa/carelib/communication/DeviceInfo;Ljava/lang/String;Lcom/texa/carelib/core/Callback;)V

    return-void

    .line 252
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string v0, "Could not authenticate with empty authentication PIN."

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 247
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/CareLibException;

    const-string v0, "Could not authenticate at this moment. No dongle connected. Please, make sure you are connect to a dongle."

    invoke-direct {p1, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCareAuthenticationProcedure()Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mCareAuthenticationProcedure:Lcom/texa/carelib/profile/internal/SerialAuthenticationProcedure;

    return-object v0
.end method

.method public getCareProtectionProcedure()Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mCareProtectionProcedure:Lcom/texa/carelib/profile/internal/SerialProtectionProcedure;

    return-object v0
.end method

.method public getCommandVerifier()Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mSerialCommandVerifier:Lcom/texa/carelib/care/featureverifier/internal/SerialCommandVerifier;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mCommunication:Lcom/texa/carelib/communication/Communication;

    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSerialFileCarrier()Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mSerialFileCarrierFacade:Lcom/texa/carelib/profile/internal/filecarrier/SerialFileCarrierFacade;

    return-object v0
.end method

.method public getType()Lcom/texa/carelib/profile/ProfileType;
    .locals 1

    .line 559
    sget-object v0, Lcom/texa/carelib/profile/ProfileType;->SPP_BLUETOOTH:Lcom/texa/carelib/profile/ProfileType;

    return-object v0
.end method

.method public getWorkingParameterConfiguration()Lcom/texa/carelib/profile/internal/WorkingParameterConfiguration;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mWorkingParameterConfiguration:Lcom/texa/carelib/profile/internal/SerialWorkingParameterConfiguration;

    return-object v0
.end method

.method public synthetic lambda$beginAuthentication$4$com-texa-carelib-profile-internal-SerialProfile(Lcom/texa/carelib/communication/DeviceInfo;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;)V
    .locals 4

    .line 260
    invoke-virtual {p3}, Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 261
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialProfile;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Authentication procedure is completed successfully."

    invoke-static {p1, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    invoke-virtual {p0, v2}, Lcom/texa/carelib/profile/internal/SerialProfile;->setReady(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->loadAllInfo()V

    goto :goto_0

    .line 265
    :cond_0
    sget-object v0, Lcom/texa/carelib/profile/internal/SerialProfile;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Authentication failed. Error=%s"

    invoke-static {v0, v1, v2}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    invoke-virtual {p3}, Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->fireAuthenticationError(Lcom/texa/carelib/communication/DeviceInfo;Lcom/texa/carelib/core/CareError;)V

    .line 270
    :goto_0
    iget-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p3}, Lcom/texa/carelib/profile/internal/SerialProfile$$ExternalSyntheticLambda4;-><init>(Lcom/texa/carelib/profile/internal/SerialProfile;Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$new$0$com-texa-carelib-profile-internal-SerialProfile(Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$MessageNotificationEvent;)V
    .locals 2

    .line 86
    new-instance v0, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$MessageNotificationEvent;->getCommandId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    .line 87
    invoke-virtual {p1}, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$MessageNotificationEvent;->setConsumed()V

    return-void
.end method

.method public synthetic lambda$null$3$com-texa-carelib-profile-internal-SerialProfile(Lcom/texa/carelib/core/Callback;Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 272
    new-instance v0, Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;

    invoke-virtual {p2}, Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    invoke-interface {p1, v0}, Lcom/texa/carelib/core/Callback;->onCompleted(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onErrorMessageReceived$1$com-texa-carelib-profile-internal-SerialProfile(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/communication/DeviceInfo;Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;)V
    .locals 2

    .line 180
    invoke-virtual {p3}, Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p3

    if-nez p3, :cond_0

    .line 181
    sget-object p2, Lcom/texa/carelib/profile/internal/SerialProfile;->TAG:Ljava/lang/String;

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    const-string v1, "Authentication completed!"

    invoke-static {p2, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p0, p1, p3}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;Z)V

    goto :goto_0

    .line 185
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/CareError$Builder;

    const/4 p3, 0x1

    const/4 v0, 0x6

    invoke-direct {p1, p3, v0}, Lcom/texa/carelib/core/CareError$Builder;-><init>(II)V

    invoke-virtual {p0}, Lcom/texa/carelib/profile/internal/SerialProfile;->getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;

    move-result-object p3

    invoke-virtual {p3}, Lcom/texa/carelib/profile/ProfileDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/texa/carelib/profile/R$string;->error_authentication_no_pin:I

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/texa/carelib/core/CareError$Builder;->setMessage(Ljava/lang/String;)Lcom/texa/carelib/core/CareError$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/core/CareError$Builder;->build()Lcom/texa/carelib/core/CareError;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->fireAuthenticationError(Lcom/texa/carelib/communication/DeviceInfo;Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onErrorMessageReceived$2$com-texa-carelib-profile-internal-SerialProfile(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;)V
    .locals 2

    .line 200
    invoke-virtual {p3}, Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 201
    sget-object p2, Lcom/texa/carelib/profile/internal/SerialProfile;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Protection session fails!"

    invoke-static {p2, v1, v0}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    invoke-virtual {p3}, Lcom/texa/carelib/care/profile/CareProxyProtectionSessionCompletedEvent;->getError()Lcom/texa/carelib/core/CareError;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/texa/carelib/profile/internal/SerialProfile;->forwardMessage(Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 206
    :cond_0
    sget-object p1, Lcom/texa/carelib/profile/internal/SerialProfile;->TAG:Ljava/lang/String;

    new-array p3, v1, [Ljava/lang/Object;

    const-string v0, "Protection session completed!"

    invoke-static {p1, v0, p3}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    invoke-virtual {p0, p2, v1}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;Z)V

    :goto_0
    return-void
.end method

.method public removeProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V
    .locals 1

    .line 573
    invoke-super {p0, p1}, Lcom/texa/carelib/profile/internal/ProfileBase;->removeProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V

    .line 574
    instance-of v0, p1, Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;

    if-eqz v0, :cond_0

    .line 575
    check-cast p1, Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;

    invoke-direct {p0, p1}, Lcom/texa/carelib/profile/internal/SerialProfile;->removeSerialProfileMessageListener(Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;)V

    :cond_0
    return-void
.end method

.method public sendMessage(Lcom/texa/carelib/communication/Message;)V
    .locals 1

    const/4 v0, 0x1

    .line 333
    invoke-virtual {p0, p1, v0}, Lcom/texa/carelib/profile/internal/SerialProfile;->sendMessage(Lcom/texa/carelib/communication/Message;Z)V

    return-void
.end method

.method public sendMessage(Lcom/texa/carelib/communication/Message;Z)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mDataWriterTask:Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/internal/SerialProfile$DataWriterTask;->sendMessage(Lcom/texa/carelib/communication/Message;Z)V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mCommunication:Lcom/texa/carelib/communication/Communication;

    iget-object v1, p0, Lcom/texa/carelib/profile/internal/SerialProfile;->mCommunicationPropertyChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Lcom/texa/carelib/communication/Communication;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method
