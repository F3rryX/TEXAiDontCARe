.class Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$2;
.super Ljava/lang/Object;
.source "FindVehicleCardViewPresenter.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->setLocationText(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$2;->this$0:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 283
    sget-object v0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "error during location retrieving procedure"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 2

    .line 265
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$2;->this$0:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->access$100(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;Z)V

    .line 267
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$2;->this$0:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;

    invoke-static {p1}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->access$200(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$2;->this$0:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;

    invoke-static {p1}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->access$300(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 268
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$2;->this$0:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;

    invoke-static {p1}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->access$200(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$2;->this$0:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;

    invoke-static {v1}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->access$400(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$2;->this$0:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;

    invoke-static {p1}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->access$200(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$2;->this$0:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;

    invoke-static {p1}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->access$300(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$2;->this$0:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;

    invoke-static {v0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->access$500(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$2;->this$0:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;

    invoke-static {p1, v0}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->access$100(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;Z)V

    .line 274
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$2;->this$0:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;

    invoke-static {p1}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->access$200(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$2;->this$0:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;

    invoke-static {p1}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->access$300(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 275
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$2;->this$0:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;

    invoke-static {p1}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->access$200(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object p1, p0, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$2;->this$0:Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;

    invoke-static {p1}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;->access$300(Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    const-string v0, "---"

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 257
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/dashboard/card/FindVehicleCardViewPresenter$2;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
