.class Lcom/robotium/solo/Setter$5;
.super Ljava/lang/Object;
.source "Setter.java"

# interfaces
.implements Lcom/robotium/solo/Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/robotium/solo/Setter;->setNavigationDrawer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/robotium/solo/Setter;

.field final synthetic val$leftDrawer:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/robotium/solo/Setter;Landroid/view/View;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/robotium/solo/Setter$5;->this$0:Lcom/robotium/solo/Setter;

    iput-object p2, p0, Lcom/robotium/solo/Setter$5;->val$leftDrawer:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSatisfied()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/robotium/solo/Setter$5;->val$leftDrawer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0
.end method
