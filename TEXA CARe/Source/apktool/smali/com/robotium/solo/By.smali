.class public abstract Lcom/robotium/solo/By;
.super Ljava/lang/Object;
.source "By.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/robotium/solo/By$TagName;,
        Lcom/robotium/solo/By$Text;,
        Lcom/robotium/solo/By$ClassName;,
        Lcom/robotium/solo/By$Name;,
        Lcom/robotium/solo/By$CssSelector;,
        Lcom/robotium/solo/By$Xpath;,
        Lcom/robotium/solo/By$Id;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static className(Ljava/lang/String;)Lcom/robotium/solo/By;
    .locals 1

    .line 68
    new-instance v0, Lcom/robotium/solo/By$ClassName;

    invoke-direct {v0, p0}, Lcom/robotium/solo/By$ClassName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static cssSelector(Ljava/lang/String;)Lcom/robotium/solo/By;
    .locals 1

    .line 44
    new-instance v0, Lcom/robotium/solo/By$CssSelector;

    invoke-direct {v0, p0}, Lcom/robotium/solo/By$CssSelector;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static id(Ljava/lang/String;)Lcom/robotium/solo/By;
    .locals 1

    .line 20
    new-instance v0, Lcom/robotium/solo/By$Id;

    invoke-direct {v0, p0}, Lcom/robotium/solo/By$Id;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static name(Ljava/lang/String;)Lcom/robotium/solo/By;
    .locals 1

    .line 56
    new-instance v0, Lcom/robotium/solo/By$Name;

    invoke-direct {v0, p0}, Lcom/robotium/solo/By$Name;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static tagName(Ljava/lang/String;)Lcom/robotium/solo/By;
    .locals 1

    .line 92
    new-instance v0, Lcom/robotium/solo/By$TagName;

    invoke-direct {v0, p0}, Lcom/robotium/solo/By$TagName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static textContent(Ljava/lang/String;)Lcom/robotium/solo/By;
    .locals 1

    .line 80
    new-instance v0, Lcom/robotium/solo/By$Text;

    invoke-direct {v0, p0}, Lcom/robotium/solo/By$Text;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static xpath(Ljava/lang/String;)Lcom/robotium/solo/By;
    .locals 1

    .line 32
    new-instance v0, Lcom/robotium/solo/By$Xpath;

    invoke-direct {v0, p0}, Lcom/robotium/solo/By$Xpath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
