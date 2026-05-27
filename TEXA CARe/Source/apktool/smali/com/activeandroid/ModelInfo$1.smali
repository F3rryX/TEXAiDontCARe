.class Lcom/activeandroid/ModelInfo$1;
.super Ljava/util/HashMap;
.source "ModelInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/activeandroid/ModelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Class<",
        "*>;",
        "Lcom/activeandroid/serializer/TypeSerializer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/activeandroid/ModelInfo;


# direct methods
.method constructor <init>(Lcom/activeandroid/ModelInfo;)V
    .locals 1

    .line 47
    iput-object p1, p0, Lcom/activeandroid/ModelInfo$1;->this$0:Lcom/activeandroid/ModelInfo;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 49
    const-class p1, Ljava/util/Calendar;

    new-instance v0, Lcom/activeandroid/serializer/CalendarSerializer;

    invoke-direct {v0}, Lcom/activeandroid/serializer/CalendarSerializer;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/activeandroid/ModelInfo$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-class p1, Ljava/sql/Date;

    new-instance v0, Lcom/activeandroid/serializer/SqlDateSerializer;

    invoke-direct {v0}, Lcom/activeandroid/serializer/SqlDateSerializer;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/activeandroid/ModelInfo$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-class p1, Ljava/util/Date;

    new-instance v0, Lcom/activeandroid/serializer/UtilDateSerializer;

    invoke-direct {v0}, Lcom/activeandroid/serializer/UtilDateSerializer;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/activeandroid/ModelInfo$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-class p1, Ljava/io/File;

    new-instance v0, Lcom/activeandroid/serializer/FileSerializer;

    invoke-direct {v0}, Lcom/activeandroid/serializer/FileSerializer;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/activeandroid/ModelInfo$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
