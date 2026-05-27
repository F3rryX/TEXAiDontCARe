.class public Lcom/texa/careapp/model/MechanicContact;
.super Lcom/activeandroid/Model;
.source "MechanicContact.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "MechanicContact"
.end annotation


# static fields
.field public static final COLUMN_ID_CONTACT:Ljava/lang/String; = "uuid"

.field public static final COLUMN_ID_MECHANIC:Ljava/lang/String; = "Mechanic"

.field public static final COLUMN_PRIMARY_CONTACT:Ljava/lang/String; = "primaryContact"

.field public static final TABLE_MECHANIC_CONTACT:Ljava/lang/String; = "MechanicContact"


# instance fields
.field public isPrimary:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "primaryContact"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "primary"
    .end annotation
.end field

.field private mechanicModel:Lcom/texa/careapp/model/MechanicModel;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Mechanic"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
        uniqueGroups = {
            "key"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uuid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "uuid"
        onUniqueConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        unique = true
    .end annotation
.end field

.field public value:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 29
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/model/MechanicContact;->uuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMechanicModel()Lcom/texa/careapp/model/MechanicModel;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/texa/careapp/model/MechanicContact;->mechanicModel:Lcom/texa/careapp/model/MechanicModel;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/texa/careapp/model/MechanicContact;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/texa/careapp/model/MechanicContact;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/model/MechanicContact;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isPrimary()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/texa/careapp/model/MechanicContact;->isPrimary:Z

    return v0
.end method

.method public setMechanicModel(Lcom/texa/careapp/model/MechanicModel;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/texa/careapp/model/MechanicContact;->mechanicModel:Lcom/texa/careapp/model/MechanicModel;

    return-void
.end method

.method public setPrimary(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/texa/careapp/model/MechanicContact;->isPrimary:Z

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/texa/careapp/model/MechanicContact;->type:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/texa/careapp/model/MechanicContact;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/texa/careapp/model/MechanicContact;->value:Ljava/lang/String;

    return-void
.end method
