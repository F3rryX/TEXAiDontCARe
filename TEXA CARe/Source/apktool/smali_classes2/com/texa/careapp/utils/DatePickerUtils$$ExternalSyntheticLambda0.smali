.class public final synthetic Lcom/texa/careapp/utils/DatePickerUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/DatePickerDialog;

.field public final synthetic f$1:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method public synthetic constructor <init>(Landroid/app/DatePickerDialog;Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/DatePickerUtils$$ExternalSyntheticLambda0;->f$0:Landroid/app/DatePickerDialog;

    iput-object p2, p0, Lcom/texa/careapp/utils/DatePickerUtils$$ExternalSyntheticLambda0;->f$1:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/texa/careapp/utils/DatePickerUtils$$ExternalSyntheticLambda0;->f$0:Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/texa/careapp/utils/DatePickerUtils$$ExternalSyntheticLambda0;->f$1:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-static {v0, v1, p1, p2}, Lcom/texa/careapp/utils/DatePickerUtils;->lambda$fixDatePicker$0(Landroid/app/DatePickerDialog;Landroid/app/DatePickerDialog$OnDateSetListener;Landroid/content/DialogInterface;I)V

    return-void
.end method
