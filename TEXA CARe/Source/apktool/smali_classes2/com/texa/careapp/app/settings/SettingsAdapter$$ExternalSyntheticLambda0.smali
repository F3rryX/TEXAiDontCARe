.class public final synthetic Lcom/texa/careapp/app/settings/SettingsAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/settings/SettingsAdapter;

.field public final synthetic f$1:Lcom/texa/careapp/model/VehicleModel;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/settings/SettingsAdapter;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/settings/SettingsAdapter;

    iput-object p2, p0, Lcom/texa/careapp/app/settings/SettingsAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/settings/SettingsAdapter;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/settings/SettingsAdapter;->lambda$inflateVehicleList$0$com-texa-careapp-app-settings-SettingsAdapter(Lcom/texa/careapp/model/VehicleModel;Landroid/view/View;)V

    return-void
.end method
