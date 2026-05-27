.class public Lcom/texa/careapp/model/PurchaseData;
.super Lcom/activeandroid/Model;
.source "PurchaseData.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "purchase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/model/PurchaseData$ReceiptData;
    }
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "purchase"


# instance fields
.field public productName:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public purchaseSource:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public receiptData:Lcom/texa/careapp/model/PurchaseData$ReceiptData;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "receipt"
    .end annotation
.end field

.field public ticket:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/texa/careapp/model/PurchaseData;->ticket:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/texa/careapp/model/PurchaseData;->purchaseSource:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/texa/careapp/model/PurchaseData;->productName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/Purchase;)V
    .locals 3

    .line 60
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/texa/careapp/model/PurchaseData;->ticket:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/texa/careapp/model/PurchaseData;->purchaseSource:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/texa/careapp/model/PurchaseData;->productName:Ljava/lang/String;

    .line 61
    invoke-virtual {p4}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-virtual {p4}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    :cond_0
    new-instance v1, Lcom/texa/careapp/model/PurchaseData$ReceiptData;

    invoke-virtual {p4}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lcom/android/billingclient/api/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v1, p0, v2, p4, v0}, Lcom/texa/careapp/model/PurchaseData$ReceiptData;-><init>(Lcom/texa/careapp/model/PurchaseData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/texa/careapp/model/PurchaseData;->receiptData:Lcom/texa/careapp/model/PurchaseData$ReceiptData;

    .line 63
    iput-object p2, p0, Lcom/texa/careapp/model/PurchaseData;->ticket:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/texa/careapp/model/PurchaseData;->purchaseSource:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/texa/careapp/model/PurchaseData;->productName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/model/PurchaseData;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseSource()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/texa/careapp/model/PurchaseData;->purchaseSource:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiptData()Lcom/texa/careapp/model/PurchaseData$ReceiptData;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/texa/careapp/model/PurchaseData;->receiptData:Lcom/texa/careapp/model/PurchaseData$ReceiptData;

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/texa/careapp/model/PurchaseData;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/texa/careapp/model/PurchaseData;->productName:Ljava/lang/String;

    return-void
.end method

.method public setPurchaseSource(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/texa/careapp/model/PurchaseData;->purchaseSource:Ljava/lang/String;

    return-void
.end method

.method public setReceiptData(Lcom/texa/careapp/model/PurchaseData$ReceiptData;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/texa/careapp/model/PurchaseData;->receiptData:Lcom/texa/careapp/model/PurchaseData$ReceiptData;

    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/texa/careapp/model/PurchaseData;->ticket:Ljava/lang/String;

    return-void
.end method
