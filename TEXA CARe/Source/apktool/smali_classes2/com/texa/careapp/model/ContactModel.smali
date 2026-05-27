.class public Lcom/texa/careapp/model/ContactModel;
.super Lcom/activeandroid/Model;
.source "ContactModel.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "Contact"
.end annotation


# static fields
.field public static final COLUMN_PRIORITY:Ljava/lang/String; = "priority"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final COLUMN_USER:Ljava/lang/String; = "User"

.field public static final TABLE_CONTACT:Ljava/lang/String; = "Contact"


# instance fields
.field private phoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field

.field private phoneNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;

.field private priority:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "priority"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "label"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "type"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "contact_id"
    .end annotation
.end field

.field private user:Lcom/texa/careapp/model/UserModel;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "User"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field private validated:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/texa/careapp/model/ContactModel;->title:Ljava/lang/String;

    return-void
.end method

.method public static deleteSOSContact(Ljava/lang/String;)V
    .locals 3

    .line 88
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/model/ContactModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string/jumbo p0, "uid = ?"

    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/texa/careapp/model/ContactModel;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumbers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/texa/careapp/model/ContactModel;->phoneNumbers:Ljava/util/List;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/texa/careapp/model/ContactModel;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/texa/careapp/model/ContactModel;->priority:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/texa/careapp/model/ContactModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/texa/careapp/model/ContactModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/careapp/model/ContactModel;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/texa/careapp/model/UserModel;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/texa/careapp/model/ContactModel;->user:Lcom/texa/careapp/model/UserModel;

    return-object v0
.end method

.method public isValidated()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/texa/careapp/model/ContactModel;->validated:Z

    return v0
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/model/ContactModel;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumbers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/texa/careapp/model/ContactModel;->phoneNumbers:Ljava/util/List;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/texa/careapp/model/ContactModel;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/texa/careapp/model/ContactModel;->priority:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/texa/careapp/model/ContactModel;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/texa/careapp/model/ContactModel;->type:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/texa/careapp/model/ContactModel;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lcom/texa/careapp/model/UserModel;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/texa/careapp/model/ContactModel;->user:Lcom/texa/careapp/model/UserModel;

    return-void
.end method

.method public setValidated(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/texa/careapp/model/ContactModel;->validated:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContactModel{phoneNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/model/ContactModel;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/model/ContactModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/model/ContactModel;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/model/ContactModel;->uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/texa/careapp/model/ContactModel;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", validated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/texa/careapp/model/ContactModel;->validated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/model/ContactModel;->user:Lcom/texa/careapp/model/UserModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
