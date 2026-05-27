package lombok.eclipse.handlers;

import com.texa.carelib.core.utils.Version;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.ConfigurationKeys;
import lombok.Singular;
import lombok.ToString;
import lombok.Value;
import lombok.core.AST;
import lombok.core.AnnotationValues;
import lombok.core.HandlerPriority;
import lombok.core.handlers.HandlerUtil;
import lombok.core.handlers.InclusionExclusionUtils;
import lombok.eclipse.EclipseAnnotationHandler;
import lombok.eclipse.EclipseNode;
import lombok.eclipse.handlers.EclipseHandlerUtil;
import lombok.eclipse.handlers.EclipseSingularsRecipes;
import lombok.eclipse.handlers.HandleBuilder;
import lombok.experimental.NonFinal;
import lombok.experimental.SuperBuilder;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.ConditionalExpression;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.EqualExpression;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FalseLiteral;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.IfStatement;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NullLiteral;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;

/* JADX INFO: loaded from: com.texa.care.apk:lombok/eclipse/handlers/HandleSuperBuilder.SCL.lombok */
@HandlerPriority(-1024)
public class HandleSuperBuilder extends EclipseAnnotationHandler<SuperBuilder> {
    private static final char[] CLEAN_FIELD_NAME = "$lombokUnclean".toCharArray();
    private static final char[] CLEAN_METHOD_NAME = "$lombokClean".toCharArray();
    private static final char[] DEFAULT_PREFIX = "$default$".toCharArray();
    private static final char[] SET_PREFIX = "$set".toCharArray();
    private static final char[] SELF_METHOD_NAME = "self".toCharArray();
    private static final String TO_BUILDER_METHOD_NAME_STRING = "toBuilder";
    private static final char[] TO_BUILDER_METHOD_NAME = TO_BUILDER_METHOD_NAME_STRING.toCharArray();
    private static final char[] FILL_VALUES_METHOD_NAME = "$fillValuesFrom".toCharArray();
    private static final char[] FILL_VALUES_STATIC_METHOD_NAME = "$fillValuesFromInstanceIntoBuilder".toCharArray();
    private static final char[] EMPTY_LIST = "emptyList".toCharArray();
    private static final char[] INSTANCE_VARIABLE_NAME = "instance".toCharArray();
    private static final String BUILDER_VARIABLE_NAME_STRING = "b";
    private static final char[] BUILDER_VARIABLE_NAME = BUILDER_VARIABLE_NAME_STRING.toCharArray();
    private static final AbstractMethodDeclaration[] EMPTY_METHODS = new AbstractMethodDeclaration[0];
    private static /* synthetic */ int[] $SWITCH_TABLE$lombok$eclipse$handlers$EclipseHandlerUtil$MemberExistsResult;

