package lombok.javac.handlers;

import com.sun.tools.javac.code.Symbol;
import com.sun.tools.javac.code.Type;
import com.sun.tools.javac.tree.JCTree;
import com.sun.tools.javac.util.List;
import com.sun.tools.javac.util.ListBuffer;
import com.sun.tools.javac.util.Name;
import java.lang.annotation.Annotation;
import java.util.Collection;
import lombok.AccessLevel;
import lombok.ConfigurationKeys;
import lombok.Setter;
import lombok.core.AST;
import lombok.core.AnnotationValues;
import lombok.core.handlers.HandlerUtil;
import lombok.javac.Javac;
import lombok.javac.JavacAnnotationHandler;
import lombok.javac.JavacNode;
import lombok.javac.JavacTreeMaker;
import lombok.javac.handlers.JavacHandlerUtil;

/* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/handlers/HandleSetter.SCL.lombok */
public class HandleSetter extends JavacAnnotationHandler<Setter> {
    public void generateSetterForType(JavacNode typeNode, JavacNode errorNode, AccessLevel level, boolean checkForTypeLevelSetter, List<JCTree.JCAnnotation> onMethod, List<JCTree.JCAnnotation> onParam) {
        if (checkForTypeLevelSetter && JavacHandlerUtil.hasAnnotation((Class<? extends Annotation>) Setter.class, typeNode)) {
            return;
        }
        JCTree.JCClassDecl typeDecl = typeNode.get() instanceof JCTree.JCClassDecl ? (JCTree.JCClassDecl) typeNode.get() : null;
        long modifiers = typeDecl == null ? 0L : typeDecl.mods.flags;
        boolean notAClass = (modifiers & 25088) != 0;
        if (typeDecl == null || notAClass) {
            errorNode.addError("@Setter is only supported on a class or a field.");
            return;
        }
        for (JavacNode field : typeNode.down()) {
            if (field.getKind() == AST.Kind.FIELD) {
                JCTree.JCVariableDecl fieldDecl = field.get();
                if (!fieldDecl.name.toString().startsWith("$") && (fieldDecl.mods.flags & 8) == 0 && (fieldDecl.mods.flags & 16) == 0) {
                    generateSetterForField(field, errorNode, level, onMethod, onParam);
                }
            }
        }
    }

    public void generateSetterForField(JavacNode fieldNode, JavacNode sourceNode, AccessLevel level, List<JCTree.JCAnnotation> onMethod, List<JCTree.JCAnnotation> onParam) {
        if (JavacHandlerUtil.hasAnnotation((Class<? extends Annotation>) Setter.class, fieldNode)) {
            return;
        }
        createSetterForField(level, fieldNode, sourceNode, false, onMethod, onParam);
    }

    @Override // lombok.javac.JavacAnnotationHandler
    public void handle(AnnotationValues<Setter> annotation, JCTree.JCAnnotation ast, JavacNode annotationNode) {
        HandlerUtil.handleFlagUsage(annotationNode, ConfigurationKeys.SETTER_FLAG_USAGE, "@Setter");
        Collection<JavacNode> fields = annotationNode.upFromAnnotationToFields();
        JavacHandlerUtil.deleteAnnotationIfNeccessary(annotationNode, (Class<? extends Annotation>) Setter.class);
        JavacHandlerUtil.deleteImportFromCompilationUnit(annotationNode, "lombok.AccessLevel");
        JavacNode node = annotationNode.up();
        AccessLevel level = ((Setter) annotation.getInstance()).value();
        if (level == AccessLevel.NONE || node == null) {
            return;
        }
        List<JCTree.JCAnnotation> onMethod = JavacHandlerUtil.unboxAndRemoveAnnotationParameter(ast, "onMethod", "@Setter(onMethod", annotationNode);
        List<JCTree.JCAnnotation> onParam = JavacHandlerUtil.unboxAndRemoveAnnotationParameter(ast, "onParam", "@Setter(onParam", annotationNode);
        switch (node.getKind()) {
            case FIELD:
                createSetterForFields(level, fields, annotationNode, true, onMethod, onParam);
                break;
            case TYPE:
                generateSetterForType(node, annotationNode, level, false, onMethod, onParam);
                break;
        }
    }

