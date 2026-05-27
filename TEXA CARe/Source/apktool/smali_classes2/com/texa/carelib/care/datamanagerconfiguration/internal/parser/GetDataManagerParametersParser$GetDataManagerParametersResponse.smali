.class public Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser$GetDataManagerParametersResponse;
.super Ljava/lang/Object;
.source "GetDataManagerParametersParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetDataManagerParametersResponse"
.end annotation


# instance fields
.field private final mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser$GetDataManagerParametersResponse;->mData:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[B>;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser$GetDataManagerParametersResponse;->mData:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser$GetDataManagerParametersResponse;->mData:Landroid/util/SparseArray;

    return-object v0
.end method
