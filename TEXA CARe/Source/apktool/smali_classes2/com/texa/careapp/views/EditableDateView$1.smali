.class Lcom/texa/careapp/views/EditableDateView$1;
.super Landroid/content/ContextWrapper;
.source "EditableDateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/views/EditableDateView;->getCorrectContext()Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/views/EditableDateView;

.field private wrappedResources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/texa/careapp/views/EditableDateView;Landroid/content/Context;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/texa/careapp/views/EditableDateView$1;->this$0:Lcom/texa/careapp/views/EditableDateView;

    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 4

    .line 100
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/texa/careapp/views/EditableDateView$1;->wrappedResources:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lcom/texa/careapp/views/EditableDateView$1$1;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/texa/careapp/views/EditableDateView$1$1;-><init>(Lcom/texa/careapp/views/EditableDateView$1;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/texa/careapp/views/EditableDateView$1;->wrappedResources:Landroid/content/res/Resources;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/texa/careapp/views/EditableDateView$1;->wrappedResources:Landroid/content/res/Resources;

    return-object v0
.end method
