.class public interface abstract annotation Llombok/experimental/FieldNameConstants;
.super Ljava/lang/Object;
.source "FieldNameConstants.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Llombok/experimental/FieldNameConstants;
        asEnum = false
        innerTypeName = ""
        level = .enum Llombok/AccessLevel;->PUBLIC:Llombok/AccessLevel;
        onlyExplicitlyIncluded = false
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llombok/experimental/FieldNameConstants$Exclude;,
        Llombok/experimental/FieldNameConstants$Include;
    }
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
.method public abstract asEnum()Z
.end method

.method public abstract innerTypeName()Ljava/lang/String;
.end method

.method public abstract level()Llombok/AccessLevel;
.end method

.method public abstract onlyExplicitlyIncluded()Z
.end method
