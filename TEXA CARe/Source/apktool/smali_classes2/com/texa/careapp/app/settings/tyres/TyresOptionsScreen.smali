.class public Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;
.super Lcom/texa/care/navigation/Screen;
.source "TyresOptionsScreen.java"


# static fields
.field private static TAG:Ljava/lang/String; = "TyresOptionsScreen"


# instance fields
.field private final mVehicle:Lcom/texa/careapp/model/VehicleModel;


# direct methods
.method public static synthetic $r8$lambda$PoEI0fF3IwvwBFFo7vjKLBpXNjM(Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;->onTyresInversionClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$huOu5ZWHWkCROnlbXMIMtm5hMiE(Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;->onTyresNewInstallationClick(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/texa/care/navigation/Screen;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;->mVehicle:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method

.method private onTyresInversionClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "%s onTyresInversionClick()"

    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;->mVehicle:Lcom/texa/careapp/model/VehicleModel;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/settings/tyres/TyresInversionScreen;-><init>(Lcom/texa/careapp/model/VehicleModel;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method private onTyresNewInstallationClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "%s onTyresNewInstallationClick()"

    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    new-instance v0, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;->mVehicle:Lcom/texa/careapp/model/VehicleModel;

    invoke-direct {v0, v1}, Lcom/texa/careapp/app/settings/tyres/TyresNewInstallScreen;-><init>(Lcom/texa/careapp/model/VehicleModel;)V

    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method


# virtual methods
.method public afterViewInjection(Landroid/view/View;)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/CareApplication;

    invoke-virtual {v0}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;)V

    .line 34
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/databinding/ScreenTyresOptionsBinding;

    .line 35
    iget-object v0, p1, Lcom/texa/careapp/databinding/ScreenTyresOptionsBinding;->buttonTyresNewInstallation:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen$$ExternalSyntheticLambda1;-><init>(Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p1, p1, Lcom/texa/careapp/databinding/ScreenTyresOptionsBinding;->buttonTyresInversion:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {p0}, Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->updateTitle()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/texa/careapp/app/settings/tyres/TyresOptionsScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00ea

    return v0
.end method

.method public getTitle()I
    .locals 1

    const v0, 0x7f110d02

    return v0
.end method
