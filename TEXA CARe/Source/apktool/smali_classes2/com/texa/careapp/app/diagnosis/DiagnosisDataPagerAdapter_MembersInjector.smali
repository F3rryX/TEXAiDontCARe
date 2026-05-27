.class public final Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter_MembersInjector;
.super Ljava/lang/Object;
.source "DiagnosisDataPagerAdapter_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter_MembersInjector;

    invoke-direct {v0, p0}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMContext(Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;Landroid/content/Context;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter_MembersInjector;->mContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter_MembersInjector;->injectMContext(Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter_MembersInjector;->injectMembers(Lcom/texa/careapp/app/diagnosis/DiagnosisDataPagerAdapter;)V

    return-void
.end method
