.class Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "VehicleScreenDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->afterViewInjection(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$1;->this$0:Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$1;->this$0:Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;

    invoke-static {v0}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;->access$000(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/timehop/stickyheadersrecyclerview/StickyRecyclerHeadersDecoration;->invalidateHeaders()V

    return-void
.end method
