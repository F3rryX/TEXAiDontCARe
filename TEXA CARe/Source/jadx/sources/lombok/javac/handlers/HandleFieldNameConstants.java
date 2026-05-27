package lombok.javac.handlers;

import com.sun.tools.javac.tree.JCTree;
import com.sun.tools.javac.util.Name;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;
import lombok.AccessLevel;
import lombok.ConfigurationKeys;
import lombok.core.AST;
import lombok.core.AnnotationValues;
import lombok.core.handlers.HandlerUtil;
import lombok.experimental.FieldNameConstants;
import lombok.javac.JavacAnnotationHandler;
import lombok.javac.JavacNode;
import lombok.javac.JavacTreeMaker;
import lombok.javac.handlers.JavacHandlerUtil;
import okhttp3.internal.http2.Http2Stream;

/* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/handlers/HandleFieldNameConstants.SCL.lombok */
public class HandleFieldNameConstants extends JavacAnnotationHandler<FieldNameConstants> {
    public void generateFieldNameConstantsForType(JavacNode typeNode, JavacNode errorNode, AccessLevel level, boolean asEnum, String innerTypeName, boolean onlyExplicit) {
        JCTree.JCClassDecl typeDecl = typeNode.get() instanceof JCTree.JCClassDecl ? (JCTree.JCClassDecl) typeNode.get() : null;
        long modifiers = typeDecl == null ? 0L : typeDecl.mods.flags;
        boolean notAClass = (modifiers & 8704) != 0;
        if (typeDecl == null || notAClass) {
            errorNode.addError("@FieldNameConstants is only supported on a class or an enum.");
            return;
        }
        List<JavacNode> qualified = new ArrayList<>();
        for (JavacNode field : typeNode.down()) {
            if (fieldQualifiesForFieldNameConstantsGeneration(field, onlyExplicit)) {
                qualified.add(field);
            }
        }
        if (qualified.isEmpty()) {
            errorNode.addWarning("No fields qualify for @FieldNameConstants, therefore this annotation does nothing");
        } else {
            createInnerTypeFieldNameConstants(typeNode, errorNode, errorNode.get(), level, qualified, asEnum, innerTypeName);
        }
    }

    private boolean fieldQualifiesForFieldNameConstantsGeneration(JavacNode field, boolean onlyExplicit) {
        if (field.getKind() != AST.Kind.FIELD) {
            return false;
        }
        boolean exclAnn = JavacHandlerUtil.hasAnnotationAndDeleteIfNeccessary(FieldNameConstants.Exclude.class, field);
        boolean inclAnn = JavacHandlerUtil.hasAnnotationAndDeleteIfNeccessary(FieldNameConstants.Include.class, field);
        if (exclAnn) {
            return false;
        }
        if (inclAnn) {
            return true;
        }
        if (onlyExplicit) {
            return false;
        }
        JCTree.JCVariableDecl fieldDecl = field.get();
        return !fieldDecl.name.toString().startsWith("$") && (fieldDecl.mods.flags & 8) == 0;
    }

    @Override // lombok.javac.JavacAnnotationHandler
    public void handle(AnnotationValues<FieldNameConstants> annotation, JCTree.JCAnnotation ast, JavacNode annotationNode) {
        HandlerUtil.handleExperimentalFlagUsage(annotationNode, ConfigurationKeys.FIELD_NAME_CONSTANTS_FLAG_USAGE, "@FieldNameConstants");
        JavacHandlerUtil.deleteAnnotationIfNeccessary(annotationNode, (Class<? extends Annotation>) FieldNameConstants.class);
        JavacHandlerUtil.deleteImportFromCompilationUnit(annotationNode, "lombok.AccessLevel");
        JavacNode node = annotationNode.up();
        FieldNameConstants annotationInstance = (FieldNameConstants) annotation.getInstance();
        AccessLevel level = annotationInstance.level();
        boolean asEnum = annotationInstance.asEnum();
        boolean usingLombokv1_18_2 = annotation.isExplicit("prefix") || annotation.isExplicit("suffix") || node.getKind() == AST.Kind.FIELD;
        if (usingLombokv1_18_2) {
            annotationNode.addError("@FieldNameConstants has been redesigned in lombok v1.18.4; please upgrade your project dependency on lombok. See https://projectlombok.org/features/experimental/FieldNameConstants for more information.");
            return;
        }
        if (level == AccessLevel.NONE) {
            annotationNode.addWarning("AccessLevel.NONE is not compatible with @FieldNameConstants. If you don't want the inner type, simply remove @FieldNameConstants.");
            return;
        }
        String innerTypeName = annotationInstance.innerTypeName();
        if (innerTypeName.isEmpty()) {
            innerTypeName = (String) annotationNode.getAst().readConfiguration(ConfigurationKeys.FIELD_NAME_CONSTANTS_INNER_TYPE_NAME);
        }
        if (innerTypeName == null || innerTypeName.isEmpty()) {
            innerTypeName = "Fields";
        }
        generateFieldNameConstantsForType(node, annotationNode, level, asEnum, innerTypeName, annotationInstance.onlyExplicitlyIncluded());
    }

