.class Lcom/robotium/solo/Solo$1;
.super Ljava/lang/Object;
.source "Solo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/robotium/solo/Solo;->clickOnActionBarHomeButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/robotium/solo/Solo;


# direct methods
.method constructor <init>(Lcom/robotium/solo/Solo;)V
    .locals 0

    .line 1907
    iput-object p1, p0, Lcom/robotium/solo/Solo$1;->this$0:Lcom/robotium/solo/Solo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1910
    iget-object v0, p0, Lcom/robotium/solo/Solo$1;->this$0:Lcom/robotium/solo/Solo;

    iget-object v0, v0, Lcom/robotium/solo/Solo;->clicker:Lcom/robotium/solo/Clicker;

    invoke-virtual {v0}, Lcom/robotium/solo/Clicker;->clickOnActionBarHomeButton()V

    return-void
.end method
