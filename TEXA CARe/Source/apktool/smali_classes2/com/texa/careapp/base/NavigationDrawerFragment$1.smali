.class Lcom/texa/careapp/base/NavigationDrawerFragment$1;
.super Landroidx/appcompat/app/ActionBarDrawerToggle;
.source "NavigationDrawerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/base/NavigationDrawerFragment;->setup(ILandroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;Lcom/texa/care/navigation/Navigator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/base/NavigationDrawerFragment;


# direct methods
.method constructor <init>(Lcom/texa/careapp/base/NavigationDrawerFragment;Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V
    .locals 6

    .line 269
    iput-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment$1;->this$0:Lcom/texa/careapp/base/NavigationDrawerFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0

    .line 272
    invoke-super {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    .line 273
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment$1;->this$0:Lcom/texa/careapp/base/NavigationDrawerFragment;

    invoke-virtual {p1}, Lcom/texa/careapp/base/NavigationDrawerFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment$1;->this$0:Lcom/texa/careapp/base/NavigationDrawerFragment;

    invoke-virtual {p1}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2

    .line 280
    invoke-super {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    .line 281
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment$1;->this$0:Lcom/texa/careapp/base/NavigationDrawerFragment;

    iget-object p1, p1, Lcom/texa/careapp/base/NavigationDrawerFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sget-object v0, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->FBA_OPENED_SIDE_MENU:Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/FirebaseAnalyticsEventManager$CAReFirebaseAnalyticsEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 282
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment$1;->this$0:Lcom/texa/careapp/base/NavigationDrawerFragment;

    invoke-virtual {p1}, Lcom/texa/careapp/base/NavigationDrawerFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 283
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment$1;->this$0:Lcom/texa/careapp/base/NavigationDrawerFragment;

    invoke-static {p1}, Lcom/texa/careapp/base/NavigationDrawerFragment;->access$000(Lcom/texa/careapp/base/NavigationDrawerFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 284
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment$1;->this$0:Lcom/texa/careapp/base/NavigationDrawerFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/texa/careapp/base/NavigationDrawerFragment;->access$002(Lcom/texa/careapp/base/NavigationDrawerFragment;Z)Z

    .line 285
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment$1;->this$0:Lcom/texa/careapp/base/NavigationDrawerFragment;

    .line 286
    invoke-virtual {p1}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 287
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "navigation_drawer_learned"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 289
    :cond_1
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment$1;->this$0:Lcom/texa/careapp/base/NavigationDrawerFragment;

    invoke-virtual {p1}, Lcom/texa/careapp/base/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 290
    iget-object p1, p0, Lcom/texa/careapp/base/NavigationDrawerFragment$1;->this$0:Lcom/texa/careapp/base/NavigationDrawerFragment;

    invoke-static {p1}, Lcom/texa/careapp/base/NavigationDrawerFragment;->access$100(Lcom/texa/careapp/base/NavigationDrawerFragment;)V

    return-void
.end method
