.class public Lcom/texa/careapp/utils/ServiceDataManager;
.super Ljava/lang/Object;
.source "ServiceDataManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ServiceDataManger"


# instance fields
.field public final AVAILABLE:I

.field public final NO_SERVICES:I

.field public final PENDING:I

.field public final PURCHASED_ACCEPTED_BUT_NOT_CONNECTED:I

.field public final PURCHASED_BLOCKING:I

.field public final PURCHASED_NOT_ACCEPTED:I

.field public final PURCHASED_OK:I

.field public final PURCHASED_WARNING:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/texa/careapp/utils/ServiceDataManager;->NO_SERVICES:I

    const/4 v0, 0x2

    .line 34
    iput v0, p0, Lcom/texa/careapp/utils/ServiceDataManager;->PURCHASED_ACCEPTED_BUT_NOT_CONNECTED:I

    const/4 v0, 0x3

    .line 35
    iput v0, p0, Lcom/texa/careapp/utils/ServiceDataManager;->PURCHASED_OK:I

    const/4 v0, 0x4

    .line 36
    iput v0, p0, Lcom/texa/careapp/utils/ServiceDataManager;->PURCHASED_NOT_ACCEPTED:I

    const/4 v0, 0x5

    .line 37
    iput v0, p0, Lcom/texa/careapp/utils/ServiceDataManager;->PENDING:I

    const/4 v0, 0x6

    .line 38
    iput v0, p0, Lcom/texa/careapp/utils/ServiceDataManager;->AVAILABLE:I

    const/4 v0, 0x7

    .line 39
    iput v0, p0, Lcom/texa/careapp/utils/ServiceDataManager;->PURCHASED_WARNING:I

    const/16 v0, 0x8

    .line 40
    iput v0, p0, Lcom/texa/careapp/utils/ServiceDataManager;->PURCHASED_BLOCKING:I

    return-void
.end method

