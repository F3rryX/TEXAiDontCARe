.class public Lcom/texa/careapp/model/DongleDataManager;
.super Ljava/lang/Object;
.source "DongleDataManager.java"


# instance fields
.field private final mCommunicationPropertyChangeListener:Ljava/beans/PropertyChangeListener;

.field private mDongleModelPublishSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/texa/careapp/model/DongleModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/model/DongleDataManager;->mDongleModelPublishSubject:Lio/reactivex/subjects/PublishSubject;

    .line 33
    new-instance v0, Lcom/texa/careapp/model/DongleDataManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/model/DongleDataManager$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/model/DongleDataManager;)V

    iput-object v0, p0, Lcom/texa/careapp/model/DongleDataManager;->mCommunicationPropertyChangeListener:Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method private getLastConnectedDongle()Lcom/texa/careapp/model/DongleModel;
    .locals 2

    .line 105
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "LastConnection DESC"

    .line 106
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleModel;

    return-object v0
.end method


# virtual methods
.method public buildDeviceInfoList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/carelib/communication/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/DongleModel;

    .line 172
    new-instance v3, Lcom/texa/carelib/communication/DeviceInfo;

    invoke-virtual {v2}, Lcom/texa/careapp/model/DongleModel;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/texa/carelib/communication/DeviceInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/texa/carelib/communication/DeviceInfo;->builder()Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/texa/careapp/model/DongleModel;->getHwid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setName(Ljava/lang/String;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v2

    const/16 v3, 0xa

    .line 173
    invoke-virtual {v2, v3}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setBondState(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setRSSI(Ljava/lang/Integer;)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->setType(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/texa/carelib/communication/DeviceInfo$Builder;->build()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object v2

    .line 174
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public count()I
    .locals 2

    .line 164
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->count()I

    move-result v0

    return v0
.end method

.method public delete()V
    .locals 2

    .line 181
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public deleteDongleByHwid(Ljava/lang/String;)V
    .locals 3

    .line 185
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "hwid = ? "

    invoke-virtual {v0, p1, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/DongleModel;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDongleByHwid(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/DongleModel;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "hwid = ? "

    invoke-virtual {v0, p1, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDongleByMacAddress(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/DongleModel;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "macAddress = ? "

    invoke-virtual {v0, p1, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDongleModel()Lcom/texa/careapp/model/DongleModel;
    .locals 5

    .line 81
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 82
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "SelectDongle=?"

    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v2, "LastConnection DESC"

    .line 83
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleModel;

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    .line 97
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "currentDongle %s"

    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/texa/careapp/model/DongleDataManager;->getLastConnectedDongle()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLastConnectionDate()Ljava/util/Date;
    .locals 3

    .line 197
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "LastConnection DESC"

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleModel;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getLastConnection()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->getLastConnection()Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v0
.end method

.method public getUnselectedDongleModel()Lcom/texa/careapp/model/DongleModel;
    .locals 4

    .line 111
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "LastConnection DESC"

    .line 112
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 116
    invoke-virtual {v0}, Lcom/texa/careapp/model/DongleModel;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "currentDongle %s"

    invoke-static {v2, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public isDongleInDb(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 193
    new-instance v2, Lcom/activeandroid/query/Select;

    invoke-direct {v2}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v3, Lcom/texa/careapp/model/DongleModel;

    invoke-virtual {v2, v3}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string p1, "hwid = ? "

    invoke-virtual {v2, p1, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/From;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$new$0$com-texa-careapp-model-DongleDataManager(Ljava/beans/PropertyChangeEvent;)V
    .locals 2

    .line 34
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/carelib/communication/Communication;

    .line 36
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.texa.carelib.communication.Communication#PROPERTY_STATUS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object p1

    sget-object v1, Lcom/texa/carelib/communication/CommunicationStatus;->CONNECTED:Lcom/texa/carelib/communication/CommunicationStatus;

    if-ne p1, v1, :cond_0

    .line 38
    invoke-interface {v0}, Lcom/texa/carelib/communication/Communication;->getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/DongleDataManager;->onCareConnected(Lcom/texa/carelib/communication/DeviceInfo;)V

    :cond_0
    return-void
.end method

.method observeCurrentDongle()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/DongleModel;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/texa/careapp/model/DongleDataManager;->getDongleModel()Lcom/texa/careapp/model/DongleModel;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/texa/careapp/model/DongleDataManager;->mDongleModelPublishSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v1, v0}, Lio/reactivex/subjects/PublishSubject;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method protected onCareConnected(Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 3

    .line 50
    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "DeviceInfo.getName() == NULL"

    .line 52
    invoke-static {v0, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/DongleDataManager;->setDongleLikeSelectedWithMac(Ljava/lang/String;)Lcom/texa/careapp/model/DongleModel;

    move-result-object p1

    if-nez p1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "DongleDataManager#onCareConnected Hwid not found"

    .line 58
    invoke-static {v0, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 60
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/DongleModel;->setLastConnection(Ljava/util/Date;)V

    const/4 v1, 0x0

    .line 63
    :try_start_0
    invoke-static {p1, v1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J
    :try_end_0
    .catch Lcom/texa/careapp/exceptions/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Could not save dongle model in database."

    .line 65
    invoke-static {v1, v2, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/texa/careapp/model/DongleDataManager;->mDongleModelPublishSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public setDongleLikeSelectedWithHWID(Ljava/lang/String;)Lcom/texa/careapp/model/DongleModel;
    .locals 4

    .line 132
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 134
    :cond_0
    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleByHwid(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "this dongleModel not exist in DB (With HWID): %s"

    .line 136
    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 139
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/DongleModel;

    .line 141
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->setDongleLikeSelected()V

    .line 142
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->save()Ljava/lang/Long;

    return-object p1
.end method

.method public setDongleLikeSelectedWithMac(Ljava/lang/String;)Lcom/texa/careapp/model/DongleModel;
    .locals 4

    .line 148
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 150
    :cond_0
    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/DongleDataManager;->getDongleByMacAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "this dongleModel not exist in DB (With MAC): %s"

    .line 152
    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 155
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/DongleModel;

    .line 157
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->setDongleLikeSelected()V

    .line 158
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleModel;->save()Ljava/lang/Long;

    return-object p1
.end method

.method public startConnectionListener(Lcom/texa/carelib/communication/Communication;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/texa/careapp/model/DongleDataManager;->mCommunicationPropertyChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {p1, v0}, Lcom/texa/carelib/communication/Communication;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    return-void
.end method

.method public stopConnectionListener(Lcom/texa/carelib/communication/Communication;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/texa/careapp/model/DongleDataManager;->mCommunicationPropertyChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-interface {p1, v0}, Lcom/texa/carelib/communication/Communication;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method
