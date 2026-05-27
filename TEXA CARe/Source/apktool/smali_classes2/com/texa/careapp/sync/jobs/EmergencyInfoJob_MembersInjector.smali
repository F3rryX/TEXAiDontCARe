.class public final Lcom/texa/careapp/sync/jobs/EmergencyInfoJob_MembersInjector;
.super Ljava/lang/Object;
.source "EmergencyInfoJob_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/sync/jobs/EmergencyInfoJob;",
        ">;"
    }
.end annotation


# instance fields
.field private final mPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final texaCareApiServiceUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/EmergencyInfoJob_MembersInjector;->texaCareApiServiceUserProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/texa/careapp/sync/jobs/EmergencyInfoJob_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/texa/careapp/networking/TexaCareApiServiceUser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/sync/jobs/EmergencyInfoJob;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/texa/careapp/sync/jobs/EmergencyInfoJob_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/texa/careapp/sync/jobs/EmergencyInfoJob_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMPreferences(Lcom/texa/careapp/sync/jobs/EmergencyInfoJob;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/EmergencyInfoJob;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static injectTexaCareApiServiceUser(Lcom/texa/careapp/sync/jobs/EmergencyInfoJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/texa/careapp/sync/jobs/EmergencyInfoJob;->texaCareApiServiceUser:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/sync/jobs/EmergencyInfoJob;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/EmergencyInfoJob_MembersInjector;->texaCareApiServiceUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/EmergencyInfoJob_MembersInjector;->injectTexaCareApiServiceUser(Lcom/texa/careapp/sync/jobs/EmergencyInfoJob;Lcom/texa/careapp/networking/TexaCareApiServiceUser;)V

    .line 37
    iget-object v0, p0, Lcom/texa/careapp/sync/jobs/EmergencyInfoJob_MembersInjector;->mPreferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {p1, v0}, Lcom/texa/careapp/sync/jobs/EmergencyInfoJob_MembersInjector;->injectMPreferences(Lcom/texa/careapp/sync/jobs/EmergencyInfoJob;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/texa/careapp/sync/jobs/EmergencyInfoJob;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/sync/jobs/EmergencyInfoJob_MembersInjector;->injectMembers(Lcom/texa/careapp/sync/jobs/EmergencyInfoJob;)V

    return-void
.end method
