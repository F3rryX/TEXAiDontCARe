.class Lcom/texa/careapp/utils/ServiceDataComparator$ServiceDataModelIsTrialComparator;
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
    name = "ServiceDataModelIsTrialComparator"
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

    .line 37
    iput-object p1, p0, Lcom/texa/careapp/utils/ServiceDataComparator$ServiceDataModelIsTrialComparator;->this$0:Lcom/texa/careapp/utils/ServiceDataComparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/careapp/utils/ServiceDataComparator;Lcom/texa/careapp/utils/ServiceDataComparator$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/texa/careapp/utils/ServiceDataComparator$ServiceDataModelIsTrialComparator;-><init>(Lcom/texa/careapp/utils/ServiceDataComparator;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServiceDataModel;)I
    .locals 0

    .line 40
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result p2

    .line 41
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServiceDataModel;->isTrial()Z

    move-result p1

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 37
    check-cast p1, Lcom/texa/careapp/model/ServiceDataModel;

    check-cast p2, Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/utils/ServiceDataComparator$ServiceDataModelIsTrialComparator;->compare(Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServiceDataModel;)I

    move-result p1

    return p1
.end method
