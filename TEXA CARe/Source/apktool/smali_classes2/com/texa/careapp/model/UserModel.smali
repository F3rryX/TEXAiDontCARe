.class public Lcom/texa/careapp/model/UserModel;
.super Lcom/activeandroid/Model;
.source "UserModel.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "User"
.end annotation


# static fields
.field public static final COLUMN_SYNC_NEEDED:Ljava/lang/String; = "sync_needed"

.field public static final TABLE_USER:Ljava/lang/String; = "User"


# instance fields
.field private address:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private city:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private civicNumber:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "street_number"
    .end annotation
.end field

.field private country:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private countryCode:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "post_code"
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private firstName:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private fiscalCode:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tax_code"
    .end annotation
.end field

.field private lastName:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private licenseExpireDate:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "license_exp_date"
    .end annotation
.end field

.field private province:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public syncNeeded:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "sync_needed"
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private userName:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/texa/careapp/model/UserModel;->syncNeeded:Z

    return-void
.end method

.method public static from(Lcom/texa/careapp/networking/response/UserResponse$UserData;)Lcom/texa/careapp/model/UserModel;
    .locals 1

    .line 118
    new-instance v0, Lcom/texa/careapp/model/UserModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/UserModel;-><init>()V

    .line 119
    invoke-static {p0, v0}, Lcom/texa/careapp/model/UserModel;->updateData(Lcom/texa/careapp/networking/response/UserResponse$UserData;Lcom/texa/careapp/model/UserModel;)V

    return-object v0
.end method

