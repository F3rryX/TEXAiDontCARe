.class public Lcom/texa/careapp/model/ServiceDataModel;
.super Lcom/activeandroid/Model;
.source "ServiceDataModel.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "ServicesData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;,
        Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;
    }
.end annotation


# static fields
.field public static final COLUMN_ACTIVATION:Ljava/lang/String; = "activation"

.field public static final COLUMN_ALLOWANCE_DATE:Ljava/lang/String; = "allowance"

.field public static final COLUMN_DONGLE:Ljava/lang/String; = "dongle"

.field public static final COLUMN_EXPIRATION:Ljava/lang/String; = "expiration"

.field public static final COLUMN_PURCHASE_GROUP:Ljava/lang/String; = "purchaseGroup"

.field public static final COLUMN_SERVICE_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_SERVICE_TYPE:Ljava/lang/String; = "service_type"

.field public static final COLUMN_TERMS_ACCEPTED:Ljava/lang/String; = "termsAccepted"

.field public static final COLUMN_USER:Ljava/lang/String; = "user"

.field private static final SKU_MECHANIC:Ljava/lang/String; = "scsub_sos"

.field private static final SKU_MECHANIC_TRIAL:Ljava/lang/String; = "scsub_sos_trial"

.field public static final TABLE_SERVICE_DATA:Ljava/lang/String; = "ServicesData"


# instance fields
.field private activation:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "activation"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_date"
    .end annotation
.end field

.field private allowance:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "allowance"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allowance_date"
    .end annotation
.end field

.field private contractUrl:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contract_url"
    .end annotation
.end field

.field private dongle:Lcom/texa/careapp/model/DongleModel;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "dongle"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field private expiration:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "expiration"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expiration_date"
    .end annotation
.end field

.field private hwid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hwid"
    .end annotation
.end field

.field private idType:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "service_type"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private lastRenew:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_renew"
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private puchaseGroup:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "purchaseGroup"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "purchase_group"
    .end annotation
.end field

.field private sku:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sku"
    .end annotation
.end field

.field private status:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "status"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private termsAccepted:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "termsAccepted"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "terms_accepted"
    .end annotation
.end field