    public void createSetterForFields(AccessLevel level, Collection<JavacNode> fieldNodes, JavacNode errorNode, boolean whineIfExists, List<JCTree.JCAnnotation> onMethod, List<JCTree.JCAnnotation> onParam) {
        for (JavacNode fieldNode : fieldNodes) {
            createSetterForField(level, fieldNode, errorNode, whineIfExists, onMethod, onParam);
        }
    }

    public void createSetterForField(AccessLevel level, JavacNode fieldNode, JavacNode sourceNode, boolean whineIfExists, List<JCTree.JCAnnotation> onMethod, List<JCTree.JCAnnotation> onParam) {
        Type returnType;
        if (fieldNode.getKind() != AST.Kind.FIELD) {
            fieldNode.addError("@Setter is only supported on a class or a field.");
            return;
        }
        JCTree.JCVariableDecl fieldDecl = fieldNode.get();
        String methodName = JavacHandlerUtil.toSetterName(fieldNode);
        if (methodName == null) {
            fieldNode.addWarning("Not generating setter for this field: It does not fit your @Accessors prefix list.");
            return;
        }
        if ((fieldDecl.mods.flags & 16) != 0) {
            fieldNode.addWarning("Not generating setter for this field: Setters cannot be generated for final fields.");
            return;
        }
        for (String altName : JavacHandlerUtil.toAllSetterNames(fieldNode)) {
            switch (JavacHandlerUtil.methodExists(altName, fieldNode, false, 1)) {
                case EXISTS_BY_LOMBOK:
                    return;
                case EXISTS_BY_USER:
                    if (whineIfExists) {
                        String altNameExpl = altName.equals(methodName) ? "" : String.format(" (%s)", altName);
                        fieldNode.addWarning(String.format("Not generating %s(): A method with that name already exists%s", methodName, altNameExpl));
                        return;
                    }
                    return;
            }
        }
        long access = ((long) JavacHandlerUtil.toJavacModifier(level)) | (fieldDecl.mods.flags & 8);
        JCTree.JCMethodDecl createdSetter = createSetter(access, fieldNode, fieldNode.getTreeMaker(), sourceNode, onMethod, onParam);
        Type fieldType = JavacHandlerUtil.getMirrorForFieldType(fieldNode);
        if (JavacHandlerUtil.shouldReturnThis(fieldNode)) {
            Symbol.ClassSymbol sym = fieldNode.up().get().sym;
            returnType = sym == null ? null : sym.type;
        } else {
            returnType = Javac.createVoidType(fieldNode.getSymbolTable(), Javac.CTC_VOID);
        }
        JavacHandlerUtil.injectMethod(fieldNode.up(), createdSetter, fieldType == null ? null : List.of(fieldType), returnType);
    }

    public static JCTree.JCMethodDecl createSetter(long access, JavacNode field, JavacTreeMaker treeMaker, JavacNode source, List<JCTree.JCAnnotation> onMethod, List<JCTree.JCAnnotation> onParam) {
        String setterName = JavacHandlerUtil.toSetterName(field);
        boolean returnThis = JavacHandlerUtil.shouldReturnThis(field);
        return createSetter(access, false, field, treeMaker, setterName, null, returnThis, source, onMethod, onParam);
    }