.method protected static updateData(Lcom/texa/careapp/networking/response/UserResponse$UserData;Lcom/texa/careapp/model/UserModel;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/texa/careapp/networking/response/UserResponse$UserData;->uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/UserModel;->setUid(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/texa/careapp/networking/response/UserResponse$UserData;->firstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/UserModel;->setFirstName(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/texa/careapp/networking/response/UserResponse$UserData;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/UserModel;->setLastName(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/texa/careapp/networking/response/UserResponse$UserData;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/UserModel;->setUserName(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/texa/careapp/networking/response/UserResponse$UserData;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/UserModel;->setEmail(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/texa/careapp/networking/response/UserResponse$UserData;->licenseExpireDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/UserModel;->setLicenseExpireDate(Ljava/util/Date;)V

    .line 136
    iget-object v0, p0, Lcom/texa/careapp/networking/response/UserResponse$UserData;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/UserModel;->setAddress(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/texa/careapp/networking/response/UserResponse$UserData;->civicNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/UserModel;->setCivicNumber(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/texa/careapp/networking/response/UserResponse$UserData;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/UserModel;->setCountry(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/texa/careapp/networking/response/UserResponse$UserData;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/UserModel;->setCountryCode(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/texa/careapp/networking/response/UserResponse$UserData;->fiscalCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/UserModel;->setFiscalCode(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/texa/careapp/networking/response/UserResponse$UserData;->province:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/texa/careapp/model/UserModel;->setProvince(Ljava/lang/String;)V

    .line 142
    iget-object p0, p0, Lcom/texa/careapp/networking/response/UserResponse$UserData;->city:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/model/UserModel;->setCity(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addSchedule(Lcom/texa/careapp/model/UserScheduleModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/careapp/exceptions/DatabaseIOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p1, p0}, Lcom/texa/careapp/model/UserScheduleModel;->setUser(Lcom/texa/careapp/model/UserModel;)V

    .line 263
    invoke-static {}, Lcom/activeandroid/Cache;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/texa/careapp/utils/Utils;->safeModelSave(Lcom/activeandroid/Model;Landroid/content/Context;)J

    return-void
.end method

.method public formatName()Ljava/lang/String;
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/texa/careapp/model/UserModel;->firstName:Ljava/lang/String;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/model/UserModel;->lastName:Ljava/lang/String;

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/texa/careapp/model/UserModel;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/texa/careapp/model/UserModel;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCivicNumber()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/texa/careapp/model/UserModel;->civicNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getContacts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ContactModel;",
            ">;"
        }
    .end annotation

    .line 161
    const-class v0, Lcom/texa/careapp/model/ContactModel;

    const-string v1, "User"

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/model/UserModel;->getMany(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/texa/careapp/model/UserModel;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/texa/careapp/model/UserModel;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/texa/careapp/model/UserModel;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyContactsForEmergency()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ContactModel;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ContactModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/texa/careapp/model/ContactModel;

    .line 224
    invoke-static {v2}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "User"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getId()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/texa/careapp/emergency/ContactType;->USER_CELL_ALT_SOS:Lcom/texa/careapp/emergency/ContactType;

    .line 225
    invoke-virtual {v2}, Lcom/texa/careapp/emergency/ContactType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "type = ? "

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/texa/careapp/model/UserModel;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFiscalCode()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/model/UserModel;->fiscalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGuardianAngelContacts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ContactModel;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ContactModel;

    .line 167
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/texa/careapp/emergency/ContactType;->USER_CELL_SOS:Lcom/texa/careapp/emergency/ContactType;

    .line 168
    invoke-virtual {v2}, Lcom/texa/careapp/emergency/ContactType;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "type=?"

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/model/UserModel;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseExpireDate()Ljava/util/Date;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/texa/careapp/model/UserModel;->licenseExpireDate:Ljava/util/Date;

    return-object v0
.end method

.method public getMainContact()Lcom/texa/careapp/model/ContactModel;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ContactModel;

    .line 202
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/texa/careapp/model/ContactModel;

    .line 203
    invoke-static {v2}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "User"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getId()Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "priority"

    .line 204
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 209
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ContactModel;

    return-object v0
.end method

.method public getPhoneNumberValidated()Ljava/lang/String;
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getUserCellPhoneContact()Lcom/texa/careapp/model/ContactModel;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 289
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/texa/careapp/model/UserModel;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getSchedules()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/UserScheduleModel;",
            ">;"
        }
    .end annotation

    .line 219
    const-class v0, Lcom/texa/careapp/model/UserScheduleModel;

    const-string v1, "User"

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/model/UserModel;->getMany(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSchedulesCount()I
    .locals 5

    .line 273
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/UserScheduleModel;

    .line 274
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/texa/careapp/model/UserScheduleModel;

    .line 275
    invoke-static {v2}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "User"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getId()Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->count()I

    move-result v0

    return v0
.end method

.method public getSosLightContacts()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/ContactModel;",
            ">;"
        }
    .end annotation

    .line 293
    const-class v0, Lcom/texa/careapp/model/ContactModel;

    invoke-static {v0}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getId()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 300
    :cond_1
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v3, Lcom/texa/careapp/model/ContactModel;

    invoke-virtual {v1, v3}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "User"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 301
    invoke-virtual {v1, v0, v4}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/texa/careapp/emergency/ContactType;->USER_CELL_SOS:Lcom/texa/careapp/emergency/ContactType;

    .line 302
    invoke-virtual {v2}, Lcom/texa/careapp/emergency/ContactType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "type = ? "

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "priority"

    .line 303
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x2

    .line 304
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->limit(I)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTermAcepted(Ljava/lang/String;)Lcom/texa/careapp/model/TermsModel;
    .locals 4

    .line 184
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/model/TermsModel;

    .line 185
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "TermType=?"

    .line 186
    invoke-virtual {v0, p1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 187
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getId()Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "User=?"

    invoke-virtual {p1, v1, v0}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/model/TermsModel;

    return-object p1
.end method

.method public getTermsAcepted()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/TermsModel;",
            ">;"
        }
    .end annotation

    .line 179
    const-class v0, Lcom/texa/careapp/model/TermsModel;

    const-string v1, "User"

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/model/UserModel;->getMany(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/model/UserModel;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCellPhoneContact()Lcom/texa/careapp/model/ContactModel;
    .locals 6

    .line 231
    const-class v0, Lcom/texa/careapp/model/ContactModel;

    invoke-static {v0}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getId()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 238
    :cond_1
    new-instance v1, Lcom/activeandroid/query/Select;

    invoke-direct {v1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v3, Lcom/texa/careapp/model/ContactModel;

    invoke-virtual {v1, v3}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "User"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 239
    invoke-virtual {v1, v0, v4}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/texa/careapp/emergency/ContactType;->USER_CELLPHONE:Lcom/texa/careapp/emergency/ContactType;

    .line 240
    invoke-virtual {v2}, Lcom/texa/careapp/emergency/ContactType;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "type = ? "

    invoke-virtual {v0, v2, v1}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "priority"

    .line 241
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/model/ContactModel;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/texa/careapp/model/UserModel;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public hasPhoneNumberValidated()Z
    .locals 1

    .line 280
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getPhoneNumberValidated()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSyncNeeded()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/texa/careapp/model/UserModel;->syncNeeded:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/texa/careapp/model/UserModel;->address:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/texa/careapp/model/UserModel;->city:Ljava/lang/String;

    return-void
.end method

.method public setCivicNumber(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/texa/careapp/model/UserModel;->civicNumber:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/texa/careapp/model/UserModel;->country:Ljava/lang/String;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/texa/careapp/model/UserModel;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/texa/careapp/model/UserModel;->email:Ljava/lang/String;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/model/UserModel;->firstName:Ljava/lang/String;

    return-void
.end method

.method public setFiscalCode(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/texa/careapp/model/UserModel;->fiscalCode:Ljava/lang/String;

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/texa/careapp/model/UserModel;->lastName:Ljava/lang/String;

    return-void
.end method

.method public setLicenseExpireDate(Ljava/util/Date;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/texa/careapp/model/UserModel;->licenseExpireDate:Ljava/util/Date;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/texa/careapp/model/UserModel;->province:Ljava/lang/String;

    return-void
.end method

.method public setSyncNeeded(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/texa/careapp/model/UserModel;->syncNeeded:Z

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/texa/careapp/model/UserModel;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/texa/careapp/model/UserModel;->userName:Ljava/lang/String;

    return-void
.end method

.method public updateFrom(Lcom/texa/careapp/networking/response/UserResponse$UserData;)V
    .locals 0

    .line 151
    invoke-static {p1, p0}, Lcom/texa/careapp/model/UserModel;->updateData(Lcom/texa/careapp/networking/response/UserResponse$UserData;Lcom/texa/careapp/model/UserModel;)V

    return-void
.end method
