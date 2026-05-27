.class public Lcom/texa/carelib/webservices/ConfigurationReport;
.super Ljava/lang/Object;
.source "ConfigurationReport.java"


# instance fields
.field private mContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation
.end field

.field private mStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/texa/carelib/webservices/ConfigurationReport;->mStatus:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/texa/carelib/webservices/ConfigurationReport;->mContent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/texa/carelib/webservices/ConfigurationReport;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/texa/carelib/webservices/ConfigurationReport;->mStatus:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/texa/carelib/webservices/ConfigurationReport;->mContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/texa/carelib/webservices/ConfigurationReport;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/texa/carelib/webservices/ConfigurationReport;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)Lcom/texa/carelib/webservices/ConfigurationReport;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/texa/carelib/webservices/ConfigurationReport;->mContent:Ljava/lang/String;

    return-object p0
.end method

.method public setStatus(Ljava/lang/String;)Lcom/texa/carelib/webservices/ConfigurationReport;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/texa/carelib/webservices/ConfigurationReport;->mStatus:Ljava/lang/String;

    return-object p0
.end method
