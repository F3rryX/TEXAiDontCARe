.class public Lcom/texa/careapp/model/PurchaseData$ReceiptData;
.super Ljava/lang/Object;
.source "PurchaseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/model/PurchaseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReceiptData"
.end annotation


# instance fields
.field public packageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public subscriptionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field final synthetic this$0:Lcom/texa/careapp/model/PurchaseData;

.field public token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/texa/careapp/model/PurchaseData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/texa/careapp/model/PurchaseData$ReceiptData;->this$0:Lcom/texa/careapp/model/PurchaseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/texa/careapp/model/PurchaseData$ReceiptData;->token:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/texa/careapp/model/PurchaseData$ReceiptData;->packageName:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/texa/careapp/model/PurchaseData$ReceiptData;->subscriptionId:Ljava/lang/String;

    return-void
.end method
