.class public Lcom/texa/careapp/networking/response/CustomerResponse$Customer;
.super Ljava/lang/Object;
.source "CustomerResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/networking/response/CustomerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Customer"
.end annotation


# instance fields
.field public address:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public business_times:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/BusinessTime;",
            ">;"
        }
    .end annotation
.end field

.field public city:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public closing_end:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public closing_start:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public contacts:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/MechanicContact;",
            ">;"
        }
    .end annotation
.end field

.field public country:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public customer_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public location:Lcom/texa/careapp/model/MechanicModel$Location;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public post_code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public street_number:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 33
    instance-of p1, p1, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 33
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getStreet_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getStreet_number()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getPost_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getPost_code()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getCity()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getCountry()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getContacts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getContacts()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_5
    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getCustomer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getCustomer_name()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_f

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_f
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_6
    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getLocation()Lcom/texa/careapp/model/MechanicModel$Location;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getLocation()Lcom/texa/careapp/model/MechanicModel$Location;

    move-result-object v3

    if-nez v1, :cond_11

    if-eqz v3, :cond_12

    goto :goto_7

    :cond_11
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    :goto_7
    return v2

    :cond_12
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getBusiness_times()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getBusiness_times()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_13

    if-eqz v3, :cond_14

    goto :goto_8

    :cond_13
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    :goto_8
    return v2

    :cond_14
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getClosing_start()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getClosing_start()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_15

    if-eqz v3, :cond_16

    goto :goto_9

    :cond_15
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    :goto_9
    return v2

    :cond_16
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getClosing_end()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getClosing_end()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_17

    if-eqz v3, :cond_18

    goto :goto_a

    :cond_17
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    :goto_a
    return v2

    :cond_18
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getId()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_19

    if-eqz p1, :cond_1a

    goto :goto_b

    :cond_19
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    :goto_b
    return v2

    :cond_1a
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBusiness_times()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/BusinessTime;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->business_times:Ljava/util/List;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getClosing_end()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->closing_end:Ljava/lang/String;

    return-object v0
.end method

.method public getClosing_start()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->closing_start:Ljava/lang/String;

    return-object v0
.end method

.method public getContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/MechanicContact;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->contacts:Ljava/util/List;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomer_name()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->customer_name:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/texa/careapp/model/MechanicModel$Location;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->location:Lcom/texa/careapp/model/MechanicModel$Location;

    return-object v0
.end method

.method public getPost_code()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->post_code:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet_number()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->street_number:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 33
    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getStreet_number()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1

    const/16 v3, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getPost_code()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_2

    const/16 v3, 0x2b

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getCity()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_3

    const/16 v3, 0x2b

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getCountry()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_4

    const/16 v3, 0x2b

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getContacts()Ljava/util/List;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_5

    const/16 v3, 0x2b

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getCustomer_name()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_6

    const/16 v3, 0x2b

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getLocation()Lcom/texa/careapp/model/MechanicModel$Location;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_7

    const/16 v3, 0x2b

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getBusiness_times()Ljava/util/List;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_8

    const/16 v3, 0x2b

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getClosing_start()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_9

    const/16 v3, 0x2b

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getClosing_end()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_a

    const/16 v3, 0x2b

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getId()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->address:Ljava/lang/String;

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

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->business_times:Ljava/util/List;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->city:Ljava/lang/String;

    return-void
.end method

.method public setClosing_end(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->closing_end:Ljava/lang/String;

    return-void
.end method

.method public setClosing_start(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->closing_start:Ljava/lang/String;

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

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->contacts:Ljava/util/List;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->country:Ljava/lang/String;

    return-void
.end method

.method public setCustomer_name(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->customer_name:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->id:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Lcom/texa/careapp/model/MechanicModel$Location;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->location:Lcom/texa/careapp/model/MechanicModel$Location;

    return-void
.end method

.method public setPost_code(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->post_code:Ljava/lang/String;

    return-void
.end method

.method public setStreet_number(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->street_number:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomerResponse.Customer(address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", street_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getStreet_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", post_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getPost_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getContacts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customer_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getCustomer_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getLocation()Lcom/texa/careapp/model/MechanicModel$Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", business_times="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getBusiness_times()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", closing_start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getClosing_start()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", closing_end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getClosing_end()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/networking/response/CustomerResponse$Customer;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
