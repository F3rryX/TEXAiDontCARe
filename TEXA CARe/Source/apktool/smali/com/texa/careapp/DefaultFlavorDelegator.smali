.class public abstract Lcom/texa/careapp/DefaultFlavorDelegator;
.super Ljava/lang/Object;
.source "DefaultFlavorDelegator.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/DefaultFlavorDelegator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isUserCellphone(Lcom/texa/careapp/model/ContactModel;)Z
    .locals 1

    .line 79
    invoke-virtual {p1}, Lcom/texa/careapp/model/ContactModel;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/texa/careapp/emergency/ContactType;->USER_CELLPHONE:Lcom/texa/careapp/emergency/ContactType;

    .line 80
    invoke-virtual {v0}, Lcom/texa/careapp/emergency/ContactType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/texa/careapp/model/ContactModel;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private reconnect(Lcom/texa/carelib/communication/Communication;Lcom/texa/careapp/model/DongleDataManager;I)V
    .locals 3

    .line 100
    invoke-virtual {p2}, Lcom/texa/careapp/model/DongleDataManager;->buildDeviceInfoList()Ljava/util/List;

    move-result-object p2

    :try_start_0
    const-string p3, "Communication status: %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 103
    invoke-interface {p1}, Lcom/texa/carelib/communication/Communication;->getStatus()Lcom/texa/carelib/communication/CommunicationStatus;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-interface {p1, p2}, Lcom/texa/carelib/communication/Communication;->reconnectToDevices(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Lcom/texa/carelib/core/CareLibException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public connectToDongle(Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/carelib/communication/Communication;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/utils/exceptions/CareException;
        }
    .end annotation

    .line 85
    invoke-static {p2}, Lcom/texa/careapp/utils/Utils;->isCareConnected(Lcom/texa/carelib/communication/Communication;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Already connected"

    .line 86
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/texa/careapp/model/DongleDataManager;->count()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    .line 94
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 95
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 96
    invoke-direct {p0, p2, p1, v1}, Lcom/texa/careapp/DefaultFlavorDelegator;->reconnect(Lcom/texa/carelib/communication/Communication;Lcom/texa/careapp/model/DongleDataManager;I)V

    :cond_1
    return-void

    .line 91
    :cond_2
    new-instance p1, Lcom/texa/careapp/utils/exceptions/CareException;

    const p2, 0x7f110a58

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/texa/careapp/utils/exceptions/CareException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public persistUserData(Lcom/texa/careapp/networking/response/UserResponse$UserData;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/networking/response/UserResponse$UserData;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/texa/careapp/model/UserModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcom/texa/careapp/model/UserModel;->from(Lcom/texa/careapp/networking/response/UserResponse$UserData;)Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    .line 55
    iget-object v1, p1, Lcom/texa/careapp/networking/response/UserResponse$UserData;->contactModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/ContactModel;

    .line 56
    invoke-direct {p0, v2}, Lcom/texa/careapp/DefaultFlavorDelegator;->isUserCellphone(Lcom/texa/careapp/model/ContactModel;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    invoke-virtual {v2, v0}, Lcom/texa/careapp/model/ContactModel;->setUser(Lcom/texa/careapp/model/UserModel;)V

    .line 60
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p1, Lcom/texa/careapp/networking/response/UserResponse$UserData;->termsModelList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/TermsModel;

    .line 65
    invoke-virtual {v1, v0}, Lcom/texa/careapp/model/TermsModel;->setUser(Lcom/texa/careapp/model/UserModel;)V

    .line 66
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    goto :goto_1

    .line 69
    :cond_2
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public provideTexaProfileDelegate(Landroid/content/Context;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/securepreferences/SecurePreferences;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)Lcom/texa/careapp/utils/TexaProfileDelegate;
    .locals 1

    .line 122
    new-instance v0, Lcom/texa/careapp/utils/TexaProfileDelegate;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/texa/careapp/utils/TexaProfileDelegate;-><init>(Landroid/content/Context;Lcom/texa/careapp/model/DongleDataManager;Lcom/texa/securepreferences/SecurePreferences;Lat/favre/lib/armadillo/ArmadilloSharedPreferences;)V

    return-object v0
.end method
