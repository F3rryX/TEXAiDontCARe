.class Lcom/robotium/solo/ViewLocationComparator;
.super Ljava/lang/Object;
.source "ViewLocationComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[I

.field private final axis1:I

.field private final axis2:I

.field private final b:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 18
    invoke-direct {p0, v0}, Lcom/robotium/solo/ViewLocationComparator;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 13
    iput-object v1, p0, Lcom/robotium/solo/ViewLocationComparator;->a:[I

    new-array v0, v0, [I

    .line 14
    iput-object v0, p0, Lcom/robotium/solo/ViewLocationComparator;->b:[I

    .line 26
    iput p1, p0, Lcom/robotium/solo/ViewLocationComparator;->axis1:I

    xor-int/lit8 p1, p1, 0x1

    .line 27
    iput p1, p0, Lcom/robotium/solo/ViewLocationComparator;->axis2:I

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 5

    .line 31
    iget-object v0, p0, Lcom/robotium/solo/ViewLocationComparator;->a:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 32
    iget-object p1, p0, Lcom/robotium/solo/ViewLocationComparator;->b:[I

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 34
    iget-object p1, p0, Lcom/robotium/solo/ViewLocationComparator;->a:[I

    iget p2, p0, Lcom/robotium/solo/ViewLocationComparator;->axis1:I

    aget v0, p1, p2

    iget-object v1, p0, Lcom/robotium/solo/ViewLocationComparator;->b:[I

    aget v2, v1, p2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v2, :cond_1

    .line 35
    aget p1, p1, p2

    aget p2, v1, p2

    if-ge p1, p2, :cond_0

    const/4 v3, -0x1

    :cond_0
    return v3

    .line 37
    :cond_1
    iget p2, p0, Lcom/robotium/solo/ViewLocationComparator;->axis2:I

    aget v0, p1, p2

    aget v2, v1, p2

    if-ge v0, v2, :cond_2

    return v4

    .line 40
    :cond_2
    aget p1, p1, p2

    aget p2, v1, p2

    if-ne p1, p2, :cond_3

    const/4 v3, 0x0

    :cond_3
    return v3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/robotium/solo/ViewLocationComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
