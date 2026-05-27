.class public Lcom/texa/careapp/model/TermsModelsEntity;
.super Ljava/lang/Object;
.source "TermsModelsEntity.java"


# instance fields
.field list:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/TermsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/TermsModel;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/texa/careapp/model/TermsModelsEntity;->list:Ljava/util/List;

    .line 13
    iput-object p1, p0, Lcom/texa/careapp/model/TermsModelsEntity;->list:Ljava/util/List;

    return-void
.end method
