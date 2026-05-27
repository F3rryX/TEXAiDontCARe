.class public final synthetic Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;

    iput-object p2, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager$$ExternalSyntheticLambda4;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/texa/careapp/app/sos/featuremanager/SosFeatureButtonManager;->lambda$enableButtonForSosActivation$1$com-texa-careapp-app-sos-featuremanager-SosFeatureButtonManager(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
