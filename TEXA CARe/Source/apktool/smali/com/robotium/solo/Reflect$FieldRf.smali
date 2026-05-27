.class public Lcom/robotium/solo/Reflect$FieldRf;
.super Ljava/lang/Object;
.source "Reflect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/robotium/solo/Reflect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FieldRf"
.end annotation


# instance fields
.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private object:Ljava/lang/Object;

.field final synthetic this$0:Lcom/robotium/solo/Reflect;


# direct methods
.method public constructor <init>(Lcom/robotium/solo/Reflect;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/robotium/solo/Reflect$FieldRf;->this$0:Lcom/robotium/solo/Reflect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/robotium/solo/Reflect$FieldRf;->object:Ljava/lang/Object;

    .line 56
    iput-object p3, p0, Lcom/robotium/solo/Reflect$FieldRf;->name:Ljava/lang/String;

    return-void
.end method

.method private getField()Ljava/lang/reflect/Field;
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/robotium/solo/Reflect$FieldRf;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/robotium/solo/Reflect$FieldRf;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/robotium/solo/Reflect$FieldRf;->clazz:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/robotium/solo/Reflect$FieldRf;->clazz:Ljava/lang/Class;

    iget-object v2, p0, Lcom/robotium/solo/Reflect$FieldRf;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 122
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/robotium/solo/Reflect$FieldRf;->object:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public in(Ljava/lang/Object;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Lcom/robotium/solo/Reflect$FieldRf;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/robotium/solo/Reflect$FieldRf;->object:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public out(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/robotium/solo/Reflect$FieldRf;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 69
    invoke-direct {p0, v0}, Lcom/robotium/solo/Reflect$FieldRf;->getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public type(Ljava/lang/Class;)Lcom/robotium/solo/Reflect$FieldRf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/robotium/solo/Reflect$FieldRf;"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/robotium/solo/Reflect$FieldRf;->clazz:Ljava/lang/Class;

    return-object p0
.end method
