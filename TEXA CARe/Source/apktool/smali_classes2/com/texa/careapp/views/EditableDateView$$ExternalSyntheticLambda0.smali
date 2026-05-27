.class public final synthetic Lcom/texa/careapp/views/EditableDateView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/views/EditableDateView;

.field public final synthetic f$1:Landroid/app/DatePickerDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/views/EditableDateView;Landroid/app/DatePickerDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/views/EditableDateView$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/views/EditableDateView;

    iput-object p2, p0, Lcom/texa/careapp/views/EditableDateView$$ExternalSyntheticLambda0;->f$1:Landroid/app/DatePickerDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/views/EditableDateView$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/views/EditableDateView;

    iget-object v1, p0, Lcom/texa/careapp/views/EditableDateView$$ExternalSyntheticLambda0;->f$1:Landroid/app/DatePickerDialog;

    invoke-virtual {v0, v1, p1, p2}, Lcom/texa/careapp/views/EditableDateView;->lambda$fixDatePicker$1$com-texa-careapp-views-EditableDateView(Landroid/app/DatePickerDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method
