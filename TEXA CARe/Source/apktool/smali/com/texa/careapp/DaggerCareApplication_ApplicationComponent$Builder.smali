.class public final Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerCareApplication_ApplicationComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private apiModule:Lcom/texa/careapp/dagger/ApiModule;

.field private careModule:Lcom/texa/careapp/dagger/CareModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$1;)V
    .locals 0

    .line 3215
    invoke-direct {p0}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public apiModule(Lcom/texa/careapp/dagger/ApiModule;)Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;
    .locals 0

    .line 3229
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/dagger/ApiModule;

    iput-object p1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;->apiModule:Lcom/texa/careapp/dagger/ApiModule;

    return-object p0
.end method

.method public build()Lcom/texa/careapp/CareApplication$ApplicationComponent;
    .locals 4

    .line 3234
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;->careModule:Lcom/texa/careapp/dagger/CareModule;

    const-class v1, Lcom/texa/careapp/dagger/CareModule;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3235
    iget-object v0, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;->apiModule:Lcom/texa/careapp/dagger/ApiModule;

    const-class v1, Lcom/texa/careapp/dagger/ApiModule;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3236
    new-instance v0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;

    iget-object v1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;->careModule:Lcom/texa/careapp/dagger/CareModule;

    iget-object v2, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;->apiModule:Lcom/texa/careapp/dagger/ApiModule;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent;-><init>(Lcom/texa/careapp/dagger/CareModule;Lcom/texa/careapp/dagger/ApiModule;Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$1;)V

    return-object v0
.end method

.method public careModule(Lcom/texa/careapp/dagger/CareModule;)Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;
    .locals 0

    .line 3224
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/dagger/CareModule;

    iput-object p1, p0, Lcom/texa/careapp/DaggerCareApplication_ApplicationComponent$Builder;->careModule:Lcom/texa/careapp/dagger/CareModule;

    return-object p0
.end method
