.class Lcom/robotium/solo/Checker;
.super Ljava/lang/Object;
.source "Checker.java"


# instance fields
.field private final viewFetcher:Lcom/robotium/solo/ViewFetcher;

.field private final waiter:Lcom/robotium/solo/Waiter;


# direct methods
.method public constructor <init>(Lcom/robotium/solo/ViewFetcher;Lcom/robotium/solo/Waiter;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/robotium/solo/Checker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    .line 32
    iput-object p2, p0, Lcom/robotium/solo/Checker;->waiter:Lcom/robotium/solo/Waiter;

    return-void
.end method


# virtual methods
.method public isButtonChecked(Ljava/lang/Class;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/CompoundButton;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)Z"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/robotium/solo/Checker;->waiter:Lcom/robotium/solo/Waiter;

    invoke-virtual {v0, p2, p1}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    return p1
.end method

.method public isButtonChecked(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/CompoundButton;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/robotium/solo/Checker;->waiter:Lcom/robotium/solo/Waiter;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v1

    int-to-long v4, v1

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/robotium/solo/Waiter;->waitForText(Ljava/lang/Class;Ljava/lang/String;IJZ)Landroid/widget/TextView;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isCheckedTextChecked(Ljava/lang/String;)Z
    .locals 7

    .line 77
    iget-object v0, p0, Lcom/robotium/solo/Checker;->waiter:Lcom/robotium/solo/Waiter;

    const-class v1, Landroid/widget/CheckedTextView;

    invoke-static {}, Lcom/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v2

    int-to-long v4, v2

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/robotium/solo/Waiter;->waitForText(Ljava/lang/Class;Ljava/lang/String;IJZ)Landroid/widget/TextView;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSpinnerTextSelected(ILjava/lang/String;)Z
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/robotium/solo/Checker;->waiter:Lcom/robotium/solo/Waiter;

    const-class v1, Landroid/widget/Spinner;

    invoke-virtual {v0, p1, v1}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 117
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public isSpinnerTextSelected(Ljava/lang/String;)Z
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/robotium/solo/Checker;->waiter:Lcom/robotium/solo/Waiter;

    const-class v1, Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/robotium/solo/Waiter;->waitForAndGetView(ILjava/lang/Class;)Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/robotium/solo/Checker;->viewFetcher:Lcom/robotium/solo/ViewFetcher;

    const-class v1, Landroid/widget/Spinner;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 98
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 99
    invoke-virtual {p0, v1, p1}, Lcom/robotium/solo/Checker;->isSpinnerTextSelected(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
