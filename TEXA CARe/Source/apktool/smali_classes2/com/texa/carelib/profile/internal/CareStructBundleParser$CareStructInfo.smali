.class Lcom/texa/carelib/profile/internal/CareStructBundleParser$CareStructInfo;
.super Ljava/lang/Object;
.source "CareStructBundleParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/CareStructBundleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CareStructInfo"
.end annotation


# instance fields
.field private mData:[B

.field private mID:I

.field final synthetic this$0:Lcom/texa/carelib/profile/internal/CareStructBundleParser;


# direct methods
.method public constructor <init>(Lcom/texa/carelib/profile/internal/CareStructBundleParser;I[B)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/CareStructBundleParser$CareStructInfo;->this$0:Lcom/texa/carelib/profile/internal/CareStructBundleParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput p2, p0, Lcom/texa/carelib/profile/internal/CareStructBundleParser$CareStructInfo;->mID:I

    .line 167
    iput-object p3, p0, Lcom/texa/carelib/profile/internal/CareStructBundleParser$CareStructInfo;->mData:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/CareStructBundleParser$CareStructInfo;->mData:[B

    return-object v0
.end method

.method public getID()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/texa/carelib/profile/internal/CareStructBundleParser$CareStructInfo;->mID:I

    return v0
.end method
