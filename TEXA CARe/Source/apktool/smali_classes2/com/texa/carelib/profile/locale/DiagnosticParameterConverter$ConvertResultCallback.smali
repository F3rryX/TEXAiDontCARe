.class public abstract Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConvertResultCallback;
.super Ljava/lang/Object;
.source "DiagnosticParameterConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ConvertResultCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter$ConvertResultCallback;->this$0:Lcom/texa/carelib/profile/locale/DiagnosticParameterConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract onResult(DLjava/lang/String;)V
.end method