    private void createInnerTypeFieldNameConstants(JavacNode typeNode, JavacNode errorNode, JCTree pos, AccessLevel level, List<JavacNode> fields, boolean asEnum, String innerTypeName) {
        boolean genConstr;
        JCTree.JCIdent jCIdentChainDots;
        JCTree.JCNewClass jCNewClassLiteral;
        if (fields.isEmpty()) {
            return;
        }
        JavacTreeMaker maker = typeNode.getTreeMaker();
        JCTree.JCModifiers mods = maker.Modifiers(JavacHandlerUtil.toJavacModifier(level) | (asEnum ? 16384 : 24));
        Name fieldsName = typeNode.toName(innerTypeName);
        JavacNode fieldsType = JavacHandlerUtil.findInnerClass(typeNode, innerTypeName);
        if (fieldsType == null) {
            JCTree.JCClassDecl innerType = maker.ClassDef(mods, fieldsName, com.sun.tools.javac.util.List.nil(), null, com.sun.tools.javac.util.List.nil(), com.sun.tools.javac.util.List.nil());
            fieldsType = JavacHandlerUtil.injectType(typeNode, innerType);
            JavacHandlerUtil.recursiveSetGeneratedBy(innerType, pos, typeNode.getContext());
            genConstr = true;
        } else {
            JCTree.JCClassDecl builderTypeDeclaration = fieldsType.get();
            long f = builderTypeDeclaration.getModifiers().flags;
            if (asEnum && (f & Http2Stream.EMIT_BUFFER_SIZE) == 0) {
                errorNode.addError("Existing " + innerTypeName + " must be declared as an 'enum'.");
                return;
            } else {
                if (!asEnum && (f & 8) == 0) {
                    errorNode.addError("Existing " + innerTypeName + " must be declared as a 'static class'.");
                    return;
                }
                genConstr = JavacHandlerUtil.constructorExists(fieldsType) == JavacHandlerUtil.MemberExistsResult.NOT_EXISTS;
            }
        }
        if (genConstr) {
            JCTree.JCModifiers genConstrMods = maker.Modifiers(68719476736L | (asEnum ? 0L : 2L));
            JCTree.JCBlock genConstrBody = maker.Block(0L, com.sun.tools.javac.util.List.of(maker.Exec(maker.Apply(com.sun.tools.javac.util.List.nil(), maker.Ident(typeNode.toName("super")), com.sun.tools.javac.util.List.nil()))));
            JCTree.JCMethodDecl c = maker.MethodDef(genConstrMods, typeNode.toName("<init>"), null, com.sun.tools.javac.util.List.nil(), com.sun.tools.javac.util.List.nil(), com.sun.tools.javac.util.List.nil(), genConstrBody, null);
            JavacHandlerUtil.recursiveSetGeneratedBy(c, pos, typeNode.getContext());
            JavacHandlerUtil.injectMethod(fieldsType, c);
        }
        List<JCTree.JCVariableDecl> generated = new ArrayList<>();
        for (JavacNode field : fields) {
            Name fName = field.get().name;
            if (JavacHandlerUtil.fieldExists(fName.toString(), fieldsType) == JavacHandlerUtil.MemberExistsResult.NOT_EXISTS) {
                JCTree.JCModifiers constantValueMods = maker.Modifiers(25 | (asEnum ? Http2Stream.EMIT_BUFFER_SIZE : 0L));
                if (asEnum) {
                    jCIdentChainDots = maker.Ident(fieldsName);
                    jCNewClassLiteral = maker.NewClass(null, com.sun.tools.javac.util.List.nil(), maker.Ident(fieldsName), com.sun.tools.javac.util.List.nil(), null);
                } else {
                    jCIdentChainDots = JavacHandlerUtil.chainDots(field, "java", "lang", "String");
                    jCNewClassLiteral = maker.Literal(field.getName());
                }
                JCTree.JCVariableDecl constantField = maker.VarDef(constantValueMods, fName, jCIdentChainDots, jCNewClassLiteral);
                JavacHandlerUtil.injectField(fieldsType, constantField, false, true);
                JavacHandlerUtil.setGeneratedBy(constantField, pos, typeNode.getContext());
                generated.add(constantField);
            }
        }
        for (JCTree.JCVariableDecl cf : generated) {
            JavacHandlerUtil.recursiveSetGeneratedBy(cf, pos, typeNode.getContext());
        }
    }
}
