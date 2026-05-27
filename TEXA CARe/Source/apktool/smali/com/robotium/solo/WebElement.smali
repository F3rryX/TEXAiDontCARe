.class public Lcom/robotium/solo/WebElement;
.super Ljava/lang/Object;
.source "WebElement.java"


# instance fields
.field private attributes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private className:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private locationX:I

.field private locationY:I

.field private name:Ljava/lang/String;

.field private tagName:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/robotium/solo/WebElement;->locationX:I

    .line 15
    iput v0, p0, Lcom/robotium/solo/WebElement;->locationY:I

    .line 37
    invoke-virtual {p0, p1}, Lcom/robotium/solo/WebElement;->setId(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/robotium/solo/WebElement;->setTextContent(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p3}, Lcom/robotium/solo/WebElement;->setName(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p4}, Lcom/robotium/solo/WebElement;->setClassName(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p5}, Lcom/robotium/solo/WebElement;->setTagName(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p6}, Lcom/robotium/solo/WebElement;->setAttributes(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/robotium/solo/WebElement;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/robotium/solo/WebElement;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/robotium/solo/WebElement;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationOnScreen([I)V
    .locals 2

    .line 51
    iget v0, p0, Lcom/robotium/solo/WebElement;->locationX:I

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 52
    iget v0, p0, Lcom/robotium/solo/WebElement;->locationY:I

    const/4 v1, 0x1

    aput v0, p1, v1

    return-void
.end method

.method public getLocationX()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/robotium/solo/WebElement;->locationX:I

    return v0
.end method

.method public getLocationY()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/robotium/solo/WebElement;->locationY:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/robotium/solo/WebElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/robotium/solo/WebElement;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/robotium/solo/WebElement;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setAttributes(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/robotium/solo/WebElement;->attributes:Ljava/util/Hashtable;

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/robotium/solo/WebElement;->className:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/robotium/solo/WebElement;->id:Ljava/lang/String;

    return-void
.end method

.method public setLocationX(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/robotium/solo/WebElement;->locationX:I

    return-void
.end method

.method public setLocationY(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/robotium/solo/WebElement;->locationY:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/robotium/solo/WebElement;->name:Ljava/lang/String;

    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/robotium/solo/WebElement;->tagName:Ljava/lang/String;

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/robotium/solo/WebElement;->text:Ljava/lang/String;

    return-void
.end method
