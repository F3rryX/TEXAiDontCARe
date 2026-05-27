package lombok.eclipse.handlers;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;
import lombok.AccessLevel;
import lombok.ConfigurationKeys;
import lombok.core.AST;
import lombok.core.AnnotationValues;
import lombok.core.handlers.HandlerUtil;
import lombok.eclipse.EclipseAnnotationHandler;
import lombok.eclipse.EclipseNode;
import lombok.eclipse.handlers.EclipseHandlerUtil;
import lombok.experimental.FieldNameConstants;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Clinit;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.StringLiteral;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;

/* JADX INFO: loaded from: com.texa.care.apk:lombok/eclipse/handlers/HandleFieldNameConstants.SCL.lombok */
public class HandleFieldNameConstants extends EclipseAnnotationHandler<FieldNameConstants> {
    public void generateFieldNameConstantsForType(EclipseNode typeNode, EclipseNode errorNode, AccessLevel level, boolean asEnum, String innerTypeName, boolean onlyExplicit) {
        TypeDeclaration typeDecl = typeNode.get() instanceof TypeDeclaration ? (TypeDeclaration) typeNode.get() : null;
        int modifiers = typeDecl == null ? 0 : typeDecl.modifiers;
        boolean notAClass = (modifiers & 8704) != 0;
        if (typeDecl == null || notAClass) {
            errorNode.addError("@FieldNameConstants is only supported on a class or an enum.");
            return;
        }
        List<EclipseNode> qualified = new ArrayList<>();
        for (EclipseNode field : typeNode.down()) {
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

    private boolean fieldQualifiesForFieldNameConstantsGeneration(EclipseNode field, boolean onlyExplicit) {
        if (field.getKind() != AST.Kind.FIELD || EclipseHandlerUtil.hasAnnotation((Class<? extends Annotation>) FieldNameConstants.Exclude.class, field)) {
            return false;
        }
        if (EclipseHandlerUtil.hasAnnotation((Class<? extends Annotation>) FieldNameConstants.Include.class, field)) {
            return true;
        }
        if (onlyExplicit) {
            return false;
        }
        FieldDeclaration fieldDecl = field.get();
        return EclipseHandlerUtil.filterField(fieldDecl);
    }

    @Override // lombok.eclipse.EclipseAnnotationHandler
    public void handle(AnnotationValues<FieldNameConstants> annotation, org.eclipse.jdt.internal.compiler.ast.Annotation ast, EclipseNode annotationNode) {
        HandlerUtil.handleExperimentalFlagUsage(annotationNode, ConfigurationKeys.FIELD_NAME_CONSTANTS_FLAG_USAGE, "@FieldNameConstants");
        EclipseNode node = annotationNode.up();
        FieldNameConstants annotationInstance = (FieldNameConstants) annotation.getInstance();
        AccessLevel level = annotationInstance.level();
        boolean asEnum = annotationInstance.asEnum();
        boolean usingLombokv1_18_2 = annotation.isExplicit("prefix") || annotation.isExplicit("suffix") || node.getKind() == AST.Kind.FIELD;
        if (usingLombokv1_18_2) {
            annotationNode.addError("@FieldNameConstants has been redesigned in lombok v1.18.4; please upgrade your project dependency on lombok. See https://projectlombok.org/features/experimental/FieldNameConstants for more information.");
            return;
        }
        if (level == AccessLevel.NONE) {
            annotationNode.addWarning("AccessLevel.NONE is not compatible with @FieldNameConstants. If you don't want the inner type, simply remove FieldNameConstants.");
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

    private void createInnerTypeFieldNameConstants(EclipseNode typeNode, EclipseNode errorNode, ASTNode source, AccessLevel level, List<EclipseNode> fields, boolean asEnum, String innerTypeName) {
        boolean genConstr;
        if (fields.isEmpty()) {
            return;
        }
        ASTVisitor generatedByVisitor = new SetGeneratedByVisitor(source);
        TypeDeclaration parent = typeNode.get();
        EclipseNode fieldsType = EclipseHandlerUtil.findInnerClass(typeNode, innerTypeName);
        boolean genClinit = false;
        char[] name = innerTypeName.toCharArray();
        if (fieldsType == null) {
            TypeDeclaration generatedInnerType = new TypeDeclaration(parent.compilationResult);
            generatedInnerType.bits |= 8388608;
            generatedInnerType.modifiers = EclipseHandlerUtil.toEclipseModifier(level) | (asEnum ? 16384 : 24);
            generatedInnerType.name = name;
            fieldsType = EclipseHandlerUtil.injectType(typeNode, generatedInnerType);
            genConstr = true;
            genClinit = asEnum;
            generatedInnerType.traverse(generatedByVisitor, typeNode.get().scope);
        } else {
            TypeDeclaration builderTypeDeclaration = fieldsType.get();
            if (asEnum && (builderTypeDeclaration.modifiers & 16384) == 0) {
                errorNode.addError("Existing " + innerTypeName + " must be declared as an 'enum'.");
                return;
            } else {
                if (!asEnum && (builderTypeDeclaration.modifiers & 8) == 0) {
                    errorNode.addError("Existing " + innerTypeName + " must be declared as a 'static class'.");
                    return;
                }
                genConstr = EclipseHandlerUtil.constructorExists(fieldsType) == EclipseHandlerUtil.MemberExistsResult.NOT_EXISTS;
            }
        }
        if (genConstr) {
            ConstructorDeclaration constructor = new ConstructorDeclaration(parent.compilationResult);
            constructor.selector = name;
            constructor.modifiers = 2;
            ExplicitConstructorCall superCall = new ExplicitConstructorCall(0);
            superCall.sourceStart = source.sourceStart;
            superCall.sourceEnd = source.sourceEnd;
            superCall.bits |= 8388608;
            constructor.constructorCall = superCall;
            if (!asEnum) {
                constructor.statements = new Statement[0];
            }
            EclipseHandlerUtil.injectMethod(fieldsType, constructor);
        }
        if (genClinit) {
            Clinit cli = new Clinit(parent.compilationResult);
            EclipseHandlerUtil.injectMethod(fieldsType, cli);
            cli.traverse(generatedByVisitor, fieldsType.get().scope);
        }
        for (EclipseNode fieldNode : fields) {
            FieldDeclaration field = fieldNode.get();
            char[] fName = field.name;
            if (EclipseHandlerUtil.fieldExists(new String(fName), fieldsType) == EclipseHandlerUtil.MemberExistsResult.NOT_EXISTS) {
                int pS = source.sourceStart;
                int pE = source.sourceEnd;
                long p = (((long) pS) << 32) | ((long) pE);
                FieldDeclaration constantField = new FieldDeclaration(fName, pS, pE);
                constantField.bits |= 8388608;
                if (asEnum) {
                    AllocationExpression ac = new AllocationExpression();
                    ac.enumConstant = constantField;
                    ac.sourceStart = source.sourceStart;
                    ac.sourceEnd = source.sourceEnd;
                    constantField.initialization = ac;
                    constantField.modifiers = 0;
                } else {
                    constantField.type = new QualifiedTypeReference(TypeConstants.JAVA_LANG_STRING, new long[]{p, p, p});
                    constantField.initialization = new StringLiteral(field.name, pS, pE, 0);
                    constantField.modifiers = 25;
                }
                EclipseHandlerUtil.injectField(fieldsType, constantField);
                constantField.traverse(generatedByVisitor, fieldsType.get().initializerScope);
            }
        }
    }
}
