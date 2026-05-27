.class Lcom/robotium/solo/Reflect;
.super Ljava/lang/Object;
.source "Reflect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/robotium/solo/Reflect$FieldRf;
    }
.end annotation


# instance fields
.field private object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 24
    iput-object p1, p0, Lcom/robotium/solo/Reflect;->object:Ljava/lang/Object;

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public field(Ljava/lang/String;)Lcom/robotium/solo/Reflect$FieldRf;
    .locals 2

    .line 36
    new-instance v0, Lcom/robotium/solo/Reflect$FieldRf;

    iget-object v1, p0, Lcom/robotium/solo/Reflect;->object:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p1}, Lcom/robotium/solo/Reflect$FieldRf;-><init>(Lcom/robotium/solo/Reflect;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
