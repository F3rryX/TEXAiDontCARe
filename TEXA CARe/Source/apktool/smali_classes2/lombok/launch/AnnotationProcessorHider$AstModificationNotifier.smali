.class public Llombok/launch/AnnotationProcessorHider$AstModificationNotifier;
.super Ljava/lang/Object;
.source "AnnotationProcessor.java"

# interfaces
.implements Lorg/mapstruct/ap/spi/AstModifyingAnnotationProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llombok/launch/AnnotationProcessorHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AstModificationNotifier"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTypeComplete(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 0

    const-string p1, "lombok.disable"

    .line 46
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 47
    :cond_0
    sget-boolean p1, Llombok/launch/AnnotationProcessorHider$AstModificationNotifierData;->lombokInvoked:Z

    return p1
.end method
