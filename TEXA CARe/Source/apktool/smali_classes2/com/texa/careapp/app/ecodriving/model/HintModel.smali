.class public Lcom/texa/careapp/app/ecodriving/model/HintModel;
.super Lcom/activeandroid/Model;
.source "HintModel.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "Hint"
.end annotation


# static fields
.field public static final COLUMN_COUNT_VIEW:Ljava/lang/String; = "countView"

.field public static final COLUMN_DELETED:Ljava/lang/String; = "deleted"

.field public static final COLUMN_ID:Ljava/lang/String; = "idHint"

.field public static final COLUMN_IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field public static final COLUMN_LAST_UPDATE:Ljava/lang/String; = "lastUpdate"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final TABLE_NAME:Ljava/lang/String; = "Hint"


# instance fields
.field private countView:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "countView"
    .end annotation
.end field

.field private deleted:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "deleted"
    .end annotation
.end field

.field private idHint:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        index = true
        name = "idHint"
        onUniqueConflicts = {
            .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        }
        unique = true
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "imageUrl"
    .end annotation
.end field

.field private lastUpdate:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "lastUpdate"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "type"
    .end annotation
.end field

.field viewed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->viewed:Z

    return-void
.end method


# virtual methods
.method public getCountView()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->countView:I

    return v0
.end method

.method public getIdHint()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->idHint:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdate()Ljava/util/Date;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->lastUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getTranslation(Ljava/lang/String;Ljava/lang/String;)Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;
    .locals 4

    .line 61
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-class v1, Lcom/texa/careapp/app/ecodriving/model/HintModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->leftJoin(Ljava/lang/Class;)Lcom/activeandroid/query/Join;

    move-result-object v0

    const-string v1, "HintTranslation.idHint = Hint.id"

    .line 62
    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Join;->on(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string p2, "language = ?"

    .line 64
    invoke-virtual {v0, p2, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "Hint.idHint = ?"

    .line 65
    invoke-virtual {p2, p1, v0}, Lcom/activeandroid/query/From;->and(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;

    return-object p1
.end method

.method public getType()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->type:I

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->deleted:Z

    return v0
.end method

.method public isViewed()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->viewed:Z

    return v0
.end method

.method public setCountView(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->countView:I

    return-void
.end method

.method public setDeleted(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->deleted:Z

    return-void
.end method

.method public setIdHint(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->idHint:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLastUpdate(Ljava/util/Date;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->lastUpdate:Ljava/util/Date;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->type:I

    return-void
.end method

.method public setViewed(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->viewed:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HintModel{idHint=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->idHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imageUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->deleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->lastUpdate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", countView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/texa/careapp/app/ecodriving/model/HintModel;->countView:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
