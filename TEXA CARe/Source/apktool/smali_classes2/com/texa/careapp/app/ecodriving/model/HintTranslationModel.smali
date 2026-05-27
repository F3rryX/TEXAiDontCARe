.class public Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;
.super Lcom/activeandroid/Model;
.source "HintTranslationModel.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "HintTranslation"
.end annotation


# static fields
.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_ID:Ljava/lang/String; = "idHintTranslation"

.field public static final COLUMN_ID_HINT:Ljava/lang/String; = "idHint"

.field public static final COLUMN_LANGUAGE:Ljava/lang/String; = "language"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final TABLE_NAME:Ljava/lang/String; = "HintTranslation"


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "description"
    .end annotation
.end field

.field private idHint:Lcom/texa/careapp/app/ecodriving/model/HintModel;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "idHint"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field

.field private idHintTranslation:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        index = true
        name = "idHintTranslation"
        onUniqueConflicts = {
            .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "language"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIdHint()Lcom/texa/careapp/app/ecodriving/model/HintModel;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->idHint:Lcom/texa/careapp/app/ecodriving/model/HintModel;

    return-object v0
.end method

.method public getIdHintTranslation()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->idHintTranslation:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->description:Ljava/lang/String;

    return-void
.end method

.method public setIdHint(Lcom/texa/careapp/app/ecodriving/model/HintModel;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->idHint:Lcom/texa/careapp/app/ecodriving/model/HintModel;

    return-void
.end method

.method public setIdHintTranslation(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->idHintTranslation:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->language:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HintTranslationModel{idHintTranslation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->idHintTranslation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", language=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", idHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/careapp/app/ecodriving/model/HintTranslationModel;->idHint:Lcom/texa/careapp/app/ecodriving/model/HintModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