    static /* synthetic */ int[] $SWITCH_TABLE$lombok$eclipse$handlers$EclipseHandlerUtil$MemberExistsResult() {
        int[] iArr = $SWITCH_TABLE$lombok$eclipse$handlers$EclipseHandlerUtil$MemberExistsResult;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[EclipseHandlerUtil.MemberExistsResult.valuesCustom().length];
        try {
            iArr2[EclipseHandlerUtil.MemberExistsResult.EXISTS_BY_LOMBOK.ordinal()] = 2;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[EclipseHandlerUtil.MemberExistsResult.EXISTS_BY_USER.ordinal()] = 3;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[EclipseHandlerUtil.MemberExistsResult.NOT_EXISTS.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        $SWITCH_TABLE$lombok$eclipse$handlers$EclipseHandlerUtil$MemberExistsResult = iArr2;
        return iArr2;
    }

    /* JADX WARN: Type inference failed for: r0v275, types: [org.eclipse.jdt.internal.compiler.ast.TypeReference[], org.eclipse.jdt.internal.compiler.ast.TypeReference[][]] */
    /* JADX WARN: Type inference failed for: r0v83, types: [char[], char[][]] */
    /* JADX WARN: Type inference failed for: r0v92, types: [org.eclipse.jdt.internal.compiler.ast.TypeReference[], org.eclipse.jdt.internal.compiler.ast.TypeReference[][]] */
    /* JADX WARN: Type inference failed for: r2v57, types: [org.eclipse.jdt.internal.compiler.ast.Annotation[], org.eclipse.jdt.internal.compiler.ast.Annotation[][]] */
    @Override // lombok.eclipse.EclipseAnnotationHandler
    public void handle(AnnotationValues<SuperBuilder> annotation, Annotation ast, EclipseNode annotationNode) {
        EclipseSingularsRecipes.EclipseSingularizer singularizer;
        MethodDeclaration md;
        HandlerUtil.handleExperimentalFlagUsage(annotationNode, ConfigurationKeys.SUPERBUILDER_FLAG_USAGE, "@SuperBuilder");
        long p = (((long) ast.sourceStart) << 32) | ((long) ast.sourceEnd);
        SuperBuilder superbuilderAnnotation = (SuperBuilder) annotation.getInstance();
        String builderMethodName = superbuilderAnnotation.builderMethodName();
        String buildMethodName = superbuilderAnnotation.buildMethodName();
        if (builderMethodName == null) {
            builderMethodName = "builder";
        }
        if (buildMethodName == null) {
            buildMethodName = "build";
        }
        if (HandlerUtil.checkName("builderMethodName", builderMethodName, annotationNode) && HandlerUtil.checkName("buildMethodName", buildMethodName, annotationNode)) {
            boolean toBuilder = superbuilderAnnotation.toBuilder();
            EclipseNode tdParent = annotationNode.up();
            List<HandleBuilder.BuilderFieldData> builderFields = new ArrayList<>();
            boolean addCleaning = false;
            if (!(tdParent.get() instanceof TypeDeclaration)) {
                annotationNode.addError("@SuperBuilder is only supported on types.");
                return;
            }
            TypeDeclaration td = tdParent.get();
            List<EclipseNode> allFields = new ArrayList<>();
            boolean valuePresent = EclipseHandlerUtil.hasAnnotation((Class<? extends java.lang.annotation.Annotation>) Value.class, tdParent) || EclipseHandlerUtil.hasAnnotation("lombok.experimental.Value", tdParent);
            for (EclipseNode fieldNode : HandleConstructor.findAllFields(tdParent, true)) {
                FieldDeclaration fd = fieldNode.get();
                EclipseNode isDefault = EclipseHandlerUtil.findAnnotation(Builder.Default.class, fieldNode);
                boolean isFinal = (fd.modifiers & 16) != 0 || (valuePresent && !EclipseHandlerUtil.hasAnnotation((Class<? extends java.lang.annotation.Annotation>) NonFinal.class, fieldNode));
                Annotation[] copyableAnnotations = EclipseHandlerUtil.findCopyableAnnotations(fieldNode);
                HandleBuilder.BuilderFieldData bfd = new HandleBuilder.BuilderFieldData();
                bfd.rawName = fieldNode.getName().toCharArray();
                bfd.name = EclipseHandlerUtil.removePrefixFromField(fieldNode);
                bfd.annotations = EclipseHandlerUtil.copyAnnotations(fd, new Annotation[]{copyableAnnotations});
                bfd.type = fd.type;
                bfd.singularData = getSingularData(fieldNode, ast);
                bfd.originalFieldNode = fieldNode;
                if (bfd.singularData != null && isDefault != null) {
                    isDefault.addError("@Builder.Default and @Singular cannot be mixed.");
                    isDefault = null;
                }
                if (fd.initialization == null && isDefault != null) {
                    isDefault.addWarning("@Builder.Default requires an initializing expression (' = something;').");
                    isDefault = null;
                }
                if (fd.initialization != null && isDefault == null) {
                    if (!isFinal) {
                        fieldNode.addWarning("@Builder will ignore the initializing expression entirely. If you want the initializing expression to serve as default, add @Builder.Default. If it is not supposed to be settable during building, make the field final.");
                    }
                }
                if (isDefault != null) {
                    bfd.nameOfDefaultProvider = prefixWith(DEFAULT_PREFIX, bfd.name);
                    bfd.nameOfSetFlag = prefixWith(bfd.name, SET_PREFIX);
                    MethodDeclaration md2 = HandleBuilder.generateDefaultProvider(bfd.nameOfDefaultProvider, td.typeParameters, fieldNode, ast);
                    if (md2 != null) {
                        EclipseHandlerUtil.injectMethod(tdParent, md2);
                    }
                }
                addObtainVia(bfd, fieldNode);
                builderFields.add(bfd);
                allFields.add(fieldNode);
            }
            String builderClassName = String.valueOf(String.valueOf(td.name)) + "Builder";
            String builderImplClassName = String.valueOf(builderClassName) + "Impl";
            TypeParameter[] typeParams = td.typeParameters != null ? td.typeParameters : new TypeParameter[0];
            TypeReference returnType = EclipseHandlerUtil.namePlusTypeParamsToTypeReference(td.name, typeParams, p);
            List<String> typeParamStrings = new ArrayList<>();
            for (TypeParameter typeParam : typeParams) {
                typeParamStrings.add(typeParam.toString());
            }
            String classGenericName = generateNonclashingNameFor("C", typeParamStrings);
            String builderGenericName = generateNonclashingNameFor("B", typeParamStrings);
            QualifiedTypeReference qualifiedTypeReference = td.superclass;
            ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = null;
            TypeReference[] typeArguments = {new SingleTypeReference(classGenericName.toCharArray(), 0L), new SingleTypeReference(builderGenericName.toCharArray(), 0L)};
            if (qualifiedTypeReference instanceof QualifiedTypeReference) {
                QualifiedTypeReference qualifiedTypeReference2 = qualifiedTypeReference;
                String superclassClassName = String.valueOf(qualifiedTypeReference2.getLastToken());
                String superclassBuilderClassName = String.valueOf(superclassClassName) + "Builder";
                char[][] tokens = (char[][]) Arrays.copyOf(qualifiedTypeReference2.tokens, qualifiedTypeReference2.tokens.length + 1);
                tokens[tokens.length] = superclassBuilderClassName.toCharArray();
                long[] poss = new long[tokens.length];
                Arrays.fill(poss, p);
                TypeReference[] superclassTypeArgs = getTypeParametersFrom(qualifiedTypeReference);
                ?? r0 = new TypeReference[tokens.length];
                r0[r0.length - 1] = mergeTypeReferences(superclassTypeArgs, typeArguments);
                parameterizedQualifiedTypeReference = new ParameterizedQualifiedTypeReference(tokens, (TypeReference[][]) r0, 0, poss);
            } else if (qualifiedTypeReference != null) {
                String superClass = String.valueOf(qualifiedTypeReference.getTypeName()[0]);
                String superclassBuilderClassName2 = String.valueOf(superClass) + "Builder";
                ?? r02 = {superClass.toCharArray(), superclassBuilderClassName2.toCharArray()};
                long[] poss2 = new long[r02.length];
                Arrays.fill(poss2, p);
                TypeReference[] superclassTypeArgs2 = getTypeParametersFrom(qualifiedTypeReference);
                ?? r03 = new TypeReference[r02.length];
                r03[r03.length - 1] = mergeTypeReferences(superclassTypeArgs2, typeArguments);
                parameterizedQualifiedTypeReference = new ParameterizedQualifiedTypeReference((char[][]) r02, (TypeReference[][]) r03, 0, poss2);
            }
            generateBuilderBasedConstructor(tdParent, typeParams, builderFields, annotationNode, builderClassName, parameterizedQualifiedTypeReference != null);
            EclipseNode builderType = findInnerClass(tdParent, builderClassName);
            if (builderType == null) {
                builderType = generateBuilderAbstractClass(tdParent, builderClassName, parameterizedQualifiedTypeReference, typeParams, ast, classGenericName, builderGenericName);
            } else {
                TypeDeclaration builderTypeDeclaration = builderType.get();
                if ((builderTypeDeclaration.modifiers & 1032) == 0) {
                    annotationNode.addError("Existing Builder must be an abstract static inner class.");
                    return;
                }
                EclipseHandlerUtil.sanityCheckForMethodGeneratingAnnotationsOnBuilderClass(builderType, annotationNode);
                for (HandleBuilder.BuilderFieldData bfd2 : builderFields) {
                    EclipseSingularsRecipes.SingularData sd = bfd2.singularData;
                    if (sd != null && (singularizer = sd.getSingularizer()) != null && singularizer.checkForAlreadyExistingNodesAndGenerateError(builderType, sd)) {
                        bfd2.singularData = null;
                    }
                }
            }
            Iterator<HandleBuilder.BuilderFieldData> it = builderFields.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                HandleBuilder.BuilderFieldData bfd3 = it.next();
                if (bfd3.singularData != null && bfd3.singularData.getSingularizer() != null && bfd3.singularData.getSingularizer().requiresCleaning()) {
                    addCleaning = true;
                    break;
                }
                if (bfd3.obtainVia != null) {
                    if (bfd3.obtainVia.field().isEmpty() == bfd3.obtainVia.method().isEmpty()) {
                        bfd3.obtainViaNode.addError("The syntax is either @ObtainVia(field = \"fieldName\") or @ObtainVia(method = \"methodName\").");
                        return;
                    } else if (bfd3.obtainVia.method().isEmpty() && bfd3.obtainVia.isStatic()) {
                        bfd3.obtainViaNode.addError("@ObtainVia(isStatic = true) is not valid unless 'method' has been set.");
                        return;
                    }
                }
            }
            generateBuilderFields(builderType, builderFields, ast);
            if (addCleaning) {
                FieldDeclaration cleanDecl = new FieldDeclaration(CLEAN_FIELD_NAME, 0, -1);
                cleanDecl.declarationSourceEnd = -1;
                cleanDecl.modifiers = 2;
                cleanDecl.type = TypeReference.baseTypeReference(5, 0);
                EclipseHandlerUtil.injectFieldAndMarkGenerated(builderType, cleanDecl);
            }
            if (toBuilder) {
                EclipseHandlerUtil.injectMethod(builderType, generateFillValuesMethod(tdParent, parameterizedQualifiedTypeReference != null, builderGenericName, classGenericName, builderClassName, typeParams));
                EclipseHandlerUtil.injectMethod(builderType, generateStaticFillValuesMethod(tdParent, builderClassName, typeParams, builderFields, ast));
            }
            EclipseHandlerUtil.injectMethod(builderType, generateAbstractSelfMethod(tdParent, parameterizedQualifiedTypeReference != null, builderGenericName));
            EclipseHandlerUtil.injectMethod(builderType, generateAbstractBuildMethod(tdParent, buildMethodName, parameterizedQualifiedTypeReference != null, classGenericName, ast));
            Iterator<HandleBuilder.BuilderFieldData> it2 = builderFields.iterator();
            while (it2.hasNext()) {
                generateSetterMethodsForBuilder(builderType, it2.next(), annotationNode, builderGenericName);
            }
            if (EclipseHandlerUtil.methodExists("toString", builderType, 0) == EclipseHandlerUtil.MemberExistsResult.NOT_EXISTS) {
                List<InclusionExclusionUtils.Included<EclipseNode, ToString.Include>> fieldNodes = new ArrayList<>();
                Iterator<HandleBuilder.BuilderFieldData> it3 = builderFields.iterator();
                while (it3.hasNext()) {
                    for (EclipseNode f : it3.next().createdFields) {
                        fieldNodes.add(new InclusionExclusionUtils.Included<>(f, null, true));
                    }
                }
                MethodDeclaration md3 = HandleToString.createToString(builderType, fieldNodes, true, parameterizedQualifiedTypeReference != null, ast, HandlerUtil.FieldAccess.ALWAYS_FIELD);
                if (md3 != null) {
                    EclipseHandlerUtil.injectMethod(builderType, md3);
                }
            }
            if (addCleaning) {
                EclipseHandlerUtil.injectMethod(builderType, generateCleanMethod(builderFields, builderType, ast));
            }
            boolean isAbstract = (td.modifiers & 1024) != 0;
            if (isAbstract) {
                return;
            }
            EclipseNode builderImplType = findInnerClass(tdParent, builderImplClassName);
            if (builderImplType == null) {
                builderImplType = generateBuilderImplClass(tdParent, builderImplClassName, builderClassName, typeParams, ast);
            } else {
                TypeDeclaration builderImplTypeDeclaration = builderImplType.get();
                if ((builderImplTypeDeclaration.modifiers & 1024) != 0 || (builderImplTypeDeclaration.modifiers & 8) == 0) {
                    annotationNode.addError("Existing BuilderImpl must be a non-abstract static inner class.");
                    return;
                }
                EclipseHandlerUtil.sanityCheckForMethodGeneratingAnnotationsOnBuilderClass(builderImplType, annotationNode);
            }
            if (toBuilder) {
                switch ($SWITCH_TABLE$lombok$eclipse$handlers$EclipseHandlerUtil$MemberExistsResult()[EclipseHandlerUtil.methodExists(TO_BUILDER_METHOD_NAME_STRING, tdParent, 0).ordinal()]) {
                    case 1:
                        EclipseHandlerUtil.injectMethod(tdParent, generateToBuilderMethod(builderClassName, builderImplClassName, tdParent, typeParams, ast));
                        break;
                    case 3:
                        annotationNode.addWarning("Not generating toBuilder() as it already exists.");
                        break;
                }
            }
            EclipseHandlerUtil.injectMethod(builderImplType, generateSelfMethod(builderImplType, typeParams, p));
            if (EclipseHandlerUtil.methodExists(buildMethodName, builderImplType, -1) == EclipseHandlerUtil.MemberExistsResult.NOT_EXISTS) {
                EclipseHandlerUtil.injectMethod(builderImplType, generateBuildMethod(tdParent, buildMethodName, returnType, ast));
            }
            if (EclipseHandlerUtil.methodExists(builderMethodName, tdParent, -1) != EclipseHandlerUtil.MemberExistsResult.NOT_EXISTS || (md = generateBuilderMethod(builderMethodName, builderClassName, builderImplClassName, tdParent, typeParams, ast)) == null) {
                return;
            }
            EclipseHandlerUtil.injectMethod(tdParent, md);
        }
    }

    private EclipseNode generateBuilderAbstractClass(EclipseNode tdParent, String builderClass, TypeReference superclassBuilderClass, TypeParameter[] typeParams, ASTNode source, String classGenericName, String builderGenericName) {
        TypeDeclaration parent = tdParent.get();
        TypeDeclaration builder = new TypeDeclaration(parent.compilationResult);
        builder.bits |= 8388608;
        builder.modifiers |= 1033;
        builder.name = builderClass.toCharArray();
        builder.typeParameters = (TypeParameter[]) Arrays.copyOf(EclipseHandlerUtil.copyTypeParams(typeParams, source), typeParams.length + 2);
        TypeParameter o = new TypeParameter();
        o.name = classGenericName.toCharArray();
        o.type = EclipseHandlerUtil.cloneSelfType(tdParent, source);
        builder.typeParameters[builder.typeParameters.length - 2] = o;
        TypeParameter o2 = new TypeParameter();
        o2.name = builderGenericName.toCharArray();
        TypeReference[] typerefs = appendBuilderTypeReferences(typeParams, classGenericName, builderGenericName);
        o2.type = new ParameterizedSingleTypeReference(builderClass.toCharArray(), typerefs, 0, 0L);
        builder.typeParameters[builder.typeParameters.length - 1] = o2;
        builder.superclass = EclipseHandlerUtil.copyType(superclassBuilderClass, source);
        builder.createDefaultConstructor(false, true);
        builder.traverse(new SetGeneratedByVisitor(source), (ClassScope) null);
        return EclipseHandlerUtil.injectType(tdParent, builder);
    }

    private EclipseNode generateBuilderImplClass(EclipseNode tdParent, String builderImplClass, String builderAbstractClass, TypeParameter[] typeParams, ASTNode source) {
        TypeDeclaration parent = tdParent.get();
        TypeDeclaration builder = new TypeDeclaration(parent.compilationResult);
        builder.bits |= 8388608;
        builder.modifiers |= 26;
        builder.name = builderImplClass.toCharArray();
        if (typeParams != null && typeParams.length > 0) {
            builder.typeParameters = EclipseHandlerUtil.copyTypeParams(typeParams, source);
        }
        if (builderAbstractClass != null) {
            TypeReference[] typeArgs = new TypeReference[typeParams.length + 2];
            for (int i = 0; i < typeParams.length; i++) {
                typeArgs[i] = new SingleTypeReference(typeParams[i].name, 0L);
            }
            typeArgs[typeArgs.length - 2] = EclipseHandlerUtil.cloneSelfType(tdParent, source);
            typeArgs[typeArgs.length - 1] = createTypeReferenceWithTypeParameters(builderImplClass, typeParams);
            builder.superclass = new ParameterizedSingleTypeReference(builderAbstractClass.toCharArray(), typeArgs, 0, 0L);
        }
        builder.createDefaultConstructor(false, true);
        builder.traverse(new SetGeneratedByVisitor(source), (ClassScope) null);
        return EclipseHandlerUtil.injectType(tdParent, builder);
    }

    /* JADX WARN: Type inference failed for: r0v54, types: [char[], char[][]] */
    /* JADX WARN: Type inference failed for: r0v75, types: [char[], char[][]] */
    private void generateBuilderBasedConstructor(EclipseNode typeNode, TypeParameter[] typeParams, List<HandleBuilder.BuilderFieldData> builderFields, EclipseNode sourceNode, String builderClassName, boolean callBuilderBasedSuperConstructor) {
        SingleNameReference qualifiedNameReference;
        Statement nullCheck;
        ASTNode source = sourceNode.get();
        TypeDeclaration typeDeclaration = typeNode.get();
        long p = (((long) source.sourceStart) << 32) | ((long) source.sourceEnd);
        ConstructorDeclaration constructor = new ConstructorDeclaration(typeNode.top().get().compilationResult);
        constructor.modifiers = EclipseHandlerUtil.toEclipseModifier(AccessLevel.PROTECTED);
        constructor.selector = typeDeclaration.name;
        if (callBuilderBasedSuperConstructor) {
            constructor.constructorCall = new ExplicitConstructorCall(2);
            constructor.constructorCall.arguments = new Expression[]{new SingleNameReference(BUILDER_VARIABLE_NAME, p)};
        } else {
            constructor.constructorCall = new ExplicitConstructorCall(1);
        }
        constructor.constructorCall.sourceStart = source.sourceStart;
        constructor.constructorCall.sourceEnd = source.sourceEnd;
        constructor.thrownExceptions = null;
        constructor.typeParameters = null;
        constructor.bits |= 8388608;
        int i = source.sourceStart;
        constructor.sourceStart = i;
        constructor.declarationSourceStart = i;
        constructor.bodyStart = i;
        int i2 = source.sourceEnd;
        constructor.sourceEnd = i2;
        constructor.declarationSourceEnd = i2;
        constructor.bodyEnd = i2;
        TypeReference[] wildcards = {new Wildcard(0), new Wildcard(0)};
        constructor.arguments = new Argument[]{new Argument(BUILDER_VARIABLE_NAME, p, new ParameterizedSingleTypeReference(builderClassName.toCharArray(), mergeToTypeReferences(typeParams, wildcards), 0, p), 16)};
        List<Statement> statements = new ArrayList<>();
        for (HandleBuilder.BuilderFieldData fieldNode : builderFields) {
            char[] fieldName = EclipseHandlerUtil.removePrefixFromField(fieldNode.originalFieldNode);
            FieldReference fieldInThis = new FieldReference(fieldNode.rawName, p);
            int s = (int) (p >> 32);
            int e = (int) p;
            fieldInThis.receiver = new ThisReference(s, e);
            if (fieldNode.singularData != null && fieldNode.singularData.getSingularizer() != null) {
                fieldNode.singularData.getSingularizer().appendBuildCode(fieldNode.singularData, typeNode, statements, fieldNode.name, BUILDER_VARIABLE_NAME_STRING);
                qualifiedNameReference = new SingleNameReference(fieldNode.name, p);
            } else {
                ?? r0 = {BUILDER_VARIABLE_NAME, fieldName};
                long[] positions = {p, p};
                qualifiedNameReference = new QualifiedNameReference((char[][]) r0, positions, s, e);
            }
            Assignment assignment = new Assignment(fieldInThis, qualifiedNameReference, (int) p);
            if (fieldNode.nameOfSetFlag != null) {
                ?? r02 = {BUILDER_VARIABLE_NAME, fieldNode.nameOfSetFlag};
                long[] positions2 = {p, p};
                QualifiedNameReference setVariableInBuilderRef = new QualifiedNameReference((char[][]) r02, positions2, s, e);
                MessageSend defaultMethodCall = new MessageSend();
                defaultMethodCall.sourceStart = source.sourceStart;
                defaultMethodCall.sourceEnd = source.sourceEnd;
                defaultMethodCall.receiver = new SingleNameReference(typeNode.get().name, 0L);
                defaultMethodCall.selector = fieldNode.nameOfDefaultProvider;
                defaultMethodCall.typeArguments = typeParameterNames(typeNode.get().typeParameters);
                IfStatement ifBlockForDefault = new IfStatement(setVariableInBuilderRef, assignment, new Assignment(fieldInThis, defaultMethodCall, (int) p), s, e);
                statements.add(ifBlockForDefault);
            } else {
                statements.add(assignment);
            }
            if (EclipseHandlerUtil.hasNonNullAnnotations(fieldNode.originalFieldNode) && (nullCheck = EclipseHandlerUtil.generateNullCheck(fieldNode.originalFieldNode.get(), sourceNode)) != null) {
                statements.add(nullCheck);
            }
        }
        constructor.statements = statements.isEmpty() ? null : (Statement[]) statements.toArray(new Statement[0]);
        constructor.traverse(new SetGeneratedByVisitor(source), typeDeclaration.scope);
        EclipseHandlerUtil.injectMethod(typeNode, constructor);
    }

    private MethodDeclaration generateBuilderMethod(String builderMethodName, String builderClassName, String builderImplClassName, EclipseNode type, TypeParameter[] typeParams, ASTNode source) {
        int pS = source.sourceStart;
        int pE = source.sourceEnd;
        long p = (((long) pS) << 32) | ((long) pE);
        MethodDeclaration out = new MethodDeclaration(type.top().get().compilationResult);
        out.selector = builderMethodName.toCharArray();
        out.modifiers = 9;
        out.bits |= 8388608;
        if (typeParams != null && typeParams.length > 0) {
            out.typeParameters = EclipseHandlerUtil.copyTypeParams(typeParams, source);
        }
        TypeReference[] wildcards = {new Wildcard(0), new Wildcard(0)};
        out.returnType = new ParameterizedSingleTypeReference(builderClassName.toCharArray(), mergeToTypeReferences(typeParams, wildcards), 0, p);
        AllocationExpression invoke = new AllocationExpression();
        invoke.type = EclipseHandlerUtil.namePlusTypeParamsToTypeReference(builderImplClassName.toCharArray(), typeParams, p);
        out.statements = new Statement[]{new ReturnStatement(invoke, pS, pE)};
        out.traverse(new SetGeneratedByVisitor(source), type.get().scope);
        return out;
    }

    private MethodDeclaration generateToBuilderMethod(String builderClassName, String builderImplClassName, EclipseNode type, TypeParameter[] typeParams, ASTNode source) {
        int pS = source.sourceStart;
        int pE = source.sourceEnd;
        long p = (((long) pS) << 32) | ((long) pE);
        MethodDeclaration out = new MethodDeclaration(type.top().get().compilationResult);
        out.selector = TO_BUILDER_METHOD_NAME;
        out.modifiers = 1;
        out.bits |= 8388608;
        TypeReference[] wildcards = {new Wildcard(0), new Wildcard(0)};
        out.returnType = new ParameterizedSingleTypeReference(builderClassName.toCharArray(), mergeToTypeReferences(typeParams, wildcards), 0, p);
        AllocationExpression newClass = new AllocationExpression();
        newClass.type = EclipseHandlerUtil.namePlusTypeParamsToTypeReference(builderImplClassName.toCharArray(), typeParams, p);
        MessageSend invokeFillMethod = new MessageSend();
        invokeFillMethod.receiver = newClass;
        invokeFillMethod.selector = FILL_VALUES_METHOD_NAME;
        invokeFillMethod.arguments = new Expression[]{new ThisReference(0, 0)};
        out.statements = new Statement[]{new ReturnStatement(invokeFillMethod, pS, pE)};
        out.traverse(new SetGeneratedByVisitor(source), type.get().scope);
        return out;
    }

    private MethodDeclaration generateFillValuesMethod(EclipseNode tdParent, boolean inherited, String builderGenericName, String classGenericName, String builderClassName, TypeParameter[] typeParams) {
        MethodDeclaration out = new MethodDeclaration(tdParent.top().get().compilationResult);
        out.selector = FILL_VALUES_METHOD_NAME;
        out.bits |= 8388608;
        out.modifiers = 4;
        if (inherited) {
            out.annotations = new Annotation[]{EclipseHandlerUtil.makeMarkerAnnotation(TypeConstants.JAVA_LANG_OVERRIDE, tdParent.get())};
        }
        out.returnType = new SingleTypeReference(builderGenericName.toCharArray(), 0L);
        out.arguments = new Argument[]{new Argument(INSTANCE_VARIABLE_NAME, 0L, new SingleTypeReference(classGenericName.toCharArray(), 0L), 16)};
        List<Statement> body = new ArrayList<>();
        if (inherited) {
            MessageSend callToSuper = new MessageSend();
            callToSuper.receiver = new SuperReference(0, 0);
            callToSuper.selector = FILL_VALUES_METHOD_NAME;
            callToSuper.arguments = new Expression[]{new SingleNameReference(INSTANCE_VARIABLE_NAME, 0L)};
            body.add(callToSuper);
        }
        MessageSend callStaticFillValuesMethod = new MessageSend();
        callStaticFillValuesMethod.receiver = new SingleNameReference(builderClassName.toCharArray(), 0L);
        callStaticFillValuesMethod.selector = FILL_VALUES_STATIC_METHOD_NAME;
        callStaticFillValuesMethod.arguments = new Expression[]{new SingleNameReference(INSTANCE_VARIABLE_NAME, 0L), new ThisReference(0, 0)};
        body.add(callStaticFillValuesMethod);
        MessageSend returnCall = new MessageSend();
        returnCall.receiver = ThisReference.implicitThis();
        returnCall.selector = SELF_METHOD_NAME;
        body.add(new ReturnStatement(returnCall, 0, 0));
        out.statements = body.isEmpty() ? null : (Statement[]) body.toArray(new Statement[0]);
        return out;
    }

    private MethodDeclaration generateStaticFillValuesMethod(EclipseNode tdParent, String builderClassName, TypeParameter[] typeParams, List<HandleBuilder.BuilderFieldData> builderFields, ASTNode source) {
        MethodDeclaration out = new MethodDeclaration(tdParent.top().get().compilationResult);
        out.selector = FILL_VALUES_STATIC_METHOD_NAME;
        out.bits |= 8388608;
        out.modifiers = 10;
        out.returnType = TypeReference.baseTypeReference(6, 0);
        TypeReference[] wildcards = {new Wildcard(0), new Wildcard(0)};
        Argument builderArgument = new Argument(BUILDER_VARIABLE_NAME, 0L, new ParameterizedSingleTypeReference(builderClassName.toCharArray(), mergeToTypeReferences(typeParams, wildcards), 0, 0L), 16);
        out.arguments = new Argument[]{new Argument(INSTANCE_VARIABLE_NAME, 0L, createTypeReferenceWithTypeParameters(tdParent.getName(), typeParams), 16), builderArgument};
        if (typeParams.length > 0) {
            out.typeParameters = EclipseHandlerUtil.copyTypeParams(typeParams, source);
        }
        List<Statement> body = new ArrayList<>();
        for (HandleBuilder.BuilderFieldData bfd : builderFields) {
            MessageSend exec = createSetterCallWithInstanceValue(bfd, tdParent, source);
            body.add(exec);
        }
        out.statements = body.isEmpty() ? null : (Statement[]) body.toArray(new Statement[0]);
        return out;
    }

    /* JADX WARN: Type inference failed for: r2v6, types: [char[], char[][]] */
    private MessageSend createSetterCallWithInstanceValue(HandleBuilder.BuilderFieldData bfd, EclipseNode type, ASTNode source) {
        char[] setterName = bfd.name;
        MessageSend ms = new MessageSend();
        Expression[] tgt = new Expression[bfd.singularData == null ? 1 : 2];
        if (bfd.obtainVia == null || !bfd.obtainVia.field().isEmpty()) {
            char[] fieldName = bfd.obtainVia == null ? bfd.rawName : bfd.obtainVia.field().toCharArray();
            for (int i = 0; i < tgt.length; i++) {
                FieldReference fr = new FieldReference(fieldName, 0L);
                fr.receiver = new SingleNameReference(INSTANCE_VARIABLE_NAME, 0L);
                tgt[i] = fr;
            }
        } else {
            String obtainName = bfd.obtainVia.method();
            boolean obtainIsStatic = bfd.obtainVia.isStatic();
            for (int i2 = 0; i2 < tgt.length; i2++) {
                MessageSend obtainExpr = new MessageSend();
                obtainExpr.receiver = obtainIsStatic ? new SingleNameReference(type.getName().toCharArray(), 0L) : new SingleNameReference(INSTANCE_VARIABLE_NAME, 0L);
                obtainExpr.selector = obtainName.toCharArray();
                if (obtainIsStatic) {
                    obtainExpr.arguments = new Expression[]{new SingleNameReference(INSTANCE_VARIABLE_NAME, 0L)};
                }
                tgt[i2] = obtainExpr;
            }
        }
        if (bfd.singularData == null) {
            ms.arguments = tgt;
        } else {
            EqualExpression equalExpression = new EqualExpression(tgt[0], new NullLiteral(0, 0), 18);
            MessageSend emptyList = new MessageSend();
            emptyList.receiver = EclipseHandlerUtil.generateQualifiedNameRef(source, new char[]{TypeConstants.JAVA, TypeConstants.UTIL, "Collections".toCharArray()});
            emptyList.selector = EMPTY_LIST;
            ms.arguments = new Expression[]{new ConditionalExpression(equalExpression, emptyList, tgt[1])};
        }
        ms.receiver = new SingleNameReference(BUILDER_VARIABLE_NAME, 0L);
        ms.selector = setterName;
        return ms;
    }

    private MethodDeclaration generateAbstractSelfMethod(EclipseNode tdParent, boolean override, String builderGenericName) {
        MethodDeclaration out = new MethodDeclaration(tdParent.top().get().compilationResult);
        out.selector = SELF_METHOD_NAME;
        out.bits |= 8388608;
        out.modifiers = 16778244;
        if (override) {
            out.annotations = new Annotation[]{EclipseHandlerUtil.makeMarkerAnnotation(TypeConstants.JAVA_LANG_OVERRIDE, tdParent.get())};
        }
        out.returnType = new SingleTypeReference(builderGenericName.toCharArray(), 0L);
        return out;
    }

    private MethodDeclaration generateSelfMethod(EclipseNode builderImplType, TypeParameter[] typeParams, long p) {
        MethodDeclaration out = new MethodDeclaration(builderImplType.top().get().compilationResult);
        out.selector = SELF_METHOD_NAME;
        out.bits |= 8388608;
        out.modifiers = 4;
        out.annotations = new Annotation[]{EclipseHandlerUtil.makeMarkerAnnotation(TypeConstants.JAVA_LANG_OVERRIDE, builderImplType.get())};
        out.returnType = EclipseHandlerUtil.namePlusTypeParamsToTypeReference(builderImplType.getName().toCharArray(), typeParams, p);
        out.statements = new Statement[]{new ReturnStatement(new ThisReference(0, 0), 0, 0)};
        return out;
    }

    private MethodDeclaration generateAbstractBuildMethod(EclipseNode tdParent, String methodName, boolean override, String classGenericName, ASTNode source) {
        MethodDeclaration out = new MethodDeclaration(tdParent.top().get().compilationResult);
        out.bits |= 8388608;
        out.modifiers = 16778241;
        out.selector = methodName.toCharArray();
        out.bits |= 8388608;
        out.returnType = new SingleTypeReference(classGenericName.toCharArray(), 0L);
        if (override) {
            out.annotations = new Annotation[]{EclipseHandlerUtil.makeMarkerAnnotation(TypeConstants.JAVA_LANG_OVERRIDE, source)};
        }
        out.traverse(new SetGeneratedByVisitor(source), (ClassScope) null);
        return out;
    }

    private MethodDeclaration generateBuildMethod(EclipseNode tdParent, String name, TypeReference returnType, ASTNode source) {
        MethodDeclaration out = new MethodDeclaration(tdParent.top().get().compilationResult);
        out.bits |= 8388608;
        List<Statement> statements = new ArrayList<>();
        out.modifiers = 1;
        out.selector = name.toCharArray();
        out.bits |= 8388608;
        out.returnType = returnType;
        out.annotations = new Annotation[]{EclipseHandlerUtil.makeMarkerAnnotation(TypeConstants.JAVA_LANG_OVERRIDE, source)};
        AllocationExpression allocationStatement = new AllocationExpression();
        allocationStatement.type = EclipseHandlerUtil.copyType(out.returnType);
        allocationStatement.arguments = new Expression[]{new ThisReference(0, 0)};
        statements.add(new ReturnStatement(allocationStatement, 0, 0));
        out.statements = statements.isEmpty() ? null : (Statement[]) statements.toArray(new Statement[0]);
        out.traverse(new SetGeneratedByVisitor(source), (ClassScope) null);
        return out;
    }

    private MethodDeclaration generateCleanMethod(List<HandleBuilder.BuilderFieldData> builderFields, EclipseNode builderType, ASTNode source) {
        List<Statement> statements = new ArrayList<>();
        for (HandleBuilder.BuilderFieldData bfd : builderFields) {
            if (bfd.singularData != null && bfd.singularData.getSingularizer() != null) {
                bfd.singularData.getSingularizer().appendCleaningCode(bfd.singularData, builderType, statements);
            }
        }
        FieldReference thisUnclean = new FieldReference(CLEAN_FIELD_NAME, 0L);
        thisUnclean.receiver = new ThisReference(0, 0);
        statements.add(new Assignment(thisUnclean, new FalseLiteral(0, 0), 0));
        MethodDeclaration decl = new MethodDeclaration(builderType.top().get().compilationResult);
        decl.selector = CLEAN_METHOD_NAME;
        decl.modifiers = 2;
        decl.bits |= 8388608;
        decl.returnType = TypeReference.baseTypeReference(6, 0);
        decl.statements = (Statement[]) statements.toArray(new Statement[0]);
        decl.traverse(new SetGeneratedByVisitor(source), (ClassScope) null);
        return decl;
    }

    private void generateBuilderFields(EclipseNode builderType, List<HandleBuilder.BuilderFieldData> builderFields, ASTNode source) {
        List<EclipseNode> existing = new ArrayList<>();
        for (EclipseNode child : builderType.down()) {
            if (child.getKind() == AST.Kind.FIELD) {
                existing.add(child);
            }
        }
        for (HandleBuilder.BuilderFieldData bfd : builderFields) {
            if (bfd.singularData != null && bfd.singularData.getSingularizer() != null) {
                bfd.createdFields.addAll(bfd.singularData.getSingularizer().generateFields(bfd.singularData, builderType));
            } else {
                EclipseNode field = null;
                EclipseNode setFlag = null;
                for (EclipseNode exists : existing) {
                    char[] n = exists.get().name;
                    if (Arrays.equals(n, bfd.name)) {
                        field = exists;
                    }
                    if (bfd.nameOfSetFlag != null && Arrays.equals(n, bfd.nameOfSetFlag)) {
                        setFlag = exists;
                    }
                }
                if (field == null) {
                    FieldDeclaration fd = new FieldDeclaration(bfd.name, 0, 0);
                    fd.bits |= 8388608;
                    fd.modifiers = 2;
                    fd.type = EclipseHandlerUtil.copyType(bfd.type);
                    fd.traverse(new SetGeneratedByVisitor(source), (MethodScope) null);
                    field = EclipseHandlerUtil.injectFieldAndMarkGenerated(builderType, fd);
                }
                if (setFlag == null && bfd.nameOfSetFlag != null) {
                    FieldDeclaration fd2 = new FieldDeclaration(bfd.nameOfSetFlag, 0, 0);
                    fd2.bits |= 8388608;
                    fd2.modifiers = 2;
                    fd2.type = TypeReference.baseTypeReference(5, 0);
                    fd2.traverse(new SetGeneratedByVisitor(source), (MethodScope) null);
                    EclipseHandlerUtil.injectFieldAndMarkGenerated(builderType, fd2);
                }
                bfd.createdFields.add(field);
            }
        }
    }

    private void generateSetterMethodsForBuilder(EclipseNode builderType, HandleBuilder.BuilderFieldData bfd, EclipseNode sourceNode, final String builderGenericName) {
        boolean deprecate = EclipseHandlerUtil.isFieldDeprecated(bfd.originalFieldNode);
        EclipseSingularsRecipes.TypeReferenceMaker returnTypeMaker = new EclipseSingularsRecipes.TypeReferenceMaker() { // from class: lombok.eclipse.handlers.HandleSuperBuilder.1
            @Override // lombok.eclipse.handlers.EclipseSingularsRecipes.TypeReferenceMaker
            public TypeReference make() {
                return new SingleTypeReference(builderGenericName.toCharArray(), 0L);
            }
        };
        EclipseSingularsRecipes.StatementMaker returnStatementMaker = new EclipseSingularsRecipes.StatementMaker() { // from class: lombok.eclipse.handlers.HandleSuperBuilder.2
            @Override // lombok.eclipse.handlers.EclipseSingularsRecipes.StatementMaker
            /* JADX INFO: renamed from: make, reason: merged with bridge method [inline-methods] */
            public ReturnStatement mo2168make() {
                MessageSend returnCall = new MessageSend();
                returnCall.receiver = ThisReference.implicitThis();
                returnCall.selector = HandleSuperBuilder.SELF_METHOD_NAME;
                return new ReturnStatement(returnCall, 0, 0);
            }
        };
        if (bfd.singularData == null || bfd.singularData.getSingularizer() == null) {
            generateSimpleSetterMethodForBuilder(builderType, deprecate, bfd.createdFields.get(0), bfd.nameOfSetFlag, returnTypeMaker.make(), returnStatementMaker.mo2168make(), sourceNode, bfd.annotations);
        } else {
            bfd.singularData.getSingularizer().generateMethods(bfd.singularData, deprecate, builderType, true, returnTypeMaker, returnStatementMaker);
        }
    }

    /* JADX WARN: Type inference failed for: r11v1, types: [org.eclipse.jdt.internal.compiler.ast.Annotation[], org.eclipse.jdt.internal.compiler.ast.Annotation[][]] */
    private void generateSimpleSetterMethodForBuilder(EclipseNode builderType, boolean deprecate, EclipseNode fieldNode, char[] nameOfSetFlag, TypeReference returnType, Statement returnStatement, EclipseNode sourceNode, Annotation[] annosOnParam) {
        TypeDeclaration td = builderType.get();
        AbstractMethodDeclaration[] existing = td.methods;
        if (existing == null) {
            existing = EMPTY_METHODS;
        }
        int len = existing.length;
        FieldDeclaration fd = fieldNode.get();
        char[] name = fd.name;
        for (int i = 0; i < len; i++) {
            if (existing[i] instanceof MethodDeclaration) {
                char[] existingName = existing[i].selector;
                if (Arrays.equals(name, existingName) && !EclipseHandlerUtil.isTolerate(fieldNode, existing[i])) {
                    return;
                }
            }
        }
        String setterName = fieldNode.getName();
        MethodDeclaration setter = HandleSetter.createSetter(td, deprecate, fieldNode, setterName, nameOfSetFlag, returnType, returnStatement, 1, sourceNode, Collections.emptyList(), annosOnParam != null ? Arrays.asList(EclipseHandlerUtil.copyAnnotations(sourceNode.get(), new Annotation[]{annosOnParam})) : Collections.emptyList());
        EclipseHandlerUtil.injectMethod(builderType, setter);
    }

    private void addObtainVia(HandleBuilder.BuilderFieldData bfd, EclipseNode node) {
        for (EclipseNode child : node.down()) {
            if (EclipseHandlerUtil.annotationTypeMatches((Class<? extends java.lang.annotation.Annotation>) Builder.ObtainVia.class, child)) {
                AnnotationValues<Builder.ObtainVia> ann = EclipseHandlerUtil.createAnnotation(Builder.ObtainVia.class, child);
                bfd.obtainVia = (Builder.ObtainVia) ann.getInstance();
                bfd.obtainViaNode = child;
                return;
            }
        }
    }

    private EclipseSingularsRecipes.SingularData getSingularData(EclipseNode node, ASTNode source) {
        String typeName;
        for (EclipseNode child : node.down()) {
            if (EclipseHandlerUtil.annotationTypeMatches((Class<? extends java.lang.annotation.Annotation>) Singular.class, child)) {
                char[] pluralName = node.getKind() == AST.Kind.FIELD ? EclipseHandlerUtil.removePrefixFromField(node) : node.get().name;
                AnnotationValues<Singular> ann = EclipseHandlerUtil.createAnnotation(Singular.class, child);
                String explicitSingular = ((Singular) ann.getInstance()).value();
                if (explicitSingular.isEmpty()) {
                    if (Boolean.FALSE.equals(node.getAst().readConfiguration(ConfigurationKeys.SINGULAR_AUTO))) {
                        node.addError("The singular must be specified explicitly (e.g. @Singular(\"task\")) because auto singularization is disabled.");
                        explicitSingular = new String(pluralName);
                    } else {
                        explicitSingular = HandlerUtil.autoSingularize(new String(pluralName));
                        if (explicitSingular == null) {
                            node.addError("Can't singularize this name; please specify the singular explicitly (i.e. @Singular(\"sheep\"))");
                            explicitSingular = new String(pluralName);
                        }
                    }
                }
                char[] singularName = explicitSingular.toCharArray();
                ParameterizedSingleTypeReference parameterizedSingleTypeReference = node.get().type;
                if (parameterizedSingleTypeReference instanceof ParameterizedSingleTypeReference) {
                    typeArgs = parameterizedSingleTypeReference.typeArguments;
                    typeName = new String(parameterizedSingleTypeReference.token);
                } else if (parameterizedSingleTypeReference instanceof ParameterizedQualifiedTypeReference) {
                    TypeReference[][] tr = ((ParameterizedQualifiedTypeReference) parameterizedSingleTypeReference).typeArguments;
                    typeArgs = tr != null ? tr[tr.length - 1] : null;
                    char[][] tokens = ((ParameterizedQualifiedTypeReference) parameterizedSingleTypeReference).tokens;
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < tokens.length; i++) {
                        if (i > 0) {
                            sb.append(Version.SEPARATOR);
                        }
                        sb.append(tokens[i]);
                    }
                    typeName = sb.toString();
                } else {
                    typeName = parameterizedSingleTypeReference.toString();
                }
                String targetFqn = EclipseSingularsRecipes.get().toQualified(typeName);
                EclipseSingularsRecipes.EclipseSingularizer singularizer = EclipseSingularsRecipes.get().getSingularizer(targetFqn);
                if (singularizer == null) {
                    node.addError("Lombok does not know how to create the singular-form builder methods for type '" + typeName + "'; they won't be generated.");
                    return null;
                }
                return new EclipseSingularsRecipes.SingularData(child, singularName, pluralName, typeArgs == null ? Collections.emptyList() : Arrays.asList(typeArgs), targetFqn, singularizer, source);
            }
        }
        return null;
    }

