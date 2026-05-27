.class public Lcom/texa/care/eco_driving/score/OverallScore$Component;
.super Ljava/lang/Object;
.source "OverallScore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/care/eco_driving/score/OverallScore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Component"
.end annotation


# instance fields
.field private final baseScore:Lcom/texa/care/eco_driving/score/BaseScore;

.field final synthetic this$0:Lcom/texa/care/eco_driving/score/OverallScore;

.field private final weight:I


# direct methods
.method constructor <init>(Lcom/texa/care/eco_driving/score/OverallScore;Lcom/texa/care/eco_driving/score/BaseScore;I)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/texa/care/eco_driving/score/OverallScore$Component;->this$0:Lcom/texa/care/eco_driving/score/OverallScore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p2, p0, Lcom/texa/care/eco_driving/score/OverallScore$Component;->baseScore:Lcom/texa/care/eco_driving/score/BaseScore;

    .line 145
    iput p3, p0, Lcom/texa/care/eco_driving/score/OverallScore$Component;->weight:I

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 138
    instance-of p1, p1, Lcom/texa/care/eco_driving/score/OverallScore$Component;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 138
    :cond_0
    instance-of v1, p1, Lcom/texa/care/eco_driving/score/OverallScore$Component;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/care/eco_driving/score/OverallScore$Component;

    invoke-virtual {p1, p0}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getBaseScore()Lcom/texa/care/eco_driving/score/BaseScore;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getBaseScore()Lcom/texa/care/eco_driving/score/BaseScore;

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
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getWeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getWeight()I

    move-result p1

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getBaseScore()Lcom/texa/care/eco_driving/score/BaseScore;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/texa/care/eco_driving/score/OverallScore$Component;->baseScore:Lcom/texa/care/eco_driving/score/BaseScore;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/texa/care/eco_driving/score/OverallScore$Component;->weight:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 138
    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getBaseScore()Lcom/texa/care/eco_driving/score/BaseScore;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getWeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OverallScore.Component(baseScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getBaseScore()Lcom/texa/care/eco_driving/score/BaseScore;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/care/eco_driving/score/OverallScore$Component;->getWeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
