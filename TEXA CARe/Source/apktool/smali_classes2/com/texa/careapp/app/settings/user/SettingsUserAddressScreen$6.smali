.class Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen$6;
.super Ljava/lang/Object;
.source "SettingsUserAddressScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->initCountrySpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen$6;->this$0:Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 244
    iget-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen$6;->this$0:Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;

    invoke-static {p1, p3}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->access$102(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;I)I

    .line 245
    iget-object p1, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen$6;->this$0:Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->access$000(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;)Lcom/texa/careapp/model/UserModel;

    move-result-object p1

    iget-object p2, p0, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen$6;->this$0:Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;

    invoke-static {p2}, Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;->access$200(Lcom/texa/careapp/app/settings/user/SettingsUserAddressScreen;)Lcom/texa/careapp/utils/CountryAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/texa/careapp/utils/CountryAdapter;->getCountryCode(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/careapp/model/UserModel;->setCountry(Ljava/lang/String;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
