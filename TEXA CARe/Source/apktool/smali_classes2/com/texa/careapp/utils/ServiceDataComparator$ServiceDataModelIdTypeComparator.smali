.class Lcom/texa/careapp/utils/ServiceDataComparator$ServiceDataModelIdTypeComparator;
.super Ljava/lang/Object;
.source "ServiceDataComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/utils/ServiceDataComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceDataModelIdTypeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/texa/careapp/model/ServiceDataModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/utils/ServiceDataComparator;


# direct methods
.method private constructor <init>(Lcom/texa/careapp/utils/ServiceDataComparator;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/texa/careapp/utils/ServiceDataComparator$ServiceDataModelIdTypeComparator;->this$0:Lcom/texa/careapp/utils/ServiceDataComparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/careapp/utils/ServiceDataComparator;Lcom/texa/careapp/utils/ServiceDataComparator$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/ServiceDataComparator$ServiceDataModelIdTypeComparator;-><init>(Lcom/texa/careapp/utils/ServiceDataComparator;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServiceDataModel;)I
    .locals 0

    .line 33
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object p1

    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->getIdType()Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/careapp/model/ServiceDataModel$DongleServiceId;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/texa/careapp/model/ServiceDataModel;

    check-cast p2, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/utils/ServiceDataComparator$ServiceDataModelIdTypeComparator;->compare(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServiceDataModel;)I

    move-result p1

    return p1
.end method
