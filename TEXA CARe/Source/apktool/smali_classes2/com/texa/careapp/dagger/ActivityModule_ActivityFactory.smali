.class public final Lcom/texa/careapp/dagger/ActivityModule_ActivityFactory;
.super Ljava/lang/Object;
.source "ActivityModule_ActivityFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/texa/careapp/dagger/ActivityModule;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/dagger/ActivityModule;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/texa/careapp/dagger/ActivityModule_ActivityFactory;->module:Lcom/texa/careapp/dagger/ActivityModule;

    return-void
.end method

.method public static activity(Lcom/texa/careapp/dagger/ActivityModule;)Landroid/app/Activity;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/ActivityModule;->activity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public static create(Lcom/texa/careapp/dagger/ActivityModule;)Lcom/texa/careapp/dagger/ActivityModule_ActivityFactory;
    .locals 1

    .line 27
    new-instance v0, Lcom/texa/careapp/dagger/ActivityModule_ActivityFactory;

    invoke-direct {v0, p0}, Lcom/texa/careapp/dagger/ActivityModule_ActivityFactory;-><init>(Lcom/texa/careapp/dagger/ActivityModule;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroid/app/Activity;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/texa/careapp/dagger/ActivityModule_ActivityFactory;->module:Lcom/texa/careapp/dagger/ActivityModule;

    invoke-static {v0}, Lcom/texa/careapp/dagger/ActivityModule_ActivityFactory;->activity(Lcom/texa/careapp/dagger/ActivityModule;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/texa/careapp/dagger/ActivityModule_ActivityFactory;->get()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
