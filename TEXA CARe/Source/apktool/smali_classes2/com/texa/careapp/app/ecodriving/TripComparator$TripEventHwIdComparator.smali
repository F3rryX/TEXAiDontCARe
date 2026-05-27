.class Lcom/texa/careapp/app/ecodriving/TripComparator$TripEventHwIdComparator;
.super Ljava/lang/Object;
.source "TripComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/ecodriving/TripComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TripEventHwIdComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/ecodriving/TripComparator;


# direct methods
.method private constructor <init>(Lcom/texa/careapp/app/ecodriving/TripComparator;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/texa/careapp/app/ecodriving/TripComparator$TripEventHwIdComparator;->this$0:Lcom/texa/careapp/app/ecodriving/TripComparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/careapp/app/ecodriving/TripComparator;Lcom/texa/careapp/app/ecodriving/TripComparator$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/ecodriving/TripComparator$TripEventHwIdComparator;-><init>(Lcom/texa/careapp/app/ecodriving/TripComparator;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)I
    .locals 0

    .line 48
    invoke-virtual {p1}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getHwId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;->getHwId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 44
    check-cast p1, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    check-cast p2, Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;

    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/app/ecodriving/TripComparator$TripEventHwIdComparator;->compare(Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;Lcom/texa/careapp/app/ecodriving/model/TripObjectModel;)I

    move-result p1

    return p1
.end method
