.class public Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;
.super Lcom/texa/carelib/core/events/ErrorEventBase;
.source "DiagnosticConfigurationProgressChangedEvent.java"


# instance fields
.field private mCancel:Z

.field private final mMax:F

.field private final mProgress:F


# direct methods
.method public constructor <init>(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;FFLcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p4}, Lcom/texa/carelib/core/events/ErrorEventBase;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    .line 30
    iput p2, p0, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;->mProgress:F

    .line 31
    iput p3, p0, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;->mMax:F

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;->mCancel:Z

    return-void
.end method

.method public getMax()F
    .locals 1

    .line 51
    iget v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;->mMax:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 40
    iget v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;->mProgress:F

    return v0
.end method

.method public isCancel()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationProgressChangedEvent;->mCancel:Z

    return v0
.end method
