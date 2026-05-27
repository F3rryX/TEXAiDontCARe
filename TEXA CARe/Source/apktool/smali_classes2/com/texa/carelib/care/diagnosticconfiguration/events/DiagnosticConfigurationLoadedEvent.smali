.class public Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;
.super Lcom/texa/carelib/core/events/ErrorEventBase;
.source "DiagnosticConfigurationLoadedEvent.java"


# instance fields
.field private mConfigurationReports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;Landroid/content/Context;Ljava/util/List;Lcom/texa/carelib/core/CareError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/care/diagnosticconfiguration/DiagnosticConfiguration;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lcom/texa/carelib/core/CareError;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p4}, Lcom/texa/carelib/core/events/ErrorEventBase;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    .line 33
    iput-object p2, p0, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;->mContext:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;->mConfigurationReports:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getConfigurationReports()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/texa/carelib/care/diagnosticconfiguration/events/DiagnosticConfigurationLoadedEvent;->mConfigurationReports:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