    private String generateNonclashingNameFor(String classGenericName, List<String> typeParamStrings) {
        if (!typeParamStrings.contains(classGenericName)) {
            return classGenericName;
        }
        int counter = 2;
        while (typeParamStrings.contains(String.valueOf(classGenericName) + counter)) {
            counter++;
        }
        return String.valueOf(classGenericName) + counter;
    }

    private TypeReference[] appendBuilderTypeReferences(TypeParameter[] typeParams, String classGenericName, String builderGenericName) {
        TypeReference[] typeReferencesToAppend = new TypeReference[2];
        typeReferencesToAppend[typeReferencesToAppend.length - 2] = new SingleTypeReference(classGenericName.toCharArray(), 0L);
        typeReferencesToAppend[typeReferencesToAppend.length - 1] = new SingleTypeReference(builderGenericName.toCharArray(), 0L);
        return mergeToTypeReferences(typeParams, typeReferencesToAppend);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private TypeReference[] getTypeParametersFrom(TypeReference typeRef) {
        Object[] objArr = null;
        if (typeRef instanceof ParameterizedQualifiedTypeReference) {
            objArr = ((ParameterizedQualifiedTypeReference) typeRef).typeArguments;
        } else if (typeRef instanceof ParameterizedSingleTypeReference) {
            objArr = new TypeReference[]{((ParameterizedSingleTypeReference) typeRef).typeArguments};
        }
        Object obj = new TypeReference[0];
        if (objArr != null && objArr.length > 0) {
            obj = objArr[objArr.length - 1];
        }
        return obj;
    }

    private static SingleTypeReference createTypeReferenceWithTypeParameters(String referenceName, TypeParameter[] typeParams) {
        if (typeParams.length > 0) {
            TypeReference[] typerefs = new TypeReference[typeParams.length];
            for (int i = 0; i < typeParams.length; i++) {
                typerefs[i] = new SingleTypeReference(typeParams[i].name, 0L);
            }
            return new ParameterizedSingleTypeReference(referenceName.toCharArray(), typerefs, 0, 0L);
        }
        return new SingleTypeReference(referenceName.toCharArray(), 0L);
    }

    private TypeReference[] mergeToTypeReferences(TypeParameter[] typeParams, TypeReference[] typeReferencesToAppend) {
        TypeReference[] typerefs = new TypeReference[typeParams.length + typeReferencesToAppend.length];
        for (int i = 0; i < typeParams.length; i++) {
            typerefs[i] = new SingleTypeReference(typeParams[i].name, 0L);
        }
        for (int i2 = 0; i2 < typeReferencesToAppend.length; i2++) {
            typerefs[typeParams.length + i2] = typeReferencesToAppend[i2];
        }
        return typerefs;
    }

    private TypeReference[] mergeTypeReferences(TypeReference[] refs1, TypeReference[] refs2) {
        TypeReference[] result = new TypeReference[refs1.length + refs2.length];
        for (int i = 0; i < refs1.length; i++) {
            result[i] = refs1[i];
        }
        for (int i2 = 0; i2 < refs2.length; i2++) {
            result[refs1.length + i2] = refs2[i2];
        }
        return result;
    }

    private TypeReference[] typeParameterNames(TypeParameter[] typeParameters) {
        if (typeParameters == null) {
            return null;
        }
        TypeReference[] trs = new TypeReference[typeParameters.length];
        for (int i = 0; i < trs.length; i++) {
            trs[i] = new SingleTypeReference(typeParameters[i].name, 0L);
        }
        return trs;
    }

    private EclipseNode findInnerClass(EclipseNode parent, String name) {
        char[] c = name.toCharArray();
        for (EclipseNode child : parent.down()) {
            if (child.getKind() == AST.Kind.TYPE) {
                TypeDeclaration td = child.get();
                if (Arrays.equals(td.name, c)) {
                    return child;
                }
            }
        }
        return null;
    }

    private static final char[] prefixWith(char[] prefix, char[] name) {
        char[] out = new char[prefix.length + name.length];
        System.arraycopy(prefix, 0, out, 0, prefix.length);
        System.arraycopy(name, 0, out, prefix.length, name.length);
        return out;
    }
}