.method private checkActiveService(Lcom/texa/careapp/checks/Check$Result;Lcom/texa/careapp/model/ServiceDataModel;)Ljava/lang/Integer;
    .locals 2

    .line 267
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->isTermsAccepted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/texa/careapp/checks/Check$Result;->OK:Lcom/texa/careapp/checks/Check$Result;

    if-ne p1, v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, " PURCHASED_OK"

    .line 268
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 271
    :cond_0
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->isTermsAccepted()Z

    move-result p2

    const-string v0, " PURCHASED_WARNING"

    if-nez p2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    .line 272
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 273
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 276
    :cond_1
    sget-object p2, Lcom/texa/careapp/checks/Check$Result;->WARNING:Lcom/texa/careapp/checks/Check$Result;

    if-ne p1, p2, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    .line 277
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x7

    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, " PURCHASED_BLOCKING"

    .line 280
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x8

    .line 281
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public checkServiceAndDongleStatus(Lcom/texa/careapp/checks/Check$Result;Lcom/texa/careapp/model/ServiceDataModel;)Ljava/lang/Integer;
    .locals 6

    const-string v0, "ServiceDataManger"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 229
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez p2, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const-string p2, "%s NO_SERVICES -> serviceDataModel == null"

    .line 228
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 232
    :cond_0
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object v4

    sget-object v5, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->PENDING:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-ne v4, v5, :cond_2

    .line 233
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->isTermsAccepted()Z

    move-result p1

    if-nez p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const-string p2, "%s PENDING_NOT_ACCEPTED -> inconsistent value"

    .line 234
    invoke-static {p2, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const-string p2, "%s PENDING"

    .line 238
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x5

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 242
    :cond_2
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object v4

    sget-object v5, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->AVAILABLE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-ne v4, v5, :cond_4

    .line 243
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->isTermsAccepted()Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const-string p2, "%s AVAILABLE_ACCEPTED -> inconsistent value"

    .line 244
    invoke-static {p2, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const-string p2, "%s AVAILABLE"

    .line 248
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x6

    .line 249
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 252
    :cond_4
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v4

    sget-object v5, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v4, v5, :cond_5

    .line 253
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object v4

    sget-object v5, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-ne v4, v5, :cond_5

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/utils/ServiceDataManager;->checkActiveService(Lcom/texa/careapp/checks/Check$Result;Lcom/texa/careapp/model/ServiceDataModel;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 257
    :cond_5
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object v4

    sget-object v5, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-ne v4, v5, :cond_6

    .line 258
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->getAllowance()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->getAllowance()Ljava/util/Date;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/utils/ServiceDataManager;->checkActiveService(Lcom/texa/careapp/checks/Check$Result;Lcom/texa/careapp/model/ServiceDataModel;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_6
    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const-string p2, "%s ERROR -> inconsistent value"

    .line 262
    invoke-static {p2, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3
.end method

.method public filterActiveSosServicesForHwId(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/ServiceDataModel;

    .line 199
    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel;->getHwid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel;->getHwid()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 201
    :cond_1
    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel;->isSosType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public filterSosServicesForHwId(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;"
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/ServiceDataModel;

    .line 215
    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel;->getHwid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel;->getHwid()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 217
    :cond_1
    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel;->isSosType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getActiveGenericSosServices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "status=?"

    .line 123
    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    aput-object v3, v2, v4

    const-string v3, "(service_type = ? "

    .line 124
    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    aput-object v2, v1, v4

    const-string v2, "service_type = ? )"

    .line 125
    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->or(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActiveSosServices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "status=?"

    .line 116
    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    aput-object v2, v1, v4

    const-string v2, "service_type = ? "

    .line 117
    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableSosLight(Lcom/texa/careapp/model/UserModel;)Lcom/texa/careapp/model/ServiceDataModel;
    .locals 4

    .line 307
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 308
    invoke-virtual {p1}, Lcom/texa/careapp/model/UserModel;->getId()Ljava/lang/Long;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo p1, "user = ?"

    invoke-virtual {v0, p1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->AVAILABLE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    aput-object v1, v0, v3

    const-string v1, "status = ?"

    .line 309
    invoke-virtual {p1, v1, v0}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 310
    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/ServiceDataModel;

    return-object p1
.end method

.method public getAvailableSosPlus(Ljava/lang/String;)Lcom/texa/careapp/model/ServiceDataModel;
    .locals 4

    .line 287
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "hwid = ?"

    .line 288
    invoke-virtual {v0, p1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->AVAILABLE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    aput-object v1, v0, v3

    const-string v1, "status = ?"

    .line 289
    invoke-virtual {p1, v1, v0}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    const-string v0, "trial DESC"

    .line 291
    invoke-virtual {p1, v0}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 292
    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/ServiceDataModel;

    return-object p1
.end method

.method public getServiceByActiveAndroidId(J)Lcom/texa/careapp/model/ServiceDataModel;
    .locals 2

    .line 301
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 303
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "ServicesData.id = ?"

    .line 302
    invoke-virtual {v0, p1, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 303
    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/ServiceDataModel;

    return-object p1
.end method

.method public getServiceByUid(Ljava/lang/String;)Lcom/texa/careapp/model/ServiceDataModel;
    .locals 3

    .line 297
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServicesData.uid = ?"

    invoke-virtual {v0, p1, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/ServiceDataModel;

    return-object p1
.end method

.method public getServicePriority(Ljava/util/List;)Lcom/texa/careapp/model/ServiceDataModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;)",
            "Lcom/texa/careapp/model/ServiceDataModel;"
        }
    .end annotation

    .line 161
    new-instance v0, Lcom/texa/careapp/utils/ServiceDataComparator;

    invoke-direct {v0}, Lcom/texa/careapp/utils/ServiceDataComparator;-><init>()V

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/ServiceDataComparator;->sort(Ljava/util/List;)V

    .line 164
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/ServiceDataModel;

    .line 165
    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-ne v2, v3, :cond_0

    .line 166
    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel;->isTermsAccepted()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 172
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/ServiceDataModel;

    .line 173
    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-ne v2, v3, :cond_2

    .line 174
    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel;->isTermsAccepted()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 180
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/texa/careapp/model/ServiceDataModel;

    .line 181
    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object v2

    sget-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->PENDING:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-ne v2, v3, :cond_4

    return-object v1

    .line 186
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ServiceDataModel;

    .line 187
    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object v1

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->AVAILABLE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-ne v1, v2, :cond_6

    return-object v0

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSosServices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUUIDsActiveGenericSosServices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "status=?"

    .line 132
    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    aput-object v3, v2, v4

    const-string v3, "(service_type = ? "

    .line 133
    invoke-virtual {v0, v3, v2}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    aput-object v2, v1, v4

    const-string v2, "service_type = ? )"

    .line 134
    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->or(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/texa/careapp/model/ServiceDataModel;

    .line 140
    invoke-virtual {v2}, Lcom/texa/careapp/model/ServiceDataModel;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public saveServiceData(Lcom/texa/careapp/model/ServiceDataModel;)Lcom/texa/careapp/model/ServiceDataModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getHwid()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 87
    :cond_0
    new-instance v2, Lcom/activeandroid/query/Select;

    invoke-direct {v2}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v3, Lcom/texa/careapp/model/DongleModel;

    .line 88
    invoke-virtual {v2, v3}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, ""

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v5

    :goto_0
    const/4 v6, 0x0

    aput-object v0, v4, v6

    const-string v0, "hwid = ? "

    .line 89
    invoke-virtual {v2, v0, v4}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/DongleModel;

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/ServiceDataModel;->setDongle(Lcom/texa/careapp/model/DongleModel;)V

    .line 95
    :cond_2
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lcom/texa/careapp/model/UserModel;

    .line 96
    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v5

    :goto_1
    aput-object v1, v2, v6

    const-string/jumbo v1, "uid = ?"

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/UserModel;

    if-eqz v0, :cond_4

    .line 100
    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/ServiceDataModel;->setUser(Lcom/texa/careapp/model/UserModel;)V

    .line 103
    :cond_4
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getUid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getHwid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getHwid()Ljava/lang/String;

    move-result-object v5

    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/ServiceDataModel;->setUid(Ljava/lang/String;)V

    .line 108
    :cond_6
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->save()Ljava/lang/Long;

    :cond_7
    return-object p1
.end method

.method public saveServiceData(Lcom/texa/careapp/networking/response/ServiceListResponse;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/networking/response/ServiceListResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ServiceDataModel;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->beginTransaction()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 48
    :try_start_0
    new-instance v2, Lcom/activeandroid/query/Delete;

    invoke-direct {v2}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v3, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v2, v3}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v2

    invoke-virtual {v2}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/ServiceListResponse;->getList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, " serviceListResponse.getList() == NULL "

    new-array v2, v1, [Ljava/lang/Object;

    .line 52
    invoke-static {p1, v2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    return-object p1

    .line 56
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/ServiceDataModel;

    const-string v4, "TEST_SOS"

    .line 57
    invoke-virtual {v3}, Lcom/texa/careapp/model/ServiceDataModel;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0, v3}, Lcom/texa/careapp/utils/ServiceDataManager;->saveServiceData(Lcom/texa/careapp/model/ServiceDataModel;)Lcom/texa/careapp/model/ServiceDataModel;

    move-result-object v3

    .line 59
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 62
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 63
    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 70
    :cond_3
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_2
    const-string v2, "cannot save service data"

    new-array v1, v1, [Ljava/lang/Object;

    .line 72
    invoke-static {p1, v2, v1}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :goto_2
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    return-object v0

    :goto_3
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    .line 75
    throw p1
.end method
