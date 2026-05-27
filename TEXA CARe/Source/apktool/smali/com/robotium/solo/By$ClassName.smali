.class Lcom/robotium/solo/By$ClassName;
.super Lcom/robotium/solo/By;
.source "By.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/robotium/solo/By;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassName"
.end annotation


# instance fields
.field private final className:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/robotium/solo/By;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/robotium/solo/By$ClassName;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/robotium/solo/By$ClassName;->className:Ljava/lang/String;

    return-object v0
.end method
