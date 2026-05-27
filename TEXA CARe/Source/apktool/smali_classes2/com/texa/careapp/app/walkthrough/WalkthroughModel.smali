.class Lcom/texa/careapp/app/walkthrough/WalkthroughModel;
.super Ljava/lang/Object;
.source "WalkthroughModel.java"


# instance fields
.field private descriptionRes:I

.field private titleRes:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;->titleRes:I

    iput p2, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;->descriptionRes:I

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 12
    instance-of p1, p1, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 12
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;->getTitleRes()I

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;->getTitleRes()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;->getDescriptionRes()I

    move-result v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;->getDescriptionRes()I

    move-result p1

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getDescriptionRes()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;->descriptionRes:I

    return v0
.end method

.method public getTitleRes()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;->titleRes:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;->getTitleRes()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;->getDescriptionRes()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setDescriptionRes(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;->descriptionRes:I

    return-void
.end method

.method public setTitleRes(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;->titleRes:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WalkthroughModel(titleRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;->getTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", descriptionRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/walkthrough/WalkthroughModel;->getDescriptionRes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
