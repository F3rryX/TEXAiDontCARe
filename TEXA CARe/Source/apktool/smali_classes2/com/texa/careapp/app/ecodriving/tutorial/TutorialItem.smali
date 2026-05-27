.class Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;
.super Ljava/lang/Object;
.source "TutorialItem.java"


# instance fields
.field private descriptionRes:I

.field private iconRes:I

.field private titleRes:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;->titleRes:I

    .line 21
    iput p3, p0, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;->iconRes:I

    .line 22
    iput p2, p0, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;->descriptionRes:I

    return-void
.end method


# virtual methods
.method public getDescriptionRes()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;->descriptionRes:I

    return v0
.end method

.method public getIconRes()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;->iconRes:I

    return v0
.end method

.method public getTitleRes()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/texa/careapp/app/ecodriving/tutorial/TutorialItem;->titleRes:I

    return v0
.end method
