.class public Lcom/robotium/solo/Illustration$Builder;
.super Ljava/lang/Object;
.source "Illustration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/robotium/solo/Illustration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private builderPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/robotium/solo/PressurePoint;",
            ">;"
        }
    .end annotation
.end field

.field private builderToolType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/robotium/solo/Illustration$Builder;->builderToolType:I

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/robotium/solo/Illustration$Builder;->builderPoints:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/robotium/solo/Illustration$Builder;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/robotium/solo/Illustration$Builder;->builderToolType:I

    return p0
.end method

.method static synthetic access$100(Lcom/robotium/solo/Illustration$Builder;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/robotium/solo/Illustration$Builder;->builderPoints:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public addPoint(FFF)Lcom/robotium/solo/Illustration$Builder;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/robotium/solo/Illustration$Builder;->builderPoints:Ljava/util/ArrayList;

    new-instance v1, Lcom/robotium/solo/PressurePoint;

    invoke-direct {v1, p1, p2, p3}, Lcom/robotium/solo/PressurePoint;-><init>(FFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/robotium/solo/Illustration;
    .locals 2

    .line 46
    new-instance v0, Lcom/robotium/solo/Illustration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/robotium/solo/Illustration;-><init>(Lcom/robotium/solo/Illustration$Builder;Lcom/robotium/solo/Illustration$1;)V

    return-object v0
.end method

.method public setToolType(I)Lcom/robotium/solo/Illustration$Builder;
    .locals 0

    .line 36
    iput p1, p0, Lcom/robotium/solo/Illustration$Builder;->builderToolType:I

    return-object p0
.end method
