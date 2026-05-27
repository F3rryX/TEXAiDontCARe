.class public final synthetic Lcom/texa/careapp/views/EmergencyButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/views/EmergencyButton;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/views/EmergencyButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/views/EmergencyButton$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/views/EmergencyButton;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/views/EmergencyButton$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/views/EmergencyButton;

    invoke-virtual {v0, p1, p2}, Lcom/texa/careapp/views/EmergencyButton;->lambda$setValues$0$com-texa-careapp-views-EmergencyButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
