.class public final synthetic Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/settings/SettingsScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/settings/SettingsScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/settings/SettingsScreen;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda3;->f$0:Lcom/texa/careapp/app/settings/SettingsScreen;

    check-cast p1, Lcom/texa/careapp/networking/response/UserResponse;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/settings/SettingsScreen;->lambda$observeUser$0$com-texa-careapp-app-settings-SettingsScreen(Lcom/texa/careapp/networking/response/UserResponse;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
