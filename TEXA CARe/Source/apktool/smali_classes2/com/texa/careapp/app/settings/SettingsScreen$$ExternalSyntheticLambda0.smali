.class public final synthetic Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/settings/SettingsScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/settings/SettingsScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/settings/SettingsScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/settings/SettingsScreen$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/app/settings/SettingsScreen;

    check-cast p1, Lcom/texa/careapp/model/UserModel;

    invoke-static {v0, p1}, Lcom/texa/careapp/app/settings/SettingsScreen;->$r8$lambda$FPzNHdPBQJSyqzz8r_U9PrGOTrk(Lcom/texa/careapp/app/settings/SettingsScreen;Lcom/texa/careapp/model/UserModel;)V

    return-void
.end method
