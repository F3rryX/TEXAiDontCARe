.class Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen$TyresAdapter;
.super Lcom/texa/careapp/utils/SimpleSpinnerAdapter;
.source "SetTyresOdometerScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TyresAdapter"
.end annotation


# instance fields
.field TyresTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mUserName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen$TyresAdapter;->this$0:Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen;

    .line 188
    invoke-direct {p0, p3}, Lcom/texa/careapp/utils/SimpleSpinnerAdapter;-><init>(Ljava/util/List;)V

    .line 189
    iput-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen$TyresAdapter;->TyresTypeList:Ljava/util/List;

    .line 190
    iput-object p2, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen$TyresAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 196
    iget-object p2, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen$TyresAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0d00f6

    const/4 v1, 0x0

    .line 197
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0a0466

    .line 199
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen$TyresAdapter;->mUserName:Landroid/widget/TextView;

    .line 200
    iget-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen$TyresAdapter;->TyresTypeList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 201
    iget-object p3, p0, Lcom/texa/careapp/app/schedule/addThreshold/tyres/SetTyresOdometerScreen$TyresAdapter;->mUserName:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
