.class public final synthetic Lcom/texa/careapp/app/settings/SettingsAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/settings/SettingsAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/settings/SettingsAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/settings/SettingsAdapter;

    iput p2, p0, Lcom/texa/careapp/app/settings/SettingsAdapter$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/settings/SettingsAdapter;

    iget v1, p0, Lcom/texa/careapp/app/settings/SettingsAdapter$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {v0, v1}, Lcom/texa/careapp/app/settings/SettingsAdapter;->lambda$refreshUserItem$1$com-texa-careapp-app-settings-SettingsAdapter(I)V

    return-void
.end method
