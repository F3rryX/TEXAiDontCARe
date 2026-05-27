.class public final Llombok/launch/PatchFixesHider$ValPortal;
.super Ljava/lang/Object;
.source "PatchFixesHider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llombok/launch/PatchFixesHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValPortal"
.end annotation


# static fields
.field private static final ADD_FINAL_AND_VAL_ANNOTATION_TO_SINGLE_VARIABLE_DECLARATION:Ljava/lang/reflect/Method;

.field private static final ADD_FINAL_AND_VAL_ANNOTATION_TO_VARIABLE_DECLARATION_STATEMENT:Ljava/lang/reflect/Method;

.field private static final COPY_INITIALIZATION_OF_FOR_EACH_ITERABLE:Ljava/lang/reflect/Method;

.field private static final COPY_INITIALIZATION_OF_LOCAL_DECLARATION:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "lombok.eclipse.agent.PatchValEclipsePortal"

    .line 212
    invoke-static {v0}, Llombok/launch/PatchFixesHider$Util;->shadowLoadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 213
    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "copyInitializationOfForEachIterable"

    invoke-static {v0, v3, v2}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Llombok/launch/PatchFixesHider$ValPortal;->COPY_INITIALIZATION_OF_FOR_EACH_ITERABLE:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Class;

    .line 214
    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v4

    const-string v3, "copyInitializationOfLocalDeclaration"

    invoke-static {v0, v3, v2}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Llombok/launch/PatchFixesHider$ValPortal;->COPY_INITIALIZATION_OF_LOCAL_DECLARATION:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    .line 215
    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v4

    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v1

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x2

    aput-object v5, v3, v6

    const-string v5, "addFinalAndValAnnotationToVariableDeclarationStatement"

    invoke-static {v0, v5, v3}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Llombok/launch/PatchFixesHider$ValPortal;->ADD_FINAL_AND_VAL_ANNOTATION_TO_VARIABLE_DECLARATION_STATEMENT:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Class;

    .line 216
    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v1

    const-class v1, Ljava/lang/Object;

    aput-object v1, v2, v6

    const-string v1, "addFinalAndValAnnotationToSingleVariableDeclaration"

    invoke-static {v0, v1, v2}, Llombok/launch/PatchFixesHider$Util;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Llombok/launch/PatchFixesHider$ValPortal;->ADD_FINAL_AND_VAL_ANNOTATION_TO_SINGLE_VARIABLE_DECLARATION:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFinalAndValAnnotationToSingleVariableDeclaration(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 232
    sget-object v0, Llombok/launch/PatchFixesHider$ValPortal;->ADD_FINAL_AND_VAL_ANNOTATION_TO_SINGLE_VARIABLE_DECLARATION:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addFinalAndValAnnotationToVariableDeclarationStatement(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 228
    sget-object v0, Llombok/launch/PatchFixesHider$ValPortal;->ADD_FINAL_AND_VAL_ANNOTATION_TO_VARIABLE_DECLARATION_STATEMENT:Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static copyInitializationOfForEachIterable(Ljava/lang/Object;)V
    .locals 3

    .line 220
    sget-object v0, Llombok/launch/PatchFixesHider$ValPortal;->COPY_INITIALIZATION_OF_FOR_EACH_ITERABLE:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static copyInitializationOfLocalDeclaration(Ljava/lang/Object;)V
    .locals 3

    .line 224
    sget-object v0, Llombok/launch/PatchFixesHider$ValPortal;->COPY_INITIALIZATION_OF_LOCAL_DECLARATION:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Llombok/launch/PatchFixesHider$Util;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
