.class public Lcom/texa/careapp/model/MechanicModel;
.super Lcom/activeandroid/Model;
.source "MechanicModel.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "Mechanic"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/model/MechanicModel$Location;
    }
.end annotation


# static fields
.field public static final COLUMN_LAST_UPDATE:Ljava/lang/String; = "LastUpdate"

.field public static final COLUMN_UID:Ljava/lang/String; = "uuid"

.field public static final TABLE_MECHANIC:Ljava/lang/String; = "Mechanic"

.field public static final TABLE_MECHANIC_LOCATION:Ljava/lang/String; = "MechanicLocation"


# instance fields
.field private address:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field public business_times:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/BusinessTime;",
            ">;"
        }
    .end annotation
.end field

.field private city:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private closing_end:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private closing_start:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field public contacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/MechanicContact;",
            ">;"
        }
    .end annotation
.end field

.field private country:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private customer_name:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private location:Lcom/texa/careapp/model/MechanicModel$Location;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private post_code:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private street_number:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "uuid"
        onUniqueConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        unique = true
    .end annotation
.end field

.field private updatedAt:Ljava/lang/Long;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "LastUpdate"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public static from(Lcom/texa/careapp/networking/response/CustomerResponse;)Lcom/texa/careapp/model/MechanicModel;
    .locals 4

    .line 88
    new-instance v0, Lcom/texa/careapp/model/MechanicModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/MechanicModel;-><init>()V

    .line 89
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/MechanicModel;->setUid(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/texa/careapp/networking/response/CustomerResponse;->customer:Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    iget-object v1, v1, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->customer_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/MechanicModel;->setCustomer_name(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/texa/careapp/networking/response/CustomerResponse;->customer:Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    iget-object v1, v1, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/MechanicModel;->setCity(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/texa/careapp/networking/response/CustomerResponse;->customer:Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    iget-object v1, v1, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/MechanicModel;->setAddress(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/texa/careapp/networking/response/CustomerResponse;->customer:Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    iget-object v1, v1, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->street_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/MechanicModel;->setStreet_number(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/texa/careapp/networking/response/CustomerResponse;->customer:Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    iget-object v1, v1, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/MechanicModel;->setCountry(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/texa/careapp/networking/response/CustomerResponse;->customer:Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    iget-object v1, v1, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->location:Lcom/texa/careapp/model/MechanicModel$Location;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/MechanicModel;->setLocation(Lcom/texa/careapp/model/MechanicModel$Location;)V

    .line 97
    iget-object v1, p0, Lcom/texa/careapp/networking/response/CustomerResponse;->customer:Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    iget-object v1, v1, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->post_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/MechanicModel;->setPost_code(Ljava/lang/String;)V

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object v2, p0, Lcom/texa/careapp/networking/response/CustomerResponse;->customer:Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    iget-object v2, v2, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->business_times:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/BusinessTime;

    .line 101
    invoke-virtual {v3, v0}, Lcom/texa/careapp/model/BusinessTime;->setMechanicModel(Lcom/texa/careapp/model/MechanicModel;)V

    .line 102
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/MechanicModel;->setBusiness_times(Ljava/util/List;)V

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v2, p0, Lcom/texa/careapp/networking/response/CustomerResponse;->customer:Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    iget-object v2, v2, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->contacts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/texa/careapp/model/MechanicContact;

    .line 108
    invoke-virtual {v3, v0}, Lcom/texa/careapp/model/MechanicContact;->setMechanicModel(Lcom/texa/careapp/model/MechanicModel;)V

    .line 109
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/MechanicModel;->setContacts(Ljava/util/List;)V

    .line 113
    iget-object v1, p0, Lcom/texa/careapp/networking/response/CustomerResponse;->customer:Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    iget-object v1, v1, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->closing_start:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/MechanicModel;->setClosing_start(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/texa/careapp/networking/response/CustomerResponse;->customer:Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    iget-object v1, v1, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->closing_end:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/MechanicModel;->setClosing_end(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse;->getUpdatedAt()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/MechanicModel;->setUpdatedAt(Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 143
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 144
    :cond_1
    check-cast p1, Lcom/texa/careapp/model/MechanicModel;

    .line 146
    iget-object v1, p0, Lcom/texa/careapp/model/MechanicModel;->address:Ljava/lang/String;

    iget-object v2, p1, Lcom/texa/careapp/model/MechanicModel;->address:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/texa/careapp/model/MechanicModel;->city:Ljava/lang/String;

    iget-object v2, p1, Lcom/texa/careapp/model/MechanicModel;->city:Ljava/lang/String;

    .line 147
    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/texa/careapp/model/MechanicModel;->street_number:Ljava/lang/String;

    iget-object v2, p1, Lcom/texa/careapp/model/MechanicModel;->street_number:Ljava/lang/String;

    .line 148
    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/texa/careapp/model/MechanicModel;->post_code:Ljava/lang/String;

    iget-object v2, p1, Lcom/texa/careapp/model/MechanicModel;->post_code:Ljava/lang/String;

    .line 149
    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/texa/careapp/model/MechanicModel;->country:Ljava/lang/String;

    iget-object v2, p1, Lcom/texa/careapp/model/MechanicModel;->country:Ljava/lang/String;

    .line 150
    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/texa/careapp/model/MechanicModel;->location:Lcom/texa/careapp/model/MechanicModel$Location;

    iget-object v2, p1, Lcom/texa/careapp/model/MechanicModel;->location:Lcom/texa/careapp/model/MechanicModel$Location;

    .line 151
    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/texa/careapp/model/MechanicModel;->customer_name:Ljava/lang/String;

    iget-object v2, p1, Lcom/texa/careapp/model/MechanicModel;->customer_name:Ljava/lang/String;

    .line 152
    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/texa/careapp/model/MechanicModel;->business_times:Ljava/util/List;

    iget-object v2, p1, Lcom/texa/careapp/model/MechanicModel;->business_times:Ljava/util/List;

    .line 153
    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/texa/careapp/model/MechanicModel;->closing_start:Ljava/lang/String;

    iget-object v2, p1, Lcom/texa/careapp/model/MechanicModel;->closing_start:Ljava/lang/String;

    .line 154
    invoke-static {v1, v2}, Lcom/texa/careapp/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/texa/careapp/model/MechanicModel;->closing_end:Ljava/lang/String;

    iget-object p1, p1, Lcom/texa/careapp/model/MechanicModel;->closing_end:Ljava/lang/String;

    .line 155
    invoke-static {v1, p1}, Lcom/texa/careapp/utils/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/texa/careapp/model/MechanicModel;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/texa/careapp/model/MechanicModel;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getClosing_end()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/texa/careapp/model/MechanicModel;->closing_end:Ljava/lang/String;

    return-object v0
.end method

.method public getClosing_start()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/texa/careapp/model/MechanicModel;->closing_start:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/texa/careapp/model/MechanicModel;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomer_name()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/model/MechanicModel;->customer_name:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/texa/careapp/model/MechanicModel$Location;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/texa/careapp/model/MechanicModel;->location:Lcom/texa/careapp/model/MechanicModel$Location;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/texa/careapp/model/MechanicModel;->customer_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/texa/careapp/model/MechanicModel;->customer_name:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getPost_code()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/texa/careapp/model/MechanicModel;->post_code:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet_number()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/texa/careapp/model/MechanicModel;->street_number:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/texa/careapp/model/MechanicModel;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/Long;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/texa/careapp/model/MechanicModel;->updatedAt:Ljava/lang/Long;

    return-object v0
.end method

.method public loadBusinessTimeFromDB()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/BusinessTime;",
            ">;"
        }
    .end annotation

    .line 121
    const-class v0, Lcom/texa/careapp/model/BusinessTime;

    const-string v1, "Mechanic"

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/model/MechanicModel;->getMany(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 122
    iput-object v0, p0, Lcom/texa/careapp/model/MechanicModel;->business_times:Ljava/util/List;

    return-object v0
.end method

.method public loadMechanicContactsFromDB()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/MechanicContact;",
            ">;"
        }
    .end annotation

    .line 127
    const-class v0, Lcom/texa/careapp/model/MechanicContact;

    const-string v1, "Mechanic"

    invoke-virtual {p0, v0, v1}, Lcom/texa/careapp/model/MechanicModel;->getMany(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 128
    iput-object v0, p0, Lcom/texa/careapp/model/MechanicModel;->contacts:Ljava/util/List;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/model/MechanicModel;->address:Ljava/lang/String;

    return-void
.end method

.method public setBusiness_times(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/BusinessTime;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/texa/careapp/model/MechanicModel;->business_times:Ljava/util/List;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/texa/careapp/model/MechanicModel;->city:Ljava/lang/String;

    return-void
.end method

.method public setClosing_end(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/texa/careapp/model/MechanicModel;->closing_end:Ljava/lang/String;

    return-void
.end method

.method public setClosing_start(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/texa/careapp/model/MechanicModel;->closing_start:Ljava/lang/String;

    return-void
.end method

.method public setContacts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/MechanicContact;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/texa/careapp/model/MechanicModel;->contacts:Ljava/util/List;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/texa/careapp/model/MechanicModel;->country:Ljava/lang/String;

    return-void
.end method

.method public setCustomer_name(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/texa/careapp/model/MechanicModel;->customer_name:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Lcom/texa/careapp/model/MechanicModel$Location;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/texa/careapp/model/MechanicModel;->location:Lcom/texa/careapp/model/MechanicModel$Location;

    return-void
.end method

.method public setPost_code(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/model/MechanicModel;->post_code:Ljava/lang/String;

    return-void
.end method

.method public setStreet_number(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/texa/careapp/model/MechanicModel;->street_number:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/texa/careapp/model/MechanicModel;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedAt(Ljava/lang/Long;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/texa/careapp/model/MechanicModel;->updatedAt:Ljava/lang/Long;

    return-void
.end method
