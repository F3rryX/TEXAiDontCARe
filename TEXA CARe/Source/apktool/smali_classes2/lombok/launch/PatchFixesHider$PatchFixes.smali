.class public final Llombok/launch/PatchFixesHider$PatchFixes;
.super Ljava/lang/Object;
.source "PatchFixesHider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llombok/launch/PatchFixesHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PatchFixes"
.end annotation


# static fields
.field public static final ALREADY_PROCESSED_FLAG:I = 0x800000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAnnotations(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/core/dom/Annotation;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 397
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Annotation;

    .line 398
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 399
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Annotation;->isSingleMemberAnnotation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;

    .line 401
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->getValue()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/Expression;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 402
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Annotation;->isNormalAnnotation()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 403
    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/core/dom/NormalAnnotation;

    .line 404
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/NormalAnnotation;->values()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    const-string v2, "@"

    .line 407
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/Annotation;->resolveTypeBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "("

    .line 409
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 411
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v0, ")"

    .line 416
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 411
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ", "

    .line 412
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v0, 0x0

    const/16 v3, 0x22

    .line 414
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    :goto_4
    const-string v0, " "

    .line 418
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public static checkBit24(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 513
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "bits"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/high16 v0, 0x800000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static convertAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/core/IAnnotatable;)[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;
    .locals 10

    .line 640
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/IAnnotatable;->getAnnotations()[Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 648
    :goto_0
    array-length v4, p0

    if-lt v2, v4, :cond_4

    .line 665
    array-length p1, p0

    if-ge v3, p1, :cond_3

    .line 666
    new-array p1, v3, [Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v0, 0x0

    .line 668
    :goto_1
    array-length v2, p0

    if-lt v1, v2, :cond_1

    move-object p0, p1

    goto :goto_3

    .line 669
    :cond_1
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v0, 0x1

    .line 670
    aget-object v3, p0, v1

    aput-object v3, p1, v0

    move v0, v2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    return-object p0

    .line 649
    :cond_4
    new-instance v4, Ljava/lang/String;

    aget-object v5, p0, v2

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->getLastToken()[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    .line 651
    array-length v5, p1

    const/4 v6, 0x0

    :goto_4
    if-lt v6, v5, :cond_5

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    aget-object v7, p1, v6

    .line 652
    invoke-interface {v7}, Lorg/eclipse/jdt/core/IAnnotation;->getElementName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    .line 653
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_6

    add-int/lit8 v8, v8, 0x1

    .line 654
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 655
    :cond_6
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v4, 0x1

    :goto_5
    if-nez v4, :cond_7

    .line 660
    aput-object v0, p0, v2

    goto :goto_6

    :cond_7
    add-int/lit8 v3, v3, 0x1

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :catch_0
    return-object p0
.end method

.method public static createFakeSearchResult([Lorg/eclipse/jdt/internal/corext/refactoring/SearchResultGroup;Ljava/lang/Object;)[Lorg/eclipse/jdt/internal/corext/refactoring/SearchResultGroup;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 604
    array-length v0, p0

    if-nez v0, :cond_1

    .line 606
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "fField"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 608
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 609
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/SourceField;

    .line 610
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/SourceField;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    const-string v0, "Data"

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IType;->getAnnotation(Ljava/lang/String;)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object p1

    if-eqz p1, :cond_1

    new-array p0, v1, [Lorg/eclipse/jdt/internal/corext/refactoring/SearchResultGroup;

    const/4 p1, 0x0

    .line 613
    new-instance v0, Lorg/eclipse/jdt/internal/corext/refactoring/SearchResultGroup;

    const/4 v2, 0x0

    new-array v1, v1, [Lorg/eclipse/jdt/core/search/SearchMatch;

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/corext/refactoring/SearchResultGroup;-><init>(Lorg/eclipse/core/resources/IResource;[Lorg/eclipse/jdt/core/search/SearchMatch;)V

    aput-object v0, p0, p1

    :cond_1
    return-object p0
.end method

.method public static findTypeDeclaration(Lorg/eclipse/jdt/core/IType;Ljava/util/List;)Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/IType;",
            "Ljava/util/List<",
            "*>;)",
            "Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;"
        }
    .end annotation

    .line 455
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 456
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    if-eqz v1, :cond_0

    .line 457
    check-cast v0, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    .line 458
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/SimpleName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method public static fixRetrieveEllipsisStartPosition(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static fixRetrieveIdentifierEndPosition(III)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static fixRetrieveRightBraceOrSemiColonPosition(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static fixRetrieveRightBraceOrSemiColonPosition(ILorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 498
    :cond_0
    sget-object p0, Llombok/eclipse/EclipseAugments;->ASTNode_generatedBy:Llombok/core/FieldAugment;

    invoke-virtual {p0, p1}, Llombok/core/FieldAugment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 499
    iget p0, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->declarationSourceEnd:I

    return p0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return p0
.end method

.method public static fixRetrieveRightBraceOrSemiColonPosition(ILorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 505
    :cond_0
    sget-object p0, Llombok/eclipse/EclipseAugments;->ASTNode_generatedBy:Llombok/core/FieldAugment;

    invoke-virtual {p0, p1}, Llombok/core/FieldAugment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 506
    iget p0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->declarationSourceEnd:I

    return p0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return p0
.end method

.method public static fixRetrieveStartingCatchPosition(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public static getRealMethodDeclarationNode(Lorg/eclipse/jdt/core/IMethod;Lorg/eclipse/jdt/core/dom/CompilationUnit;)Lorg/eclipse/jdt/core/dom/MethodDeclaration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 423
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/corext/refactoring/structure/ASTNodeSearchUtil;->getMethodDeclarationNode(Lorg/eclipse/jdt/core/IMethod;Lorg/eclipse/jdt/core/dom/CompilationUnit;)Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    move-result-object v0

    .line 424
    invoke-static {v0}, Llombok/launch/PatchFixesHider$PatchFixes;->isGenerated(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 425
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IMethod;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    .line 426
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    :goto_0
    if-nez v1, :cond_4

    .line 432
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/IType;

    .line 433
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->types()Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, Llombok/launch/PatchFixesHider$PatchFixes;->findTypeDeclaration(Lorg/eclipse/jdt/core/IType;Ljava/util/List;)Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    move-result-object p1

    .line 434
    :goto_1
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_2

    .line 435
    :cond_0
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/IType;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, Llombok/launch/PatchFixesHider$PatchFixes;->findTypeDeclaration(Lorg/eclipse/jdt/core/IType;Ljava/util/List;)Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;

    move-result-object p1

    goto :goto_1

    .line 438
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 439
    invoke-interface {p0}, Lorg/eclipse/jdt/core/IMethod;->getElementName()Ljava/lang/String;

    move-result-object p0

    .line 440
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;->bodyDeclarations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 441
    instance-of v2, v1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    if-eqz v2, :cond_2

    .line 442
    check-cast v1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    .line 443
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/SimpleName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 428
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-interface {v1}, Lorg/eclipse/jdt/core/IType;->getDeclaringType()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    goto :goto_0

    :cond_5
    :goto_3
    return-object v0
.end method

.method public static getRealMethodDeclarationSource(Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 346
    invoke-static {p2}, Llombok/launch/PatchFixesHider$PatchFixes;->isGenerated(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 348
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->modifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    invoke-static {p0, v1}, Llombok/launch/PatchFixesHider$PatchFixes;->addAnnotations(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 360
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "fPublic"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "public "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "fAbstract"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "abstract "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReturnType2()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Type;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    .line 365
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getName()Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object p0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/SimpleName;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    .line 366
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    .line 369
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p0, ");"

    .line 376
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 369
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_5

    const-string p0, ", "

    .line 370
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/4 p0, 0x0

    .line 373
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 349
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 350
    instance-of v2, v1, Lorg/eclipse/jdt/core/dom/Annotation;

    if-eqz v2, :cond_1

    .line 351
    check-cast v1, Lorg/eclipse/jdt/core/dom/Annotation;

    .line 352
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/Annotation;->resolveTypeBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.Override"

    .line 353
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "java.lang.SuppressWarnings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static getSourceEndFixed(ILorg/eclipse/jdt/internal/compiler/ast/ASTNode;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 467
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "$generatedBy"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz p1, :cond_0

    .line 469
    iget p0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    :cond_0
    return p0
.end method

.method public static getTokenEndOffsetFixed(Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;IILjava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    .line 562
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "$isGenerated"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_0

    const/4 p0, -0x1

    return p0

    .line 567
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result p0

    return p0
.end method

.method public static isGenerated(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 2

    .line 309
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "$isGenerated"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 310
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    instance-of v1, v1, Lorg/eclipse/jdt/core/dom/QualifiedName;

    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p0

    invoke-static {p0}, Llombok/launch/PatchFixesHider$PatchFixes;->isGenerated(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    :cond_0
    :goto_0
    return v0
.end method

.method public static isListRewriteOnGeneratedNode(Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;)Z
    .locals 0

    .line 320
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/rewrite/ListRewrite;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p0

    invoke-static {p0}, Llombok/launch/PatchFixesHider$PatchFixes;->isGenerated(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p0

    return p0
.end method

.method public static listRewriteHandleGeneratedMethods(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;
    .locals 7

    .line 537
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object p0

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 539
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 540
    :goto_0
    array-length v4, p0

    if-lt v3, v4, :cond_0

    .line 555
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-array p0, v2, [Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    .line 556
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    return-object p0

    .line 541
    :cond_0
    aget-object v4, p0, v3

    .line 542
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-static {v5}, Llombok/launch/PatchFixesHider$PatchFixes;->isGenerated(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 544
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    .line 545
    :goto_1
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    .line 546
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 547
    new-instance v5, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;

    const/4 v6, 0x0

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeRewriteEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 550
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static removeGenerated([Lorg/eclipse/jdt/core/search/SearchMatch;)[Lorg/eclipse/jdt/core/search/SearchMatch;
    .locals 6

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 580
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_0

    new-array p0, v1, [Lorg/eclipse/jdt/core/search/SearchMatch;

    .line 596
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/eclipse/jdt/core/search/SearchMatch;

    return-object p0

    .line 581
    :cond_0
    aget-object v3, p0, v2

    .line 582
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/search/SearchMatch;->getElement()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/eclipse/jdt/core/IField;

    if-eqz v4, :cond_1

    .line 583
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/search/SearchMatch;->getElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/IField;

    const-string v5, "Generated"

    .line 587
    invoke-interface {v4, v5}, Lorg/eclipse/jdt/core/IField;->getAnnotation(Ljava/lang/String;)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 594
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static removeGeneratedMethods([Lorg/eclipse/jdt/core/IMethod;)[Lorg/eclipse/jdt/core/IMethod;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 572
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_1

    .line 575
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    array-length v3, p0

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    new-array p0, v2, [Lorg/eclipse/jdt/core/IMethod;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/eclipse/jdt/core/IMethod;

    :goto_1
    return-object p0

    .line 572
    :cond_1
    aget-object v4, p0, v3

    .line 573
    invoke-interface {v4}, Lorg/eclipse/jdt/core/IMethod;->getNameRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result v5

    if-lez v5, :cond_2

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IMethod;->getNameRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v5

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IMethod;->getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static removeGeneratedNodes(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 333
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 335
    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-static {v3}, Llombok/launch/PatchFixesHider$PatchFixes;->isGenerated(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 336
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object p0
.end method

.method public static removeGeneratedSimpleNames([Lorg/eclipse/jdt/core/dom/SimpleName;)[Lorg/eclipse/jdt/core/dom/SimpleName;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 621
    const-class v0, Lorg/eclipse/jdt/core/dom/SimpleName;

    const-string v1, "$isGenerated"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 624
    :goto_0
    array-length v4, p0

    if-lt v2, v4, :cond_4

    .line 627
    array-length v2, p0

    if-ne v3, v2, :cond_0

    return-object p0

    .line 628
    :cond_0
    new-array v4, v3, [Lorg/eclipse/jdt/core/dom/SimpleName;

    const/4 v2, 0x0

    .line 630
    :goto_1
    array-length v3, p0

    if-lt v1, v3, :cond_1

    return-object v4

    .line 631
    :cond_1
    aget-object v3, p0, v1

    if-eqz v3, :cond_2

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v3, v2, 0x1

    aget-object v5, p0, v1

    aput-object v5, v4, v2

    move v2, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 625
    :cond_4
    aget-object v4, p0, v2

    if-eqz v4, :cond_5

    aget-object v4, p0, v2

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static returnFalse(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static returnTrue(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static setIsGeneratedFlag(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 525
    :cond_0
    sget-object v0, Llombok/eclipse/EclipseAugments;->ASTNode_generatedBy:Llombok/core/FieldAugment;

    invoke-virtual {v0, p1}, Llombok/core/FieldAugment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 526
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "$isGenerated"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static setIsGeneratedFlagForName(Lorg/eclipse/jdt/core/dom/Name;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 530
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v0, :cond_1

    .line 531
    sget-object v0, Llombok/eclipse/EclipseAugments;->ASTNode_generatedBy:Llombok/core/FieldAugment;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    invoke-virtual {v0, p1}, Llombok/core/FieldAugment;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 532
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "$isGenerated"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static skipRewritingGeneratedNodes(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 518
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "$isGenerated"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
