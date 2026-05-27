.class public Lcom/texa/careapp/model/EmergencyInfo;
.super Ljava/lang/Object;
.source "EmergencyInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmergencyInfo"


# instance fields
.field private altContacts:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "alt_contacts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emergencyLocations:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/networking/EmergencyLocation;",
            ">;"
        }
    .end annotation
.end field

.field private eventTimestamp:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field private mainContact:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "main_contact"
    .end annotation
.end field

.field private requestType:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "request_type"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/model/EmergencyInfo;->eventTimestamp:Ljava/util/Date;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/model/EmergencyInfo;->emergencyLocations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs addContacts([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/texa/careapp/model/EmergencyInfo;->altContacts:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/model/EmergencyInfo;->altContacts:Ljava/util/List;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/model/EmergencyInfo;->altContacts:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 68
    iget-object p1, p0, Lcom/texa/careapp/model/EmergencyInfo;->altContacts:Ljava/util/List;

    return-object p1
.end method

.method public addLocation(Landroid/location/Location;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/texa/careapp/model/EmergencyInfo;->emergencyLocations:Ljava/util/List;

    invoke-static {p1}, Lcom/texa/careapp/networking/EmergencyLocation;->from(Landroid/location/Location;)Lcom/texa/careapp/networking/EmergencyLocation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 20
    instance-of p1, p1, Lcom/texa/careapp/model/EmergencyInfo;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 20
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/model/EmergencyInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/model/EmergencyInfo;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/model/EmergencyInfo;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/model/EmergencyInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/EmergencyInfo;->getUserId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/texa/careapp/model/EmergencyInfo;->getMainContact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/EmergencyInfo;->getMainContact()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/texa/careapp/model/EmergencyInfo;->getRequestType()I

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/EmergencyInfo;->getRequestType()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/texa/careapp/model/EmergencyInfo;->getEventTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/EmergencyInfo;->getEventTimestamp()Ljava/util/Date;

    move-result-object v3

    if-nez v1, :cond_8

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_2
    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/texa/careapp/model/EmergencyInfo;->getEmergencyLocations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/EmergencyInfo;->getEmergencyLocations()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_a

    if-eqz v3, :cond_b

    goto :goto_3

    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_3
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/texa/careapp/model/EmergencyInfo;->getAltContacts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/EmergencyInfo;->getAltContacts()Ljava/util/List;

    move-result-object p1

    if-nez v1, :cond_c

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_c
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    :goto_4
    return v2

    :cond_d
    return v0
.end method

.method public getAltContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/texa/careapp/model/EmergencyInfo;->altContacts:Ljava/util/List;

    return-object v0
.end method

.method public getEmergencyLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/networking/EmergencyLocation;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/texa/careapp/model/EmergencyInfo;->emergencyLocations:Ljava/util/List;

    return-object v0
.end method

.method public getEventTimestamp()Ljava/util/Date;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/texa/careapp/model/EmergencyInfo;->eventTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getMainContact()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/texa/careapp/model/EmergencyInfo;->mainContact:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/texa/careapp/model/EmergencyInfo;->requestType:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/texa/careapp/model/EmergencyInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 20
    invoke-virtual {p0}, Lcom/texa/careapp/model/EmergencyInfo;->getUserId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/texa/careapp/model/EmergencyInfo;->getMainContact()Ljava/lang/String;

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

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/model/EmergencyInfo;->getRequestType()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/texa/careapp/model/EmergencyInfo;->getEventTimestamp()Ljava/util/Date;

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

    invoke-virtual {p0}, Lcom/texa/careapp/model/EmergencyInfo;->getEmergencyLocations()Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/texa/careapp/model/EmergencyInfo;->getAltContacts()Ljava/util/List;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public setAltContacts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/texa/careapp/model/EmergencyInfo;->altContacts:Ljava/util/List;

    return-void
.end method

.method public setEmergencyLocations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/networking/EmergencyLocation;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/texa/careapp/model/EmergencyInfo;->emergencyLocations:Ljava/util/List;

    return-void
.end method

.method public setEventTimestamp(Ljava/util/Date;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/texa/careapp/model/EmergencyInfo;->eventTimestamp:Ljava/util/Date;

    return-void
.end method

.method public setMainContact(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/texa/careapp/model/EmergencyInfo;->mainContact:Ljava/lang/String;

    return-void
.end method

.method public setRequestType(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/texa/careapp/model/EmergencyInfo;->requestType:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/texa/careapp/model/EmergencyInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 60
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->buildGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
