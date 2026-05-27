.class public final synthetic Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConversionFunction;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/profile/locale/MassUnit;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/profile/locale/MassUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda12;->f$0:Lcom/texa/carelib/profile/locale/MassUnit;

    return-void
.end method


# virtual methods
.method public final convert(D)D
    .locals 1

    iget-object v0, p0, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$$ExternalSyntheticLambda12;->f$0:Lcom/texa/carelib/profile/locale/MassUnit;

    invoke-virtual {v0, p1, p2}, Lcom/texa/carelib/profile/locale/MassUnit;->toPound(D)D

    move-result-wide p1

    return-wide p1
.end method
