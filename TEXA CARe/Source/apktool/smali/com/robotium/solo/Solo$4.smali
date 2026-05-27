.class Lcom/robotium/solo/Solo$4;
.super Ljava/lang/Object;
.source "Solo.java"

# interfaces
.implements Lcom/robotium/solo/Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/robotium/solo/Solo;->waitForEmptyActivityStack(I)Z
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

    .line 3647
    iput-object p1, p0, Lcom/robotium/solo/Solo$4;->this$0:Lcom/robotium/solo/Solo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSatisfied()Z
    .locals 1

    .line 3650
    iget-object v0, p0, Lcom/robotium/solo/Solo$4;->this$0:Lcom/robotium/solo/Solo;

    iget-object v0, v0, Lcom/robotium/solo/Solo;->activityUtils:Lcom/robotium/solo/ActivityUtils;

    invoke-virtual {v0}, Lcom/robotium/solo/ActivityUtils;->isActivityStackEmpty()Z

    move-result v0

    return v0
.end method
