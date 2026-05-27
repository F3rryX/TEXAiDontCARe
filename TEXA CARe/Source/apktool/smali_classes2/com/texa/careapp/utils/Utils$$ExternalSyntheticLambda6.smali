.class public final synthetic Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:D

.field public final synthetic f$2:D

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;DDI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda6;->f$0:Landroid/content/Context;

    iput-wide p2, p0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda6;->f$1:D

    iput-wide p4, p0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda6;->f$2:D

    iput p6, p0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda6;->f$3:I

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 7

    iget-object v0, p0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda6;->f$0:Landroid/content/Context;

    iget-wide v1, p0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda6;->f$1:D

    iget-wide v3, p0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda6;->f$2:D

    iget v5, p0, Lcom/texa/careapp/utils/Utils$$ExternalSyntheticLambda6;->f$3:I

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/texa/careapp/utils/Utils;->lambda$geocodeObservable$8(Landroid/content/Context;DDILio/reactivex/ObservableEmitter;)V

    return-void
.end method
