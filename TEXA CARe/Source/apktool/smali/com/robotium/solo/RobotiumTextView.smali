.class Lcom/robotium/solo/RobotiumTextView;
.super Landroid/widget/TextView;
.source "RobotiumTextView.java"


# instance fields
.field private locationX:I

.field private locationY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/robotium/solo/RobotiumTextView;->locationX:I

    .line 15
    iput p1, p0, Lcom/robotium/solo/RobotiumTextView;->locationY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/robotium/solo/RobotiumTextView;->locationX:I

    .line 15
    iput p1, p0, Lcom/robotium/solo/RobotiumTextView;->locationY:I

    .line 36
    invoke-virtual {p0, p2}, Lcom/robotium/solo/RobotiumTextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p0, p3}, Lcom/robotium/solo/RobotiumTextView;->setLocationX(I)V

    .line 38
    invoke-virtual {p0, p4}, Lcom/robotium/solo/RobotiumTextView;->setLocationY(I)V

    return-void
.end method


# virtual methods
.method public getLocationOnScreen([I)V
    .locals 2

    .line 48
    iget v0, p0, Lcom/robotium/solo/RobotiumTextView;->locationX:I

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 49
    iget v0, p0, Lcom/robotium/solo/RobotiumTextView;->locationY:I

    const/4 v1, 0x1

    aput v0, p1, v1

    return-void
.end method

.method public setLocationX(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/robotium/solo/RobotiumTextView;->locationX:I

    return-void
.end method

.method public setLocationY(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/robotium/solo/RobotiumTextView;->locationY:I

    return-void
.end method
