.class public Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder;
.super Landroid/view/View;
.source "CareConfigurationRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VehicleViewHolder"
.end annotation


# instance fields
.field protected itemLayout:Landroid/widget/LinearLayout;

.field protected label:Landroid/widget/TextView;

.field protected subLabel:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;Landroid/content/Context;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 4

    .line 124
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder;->this$0:Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;

    .line 125
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-static {p1}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->access$000(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0182

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    .line 127
    invoke-static {p1}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->access$000(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0181

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder;->label:Landroid/widget/TextView;

    .line 128
    invoke-static {p1}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->access$000(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0183

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder;->subLabel:Landroid/widget/TextView;

    .line 129
    invoke-static {p3}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Lcom/texa/careapp/model/VehicleModel;)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p3}, Lcom/texa/careapp/model/VehicleModel;->getDescription()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string/jumbo v0, "||"

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 136
    aget-object v1, p1, v1

    invoke-static {v1}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {p3, v1}, Lcom/texa/careapp/model/VehicleModel;->setModelName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    .line 139
    :goto_0
    invoke-virtual {p3}, Lcom/texa/careapp/model/VehicleModel;->getBrandName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    .line 140
    aget-object p1, p1, v2

    invoke-virtual {p3, p1}, Lcom/texa/careapp/model/VehicleModel;->setBrandName(Ljava/lang/String;)V

    .line 143
    :cond_2
    invoke-virtual {p3}, Lcom/texa/careapp/model/VehicleModel;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/texa/careapp/utils/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/texa/careapp/model/VehicleModel;->getBrandName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/texa/careapp/model/VehicleModel;->getModelName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->formatVehicleModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/texa/careapp/model/VehicleModel;->setDescription(Ljava/lang/String;)V

    .line 146
    :cond_3
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder;->subLabel:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p2}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder;Lcom/texa/careapp/model/VehicleModel;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$com-texa-careapp-app-onboarding-dialogs-CareConfigurationRequestDialog$VehicleViewHolder(Lcom/texa/careapp/model/VehicleModel;Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 149
    iget-object p3, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder;->label:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder;->subLabel:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .line 150
    new-instance p3, Landroid/content/Intent;

    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder;->this$0:Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;

    invoke-static {v0}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->access$100(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;)Lcom/texa/careapp/app/MainActivity;

    move-result-object v0

    const-class v1, Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getPlate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PLATE"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getModelName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MODEL"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getBrandName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BRAND"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getDescription()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DESCRIPTION"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder;->this$0:Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;

    invoke-static {p1}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->access$200(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x14000000

    .line 157
    invoke-virtual {p3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "out_of_the_box_flag"

    .line 158
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder;->this$0:Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;

    invoke-static {p1}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->access$100(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;)Lcom/texa/careapp/app/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/app/MainActivity;->finish()V

    .line 161
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder;->this$0:Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;

    invoke-static {p1}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->access$100(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;)Lcom/texa/careapp/app/MainActivity;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/texa/careapp/app/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    invoke-static {p2}, Lcom/texa/careapp/app/service/CareService;->buildDefaultIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 163
    iget-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog$VehicleViewHolder;->this$0:Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;

    invoke-static {p1}, Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;->access$100(Lcom/texa/careapp/app/onboarding/dialogs/CareConfigurationRequestDialog;)Lcom/texa/careapp/app/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/careapp/app/MainActivity;->getNavigator()Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/care/navigation/Navigator;->goBack()Z

    :cond_1
    return-void
.end method