.field private trial:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trial"
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        notNull = true
        onNullConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->ABORT:Lcom/activeandroid/annotation/Column$ConflictAction;
        onUniqueConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        unique = true
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private user:Lcom/texa/careapp/model/UserModel;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "user"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public static deleteServiceDataFromUid(Ljava/lang/String;)V
    .locals 3

    .line 152
    invoke-static {p0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string/jumbo p0, "uid = ? "

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    :cond_0
    return-void
.end method

.method public static fromDb(Ljava/lang/String;)Lcom/texa/careapp/model/ServiceDataModel;
    .locals 3

    .line 158
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ServiceDataModel;

    .line 159
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string/jumbo p0, "uid = ? "

    .line 160
    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p0

    check-cast p0, Lcom/texa/careapp/model/ServiceDataModel;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 230
    :cond_0
    instance-of v0, p1, Lcom/texa/careapp/model/ServiceDataModel;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 234
    :cond_1
    check-cast p1, Lcom/texa/careapp/model/ServiceDataModel;

    .line 235
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getActivation()Ljava/util/Date;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->activation:Ljava/util/Date;

    return-object v0
.end method

.method public getAllowance()Ljava/util/Date;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->allowance:Ljava/util/Date;

    return-object v0
.end method

.method public getContractUrl()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->contractUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDongle()Lcom/texa/careapp/model/DongleModel;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->dongle:Lcom/texa/careapp/model/DongleModel;

    return-object v0
.end method

.method public getExpiration()Ljava/util/Date;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->expiration:Ljava/util/Date;

    return-object v0
.end method

.method public getHwid()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->hwid:Ljava/lang/String;

    return-object v0
.end method

.method public getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->idType:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    return-object v0
.end method

.method public getLastExpirationDate()Ljava/util/Date;
    .locals 9

    .line 166
    const-class v0, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-static {v0}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 168
    new-instance v2, Lcom/activeandroid/query/Select;

    invoke-direct {v2}, Lcom/activeandroid/query/Select;-><init>()V

    .line 169
    invoke-virtual {v2, v0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".hwid=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 170
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getHwid()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "service_type"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v3, [Ljava/lang/Object;

    .line 171
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v2, v7}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "purchaseGroup"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 172
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getPuchaseGroup()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "expiration DESC"

    .line 173
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ServiceDataModel;

    .line 176
    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel;->getExpiration()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getLastExpirationForFutureServices()Ljava/util/Date;
    .locals 9

    .line 183
    const-class v0, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-static {v0}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 185
    new-instance v2, Lcom/activeandroid/query/Select;

    invoke-direct {v2}, Lcom/activeandroid/query/Select;-><init>()V

    .line 186
    invoke-virtual {v2, v0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".hwid=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 187
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getHwid()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "service_type"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v3, [Ljava/lang/Object;

    .line 188
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v2, v7}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "purchaseGroup"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "!=?"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v3, [Ljava/lang/Object;

    .line 189
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getPuchaseGroup()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v0, v2, v7}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "status"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->INACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    aput-object v3, v2, v6

    .line 190
    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "expiration DESC"

    .line 191
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ServiceDataModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 197
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/ServiceDataModel;->getExpiration()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getLastRenew()Ljava/util/Date;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->lastRenew:Ljava/util/Date;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPuchaseGroup()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->puchaseGroup:I

    return v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->status:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/texa/careapp/model/UserModel;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->user:Lcom/texa/careapp/model/UserModel;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 240
    invoke-super {p0}, Lcom/activeandroid/Model;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 241
    iget-object v1, p0, Lcom/texa/careapp/model/ServiceDataModel;->uid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isActive()Z
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->status:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->status:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->PENDING:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isActiveAndAccepted()Z
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->status:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;->ACTIVE:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->isTermsAccepted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMechanicPurchase()Z
    .locals 2

    .line 222
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scsub_sos_trial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getSku()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scsub_sos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSosType()Z
    .locals 2

    .line 205
    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->SOS_LIGHT:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isTermsAccepted()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->termsAccepted:Z

    return v0
.end method

.method public isTrial()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/texa/careapp/model/ServiceDataModel;->trial:Z

    return v0
.end method

.method public setActivation(Ljava/util/Date;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/texa/careapp/model/ServiceDataModel;->activation:Ljava/util/Date;

    return-void
.end method

.method public setAllowance(Ljava/util/Date;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/texa/careapp/model/ServiceDataModel;->allowance:Ljava/util/Date;

    return-void
.end method

.method public setContractUrl(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/texa/careapp/model/ServiceDataModel;->contractUrl:Ljava/lang/String;

    return-void
.end method

.method public setDongle(Lcom/texa/careapp/model/DongleModel;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/texa/careapp/model/ServiceDataModel;->dongle:Lcom/texa/careapp/model/DongleModel;

    return-void
.end method

.method public setExpiration(Ljava/util/Date;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/texa/careapp/model/ServiceDataModel;->expiration:Ljava/util/Date;

    return-void
.end method

.method public setHwid(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/texa/careapp/model/ServiceDataModel;->hwid:Ljava/lang/String;

    return-void
.end method

.method public setIdType(Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/texa/careapp/model/ServiceDataModel;->idType:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    return-void
.end method

.method public setLastRenew(Ljava/util/Date;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/texa/careapp/model/ServiceDataModel;->lastRenew:Ljava/util/Date;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/texa/careapp/model/ServiceDataModel;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPuchaseGroup(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/texa/careapp/model/ServiceDataModel;->puchaseGroup:I

    return-void
.end method

.method public setSku(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/texa/careapp/model/ServiceDataModel;->sku:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/texa/careapp/model/ServiceDataModel;->status:Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    return-void
.end method

.method public setTermsAccepted(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/texa/careapp/model/ServiceDataModel;->termsAccepted:Z

    return-void
.end method

.method public setTrial(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/texa/careapp/model/ServiceDataModel;->trial:Z

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/texa/careapp/model/ServiceDataModel;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lcom/texa/careapp/model/UserModel;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/texa/careapp/model/ServiceDataModel;->user:Lcom/texa/careapp/model/UserModel;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/texa/careapp/model/ServiceDataModel;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceDataModel(hwid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getHwid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", idType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getStatus()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getActivation()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getExpiration()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", allowance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getAllowance()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", termsAccepted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->isTermsAccepted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastRenew="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getLastRenew()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contractUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getContractUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", puchaseGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getPuchaseGroup()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getUser()Lcom/texa/careapp/model/UserModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/model/ServiceDataModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
