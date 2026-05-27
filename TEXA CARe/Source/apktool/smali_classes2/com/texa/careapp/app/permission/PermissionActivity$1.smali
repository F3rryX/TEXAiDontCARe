.class Lcom/texa/careapp/app/permission/PermissionActivity$1;
.super Ljava/lang/Object;
.source "PermissionActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/permission/PermissionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/permission/PermissionActivity;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/permission/PermissionActivity;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/texa/careapp/app/permission/PermissionActivity$1;->this$0:Lcom/texa/careapp/app/permission/PermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionActivity$1;->this$0:Lcom/texa/careapp/app/permission/PermissionActivity;

    iget-object v0, v0, Lcom/texa/careapp/app/permission/PermissionActivity;->mSkipBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/app/permission/PermissionActivity$1;->this$0:Lcom/texa/careapp/app/permission/PermissionActivity;

    invoke-static {v1}, Lcom/texa/careapp/app/permission/PermissionActivity;->access$000(Lcom/texa/careapp/app/permission/PermissionActivity;)Lcom/texa/careapp/app/permission/PermissionAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/texa/careapp/app/permission/PermissionAdapter;->getSkipTextRes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionActivity$1;->this$0:Lcom/texa/careapp/app/permission/PermissionActivity;

    iget-object v0, v0, Lcom/texa/careapp/app/permission/PermissionActivity;->mSkipBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/app/permission/PermissionActivity$1;->this$0:Lcom/texa/careapp/app/permission/PermissionActivity;

    invoke-static {v1}, Lcom/texa/careapp/app/permission/PermissionActivity;->access$000(Lcom/texa/careapp/app/permission/PermissionActivity;)Lcom/texa/careapp/app/permission/PermissionAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/texa/careapp/app/permission/PermissionAdapter;->getIsMandatory(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
