.class public final synthetic Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/careapp/utils/shake/ShakeDetector$OnShakeListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda6;->f$0:Lcom/texa/careapp/app/MainActivity;

    return-void
.end method


# virtual methods
.method public final onShake(I)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/MainActivity$$ExternalSyntheticLambda6;->f$0:Lcom/texa/careapp/app/MainActivity;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/MainActivity;->lambda$startReadShake$5$com-texa-careapp-app-MainActivity(I)V

    return-void
.end method