    public static JCTree.JCMethodDecl createSetter(long access, boolean deprecate, JavacNode field, JavacTreeMaker treeMaker, String setterName, Name booleanFieldToSet, boolean shouldReturnThis, JavacNode source, List<JCTree.JCAnnotation> onMethod, List<JCTree.JCAnnotation> onParam) {
        JCTree.JCExpression returnType = null;
        JCTree.JCReturn returnStatement = null;
        if (shouldReturnThis) {
            returnType = JavacHandlerUtil.cloneSelfType(field);
            returnStatement = treeMaker.Return(treeMaker.Ident(field.toName("this")));
        }
        return createSetter(access, deprecate, field, treeMaker, setterName, booleanFieldToSet, returnType, returnStatement, source, onMethod, onParam);
    }

    public static JCTree.JCMethodDecl createSetter(long access, boolean deprecate, JavacNode field, JavacTreeMaker treeMaker, String setterName, Name booleanFieldToSet, JCTree.JCExpression methodType, JCTree.JCStatement returnStatement, JavacNode source, List<JCTree.JCAnnotation> onMethod, List<JCTree.JCAnnotation> onParam) {
        JCTree.JCStatement nullCheck;
        if (setterName == null) {
            return null;
        }
        JCTree.JCVariableDecl fieldDecl = field.get();
        JCTree.JCExpression fieldRef = JavacHandlerUtil.createFieldAccessor(treeMaker, field, HandlerUtil.FieldAccess.ALWAYS_FIELD);
        JCTree.JCAssign assign = treeMaker.Assign(fieldRef, treeMaker.Ident(fieldDecl.name));
        ListBuffer<JCTree.JCStatement> statements = new ListBuffer<>();
        List<JCTree.JCAnnotation> copyableAnnotations = JavacHandlerUtil.findCopyableAnnotations(field);
        Name methodName = field.toName(setterName);
        List<JCTree.JCAnnotation> annsOnParam = JavacHandlerUtil.copyAnnotations(onParam).appendList(copyableAnnotations);
        long flags = JavacHandlerUtil.addFinalIfNeeded(8589934592L, field.getContext());
        JCTree.JCVariableDecl param = treeMaker.VarDef(treeMaker.Modifiers(flags, annsOnParam), fieldDecl.name, fieldDecl.vartype, null);
        if (JavacHandlerUtil.hasNonNullAnnotations(field) && (nullCheck = JavacHandlerUtil.generateNullCheck(treeMaker, field, source)) != null) {
            statements.append(nullCheck);
        }
        statements.append(treeMaker.Exec(assign));
        if (booleanFieldToSet != null) {
            JCTree.JCAssign setBool = treeMaker.Assign(treeMaker.Ident(booleanFieldToSet), treeMaker.Literal(Javac.CTC_BOOLEAN, 1));
            statements.append(treeMaker.Exec(setBool));
        }
        if (methodType == null) {
            methodType = treeMaker.Type(Javac.createVoidType(field.getSymbolTable(), Javac.CTC_VOID));
            returnStatement = null;
        }
        if (returnStatement != null) {
            statements.append(returnStatement);
        }
        JCTree.JCBlock methodBody = treeMaker.Block(0L, statements.toList());
        List<JCTree.JCTypeParameter> methodGenericParams = List.nil();
        List<JCTree.JCVariableDecl> parameters = List.of(param);
        List<JCTree.JCExpression> throwsClauses = List.nil();
        List<JCTree.JCAnnotation> annsOnMethod = JavacHandlerUtil.copyAnnotations(onMethod);
        if (JavacHandlerUtil.isFieldDeprecated(field) || deprecate) {
            annsOnMethod = annsOnMethod.prepend(treeMaker.Annotation(JavacHandlerUtil.genJavaLangTypeRef(field, "Deprecated"), List.nil()));
        }
        JCTree.JCMethodDecl decl = JavacHandlerUtil.recursiveSetGeneratedBy(treeMaker.MethodDef(treeMaker.Modifiers(access, annsOnMethod), methodName, methodType, methodGenericParams, parameters, throwsClauses, methodBody, null), source.get(), field.getContext());
        JavacHandlerUtil.copyJavadoc(field, decl, JavacHandlerUtil.CopyJavadoc.SETTER);
        return decl;
    }
}
