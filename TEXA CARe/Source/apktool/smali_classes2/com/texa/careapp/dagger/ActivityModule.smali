.class public Lcom/texa/careapp/dagger/ActivityModule;
.super Ljava/lang/Object;
.source "ActivityModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/texa/careapp/dagger/ActivityModule;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method activity()Landroid/app/Activity;
    .locals 1
    .annotation runtime Lcom/texa/careapp/dagger/PerActivity;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/texa/careapp/dagger/ActivityModule;->activity:Landroid/app/Activity;

    return-object v0
.end method
