.class public final synthetic Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/settings/SettingsScreen;

.field public final synthetic f$1:Lcom/texa/careapp/model/UserModel;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/model/UserModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/settings/SettingsScreen;

    iput-object p2, p0, Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda4;->f$1:Lcom/texa/careapp/model/UserModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/settings/SettingsScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda4;->f$1:Lcom/texa/careapp/model/UserModel;

    check-cast p1, Lcom/texa/careapp/networking/response/UserResponse;

    invoke-virtual {v0, v1, p1}, Lcom/texa/careapp/app/settings/SettingsScreen;->lambda$observeUser$1$com-texa-careapp-app-settings-SettingsScreen(Lcom/texa/careapp/model/UserModel;Lcom/texa/careapp/networking/response/UserResponse;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
