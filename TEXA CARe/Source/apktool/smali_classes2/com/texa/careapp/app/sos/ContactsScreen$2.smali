.class Lcom/texa/careapp/app/sos/ContactsScreen$2;
.super Ljava/lang/Object;
.source "ContactsScreen.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/sos/ContactsScreen;->afterViewInjection(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/sos/ContactsScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/sos/ContactsScreen;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen$2;->this$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen$2;->this$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    invoke-static {v0}, Lcom/texa/careapp/app/sos/ContactsScreen;->access$100(Lcom/texa/careapp/app/sos/ContactsScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 194
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/ContactsScreen$2;->this$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    .line 195
    invoke-static {v1}, Lcom/texa/careapp/app/sos/ContactsScreen;->access$100(Lcom/texa/careapp/app/sos/ContactsScreen;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/texa/careapp/app/sos/ContactsScreen$2;->this$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    invoke-static {v2}, Lcom/texa/careapp/app/sos/ContactsScreen;->access$100(Lcom/texa/careapp/app/sos/ContactsScreen;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    const/4 v2, -0x1

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x2

    const v2, 0x7f0a00ac

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 198
    iget-object v1, p0, Lcom/texa/careapp/app/sos/ContactsScreen$2;->this$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    invoke-static {v1}, Lcom/texa/careapp/app/sos/ContactsScreen;->access$100(Lcom/texa/careapp/app/sos/ContactsScreen;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    return v0
.end method
