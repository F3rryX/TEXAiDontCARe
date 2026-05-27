.class public interface abstract annotation Llombok/experimental/SuperBuilder;
.super Ljava/lang/Object;
.source "SuperBuilder.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Llombok/experimental/SuperBuilder;
        buildMethodName = "build"
        builderMethodName = "builder"
        toBuilder = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract buildMethodName()Ljava/lang/String;
.end method

.method public abstract builderMethodName()Ljava/lang/String;
.end method

.method public abstract toBuilder()Z
.end method
