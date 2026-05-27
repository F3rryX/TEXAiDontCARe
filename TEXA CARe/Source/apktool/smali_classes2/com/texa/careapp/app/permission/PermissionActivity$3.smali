.class Lcom/texa/careapp/app/permission/PermissionActivity$3;
.super Lcom/texa/careapp/utils/permission/Func;
.source "PermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/permission/PermissionActivity;->requestPermission([Ljava/lang/String;)V
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

    .line 109
    iput-object p1, p0, Lcom/texa/careapp/app/permission/PermissionActivity$3;->this$0:Lcom/texa/careapp/app/permission/PermissionActivity;

    invoke-direct {p0}, Lcom/texa/careapp/utils/permission/Func;-><init>()V

    return-void
.end method


# virtual methods
.method protected call()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/texa/careapp/app/permission/PermissionActivity$3;->this$0:Lcom/texa/careapp/app/permission/PermissionActivity;

    invoke-static {v0}, Lcom/texa/careapp/app/permission/PermissionActivity;->access$100(Lcom/texa/careapp/app/permission/PermissionActivity;)Lcom/texa/careapp/views/NoSwipeableViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/texa/careapp/app/permission/PermissionActivity$3;->this$0:Lcom/texa/careapp/app/permission/PermissionActivity;

    invoke-static {v1}, Lcom/texa/careapp/app/permission/PermissionActivity;->access$100(Lcom/texa/careapp/app/permission/PermissionActivity;)Lcom/texa/careapp/views/NoSwipeableViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/texa/careapp/views/NoSwipeableViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/views/NoSwipeableViewPager;->setCurrentItem(I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Permission enabled"

    .line 113
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
