.class public Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;
.super Ljava/lang/Object;
.source "GetWorkingParametersParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetWorkingParametersResponse"
.end annotation


# instance fields
.field private final mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;->mData:Landroid/util/SparseArray;

    return-void
.end method

.method constructor <init>(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;->mData:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/parser/GetWorkingParametersParser$GetWorkingParametersResponse;->mData:Landroid/util/SparseArray;

    return-object v0
.end method
