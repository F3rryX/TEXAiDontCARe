.class public Lcom/texa/carelib/webservices/internal/ConfigReport;
.super Ljava/lang/Object;
.source "ConfigReport.java"


# instance fields
.field private mContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Content"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 23
    invoke-direct {p0, v0}, Lcom/texa/carelib/webservices/internal/ConfigReport;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/ConfigReport;->mContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/texa/carelib/webservices/internal/ConfigReport;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/texa/carelib/webservices/internal/ConfigReport;->mContent:Ljava/lang/String;

    return-void
.end method
