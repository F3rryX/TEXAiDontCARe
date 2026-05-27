.class Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$1;
.super Ljava/lang/Object;
.source "NumberValidatorScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->initCountrySpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$1;->this$0:Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 102
    iget-object p1, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$1;->this$0:Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->access$100(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen$1;->this$0:Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;

    invoke-static {p2, p3}, Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;->access$000(Lcom/texa/careapp/app/activationSosServices/phone/NumberValidatorScreen;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
