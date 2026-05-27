.class Lcom/robotium/solo/Presser$1;
.super Ljava/lang/Object;
.source "Presser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/robotium/solo/Presser;->pressSoftKeyboard(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/robotium/solo/Presser;

.field final synthetic val$freshestEditText:Landroid/widget/EditText;

.field final synthetic val$imeAction:I


# direct methods
.method constructor <init>(Lcom/robotium/solo/Presser;Landroid/widget/EditText;I)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/robotium/solo/Presser$1;->this$0:Lcom/robotium/solo/Presser;

    iput-object p2, p0, Lcom/robotium/solo/Presser$1;->val$freshestEditText:Landroid/widget/EditText;

    iput p3, p0, Lcom/robotium/solo/Presser$1;->val$imeAction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/robotium/solo/Presser$1;->val$freshestEditText:Landroid/widget/EditText;

    iget v1, p0, Lcom/robotium/solo/Presser$1;->val$imeAction:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->onEditorAction(I)V

    return-void
.end method
