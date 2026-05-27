.class public Lcom/texa/careapp/checks/ChecksFactory;
.super Ljava/lang/Object;
.source "ChecksFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/checks/ChecksFactory$CheckType;
    }
.end annotation


# instance fields
.field private mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

.field private mContext:Landroid/content/Context;

.field private mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

.field private mReactiveLocationProvider:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

.field private mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

.field private mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/texa/careapp/utils/UserDataManager;Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/model/DongleDataManager;Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;Lcom/texa/careapp/utils/ServiceDataManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/texa/careapp/checks/ChecksFactory;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/texa/careapp/checks/ChecksFactory;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    .line 33
    iput-object p3, p0, Lcom/texa/careapp/checks/ChecksFactory;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    .line 34
    iput-object p4, p0, Lcom/texa/careapp/checks/ChecksFactory;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    .line 35
    iput-object p5, p0, Lcom/texa/careapp/checks/ChecksFactory;->mReactiveLocationProvider:Lpl/charmas/android/reactivelocation2/ReactiveLocationProvider;

    .line 36
    iput-object p6, p0, Lcom/texa/careapp/checks/ChecksFactory;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    return-void
.end method


# virtual methods
.method public getCheck(Lcom/texa/careapp/checks/ChecksFactory$CheckType;)Lcom/texa/careapp/checks/Check;
    .locals 2

    .line 40
    sget-object v0, Lcom/texa/careapp/checks/ChecksFactory$1;->$SwitchMap$com$texa$careapp$checks$ChecksFactory$CheckType:[I

    invoke-virtual {p1}, Lcom/texa/careapp/checks/ChecksFactory$CheckType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "checkType not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :pswitch_0
    new-instance p1, Lcom/texa/careapp/checks/CheckBluetooth;

    iget-object v0, p0, Lcom/texa/careapp/checks/ChecksFactory;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/texa/careapp/checks/CheckBluetooth;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 50
    :pswitch_1
    new-instance p1, Lcom/texa/careapp/checks/CheckNetworkConnection;

    iget-object v0, p0, Lcom/texa/careapp/checks/ChecksFactory;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/texa/careapp/checks/CheckNetworkConnection;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 48
    :pswitch_2
    new-instance p1, Lcom/texa/careapp/checks/CheckCurrentService;

    iget-object v0, p0, Lcom/texa/careapp/checks/ChecksFactory;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    iget-object v1, p0, Lcom/texa/careapp/checks/ChecksFactory;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-direct {p1, v0, v1}, Lcom/texa/careapp/checks/CheckCurrentService;-><init>(Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/utils/ServiceDataManager;)V

    return-object p1

    .line 46
    :pswitch_3
    new-instance p1, Lcom/texa/careapp/checks/CheckCareConnection;

    iget-object v0, p0, Lcom/texa/careapp/checks/ChecksFactory;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    iget-object v1, p0, Lcom/texa/careapp/checks/ChecksFactory;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-direct {p1, v0, v1}, Lcom/texa/careapp/checks/CheckCareConnection;-><init>(Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/model/DongleDataManager;)V

    return-object p1

    .line 44
    :pswitch_4
    new-instance p1, Lcom/texa/careapp/checks/CheckGps;

    iget-object v0, p0, Lcom/texa/careapp/checks/ChecksFactory;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/texa/careapp/checks/CheckGps;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 42
    :pswitch_5
    new-instance p1, Lcom/texa/careapp/checks/CheckPhoneNumber;

    iget-object v0, p0, Lcom/texa/careapp/checks/ChecksFactory;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/texa/careapp/checks/CheckPhoneNumber;-><init>(Lcom/texa/careapp/model/UserModel;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public newCheckBluetooth()Lcom/texa/careapp/checks/Check;
    .locals 2

    .line 79
    new-instance v0, Lcom/texa/careapp/checks/CheckBluetooth;

    iget-object v1, p0, Lcom/texa/careapp/checks/ChecksFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/texa/careapp/checks/CheckBluetooth;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newCheckCareConnection()Lcom/texa/careapp/checks/Check;
    .locals 3

    .line 67
    new-instance v0, Lcom/texa/careapp/checks/CheckCareConnection;

    iget-object v1, p0, Lcom/texa/careapp/checks/ChecksFactory;->mCommunicationObservable:Lcom/texa/careapp/carelib/CommunicationObservable;

    iget-object v2, p0, Lcom/texa/careapp/checks/ChecksFactory;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/checks/CheckCareConnection;-><init>(Lcom/texa/careapp/carelib/CommunicationObservable;Lcom/texa/careapp/model/DongleDataManager;)V

    return-object v0
.end method

.method public newCheckCurrentService()Lcom/texa/careapp/checks/Check;
    .locals 3

    .line 71
    new-instance v0, Lcom/texa/careapp/checks/CheckCurrentService;

    iget-object v1, p0, Lcom/texa/careapp/checks/ChecksFactory;->mDongleDataManager:Lcom/texa/careapp/model/DongleDataManager;

    iget-object v2, p0, Lcom/texa/careapp/checks/ChecksFactory;->mServiceDataManager:Lcom/texa/careapp/utils/ServiceDataManager;

    invoke-direct {v0, v1, v2}, Lcom/texa/careapp/checks/CheckCurrentService;-><init>(Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/careapp/utils/ServiceDataManager;)V

    return-object v0
.end method

.method public newCheckGps()Lcom/texa/careapp/checks/Check;
    .locals 2

    .line 63
    new-instance v0, Lcom/texa/careapp/checks/CheckGps;

    iget-object v1, p0, Lcom/texa/careapp/checks/ChecksFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/texa/careapp/checks/CheckGps;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newCheckNetworkConnection()Lcom/texa/careapp/checks/Check;
    .locals 2

    .line 75
    new-instance v0, Lcom/texa/careapp/checks/CheckNetworkConnection;

    iget-object v1, p0, Lcom/texa/careapp/checks/ChecksFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/texa/careapp/checks/CheckNetworkConnection;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newCheckPhoneNumber()Lcom/texa/careapp/checks/Check;
    .locals 2

    .line 59
    new-instance v0, Lcom/texa/careapp/checks/CheckPhoneNumber;

    iget-object v1, p0, Lcom/texa/careapp/checks/ChecksFactory;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v1}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/texa/careapp/checks/CheckPhoneNumber;-><init>(Lcom/texa/careapp/model/UserModel;)V

    return-object v0
.end method
