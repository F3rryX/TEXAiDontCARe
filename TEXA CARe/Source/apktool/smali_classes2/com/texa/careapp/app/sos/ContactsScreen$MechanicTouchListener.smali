.class Lcom/texa/careapp/app/sos/ContactsScreen$MechanicTouchListener;
.super Ljava/lang/Object;
.source "ContactsScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/sos/ContactsScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MechanicTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/sos/ContactsScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/sos/ContactsScreen;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen$MechanicTouchListener;->this$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 309
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const p2, 0x7f06008b

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen$MechanicTouchListener;->this$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/sos/ContactsScreen;->access$300(Lcom/texa/careapp/app/sos/ContactsScreen;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 319
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen$MechanicTouchListener;->this$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/sos/ContactsScreen;->access$300(Lcom/texa/careapp/app/sos/ContactsScreen;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Lcom/texa/careapp/app/sos/ContactsScreen$MechanicTouchListener;->this$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    invoke-static {v1}, Lcom/texa/careapp/app/sos/ContactsScreen;->access$500(Lcom/texa/careapp/app/sos/ContactsScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 320
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen$MechanicTouchListener;->this$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/sos/ContactsScreen;->access$100(Lcom/texa/careapp/app/sos/ContactsScreen;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/texa/careapp/app/sos/ContactsScreen$MechanicTouchListener;->this$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    invoke-static {p2}, Lcom/texa/careapp/app/sos/ContactsScreen;->access$300(Lcom/texa/careapp/app/sos/ContactsScreen;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 321
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen$MechanicTouchListener;->this$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/sos/ContactsScreen;->access$600(Lcom/texa/careapp/app/sos/ContactsScreen;)V

    return v0

    .line 312
    :cond_2
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen$MechanicTouchListener;->this$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/sos/ContactsScreen;->access$200(Lcom/texa/careapp/app/sos/ContactsScreen;)V

    .line 313
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen$MechanicTouchListener;->this$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/sos/ContactsScreen;->access$300(Lcom/texa/careapp/app/sos/ContactsScreen;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 314
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen$MechanicTouchListener;->this$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/sos/ContactsScreen;->access$300(Lcom/texa/careapp/app/sos/ContactsScreen;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Lcom/texa/careapp/app/sos/ContactsScreen$MechanicTouchListener;->this$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    invoke-static {v1}, Lcom/texa/careapp/app/sos/ContactsScreen;->access$400(Lcom/texa/careapp/app/sos/ContactsScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 315
    :cond_3
    iget-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen$MechanicTouchListener;->this$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/sos/ContactsScreen;->access$100(Lcom/texa/careapp/app/sos/ContactsScreen;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/texa/careapp/app/sos/ContactsScreen$MechanicTouchListener;->this$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    invoke-static {p2}, Lcom/texa/careapp/app/sos/ContactsScreen;->access$300(Lcom/texa/careapp/app/sos/ContactsScreen;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return v0
.end method
