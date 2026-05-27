.class public Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationStatusChangedEvent;
.super Lcom/texa/carelib/core/events/EventBase;
.source "DiagnosticConfigurationStatusChangedEvent.java"


# instance fields
.field private final mStatus:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/texa/carelib/core/events/EventBase;-><init>(Ljava/lang/Object;)V

    .line 26
    iput-object p2, p0, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationStatusChangedEvent;->mStatus:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationStatusChangedEvent;->mStatus:Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfigurationStatus;

    return-object v0
.end method
