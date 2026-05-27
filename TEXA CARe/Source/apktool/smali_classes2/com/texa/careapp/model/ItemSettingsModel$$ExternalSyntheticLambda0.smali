.class public final synthetic Lcom/texa/careapp/model/ItemSettingsModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/texa/careapp/model/ItemSettingsModel$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/texa/careapp/model/ItemSettingsModel$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/texa/careapp/model/ItemSettingsModel$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/texa/careapp/model/ItemSettingsModel$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/texa/careapp/model/ItemSettingsModel;->lambda$setOnCLickListener$0(ILandroid/content/Context;Landroid/view/View;)V

    return-void
.end method
