package lombok.eclipse.handlers;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import lombok.AccessLevel;
import lombok.ConfigurationKeys;
import lombok.Data;
import lombok.Getter;
import lombok.Lombok;
import lombok.core.AST;
import lombok.core.AnnotationValues;
import lombok.core.TypeResolver;
import lombok.core.configuration.NullCheckExceptionType;
import lombok.core.configuration.TypeName;
import lombok.core.debug.ProblemReporter;
import lombok.core.handlers.HandlerUtil;
import lombok.eclipse.Eclipse;
import lombok.eclipse.EclipseAST;
import lombok.eclipse.EclipseAugments;
import lombok.eclipse.EclipseNode;
import lombok.experimental.Accessors;
import lombok.experimental.Tolerate;
import lombok.permit.Permit;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.CharLiteral;
import org.eclipse.jdt.internal.compiler.ast.ClassLiteralAccess;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.DoubleLiteral;
import org.eclipse.jdt.internal.compiler.ast.EqualExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ExtendedStringLiteral;
import org.eclipse.jdt.internal.compiler.ast.FalseLiteral;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.FloatLiteral;
import org.eclipse.jdt.internal.compiler.ast.IfStatement;
import org.eclipse.jdt.internal.compiler.ast.IntLiteral;
import org.eclipse.jdt.internal.compiler.ast.Literal;
import org.eclipse.jdt.internal.compiler.ast.LongLiteral;
import org.eclipse.jdt.internal.compiler.ast.MarkerAnnotation;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.NormalAnnotation;
import org.eclipse.jdt.internal.compiler.ast.NullLiteral;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.StringLiteral;
import org.eclipse.jdt.internal.compiler.ast.StringLiteralConcatenation;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.ThrowStatement;
import org.eclipse.jdt.internal.compiler.ast.TrueLiteral;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.lookup.CaptureBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;

/* JADX INFO: loaded from: com.texa.care.apk:lombok/eclipse/handlers/EclipseHandlerUtil.SCL.lombok */
public class EclipseHandlerUtil {
    private static final Annotation[] EMPTY_ANNOTATIONS_ARRAY = new Annotation[0];
    private static final char[] ALL = "all".toCharArray();
    private static final char[] JUSTIFICATION = "justification".toCharArray();
    private static final char[] GENERATED_CODE = "generated code".toCharArray();
    private static final char[] LOMBOK = "lombok".toCharArray();
    private static final char[][] JAVAX_ANNOTATION_GENERATED = Eclipse.fromQualifiedName("javax.annotation.Generated");
    private static final char[][] LOMBOK_GENERATED = Eclipse.fromQualifiedName("lombok.Generated");
    private static final char[][] EDU_UMD_CS_FINDBUGS_ANNOTATIONS_SUPPRESSFBWARNINGS = Eclipse.fromQualifiedName("edu.umd.cs.findbugs.annotations.SuppressFBWarnings");
    private static final Constructor<CastExpression> castExpressionConstructor;
    private static final boolean castExpressionConstructorIsTypeRefBased;
    private static final Constructor<IntLiteral> intLiteralConstructor;
    private static final Method intLiteralFactoryMethod;
    private static /* synthetic */ int[] $SWITCH_TABLE$lombok$core$AST$Kind;
    private static /* synthetic */ int[] $SWITCH_TABLE$lombok$AccessLevel;

    /* JADX INFO: loaded from: com.texa.care.apk:lombok/eclipse/handlers/EclipseHandlerUtil$MemberExistsResult.SCL.lombok */
    public enum MemberExistsResult {
        NOT_EXISTS,
        EXISTS_BY_LOMBOK,
        EXISTS_BY_USER;

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static MemberExistsResult[] valuesCustom() {
            MemberExistsResult[] memberExistsResultArrValuesCustom = values();
            int length = memberExistsResultArrValuesCustom.length;
            MemberExistsResult[] memberExistsResultArr = new MemberExistsResult[length];
            System.arraycopy(memberExistsResultArrValuesCustom, 0, memberExistsResultArr, 0, length);
            return memberExistsResultArr;
        }
    }

    static /* synthetic */ int[] $SWITCH_TABLE$lombok$core$AST$Kind() {
        int[] iArr = $SWITCH_TABLE$lombok$core$AST$Kind;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[AST.Kind.valuesCustom().length];
        try {
            iArr2[AST.Kind.ANNOTATION.ordinal()] = 6;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[AST.Kind.ARGUMENT.ordinal()] = 7;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[AST.Kind.COMPILATION_UNIT.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[AST.Kind.FIELD.ordinal()] = 3;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr2[AST.Kind.INITIALIZER.ordinal()] = 4;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr2[AST.Kind.LOCAL.ordinal()] = 8;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr2[AST.Kind.METHOD.ordinal()] = 5;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr2[AST.Kind.STATEMENT.ordinal()] = 9;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            iArr2[AST.Kind.TYPE.ordinal()] = 2;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            iArr2[AST.Kind.TYPE_USE.ordinal()] = 10;
        } catch (NoSuchFieldError unused10) {
        }
        $SWITCH_TABLE$lombok$core$AST$Kind = iArr2;
        return iArr2;
    }

    static /* synthetic */ int[] $SWITCH_TABLE$lombok$AccessLevel() {
        int[] iArr = $SWITCH_TABLE$lombok$AccessLevel;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[AccessLevel.valuesCustom().length];
        try {
            iArr2[AccessLevel.MODULE.ordinal()] = 2;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[AccessLevel.NONE.ordinal()] = 6;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[AccessLevel.PACKAGE.ordinal()] = 4;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[AccessLevel.PRIVATE.ordinal()] = 5;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr2[AccessLevel.PROTECTED.ordinal()] = 3;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr2[AccessLevel.PUBLIC.ordinal()] = 1;
        } catch (NoSuchFieldError unused6) {
        }
        $SWITCH_TABLE$lombok$AccessLevel = iArr2;
        return iArr2;
    }

    private EclipseHandlerUtil() {
    }

    public static void error(CompilationUnitDeclaration cud, String message, Throwable ex) {
        ProblemReporter.error(message, ex);
        if (cud != null) {
            EclipseAST.addProblemToCompilationResult(cud.getFileName(), cud.compilationResult, false, String.valueOf(message) + " - See error log.", 0, 0);
        }
    }

    public static void warning(String message, Throwable ex) {
        ProblemReporter.warning(message, ex);
    }

    public static ASTNode getGeneratedBy(ASTNode node) {
        return EclipseAugments.ASTNode_generatedBy.get(node);
    }

    public static boolean isGenerated(ASTNode node) {
        return getGeneratedBy(node) != null;
    }

    public static <T extends ASTNode> T setGeneratedBy(T node, ASTNode source) {
        EclipseAugments.ASTNode_generatedBy.set(node, source);
        return node;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [char[], char[][]] */
    public static MarkerAnnotation generateDeprecatedAnnotation(ASTNode source) {
        QualifiedTypeReference qtr = new QualifiedTypeReference((char[][]) new char[]{new char[]{'j', 'a', 'v', 'a'}, new char[]{'l', 'a', 'n', 'g'}, new char[]{'D', 'e', 'p', 'r', 'e', 'c', 'a', 't', 'e', 'd'}}, Eclipse.poss(source, 3));
        setGeneratedBy(qtr, source);
        MarkerAnnotation ma = new MarkerAnnotation(qtr, source.sourceStart);
        ma.sourceStart = 1;
        setGeneratedBy(ma, source);
        return ma;
    }

    public static boolean isFieldDeprecated(EclipseNode fieldNode) {
        if (!(fieldNode.get() instanceof FieldDeclaration)) {
            return false;
        }
        FieldDeclaration field = fieldNode.get();
        if ((field.modifiers & 1048576) != 0) {
            return true;
        }
        if (field.annotations == null) {
            return false;
        }
        for (Annotation annotation : field.annotations) {
            if (typeMatches((Class<?>) Deprecated.class, fieldNode, annotation.type)) {
                return true;
            }
        }
        return false;
    }

    public static boolean typeMatches(Class<?> type, EclipseNode node, TypeReference typeRef) {
        if (typeRef == null || typeRef.getTypeName() == null || typeRef.getTypeName().length == 0) {
            return false;
        }
        String lastPartA = new String(typeRef.getTypeName()[typeRef.getTypeName().length - 1]);
        String lastPartB = type.getSimpleName();
        if (!lastPartA.equals(lastPartB)) {
            return false;
        }
        String typeName = Eclipse.toQualifiedName(typeRef.getTypeName());
        TypeResolver resolver = new TypeResolver(node.getImportList());
        return resolver.typeMatches(node, type.getName(), typeName);
    }

    public static boolean typeMatches(String type, EclipseNode node, TypeReference typeRef) {
        if (typeRef == null || typeRef.getTypeName() == null || typeRef.getTypeName().length == 0) {
            return false;
        }
        String lastPartA = new String(typeRef.getTypeName()[typeRef.getTypeName().length - 1]);
        int lastIndex = type.lastIndexOf(46);
        String lastPartB = lastIndex == -1 ? type : type.substring(lastIndex + 1);
        if (!lastPartA.equals(lastPartB)) {
            return false;
        }
        String typeName = Eclipse.toQualifiedName(typeRef.getTypeName());
        TypeResolver resolver = new TypeResolver(node.getImportList());
        return resolver.typeMatches(node, type, typeName);
    }

    public static void sanityCheckForMethodGeneratingAnnotationsOnBuilderClass(EclipseNode typeNode, EclipseNode errorNode) {
        List<String> disallowed = null;
        for (EclipseNode child : typeNode.down()) {
            if (child.getKind() == AST.Kind.ANNOTATION) {
                for (String annType : HandlerUtil.INVALID_ON_BUILDERS) {
                    if (annotationTypeMatches(annType, child)) {
                        if (disallowed == null) {
                            disallowed = new ArrayList<>();
                        }
                        int lastIndex = annType.lastIndexOf(46);
                        disallowed.add(lastIndex == -1 ? annType : annType.substring(lastIndex + 1));
                    }
                }
            }
        }
        int size = disallowed == null ? 0 : disallowed.size();
        if (size == 0) {
            return;
        }
        if (size == 1) {
            errorNode.addError("@" + disallowed.get(0) + " is not allowed on builder classes.");
            return;
        }
        StringBuilder out = new StringBuilder();
        for (String a : disallowed) {
            out.append("@").append(a).append(", ");
        }
        out.setLength(out.length() - 2);
        errorNode.addError(out.append(" are not allowed on builder classes.").toString());
    }

    public static Annotation copyAnnotation(Annotation annotation, ASTNode source) {
        int pS = source.sourceStart;
        int pE = source.sourceEnd;
        if (annotation instanceof MarkerAnnotation) {
            MarkerAnnotation ann = new MarkerAnnotation(copyType(annotation.type, source), pS);
            setGeneratedBy(ann, source);
            ann.statementEnd = pE;
            ann.sourceEnd = pE;
            ann.declarationSourceEnd = pE;
            try {
                EclipseReflectiveMembers.reflectSet(EclipseReflectiveMembers.ANNOTATION__MEMBER_VALUE_PAIR_NAME, ann, EclipseReflectiveMembers.reflect(EclipseReflectiveMembers.ANNOTATION__MEMBER_VALUE_PAIR_NAME, annotation));
            } catch (Exception unused) {
            }
            return ann;
        }
        if (annotation instanceof SingleMemberAnnotation) {
            SingleMemberAnnotation ann2 = new SingleMemberAnnotation(copyType(annotation.type, source), pS);
            setGeneratedBy(ann2, source);
            ann2.statementEnd = pE;
            ann2.sourceEnd = pE;
            ann2.declarationSourceEnd = pE;
            ann2.memberValue = copyAnnotationMemberValue(((SingleMemberAnnotation) annotation).memberValue);
            try {
                EclipseReflectiveMembers.reflectSet(EclipseReflectiveMembers.ANNOTATION__MEMBER_VALUE_PAIR_NAME, ann2, EclipseReflectiveMembers.reflect(EclipseReflectiveMembers.ANNOTATION__MEMBER_VALUE_PAIR_NAME, annotation));
            } catch (Exception unused2) {
            }
            return ann2;
        }
        if (annotation instanceof NormalAnnotation) {
            NormalAnnotation ann3 = new NormalAnnotation(copyType(annotation.type, source), pS);
            setGeneratedBy(ann3, source);
            ann3.sourceEnd = pE;
            ann3.statementEnd = pE;
            ann3.declarationSourceEnd = pE;
            MemberValuePair[] inPairs = ((NormalAnnotation) annotation).memberValuePairs;
            if (inPairs == null) {
                ann3.memberValuePairs = null;
            } else {
                ann3.memberValuePairs = new MemberValuePair[inPairs.length];
                for (int i = 0; i < inPairs.length; i++) {
                    ann3.memberValuePairs[i] = new MemberValuePair(inPairs[i].name, inPairs[i].sourceStart, inPairs[i].sourceEnd, copyAnnotationMemberValue(inPairs[i].value));
                }
            }
            try {
                EclipseReflectiveMembers.reflectSet(EclipseReflectiveMembers.ANNOTATION__MEMBER_VALUE_PAIR_NAME, ann3, EclipseReflectiveMembers.reflect(EclipseReflectiveMembers.ANNOTATION__MEMBER_VALUE_PAIR_NAME, annotation));
            } catch (Exception unused3) {
            }
            return ann3;
        }
        return annotation;
    }

    /* JADX INFO: loaded from: com.texa.care.apk:lombok/eclipse/handlers/EclipseHandlerUtil$EclipseReflectiveMembers.SCL.lombok */
    static class EclipseReflectiveMembers {
        public static final Field STRING_LITERAL__LINE_NUMBER = getField(StringLiteral.class, "lineNumber");
        public static final Field ANNOTATION__MEMBER_VALUE_PAIR_NAME = getField(Annotation.class, "memberValuePairName");
        public static final Field TYPE_REFERENCE__ANNOTATIONS = getField(TypeReference.class, "annotations");

        EclipseReflectiveMembers() {
        }

        public static int reflectInt(Field f, Object o) {
            try {
                return ((Number) f.get(o)).intValue();
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            }
        }

        public static void reflectSet(Field f, Object o, Object v) {
            try {
                f.set(o, v);
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            }
        }

        public static Object reflect(Field f, Object o) {
            try {
                return f.get(o);
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            }
        }

        private static Field getField(Class<?> c, String fName) {
            try {
                return Permit.getField(c, fName);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    private static Expression copyAnnotationMemberValue(Expression in) {
        Expression out = copyAnnotationMemberValue0(in);
        out.constant = in.constant;
        return out;
    }

    private static Expression copyAnnotationMemberValue0(Expression in) {
        int s = in.sourceStart;
        int e = in.sourceEnd;
        if (in instanceof FalseLiteral) {
            return new FalseLiteral(s, e);
        }
        if (in instanceof TrueLiteral) {
            return new TrueLiteral(s, e);
        }
        if (in instanceof NullLiteral) {
            return new NullLiteral(s, e);
        }
        if (in instanceof CharLiteral) {
            return new CharLiteral(((Literal) in).source(), s, e);
        }
        if (in instanceof DoubleLiteral) {
            return new DoubleLiteral(((Literal) in).source(), s, e);
        }
        if (in instanceof FloatLiteral) {
            return new FloatLiteral(((Literal) in).source(), s, e);
        }
        if (in instanceof IntLiteral) {
            return IntLiteral.buildIntLiteral(((Literal) in).source(), s, e);
        }
        if (in instanceof LongLiteral) {
            return LongLiteral.buildLongLiteral(((Literal) in).source(), s, e);
        }
        if (in instanceof StringLiteral) {
            return new StringLiteral(((Literal) in).source(), s, e, EclipseReflectiveMembers.reflectInt(EclipseReflectiveMembers.STRING_LITERAL__LINE_NUMBER, in) + 1);
        }
        if (in instanceof ExtendedStringLiteral) {
            StringLiteral str = new StringLiteral(((Literal) in).source(), s, e, EclipseReflectiveMembers.reflectInt(EclipseReflectiveMembers.STRING_LITERAL__LINE_NUMBER, in) + 1);
            StringLiteral empty = new StringLiteral(new char[0], s, e, EclipseReflectiveMembers.reflectInt(EclipseReflectiveMembers.STRING_LITERAL__LINE_NUMBER, in) + 1);
            return new ExtendedStringLiteral(str, empty);
        }
        if (in instanceof StringLiteralConcatenation) {
            Expression[] literals = ((StringLiteralConcatenation) in).literals;
            if (literals.length == 0) {
                return new StringLiteral(new char[0], s, e, 0);
            }
            if (literals.length == 1) {
                return copyAnnotationMemberValue0(literals[0]);
            }
            StringLiteralConcatenation c = new StringLiteralConcatenation((StringLiteral) literals[0], (StringLiteral) literals[1]);
            for (int i = 2; i < literals.length; i++) {
                c = c.extendsWith((StringLiteral) literals[i]);
            }
            return c;
        }
        if (in instanceof SingleNameReference) {
            SingleNameReference snr = (SingleNameReference) in;
            long p = (((long) s) << 32) | ((long) e);
            return new SingleNameReference(snr.token, p);
        }
        if (in instanceof QualifiedNameReference) {
            QualifiedNameReference qnr = (QualifiedNameReference) in;
            return new QualifiedNameReference(qnr.tokens, qnr.sourcePositions, s, e);
        }
        if (in instanceof ClassLiteralAccess) {
            return new ClassLiteralAccess(e, copyType(((ClassLiteralAccess) in).type));
        }
        if (in instanceof ArrayInitializer) {
            Expression[] exprs = ((ArrayInitializer) in).expressions;
            Expression[] copy = new Expression[exprs.length];
            for (int i2 = 0; i2 < exprs.length; i2++) {
                copy[i2] = copyAnnotationMemberValue(exprs[i2]);
            }
            ArrayInitializer out = new ArrayInitializer();
            out.sourceStart = s;
            out.sourceEnd = e;
            out.bits = in.bits;
            out.implicitConversion = in.implicitConversion;
            out.statementEnd = in.statementEnd;
            out.expressions = copy;
            return out;
        }
        return in;
    }

    public static TypeParameter[] copyTypeParams(TypeParameter[] params, ASTNode source) {
        if (params == null) {
            return null;
        }
        TypeParameter[] out = new TypeParameter[params.length];
        int idx = 0;
        for (TypeParameter param : params) {
            TypeParameter o = new TypeParameter();
            setGeneratedBy(o, source);
            o.annotations = param.annotations;
            o.bits = param.bits;
            o.modifiers = param.modifiers;
            o.name = param.name;
            o.type = copyType(param.type, source);
            o.sourceStart = param.sourceStart;
            o.sourceEnd = param.sourceEnd;
            o.declarationEnd = param.declarationEnd;
            o.declarationSourceStart = param.declarationSourceStart;
            o.declarationSourceEnd = param.declarationSourceEnd;
            if (param.bounds != null) {
                TypeReference[] b = new TypeReference[param.bounds.length];
                int idx2 = 0;
                for (TypeReference ref : param.bounds) {
                    int i = idx2;
                    idx2++;
                    b[i] = copyType(ref, source);
                }
                o.bounds = b;
            }
            int i2 = idx;
            idx++;
            out[i2] = o;
        }
        return out;
    }

    public static Annotation[] getTypeUseAnnotations(TypeReference from) {
        try {
            Annotation[][] a = (Annotation[][]) EclipseReflectiveMembers.reflect(EclipseReflectiveMembers.TYPE_REFERENCE__ANNOTATIONS, from);
            if (a == null) {
                return null;
            }
            Annotation[] b = a[a.length - 1];
            if (b.length == 0) {
                return null;
            }
            return b;
        } catch (Exception unused) {
            return null;
        }
    }

    public static void removeTypeUseAnnotations(TypeReference from) {
        try {
            EclipseReflectiveMembers.reflectSet(EclipseReflectiveMembers.TYPE_REFERENCE__ANNOTATIONS, from, null);
        } catch (Exception unused) {
        }
    }

    public static TypeReference namePlusTypeParamsToTypeReference(char[] typeName, TypeParameter[] params, long p) {
        if (params != null && params.length > 0) {
            TypeReference[] refs = new TypeReference[params.length];
            int idx = 0;
            for (TypeParameter param : params) {
                int i = idx;
                idx++;
                refs[i] = new SingleTypeReference(param.name, p);
            }
            return new ParameterizedSingleTypeReference(typeName, refs, 0, p);
        }
        return new SingleTypeReference(typeName, p);
    }

    public static TypeReference[] copyTypes(TypeReference[] refs) {
        return copyTypes(refs, null);
    }

    public static TypeReference[] copyTypes(TypeReference[] refs, ASTNode source) {
        if (refs == null) {
            return null;
        }
        TypeReference[] outs = new TypeReference[refs.length];
        int idx = 0;
        for (TypeReference ref : refs) {
            int i = idx;
            idx++;
            outs[i] = copyType(ref, source);
        }
        return outs;
    }

    public static TypeReference copyType(TypeReference ref) {
        return copyType(ref, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static TypeReference copyType(TypeReference ref, ASTNode source) {
        if (ref instanceof ParameterizedQualifiedTypeReference) {
            ParameterizedQualifiedTypeReference iRef = (ParameterizedQualifiedTypeReference) ref;
            Object[] objArr = null;
            if (iRef.typeArguments != null) {
                objArr = new TypeReference[iRef.typeArguments.length];
                int idx = 0;
                for (TypeReference[] inRefArray : iRef.typeArguments) {
                    if (inRefArray == null) {
                        int i = idx;
                        idx++;
                        objArr[i] = null;
                    } else {
                        TypeReference[] outRefArray = new TypeReference[inRefArray.length];
                        int idx2 = 0;
                        for (TypeReference typeReference : inRefArray) {
                            int i2 = idx2;
                            idx2++;
                            outRefArray[i2] = copyType(typeReference, source);
                        }
                        int i3 = idx;
                        idx++;
                        objArr[i3] = outRefArray;
                    }
                }
            }
            ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = new ParameterizedQualifiedTypeReference(iRef.tokens, objArr, iRef.dimensions(), copy(iRef.sourcePositions));
            copyTypeAnns(ref, parameterizedQualifiedTypeReference);
            if (source != null) {
                setGeneratedBy(parameterizedQualifiedTypeReference, source);
            }
            return parameterizedQualifiedTypeReference;
        }
        if (ref instanceof ArrayQualifiedTypeReference) {
            ArrayQualifiedTypeReference iRef2 = (ArrayQualifiedTypeReference) ref;
            ArrayQualifiedTypeReference arrayQualifiedTypeReference = new ArrayQualifiedTypeReference(iRef2.tokens, iRef2.dimensions(), copy(iRef2.sourcePositions));
            copyTypeAnns(ref, arrayQualifiedTypeReference);
            if (source != null) {
                setGeneratedBy(arrayQualifiedTypeReference, source);
            }
            return arrayQualifiedTypeReference;
        }
        if (ref instanceof QualifiedTypeReference) {
            QualifiedTypeReference iRef3 = (QualifiedTypeReference) ref;
            QualifiedTypeReference qualifiedTypeReference = new QualifiedTypeReference(iRef3.tokens, copy(iRef3.sourcePositions));
            copyTypeAnns(ref, qualifiedTypeReference);
            if (source != null) {
                setGeneratedBy(qualifiedTypeReference, source);
            }
            return qualifiedTypeReference;
        }
        if (ref instanceof ParameterizedSingleTypeReference) {
            ParameterizedSingleTypeReference iRef4 = (ParameterizedSingleTypeReference) ref;
            TypeReference[] args = null;
            if (iRef4.typeArguments != null) {
                args = new TypeReference[iRef4.typeArguments.length];
                int idx3 = 0;
                for (TypeReference inRef : iRef4.typeArguments) {
                    if (inRef == null) {
                        int i4 = idx3;
                        idx3++;
                        args[i4] = null;
                    } else {
                        int i5 = idx3;
                        idx3++;
                        args[i5] = copyType(inRef, source);
                    }
                }
            }
            ParameterizedSingleTypeReference parameterizedSingleTypeReference = new ParameterizedSingleTypeReference(iRef4.token, args, iRef4.dimensions(), (((long) iRef4.sourceStart) << 32) | ((long) iRef4.sourceEnd));
            copyTypeAnns(ref, parameterizedSingleTypeReference);
            if (source != null) {
                setGeneratedBy(parameterizedSingleTypeReference, source);
            }
            return parameterizedSingleTypeReference;
        }
        if (ref instanceof ArrayTypeReference) {
            ArrayTypeReference iRef5 = (ArrayTypeReference) ref;
            ArrayTypeReference arrayTypeReference = new ArrayTypeReference(iRef5.token, iRef5.dimensions(), (((long) iRef5.sourceStart) << 32) | ((long) iRef5.sourceEnd));
            copyTypeAnns(ref, arrayTypeReference);
            if (source != null) {
                setGeneratedBy(arrayTypeReference, source);
            }
            return arrayTypeReference;
        }
        if (ref instanceof Wildcard) {
            Wildcard original = (Wildcard) ref;
            Wildcard wildcard = new Wildcard(original.kind);
            wildcard.sourceStart = original.sourceStart;
            wildcard.sourceEnd = original.sourceEnd;
            if (original.bound != null) {
                wildcard.bound = copyType(original.bound, source);
            }
            copyTypeAnns(ref, wildcard);
            if (source != null) {
                setGeneratedBy(wildcard, source);
            }
            return wildcard;
        }
        if (ref instanceof SingleTypeReference) {
            SingleTypeReference iRef6 = (SingleTypeReference) ref;
            SingleTypeReference singleTypeReference = new SingleTypeReference(iRef6.token, (((long) iRef6.sourceStart) << 32) | ((long) iRef6.sourceEnd));
            copyTypeAnns(ref, singleTypeReference);
            if (source != null) {
                setGeneratedBy(singleTypeReference, source);
            }
            return singleTypeReference;
        }
        return ref;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void copyTypeAnns(TypeReference in, TypeReference out) {
        try {
            ASTNode[][] aSTNodeArr = (Annotation[][]) EclipseReflectiveMembers.reflect(EclipseReflectiveMembers.TYPE_REFERENCE__ANNOTATIONS, in);
            if (aSTNodeArr == null) {
                EclipseReflectiveMembers.reflectSet(EclipseReflectiveMembers.TYPE_REFERENCE__ANNOTATIONS, out, null);
                return;
            }
            Annotation[] annotationArr = new Annotation[aSTNodeArr.length];
            for (int i = 0; i < aSTNodeArr.length; i++) {
                annotationArr[i] = new Annotation[aSTNodeArr[i].length];
                for (int j = 0; j < aSTNodeArr[i].length; j++) {
                    annotationArr[i][j] = copyAnnotation(aSTNodeArr[i][j], aSTNodeArr[i][j]);
                }
            }
            EclipseReflectiveMembers.reflectSet(EclipseReflectiveMembers.TYPE_REFERENCE__ANNOTATIONS, out, annotationArr);
        } catch (Exception unused) {
        }
    }

    public static Annotation[] copyAnnotations(ASTNode source, Annotation[]... allAnnotations) {
        List<Annotation> result = null;
        for (Annotation[] annotations : allAnnotations) {
            if (annotations != null) {
                for (Annotation annotation : annotations) {
                    if (result == null) {
                        result = new ArrayList<>();
                    }
                    result.add(copyAnnotation(annotation, source));
                }
            }
        }
        if (result == null) {
            return null;
        }
        return (Annotation[]) result.toArray(new Annotation[0]);
    }

    public static boolean hasAnnotation(Class<? extends java.lang.annotation.Annotation> type, EclipseNode node) {
        if (node == null || type == null) {
            return false;
        }
        switch ($SWITCH_TABLE$lombok$core$AST$Kind()[node.getKind().ordinal()]) {
            case 2:
            case 3:
            case 5:
            case 7:
            case 8:
                for (EclipseNode child : node.down()) {
                    if (annotationTypeMatches(type, child)) {
                        break;
                    }
                }
                break;
        }
        return false;
    }

    public static boolean hasAnnotation(String type, EclipseNode node) {
        if (node == null || type == null) {
            return false;
        }
        switch ($SWITCH_TABLE$lombok$core$AST$Kind()[node.getKind().ordinal()]) {
            case 2:
            case 3:
            case 5:
            case 7:
            case 8:
                for (EclipseNode child : node.down()) {
                    if (annotationTypeMatches(type, child)) {
                        break;
                    }
                }
                break;
        }
        return false;
    }

    public static EclipseNode findInnerClass(EclipseNode parent, String name) {
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

    public static EclipseNode findAnnotation(Class<? extends java.lang.annotation.Annotation> type, EclipseNode node) {
        if (node == null || type == null) {
            return null;
        }
        switch ($SWITCH_TABLE$lombok$core$AST$Kind()[node.getKind().ordinal()]) {
            case 2:
            case 3:
            case 5:
            case 7:
            case 8:
                Iterator<EclipseNode> it = node.down().iterator();
                while (it.hasNext()) {
                    EclipseNode child = it.next();
                    if (annotationTypeMatches(type, child)) {
                        break;
                    }
                }
                break;
        }
        return null;
    }

    public static boolean hasNonNullAnnotations(EclipseNode node) {
        AbstractVariableDeclaration avd = node.get();
        if (avd.annotations == null) {
            return false;
        }
        for (Annotation annotation : avd.annotations) {
            TypeReference typeRef = annotation.type;
            if (typeRef != null && typeRef.getTypeName() != null) {
                for (String bn : HandlerUtil.NONNULL_ANNOTATIONS) {
                    if (typeMatches(bn, node, typeRef)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    static {
        Constructor<CastExpression> constructor = null;
        for (Constructor<CastExpression> constructor2 : CastExpression.class.getConstructors()) {
            if (constructor2.getParameterTypes().length == 2) {
                constructor = constructor2;
            }
        }
        Constructor<CastExpression> castExpressionConstructor_ = constructor;
        castExpressionConstructor = castExpressionConstructor_;
        castExpressionConstructorIsTypeRefBased = castExpressionConstructor.getParameterTypes()[1] == TypeReference.class;
        Class[] parameterTypes = {char[].class, Integer.TYPE, Integer.TYPE};
        Constructor<IntLiteral> intLiteralConstructor_ = null;
        Method intLiteralFactoryMethod_ = null;
        try {
            intLiteralConstructor_ = Permit.getConstructor(IntLiteral.class, parameterTypes);
        } catch (Throwable unused) {
        }
        try {
            intLiteralFactoryMethod_ = Permit.getMethod(IntLiteral.class, "buildIntLiteral", parameterTypes);
        } catch (Throwable unused2) {
        }
        intLiteralConstructor = intLiteralConstructor_;
        intLiteralFactoryMethod = intLiteralFactoryMethod_;
    }

    public static Annotation[] findCopyableAnnotations(EclipseNode node) {
        AbstractVariableDeclaration avd = node.get();
        if (avd.annotations == null) {
            return EMPTY_ANNOTATIONS_ARRAY;
        }
        List<Annotation> result = new ArrayList<>();
        List<TypeName> configuredCopyable = (List) node.getAst().readConfiguration(ConfigurationKeys.COPYABLE_ANNOTATIONS);
        for (Annotation annotation : avd.annotations) {
            TypeReference typeRef = annotation.type;
            boolean match = false;
            if (typeRef != null && typeRef.getTypeName() != null) {
                Iterator<TypeName> it = configuredCopyable.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    TypeName cn = it.next();
                    if (typeMatches(cn.toString(), node, typeRef)) {
                        result.add(annotation);
                        match = true;
                        break;
                    }
                }
                if (!match) {
                    Iterator<String> it2 = HandlerUtil.BASE_COPYABLE_ANNOTATIONS.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        String bn = it2.next();
                        if (typeMatches(bn, node, typeRef)) {
                            result.add(annotation);
                            break;
                        }
                    }
                }
            }
        }
        return (Annotation[]) result.toArray(EMPTY_ANNOTATIONS_ARRAY);
    }

    public static boolean annotationTypeMatches(Class<? extends java.lang.annotation.Annotation> type, EclipseNode node) {
        if (node.getKind() != AST.Kind.ANNOTATION) {
            return false;
        }
        return typeMatches(type, node, node.get().type);
    }

    public static boolean annotationTypeMatches(String type, EclipseNode node) {
        if (node.getKind() != AST.Kind.ANNOTATION) {
            return false;
        }
        return typeMatches(type, node, node.get().type);
    }

    public static TypeReference cloneSelfType(EclipseNode context) {
        return cloneSelfType(context, null);
    }

    public static TypeReference cloneSelfType(EclipseNode context, ASTNode source) {
        int pS = source == null ? 0 : source.sourceStart;
        int pE = source == null ? 0 : source.sourceEnd;
        long p = (((long) pS) << 32) | ((long) pE);
        EclipseNode type = context;
        ParameterizedSingleTypeReference singleTypeReference = null;
        while (type != null && type.getKind() != AST.Kind.TYPE) {
            type = type.up();
        }
        if (type != null && (type.get() instanceof TypeDeclaration)) {
            TypeDeclaration typeDecl = type.get();
            if (typeDecl.typeParameters != null && typeDecl.typeParameters.length > 0) {
                TypeReference[] refs = new TypeReference[typeDecl.typeParameters.length];
                int idx = 0;
                for (TypeParameter param : typeDecl.typeParameters) {
                    SingleTypeReference singleTypeReference2 = new SingleTypeReference(param.name, (((long) param.sourceStart) << 32) | ((long) param.sourceEnd));
                    if (source != null) {
                        setGeneratedBy(singleTypeReference2, source);
                    }
                    int i = idx;
                    idx++;
                    refs[i] = singleTypeReference2;
                }
                singleTypeReference = new ParameterizedSingleTypeReference(typeDecl.name, refs, 0, p);
            } else {
                singleTypeReference = new SingleTypeReference(type.get().name, p);
            }
        }
        if (singleTypeReference != null && source != null) {
            setGeneratedBy(singleTypeReference, source);
        }
        return singleTypeReference;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v106, types: [char[]] */
    /* JADX WARN: Type inference failed for: r0v54, types: [char[]] */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r0v75 */
    /* JADX WARN: Type inference failed for: r0v85 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14, types: [char[]] */
    /* JADX WARN: Type inference failed for: r2v15, types: [char[][]] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17, types: [char[]] */
    /* JADX WARN: Type inference failed for: r2v18, types: [char[][]] */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20, types: [char[]] */
    /* JADX WARN: Type inference failed for: r2v21, types: [char[][]] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r6v0 */
    public static TypeReference makeType(TypeBinding typeBinding, ASTNode aSTNode, boolean z) {
        ?? r14;
        int iDimensions = typeBinding.dimensions();
        ReferenceBinding referenceBindingLeafComponentType = typeBinding.leafComponentType();
        char[] cArr = null;
        switch (((TypeBinding) referenceBindingLeafComponentType).id) {
            case 2:
                cArr = TypeConstants.CHAR;
                break;
            case 3:
                cArr = TypeConstants.BYTE;
                break;
            case 4:
                cArr = TypeConstants.SHORT;
                break;
            case 5:
                cArr = TypeConstants.BOOLEAN;
                break;
            case 6:
                cArr = TypeConstants.VOID;
                break;
            case 7:
                cArr = TypeConstants.LONG;
                break;
            case 8:
                cArr = TypeConstants.DOUBLE;
                break;
            case 9:
                cArr = TypeConstants.FLOAT;
                break;
            case 10:
                cArr = TypeConstants.INT;
                break;
            case 12:
                return null;
        }
        if (cArr != null) {
            if (iDimensions > 0) {
                ArrayTypeReference arrayTypeReference = new ArrayTypeReference(cArr, iDimensions, Eclipse.pos(aSTNode));
                setGeneratedBy(arrayTypeReference, aSTNode);
                return arrayTypeReference;
            }
            SingleTypeReference singleTypeReference = new SingleTypeReference(cArr, Eclipse.pos(aSTNode));
            setGeneratedBy(singleTypeReference, aSTNode);
            return singleTypeReference;
        }
        if (referenceBindingLeafComponentType.isAnonymousType()) {
            ReferenceBinding referenceBinding = referenceBindingLeafComponentType;
            TypeBinding[] typeBindingArrSuperInterfaces = referenceBinding.superInterfaces();
            if (typeBindingArrSuperInterfaces == null || typeBindingArrSuperInterfaces.length == 0) {
                typeBindingArrSuperInterfaces = new ReferenceBinding[]{referenceBinding.superclass()};
            }
            if (typeBindingArrSuperInterfaces[0] == null) {
                QualifiedTypeReference qualifiedTypeReference = new QualifiedTypeReference(TypeConstants.JAVA_LANG_OBJECT, Eclipse.poss(aSTNode, 3));
                setGeneratedBy(qualifiedTypeReference, aSTNode);
                return qualifiedTypeReference;
            }
            return makeType(typeBindingArrSuperInterfaces[0], aSTNode, false);
        }
        if (referenceBindingLeafComponentType instanceof CaptureBinding) {
            return makeType(((CaptureBinding) referenceBindingLeafComponentType).wildcard, aSTNode, z);
        }
        if (referenceBindingLeafComponentType.isUnboundWildcard()) {
            if (!z) {
                QualifiedTypeReference qualifiedTypeReference2 = new QualifiedTypeReference(TypeConstants.JAVA_LANG_OBJECT, Eclipse.poss(aSTNode, 3));
                setGeneratedBy(qualifiedTypeReference2, aSTNode);
                return qualifiedTypeReference2;
            }
            Wildcard wildcard = new Wildcard(0);
            setGeneratedBy(wildcard, aSTNode);
            wildcard.sourceStart = aSTNode.sourceStart;
            wildcard.sourceEnd = aSTNode.sourceEnd;
            return wildcard;
        }
        if (referenceBindingLeafComponentType.isWildcard()) {
            WildcardBinding wildcardBinding = (WildcardBinding) referenceBindingLeafComponentType;
            if (wildcardBinding.boundKind == 1) {
                if (!z) {
                    return makeType(wildcardBinding.bound, aSTNode, false);
                }
                Wildcard wildcard2 = new Wildcard(1);
                setGeneratedBy(wildcard2, aSTNode);
                wildcard2.bound = makeType(wildcardBinding.bound, aSTNode, false);
                wildcard2.sourceStart = aSTNode.sourceStart;
                wildcard2.sourceEnd = aSTNode.sourceEnd;
                return wildcard2;
            }
            if (z && wildcardBinding.boundKind == 2) {
                Wildcard wildcard3 = new Wildcard(2);
                setGeneratedBy(wildcard3, aSTNode);
                wildcard3.bound = makeType(wildcardBinding.bound, aSTNode, false);
                wildcard3.sourceStart = aSTNode.sourceStart;
                wildcard3.sourceEnd = aSTNode.sourceEnd;
                return wildcard3;
            }
            QualifiedTypeReference qualifiedTypeReference3 = new QualifiedTypeReference(TypeConstants.JAVA_LANG_OBJECT, Eclipse.poss(aSTNode, 3));
            setGeneratedBy(qualifiedTypeReference3, aSTNode);
            return qualifiedTypeReference3;
        }
        ArrayList arrayList = new ArrayList();
        ReferenceBinding referenceBindingEnclosingType = referenceBindingLeafComponentType;
        while (true) {
            ReferenceBinding referenceBinding2 = referenceBindingEnclosingType;
            boolean z2 = referenceBinding2.isLocalType() || !referenceBinding2.isMemberType() || referenceBinding2.enclosingType() == null;
            TypeReference[] typeReferenceArr = null;
            if (referenceBinding2 instanceof ParameterizedTypeBinding) {
                ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) referenceBinding2;
                if (parameterizedTypeBinding.arguments != null) {
                    typeReferenceArr = new TypeReference[parameterizedTypeBinding.arguments.length];
                    for (int i = 0; i < typeReferenceArr.length; i++) {
                        typeReferenceArr[i] = makeType(parameterizedTypeBinding.arguments[i], aSTNode, true);
                    }
                }
            }
            arrayList.add(typeReferenceArr);
            if (!z2) {
                referenceBindingEnclosingType = referenceBinding2.enclosingType();
            } else {
                if (referenceBindingLeafComponentType.isTypeVariable()) {
                    r14 = new char[]{referenceBindingLeafComponentType.shortReadableName()};
                } else if (referenceBindingLeafComponentType.isLocalType()) {
                    r14 = new char[]{referenceBindingLeafComponentType.sourceName()};
                } else {
                    String[] strArrSplit = new String(referenceBindingLeafComponentType.qualifiedPackageName()).split("\\.");
                    String[] strArrSplit2 = new String(referenceBindingLeafComponentType.qualifiedSourceName()).split("\\.");
                    if (strArrSplit.length == 1 && strArrSplit[0].isEmpty()) {
                        strArrSplit = new String[0];
                    }
                    ?? r142 = new char[strArrSplit.length + strArrSplit2.length];
                    int i2 = 0;
                    while (i2 < strArrSplit.length) {
                        r142[i2] = strArrSplit[i2].toCharArray();
                        i2++;
                    }
                    while (true) {
                        r14 = r142;
                        if (i2 < strArrSplit.length + strArrSplit2.length) {
                            r142[i2] = strArrSplit2[i2 - strArrSplit.length].toCharArray();
                            i2++;
                        }
                    }
                }
                while (arrayList.size() < r14.length) {
                    arrayList.add(null);
                }
                Collections.reverse(arrayList);
                boolean z3 = false;
                Iterator it = arrayList.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((TypeReference[]) it.next()) != null) {
                            z3 = true;
                        }
                    }
                }
                if (z3) {
                    if (r14.length > 1) {
                        ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = new ParameterizedQualifiedTypeReference((char[][]) r14, (TypeReference[][]) arrayList.toArray(new TypeReference[0]), iDimensions, Eclipse.poss(aSTNode, r14.length));
                        setGeneratedBy(parameterizedQualifiedTypeReference, aSTNode);
                        return parameterizedQualifiedTypeReference;
                    }
                    ParameterizedSingleTypeReference parameterizedSingleTypeReference = new ParameterizedSingleTypeReference((char[]) r14[0], (TypeReference[]) arrayList.get(0), iDimensions, Eclipse.pos(aSTNode));
                    setGeneratedBy(parameterizedSingleTypeReference, aSTNode);
                    return parameterizedSingleTypeReference;
                }
                if (iDimensions > 0) {
                    if (r14.length > 1) {
                        ArrayQualifiedTypeReference arrayQualifiedTypeReference = new ArrayQualifiedTypeReference((char[][]) r14, iDimensions, Eclipse.poss(aSTNode, r14.length));
                        setGeneratedBy(arrayQualifiedTypeReference, aSTNode);
                        return arrayQualifiedTypeReference;
                    }
                    ArrayTypeReference arrayTypeReference2 = new ArrayTypeReference((char[]) r14[0], iDimensions, Eclipse.pos(aSTNode));
                    setGeneratedBy(arrayTypeReference2, aSTNode);
                    return arrayTypeReference2;
                }
                if (r14.length > 1) {
                    QualifiedTypeReference qualifiedTypeReference4 = new QualifiedTypeReference((char[][]) r14, Eclipse.poss(aSTNode, r14.length));
                    setGeneratedBy(qualifiedTypeReference4, aSTNode);
                    return qualifiedTypeReference4;
                }
                SingleTypeReference singleTypeReference2 = new SingleTypeReference((char[]) r14[0], Eclipse.pos(aSTNode));
                setGeneratedBy(singleTypeReference2, aSTNode);
                return singleTypeReference2;
            }
        }
    }

    public static <A extends java.lang.annotation.Annotation> AnnotationValues<A> createAnnotation(Class<A> type, final EclipseNode annotationNode) {
        final Annotation annotation = annotationNode.get();
        Map<String, AnnotationValues.AnnotationValue> values = new HashMap<>();
        MemberValuePair[] memberValuePairs = annotation.memberValuePairs();
        if (memberValuePairs != null) {
            for (MemberValuePair pair : memberValuePairs) {
                List<String> raws = new ArrayList<>();
                List<Object> expressionValues = new ArrayList<>();
                List<Object> guesses = new ArrayList<>();
                Expression[] expressions = null;
                char[] n = pair.name;
                String mName = (n == null || n.length == 0) ? "value" : new String(pair.name);
                final ArrayInitializer arrayInitializer = pair.value;
                if (arrayInitializer instanceof ArrayInitializer) {
                    expressions = arrayInitializer.expressions;
                } else if (arrayInitializer != null) {
                    expressions = new Expression[]{arrayInitializer};
                }
                if (expressions != null) {
                    for (Expression ex : expressions) {
                        StringBuffer sb = new StringBuffer();
                        ex.print(0, sb);
                        raws.add(sb.toString());
                        expressionValues.add(ex);
                        guesses.add(Eclipse.calculateValue(ex));
                    }
                }
                final Expression[] exprs = expressions;
                values.put(mName, new AnnotationValues.AnnotationValue(annotationNode, raws, expressionValues, guesses, true) { // from class: lombok.eclipse.handlers.EclipseHandlerUtil.1
                    @Override // lombok.core.AnnotationValues.AnnotationValue
                    public void setError(String message, int valueIdx) {
                        Expression ex2;
                        if (valueIdx == -1) {
                            ex2 = arrayInitializer;
                        } else {
                            ex2 = exprs != null ? exprs[valueIdx] : null;
                        }
                        if (ex2 == null) {
                            ex2 = annotation;
                        }
                        int sourceStart = ex2.sourceStart;
                        int sourceEnd = ex2.sourceEnd;
                        annotationNode.addError(message, sourceStart, sourceEnd);
                    }

                    @Override // lombok.core.AnnotationValues.AnnotationValue
                    public void setWarning(String message, int valueIdx) {
                        Expression ex2;
                        if (valueIdx == -1) {
                            ex2 = arrayInitializer;
                        } else {
                            ex2 = exprs != null ? exprs[valueIdx] : null;
                        }
                        if (ex2 == null) {
                            ex2 = annotation;
                        }
                        int sourceStart = ex2.sourceStart;
                        int sourceEnd = ex2.sourceEnd;
                        annotationNode.addWarning(message, sourceStart, sourceEnd);
                    }
                });
            }
        }
        for (Method m : type.getDeclaredMethods()) {
            if (Modifier.isPublic(m.getModifiers())) {
                String name = m.getName();
                if (!values.containsKey(name)) {
                    values.put(name, new AnnotationValues.AnnotationValue(annotationNode, new ArrayList(), new ArrayList(), new ArrayList(), false) { // from class: lombok.eclipse.handlers.EclipseHandlerUtil.2
                        @Override // lombok.core.AnnotationValues.AnnotationValue
                        public void setError(String message, int valueIdx) {
                            annotationNode.addError(message);
                        }

                        @Override // lombok.core.AnnotationValues.AnnotationValue
                        public void setWarning(String message, int valueIdx) {
                            annotationNode.addWarning(message);
                        }
                    });
                }
            }
        }
        return new AnnotationValues<>(type, values, annotationNode);
    }

    public static int toEclipseModifier(AccessLevel value) {
        switch ($SWITCH_TABLE$lombok$AccessLevel()[value.ordinal()]) {
            case 1:
            default:
                return 1;
            case 2:
            case 4:
                return 0;
            case 3:
                return 4;
            case 5:
            case 6:
                return 2;
        }
    }

    /* JADX INFO: loaded from: com.texa.care.apk:lombok/eclipse/handlers/EclipseHandlerUtil$GetterMethod.SCL.lombok */
    private static class GetterMethod {
        private final char[] name;
        private final TypeReference type;

        GetterMethod(char[] name, TypeReference type) {
            this.name = name;
            this.type = type;
        }
    }

    static void registerCreatedLazyGetter(FieldDeclaration field, char[] methodName, TypeReference returnType) {
        if (isBoolean(returnType)) {
            EclipseAugments.FieldDeclaration_booleanLazyGetter.set(field, true);
        }
    }

    public static boolean isBoolean(TypeReference typeReference) {
        return Eclipse.nameEquals(typeReference.getTypeName(), "boolean") && typeReference.dimensions() == 0;
    }

    private static GetterMethod findGetter(EclipseNode field) {
        String getterName;
        EclipseNode containingType;
        FieldDeclaration fieldDeclaration = field.get();
        boolean forceBool = EclipseAugments.FieldDeclaration_booleanLazyGetter.get(fieldDeclaration).booleanValue();
        TypeReference fieldType = fieldDeclaration.type;
        boolean isBoolean = forceBool || isBoolean(fieldType);
        EclipseNode typeNode = field.up();
        for (String potentialGetterName : toAllGetterNames(field, isBoolean)) {
            for (EclipseNode potentialGetter : typeNode.down()) {
                if (potentialGetter.getKind() == AST.Kind.METHOD && (potentialGetter.get() instanceof MethodDeclaration)) {
                    MethodDeclaration method = potentialGetter.get();
                    if (potentialGetterName.equalsIgnoreCase(new String(method.selector)) && (method.modifiers & 8) == 0 && (method.arguments == null || method.arguments.length <= 0)) {
                        return new GetterMethod(method.selector, method.returnType);
                    }
                }
            }
        }
        boolean hasGetterAnnotation = false;
        for (EclipseNode child : field.down()) {
            if (child.getKind() == AST.Kind.ANNOTATION && annotationTypeMatches((Class<? extends java.lang.annotation.Annotation>) Getter.class, child)) {
                AnnotationValues<Getter> ann = createAnnotation(Getter.class, child);
                if (((Getter) ann.getInstance()).value() == AccessLevel.NONE) {
                    return null;
                }
                hasGetterAnnotation = true;
            }
        }
        if (!hasGetterAnnotation && HandleGetter.fieldQualifiesForGetterGeneration(field) && (containingType = field.up()) != null) {
            for (EclipseNode child2 : containingType.down()) {
                if (child2.getKind() == AST.Kind.ANNOTATION && annotationTypeMatches((Class<? extends java.lang.annotation.Annotation>) Data.class, child2)) {
                    hasGetterAnnotation = true;
                }
                if (child2.getKind() == AST.Kind.ANNOTATION && annotationTypeMatches((Class<? extends java.lang.annotation.Annotation>) Getter.class, child2)) {
                    AnnotationValues<Getter> ann2 = createAnnotation(Getter.class, child2);
                    if (((Getter) ann2.getInstance()).value() == AccessLevel.NONE) {
                        return null;
                    }
                    hasGetterAnnotation = true;
                }
            }
        }
        if (!hasGetterAnnotation || (getterName = toGetterName(field, isBoolean)) == null) {
            return null;
        }
        return new GetterMethod(getterName.toCharArray(), fieldType);
    }

    static boolean lookForGetter(EclipseNode field, HandlerUtil.FieldAccess fieldAccess) {
        if (fieldAccess == HandlerUtil.FieldAccess.GETTER) {
            return true;
        }
        if (fieldAccess == HandlerUtil.FieldAccess.ALWAYS_FIELD) {
            return false;
        }
        for (EclipseNode child : field.down()) {
            if (child.getKind() == AST.Kind.ANNOTATION && annotationTypeMatches((Class<? extends java.lang.annotation.Annotation>) Getter.class, child)) {
                AnnotationValues<Getter> ann = createAnnotation(Getter.class, child);
                if (((Getter) ann.getInstance()).lazy()) {
                    return true;
                }
            }
        }
        return false;
    }

    static TypeReference getFieldType(EclipseNode field, HandlerUtil.FieldAccess fieldAccess) {
        if (field.get() instanceof MethodDeclaration) {
            return field.get().returnType;
        }
        boolean lookForGetter = lookForGetter(field, fieldAccess);
        GetterMethod getter = lookForGetter ? findGetter(field) : null;
        if (getter != null) {
            return getter.type;
        }
        return field.get().type;
    }

    static Expression createFieldAccessor(EclipseNode field, HandlerUtil.FieldAccess fieldAccess, ASTNode source) {
        int pS = source == null ? 0 : source.sourceStart;
        int pE = source == null ? 0 : source.sourceEnd;
        long p = (((long) pS) << 32) | ((long) pE);
        boolean lookForGetter = lookForGetter(field, fieldAccess);
        GetterMethod getter = lookForGetter ? findGetter(field) : null;
        if (getter == null) {
            FieldDeclaration fieldDecl = field.get();
            FieldReference ref = new FieldReference(fieldDecl.name, p);
            if ((fieldDecl.modifiers & 8) != 0) {
                EclipseNode containerNode = field.up();
                if (containerNode != null && (containerNode.get() instanceof TypeDeclaration)) {
                    ref.receiver = new SingleNameReference(containerNode.get().name, p);
                } else {
                    FieldReference fieldReference = new FieldReference(field.getName().toCharArray(), p);
                    if (source != null) {
                        setGeneratedBy(fieldReference, source);
                    }
                    return fieldReference;
                }
            } else {
                ref.receiver = new ThisReference(pS, pE);
            }
            if (source != null) {
                setGeneratedBy(ref, source);
                setGeneratedBy(ref.receiver, source);
            }
            return ref;
        }
        MessageSend call = new MessageSend();
        setGeneratedBy(call, source);
        call.sourceStart = pS;
        call.sourceEnd = pE;
        call.statementEnd = pE;
        call.receiver = new ThisReference(pS, pE);
        setGeneratedBy(call.receiver, source);
        call.selector = getter.name;
        return call;
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [char[], char[][]] */
    static Expression createFieldAccessor(EclipseNode field, HandlerUtil.FieldAccess fieldAccess, ASTNode source, char[] receiver) {
        int pS = source.sourceStart;
        int pE = source.sourceEnd;
        long p = (((long) pS) << 32) | ((long) pE);
        boolean lookForGetter = lookForGetter(field, fieldAccess);
        GetterMethod getter = lookForGetter ? findGetter(field) : null;
        if (getter == null) {
            long[] poss = {p, p};
            QualifiedNameReference qualifiedNameReference = new QualifiedNameReference((char[][]) new char[]{receiver, field.getName().toCharArray()}, poss, pS, pE);
            setGeneratedBy(qualifiedNameReference, source);
            return qualifiedNameReference;
        }
        MessageSend call = new MessageSend();
        setGeneratedBy(call, source);
        call.sourceStart = pS;
        call.sourceEnd = pE;
        call.statementEnd = pE;
        call.receiver = new SingleNameReference(receiver, p);
        setGeneratedBy(call.receiver, source);
        call.selector = getter.name;
        return call;
    }

    static Expression createMethodAccessor(EclipseNode method, ASTNode source) {
        int pS = source == null ? 0 : source.sourceStart;
        int pE = source == null ? 0 : source.sourceEnd;
        long p = (((long) pS) << 32) | ((long) pE);
        MethodDeclaration methodDecl = method.get();
        MessageSend call = new MessageSend();
        setGeneratedBy(call, source);
        call.sourceStart = pS;
        call.sourceEnd = pE;
        call.statementEnd = pE;
        if ((methodDecl.modifiers & 8) == 0) {
            call.receiver = new ThisReference(pS, pE);
            setGeneratedBy(call.receiver, source);
        } else {
            EclipseNode containerNode = method.up();
            if (containerNode != null && (containerNode.get() instanceof TypeDeclaration)) {
                call.receiver = new SingleNameReference(containerNode.get().name, p);
                setGeneratedBy(call.receiver, source);
            }
        }
        call.selector = methodDecl.selector;
        return call;
    }

    static Expression createMethodAccessor(EclipseNode method, ASTNode source, char[] receiver) {
        int pS = source == null ? 0 : source.sourceStart;
        int pE = source == null ? 0 : source.sourceEnd;
        long p = (((long) pS) << 32) | ((long) pE);
        MethodDeclaration methodDecl = method.get();
        MessageSend call = new MessageSend();
        setGeneratedBy(call, source);
        call.sourceStart = pS;
        call.sourceEnd = pE;
        call.statementEnd = pE;
        call.receiver = new SingleNameReference(receiver, p);
        setGeneratedBy(call.receiver, source);
        call.selector = methodDecl.selector;
        return call;
    }

    public static List<String> toAllGetterNames(EclipseNode field, boolean isBoolean) {
        return HandlerUtil.toAllGetterNames(field.getAst(), getAccessorsForField(field), field.getName(), isBoolean);
    }

    public static String toGetterName(EclipseNode field, boolean isBoolean) {
        return HandlerUtil.toGetterName(field.getAst(), getAccessorsForField(field), field.getName(), isBoolean);
    }

    public static List<String> toAllSetterNames(EclipseNode field, boolean isBoolean) {
        return HandlerUtil.toAllSetterNames(field.getAst(), getAccessorsForField(field), field.getName(), isBoolean);
    }

    public static String toSetterName(EclipseNode field, boolean isBoolean) {
        return HandlerUtil.toSetterName(field.getAst(), getAccessorsForField(field), field.getName(), isBoolean);
    }

    public static List<String> toAllWitherNames(EclipseNode field, boolean isBoolean) {
        return HandlerUtil.toAllWitherNames(field.getAst(), getAccessorsForField(field), field.getName(), isBoolean);
    }

    public static String toWitherName(EclipseNode field, boolean isBoolean) {
        return HandlerUtil.toWitherName(field.getAst(), getAccessorsForField(field), field.getName(), isBoolean);
    }

    public static boolean shouldReturnThis(EclipseNode field) {
        if ((field.get().modifiers & 8) != 0) {
            return false;
        }
        AnnotationValues<Accessors> accessors = getAccessorsForField(field);
        return HandlerUtil.shouldReturnThis0(accessors, field.getAst());
    }

    public static boolean filterField(FieldDeclaration declaration) {
        return filterField(declaration, true);
    }

    public static boolean filterField(FieldDeclaration declaration, boolean skipStatic) {
        if (((declaration.initialization instanceof AllocationExpression) && declaration.initialization.enumConstant != null) || declaration.type == null) {
            return false;
        }
        if (declaration.name.length <= 0 || declaration.name[0] != '$') {
            return !skipStatic || (declaration.modifiers & 8) == 0;
        }
        return false;
    }

    public static char[] removePrefixFromField(EclipseNode field) {
        CharSequence newName;
        List<String> prefixes = null;
        Iterator<EclipseNode> it = field.down().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            EclipseNode node = it.next();
            if (annotationTypeMatches((Class<? extends java.lang.annotation.Annotation>) Accessors.class, node)) {
                AnnotationValues<Accessors> ann = createAnnotation(Accessors.class, node);
                if (ann.isExplicit("prefix")) {
                    prefixes = Arrays.asList(((Accessors) ann.getInstance()).prefix());
                }
            }
        }
        if (prefixes == null) {
            EclipseNode eclipseNodeUp = field.up();
            while (true) {
                EclipseNode current = eclipseNodeUp;
                if (current == null) {
                    break;
                }
                for (EclipseNode node2 : current.down()) {
                    if (annotationTypeMatches((Class<? extends java.lang.annotation.Annotation>) Accessors.class, node2)) {
                        AnnotationValues<Accessors> ann2 = createAnnotation(Accessors.class, node2);
                        if (ann2.isExplicit("prefix")) {
                            prefixes = Arrays.asList(((Accessors) ann2.getInstance()).prefix());
                        }
                    }
                }
                eclipseNodeUp = current.up();
            }
        }
        if (prefixes == null) {
            prefixes = (List) field.getAst().readConfiguration(ConfigurationKeys.ACCESSORS_PREFIX);
        }
        return (prefixes.isEmpty() || (newName = HandlerUtil.removePrefix(field.getName(), prefixes)) == null) ? field.get().name : newName.toString().toCharArray();
    }

    public static AnnotationValues<Accessors> getAccessorsForField(EclipseNode field) {
        for (EclipseNode node : field.down()) {
            if (annotationTypeMatches((Class<? extends java.lang.annotation.Annotation>) Accessors.class, node)) {
                return createAnnotation(Accessors.class, node);
            }
        }
        EclipseNode eclipseNodeUp = field.up();
        while (true) {
            EclipseNode current = eclipseNodeUp;
            if (current != null) {
                for (EclipseNode node2 : current.down()) {
                    if (annotationTypeMatches((Class<? extends java.lang.annotation.Annotation>) Accessors.class, node2)) {
                        return createAnnotation(Accessors.class, node2);
                    }
                }
                eclipseNodeUp = current.up();
            } else {
                return AnnotationValues.of(Accessors.class, field);
            }
        }
    }

    public static EclipseNode upToTypeNode(EclipseNode node) {
        if (node == null) {
            throw new NullPointerException("node");
        }
        while (node != null && !(node.get() instanceof TypeDeclaration)) {
            node = node.up();
        }
        return node;
    }

    public static MemberExistsResult fieldExists(String fieldName, EclipseNode node) {
        EclipseNode node2 = upToTypeNode(node);
        if (node2 != null && (node2.get() instanceof TypeDeclaration)) {
            TypeDeclaration typeDecl = node2.get();
            if (typeDecl.fields != null) {
                for (FieldDeclaration def : typeDecl.fields) {
                    char[] fName = def.name;
                    if (fName != null && fieldName.equals(new String(fName))) {
                        return getGeneratedBy(def) == null ? MemberExistsResult.EXISTS_BY_USER : MemberExistsResult.EXISTS_BY_LOMBOK;
                    }
                }
            }
        }
        return MemberExistsResult.NOT_EXISTS;
    }

    public static MemberExistsResult methodExists(String methodName, EclipseNode node, int params) {
        return methodExists(methodName, node, true, params);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static MemberExistsResult methodExists(String methodName, EclipseNode node, boolean caseSensitive, int params) {
        char[] mName;
        while (node != null && !(node.get() instanceof TypeDeclaration)) {
            node = node.up();
        }
        if (node != null && (node.get() instanceof TypeDeclaration)) {
            TypeDeclaration typeDecl = node.get();
            if (typeDecl.methods != null) {
                for (AbstractMethodDeclaration def : typeDecl.methods) {
                    if ((def instanceof MethodDeclaration) && (mName = def.selector) != null) {
                        boolean nameEquals = caseSensitive ? methodName.equals(new String(mName)) : methodName.equalsIgnoreCase(new String(mName));
                        if (!nameEquals) {
                            continue;
                        } else if (params > -1) {
                            int minArgs = 0;
                            int maxArgs = 0;
                            if (def.arguments != null && def.arguments.length > 0) {
                                minArgs = def.arguments.length;
                                if ((def.arguments[def.arguments.length - 1].type.bits & 16384) != 0) {
                                    minArgs--;
                                    maxArgs = Integer.MAX_VALUE;
                                } else {
                                    maxArgs = minArgs;
                                }
                            }
                            if (params >= minArgs && params <= maxArgs) {
                                if (!isTolerate(node, def)) {
                                    return getGeneratedBy(def) == null ? MemberExistsResult.EXISTS_BY_USER : MemberExistsResult.EXISTS_BY_LOMBOK;
                                }
                            }
                        }
                    }
                }
            }
        }
        return MemberExistsResult.NOT_EXISTS;
    }

    public static boolean isTolerate(EclipseNode node, AbstractMethodDeclaration def) {
        if (def.annotations != null) {
            for (Annotation anno : def.annotations) {
                if (typeMatches((Class<?>) Tolerate.class, node, anno.type)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public static MemberExistsResult constructorExists(EclipseNode node) {
        EclipseNode node2 = upToTypeNode(node);
        if (node2 != null && (node2.get() instanceof TypeDeclaration)) {
            TypeDeclaration typeDecl = node2.get();
            if (typeDecl.methods != null) {
                for (AbstractMethodDeclaration def : typeDecl.methods) {
                    if ((def instanceof ConstructorDeclaration) && (def.bits & 128) == 0 && !isTolerate(node2, def)) {
                        return getGeneratedBy(def) == null ? MemberExistsResult.EXISTS_BY_USER : MemberExistsResult.EXISTS_BY_LOMBOK;
                    }
                }
            }
        }
        return MemberExistsResult.NOT_EXISTS;
    }

    public static EclipseNode injectFieldAndMarkGenerated(EclipseNode type, FieldDeclaration field) {
        field.annotations = addSuppressWarningsAll(type, field, field.annotations);
        field.annotations = addGenerated(type, field, field.annotations);
        return injectField(type, field);
    }

    public static EclipseNode injectField(EclipseNode type, FieldDeclaration field) {
        TypeDeclaration parent = type.get();
        if (parent.fields == null) {
            parent.fields = new FieldDeclaration[1];
            parent.fields[0] = field;
        } else {
            int size = parent.fields.length;
            FieldDeclaration[] newArray = new FieldDeclaration[size + 1];
            System.arraycopy(parent.fields, 0, newArray, 0, size);
            int index = 0;
            while (index < size) {
                FieldDeclaration f = newArray[index];
                if (!isEnumConstant(f) && !isGenerated(f)) {
                    break;
                }
                index++;
            }
            System.arraycopy(newArray, index, newArray, index + 1, size - index);
            newArray[index] = field;
            parent.fields = newArray;
        }
        if ((isEnumConstant(field) || (field.modifiers & 8) != 0) && !Eclipse.hasClinit(parent)) {
            parent.addClinit();
        }
        return type.add(field, AST.Kind.FIELD);
    }

    public static boolean isEnumConstant(FieldDeclaration field) {
        return (field.initialization instanceof AllocationExpression) && field.initialization.enumConstant == field;
    }

    public static EclipseNode injectMethod(EclipseNode type, AbstractMethodDeclaration method) {
        method.annotations = addSuppressWarningsAll(type, method, method.annotations);
        method.annotations = addGenerated(type, method, method.annotations);
        TypeDeclaration parent = type.get();
        if (parent.methods == null) {
            parent.methods = new AbstractMethodDeclaration[1];
            parent.methods[0] = method;
        } else {
            if (method instanceof ConstructorDeclaration) {
                int i = 0;
                while (true) {
                    if (i >= parent.methods.length) {
                        break;
                    }
                    if (!(parent.methods[i] instanceof ConstructorDeclaration) || (parent.methods[i].bits & 128) == 0) {
                        i++;
                    } else {
                        EclipseNode tossMe = type.getNodeFor(parent.methods[i]);
                        AbstractMethodDeclaration[] withoutGeneratedConstructor = new AbstractMethodDeclaration[parent.methods.length - 1];
                        System.arraycopy(parent.methods, 0, withoutGeneratedConstructor, 0, i);
                        System.arraycopy(parent.methods, i + 1, withoutGeneratedConstructor, i, (parent.methods.length - i) - 1);
                        parent.methods = withoutGeneratedConstructor;
                        if (tossMe != null) {
                            tossMe.up().removeChild(tossMe);
                        }
                    }
                }
            }
            AbstractMethodDeclaration[] newArray = new AbstractMethodDeclaration[parent.methods.length + 1];
            System.arraycopy(parent.methods, 0, newArray, 0, parent.methods.length);
            newArray[parent.methods.length] = method;
            parent.methods = newArray;
        }
        return type.add(method, AST.Kind.METHOD);
    }

    public static EclipseNode injectType(EclipseNode typeNode, TypeDeclaration type) {
        type.annotations = addSuppressWarningsAll(typeNode, type, type.annotations);
        type.annotations = addGenerated(typeNode, type, type.annotations);
        TypeDeclaration parent = typeNode.get();
        if (parent.memberTypes == null) {
            parent.memberTypes = new TypeDeclaration[]{type};
        } else {
            TypeDeclaration[] newArray = new TypeDeclaration[parent.memberTypes.length + 1];
            System.arraycopy(parent.memberTypes, 0, newArray, 0, parent.memberTypes.length);
            newArray[parent.memberTypes.length] = type;
            parent.memberTypes = newArray;
        }
        return typeNode.add(type, AST.Kind.TYPE);
    }

    public static Annotation[] addSuppressWarningsAll(EclipseNode node, ASTNode source, Annotation[] originalAnnotationArray) {
        Annotation[] anns = addAnnotation(source, originalAnnotationArray, TypeConstants.JAVA_LANG_SUPPRESSWARNINGS, new StringLiteral(ALL, 0, 0, 0));
        if (Boolean.TRUE.equals(node.getAst().readConfiguration(ConfigurationKeys.ADD_FINDBUGS_SUPPRESSWARNINGS_ANNOTATIONS))) {
            MemberValuePair mvp = new MemberValuePair(JUSTIFICATION, 0, 0, new StringLiteral(GENERATED_CODE, 0, 0, 0));
            anns = addAnnotation(source, anns, EDU_UMD_CS_FINDBUGS_ANNOTATIONS_SUPPRESSFBWARNINGS, mvp);
        }
        return anns;
    }

    public static Annotation[] addGenerated(EclipseNode node, ASTNode source, Annotation[] originalAnnotationArray) {
        Annotation[] result = originalAnnotationArray;
        if (HandlerUtil.shouldAddGenerated(node)) {
            result = addAnnotation(source, result, JAVAX_ANNOTATION_GENERATED, new StringLiteral(LOMBOK, 0, 0, 0));
        }
        if (Boolean.TRUE.equals(node.getAst().readConfiguration(ConfigurationKeys.ADD_LOMBOK_GENERATED_ANNOTATIONS))) {
            result = addAnnotation(source, result, LOMBOK_GENERATED, null);
        }
        return result;
    }

    private static Annotation[] addAnnotation(ASTNode source, Annotation[] originalAnnotationArray, char[][] annotationTypeFqn, ASTNode arg) {
        SingleMemberAnnotation singleMemberAnnotation;
        char[] simpleName = annotationTypeFqn[annotationTypeFqn.length - 1];
        if (originalAnnotationArray != null) {
            for (Annotation ann : originalAnnotationArray) {
                if (ann.type instanceof QualifiedTypeReference) {
                    char[][] t = ann.type.tokens;
                    if (Arrays.deepEquals(t, annotationTypeFqn)) {
                        return originalAnnotationArray;
                    }
                }
                if (ann.type instanceof SingleTypeReference) {
                    char[] lastToken = ann.type.token;
                    if (Arrays.equals(lastToken, simpleName)) {
                        return originalAnnotationArray;
                    }
                }
            }
        }
        int pS = source.sourceStart;
        int pE = source.sourceEnd;
        long p = (((long) pS) << 32) | ((long) pE);
        long[] poss = new long[annotationTypeFqn.length];
        Arrays.fill(poss, p);
        QualifiedTypeReference qualifiedType = new QualifiedTypeReference(annotationTypeFqn, poss);
        setGeneratedBy(qualifiedType, source);
        if (arg instanceof Expression) {
            SingleMemberAnnotation sma = new SingleMemberAnnotation(qualifiedType, pS);
            sma.declarationSourceEnd = pE;
            arg.sourceStart = pS;
            arg.sourceEnd = pE;
            sma.memberValue = (Expression) arg;
            setGeneratedBy(sma.memberValue, source);
            singleMemberAnnotation = sma;
        } else if (arg instanceof MemberValuePair) {
            SingleMemberAnnotation normalAnnotation = new NormalAnnotation(qualifiedType, pS);
            ((NormalAnnotation) normalAnnotation).declarationSourceEnd = pE;
            arg.sourceStart = pS;
            arg.sourceEnd = pE;
            ((NormalAnnotation) normalAnnotation).memberValuePairs = new MemberValuePair[]{(MemberValuePair) arg};
            setGeneratedBy(((NormalAnnotation) normalAnnotation).memberValuePairs[0], source);
            setGeneratedBy(((NormalAnnotation) normalAnnotation).memberValuePairs[0].value, source);
            ((NormalAnnotation) normalAnnotation).memberValuePairs[0].value.sourceStart = pS;
            ((NormalAnnotation) normalAnnotation).memberValuePairs[0].value.sourceEnd = pE;
            singleMemberAnnotation = normalAnnotation;
        } else {
            SingleMemberAnnotation markerAnnotation = new MarkerAnnotation(qualifiedType, pS);
            ((MarkerAnnotation) markerAnnotation).declarationSourceEnd = pE;
            singleMemberAnnotation = markerAnnotation;
        }
        setGeneratedBy(singleMemberAnnotation, source);
        if (originalAnnotationArray == null) {
            return new Annotation[]{singleMemberAnnotation};
        }
        Annotation[] newAnnotationArray = new Annotation[originalAnnotationArray.length + 1];
        System.arraycopy(originalAnnotationArray, 0, newAnnotationArray, 0, originalAnnotationArray.length);
        newAnnotationArray[originalAnnotationArray.length] = singleMemberAnnotation;
        return newAnnotationArray;
    }

    public static Statement generateNullCheck(AbstractVariableDeclaration variable, EclipseNode sourceNode) {
        NullCheckExceptionType exceptionType = (NullCheckExceptionType) sourceNode.getAst().readConfiguration(ConfigurationKeys.NON_NULL_EXCEPTION_TYPE);
        if (exceptionType == null) {
            exceptionType = NullCheckExceptionType.NULL_POINTER_EXCEPTION;
        }
        ASTNode source = sourceNode.get();
        int pS = source.sourceStart;
        int pE = source.sourceEnd;
        long p = (((long) pS) << 32) | ((long) pE);
        if (Eclipse.isPrimitive(variable.type)) {
            return null;
        }
        AllocationExpression exception = new AllocationExpression();
        setGeneratedBy(exception, source);
        int partCount = 1;
        String exceptionTypeStr = exceptionType.getExceptionType();
        for (int i = 0; i < exceptionTypeStr.length(); i++) {
            if (exceptionTypeStr.charAt(i) == '.') {
                partCount++;
            }
        }
        long[] ps = new long[partCount];
        Arrays.fill(ps, 0L);
        exception.type = new QualifiedTypeReference(Eclipse.fromQualifiedName(exceptionTypeStr), ps);
        setGeneratedBy(exception.type, source);
        exception.arguments = new Expression[]{new StringLiteral(exceptionType.toExceptionMessage(new String(variable.name)).toCharArray(), pS, pE, 0)};
        setGeneratedBy(exception.arguments[0], source);
        Statement throwStatement = new ThrowStatement(exception, pS, pE);
        setGeneratedBy(throwStatement, source);
        SingleNameReference varName = new SingleNameReference(variable.name, p);
        setGeneratedBy(varName, source);
        NullLiteral nullLiteral = new NullLiteral(pS, pE);
        setGeneratedBy(nullLiteral, source);
        EqualExpression equalExpression = new EqualExpression(varName, nullLiteral, 18);
        equalExpression.sourceStart = pS;
        equalExpression.sourceEnd = pE;
        equalExpression.statementEnd = pE;
        setGeneratedBy(equalExpression, source);
        Block throwBlock = new Block(0);
        throwBlock.statements = new Statement[]{throwStatement};
        throwBlock.sourceStart = pS;
        throwBlock.sourceEnd = pE;
        setGeneratedBy(throwBlock, source);
        IfStatement ifStatement = new IfStatement(equalExpression, throwBlock, 0, 0);
        setGeneratedBy(ifStatement, source);
        return ifStatement;
    }

    public static MarkerAnnotation makeMarkerAnnotation(char[][] name, ASTNode source) {
        long pos = (((long) source.sourceStart) << 32) | ((long) source.sourceEnd);
        QualifiedTypeReference qualifiedTypeReference = new QualifiedTypeReference(name, new long[]{pos, pos, pos});
        setGeneratedBy(qualifiedTypeReference, source);
        MarkerAnnotation ann = new MarkerAnnotation(qualifiedTypeReference, (int) (pos >> 32));
        int i = (int) pos;
        ann.statementEnd = i;
        ann.sourceEnd = i;
        ann.declarationSourceEnd = i;
        setGeneratedBy(ann, source);
        return ann;
    }

    public static List<Integer> createListOfNonExistentFields(List<String> list, EclipseNode type, boolean excludeStandard, boolean excludeTransient) {
        boolean[] matched = new boolean[list.size()];
        for (EclipseNode child : type.down()) {
            if (list.isEmpty()) {
                break;
            }
            if (child.getKind() == AST.Kind.FIELD && (!excludeStandard || ((child.get().modifiers & 8) == 0 && !child.getName().startsWith("$")))) {
                if (!excludeTransient || (child.get().modifiers & 128) == 0) {
                    int idx = list.indexOf(child.getName());
                    if (idx > -1) {
                        matched[idx] = true;
                    }
                }
            }
        }
        List<Integer> problematic = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            if (!matched[i]) {
                problematic.add(Integer.valueOf(i));
            }
        }
        return problematic;
    }

    public static CastExpression makeCastExpression(Expression ref, TypeReference castTo, ASTNode source) {
        CastExpression result;
        try {
            if (castExpressionConstructorIsTypeRefBased) {
                result = castExpressionConstructor.newInstance(ref, castTo);
            } else {
                TypeReference qualifiedNameReference = castTo;
                if (castTo.getClass() == SingleTypeReference.class && !Eclipse.isPrimitive(castTo)) {
                    SingleTypeReference str = (SingleTypeReference) castTo;
                    qualifiedNameReference = new SingleNameReference(str.token, 0L);
                    ((Expression) qualifiedNameReference).bits = (((Expression) qualifiedNameReference).bits & (-4)) | 4;
                    ((Expression) qualifiedNameReference).sourceStart = str.sourceStart;
                    ((Expression) qualifiedNameReference).sourceEnd = str.sourceEnd;
                    setGeneratedBy(qualifiedNameReference, source);
                } else if (castTo.getClass() == QualifiedTypeReference.class) {
                    QualifiedTypeReference qtr = (QualifiedTypeReference) castTo;
                    qualifiedNameReference = new QualifiedNameReference(qtr.tokens, copy(qtr.sourcePositions), qtr.sourceStart, qtr.sourceEnd);
                    ((Expression) qualifiedNameReference).bits = (((Expression) qualifiedNameReference).bits & (-4)) | 4;
                    setGeneratedBy(qualifiedNameReference, source);
                }
                result = castExpressionConstructor.newInstance(ref, qualifiedNameReference);
            }
            result.sourceStart = source.sourceStart;
            result.sourceEnd = source.sourceEnd;
            result.statementEnd = source.sourceEnd;
            setGeneratedBy(result, source);
            return result;
        } catch (IllegalAccessException e) {
            throw Lombok.sneakyThrow(e);
        } catch (InstantiationException e2) {
            throw Lombok.sneakyThrow(e2);
        } catch (InvocationTargetException e3) {
            throw Lombok.sneakyThrow(e3.getCause());
        }
    }

    public static IntLiteral makeIntLiteral(char[] token, ASTNode source) {
        int pS = source == null ? 0 : source.sourceStart;
        int pE = source == null ? 0 : source.sourceEnd;
        try {
            IntLiteral result = intLiteralConstructor != null ? intLiteralConstructor.newInstance(token, Integer.valueOf(pS), Integer.valueOf(pE)) : (IntLiteral) intLiteralFactoryMethod.invoke(null, token, Integer.valueOf(pS), Integer.valueOf(pE));
            if (source != null) {
                setGeneratedBy(result, source);
            }
            return result;
        } catch (IllegalAccessException e) {
            throw Lombok.sneakyThrow(e);
        } catch (InstantiationException e2) {
            throw Lombok.sneakyThrow(e2);
        } catch (InvocationTargetException e3) {
            throw Lombok.sneakyThrow(e3.getCause());
        }
    }

    private static boolean isAllValidOnXCharacters(char[] in) {
        if (in == null || in.length == 0) {
            return false;
        }
        for (char c : in) {
            if (c != '_' && c != 'X' && c != 'x' && c != '$') {
                return false;
            }
        }
        return true;
    }

    public static void addError(String errorName, EclipseNode node) {
        if (node.getLatestJavaSpecSupported() < 8) {
            node.addError("The correct format is " + errorName + "_={@SomeAnnotation, @SomeOtherAnnotation})");
        } else {
            node.addError("The correct format is " + errorName + "=@__({@SomeAnnotation, @SomeOtherAnnotation}))");
        }
    }

    public static List<Annotation> unboxAndRemoveAnnotationParameter(Annotation annotation, String annotationName, String errorName, EclipseNode errorNode) {
        if ("value".equals(annotationName)) {
            throw new UnsupportedOperationException("Lombok cannot unbox 'value' from SingleMemberAnnotation at this time.");
        }
        if (!NormalAnnotation.class.equals(annotation.getClass())) {
            return Collections.emptyList();
        }
        NormalAnnotation normalAnnotation = (NormalAnnotation) annotation;
        MemberValuePair[] pairs = normalAnnotation.memberValuePairs;
        if (pairs == null) {
            return Collections.emptyList();
        }
        char[] nameAsCharArray = annotationName.toCharArray();
        for (int i = 0; i < pairs.length; i++) {
            char[] name = pairs[i].name;
            if (name != null && name.length >= nameAsCharArray.length) {
                int j = 0;
                while (true) {
                    if (j < nameAsCharArray.length) {
                        if (name[j] != nameAsCharArray[j]) {
                            break;
                        }
                        j++;
                    } else {
                        boolean allowRaw = name.length > nameAsCharArray.length;
                        for (int j2 = nameAsCharArray.length; j2 < name.length; j2++) {
                            if (name[j2] != '_') {
                                break;
                            }
                        }
                        Annotation annotation2 = pairs[i].value;
                        MemberValuePair[] newPairs = new MemberValuePair[pairs.length - 1];
                        if (i > 0) {
                            System.arraycopy(pairs, 0, newPairs, 0, i);
                        }
                        if (i < pairs.length - 1) {
                            System.arraycopy(pairs, i + 1, newPairs, i, (pairs.length - i) - 1);
                        }
                        normalAnnotation.memberValuePairs = newPairs;
                        Annotation annotation3 = null;
                        if (annotation2 instanceof ArrayInitializer) {
                            if (!allowRaw) {
                                addError(errorName, errorNode);
                                return Collections.emptyList();
                            }
                            annotation3 = annotation2;
                        } else {
                            if (!(annotation2 instanceof Annotation)) {
                                addError(errorName, errorNode);
                                return Collections.emptyList();
                            }
                            Annotation atDummyIdentifier = annotation2;
                            if ((atDummyIdentifier.type instanceof SingleTypeReference) && isAllValidOnXCharacters(atDummyIdentifier.type.token)) {
                                if (atDummyIdentifier instanceof MarkerAnnotation) {
                                    return Collections.emptyList();
                                }
                                if (atDummyIdentifier instanceof NormalAnnotation) {
                                    MemberValuePair[] mvps = ((NormalAnnotation) atDummyIdentifier).memberValuePairs;
                                    if (mvps == null || mvps.length == 0) {
                                        return Collections.emptyList();
                                    }
                                    if (mvps.length == 1 && Arrays.equals("value".toCharArray(), mvps[0].name)) {
                                        annotation3 = mvps[0].value;
                                    }
                                } else if (atDummyIdentifier instanceof SingleMemberAnnotation) {
                                    annotation3 = ((SingleMemberAnnotation) atDummyIdentifier).memberValue;
                                } else {
                                    addError(errorName, errorNode);
                                    return Collections.emptyList();
                                }
                            } else if (allowRaw) {
                                annotation3 = atDummyIdentifier;
                            } else {
                                addError(errorName, errorNode);
                                return Collections.emptyList();
                            }
                        }
                        if (annotation3 == null) {
                            addError(errorName, errorNode);
                            return Collections.emptyList();
                        }
                        if (annotation3 instanceof Annotation) {
                            return Collections.singletonList(annotation3);
                        }
                        if (annotation3 instanceof ArrayInitializer) {
                            Annotation[] annotationArr = ((ArrayInitializer) annotation3).expressions;
                            List<Annotation> result = new ArrayList<>();
                            if (annotationArr != null) {
                                for (Annotation annotation4 : annotationArr) {
                                    if (annotation4 instanceof Annotation) {
                                        result.add(annotation4);
                                    } else {
                                        addError(errorName, errorNode);
                                        return Collections.emptyList();
                                    }
                                }
                            }
                            return result;
                        }
                        addError(errorName, errorNode);
                        return Collections.emptyList();
                    }
                }
            }
        }
        return Collections.emptyList();
    }

    public static NameReference createNameReference(String name, Annotation source) {
        int pS = source.sourceStart;
        int pE = source.sourceEnd;
        long p = (((long) pS) << 32) | ((long) pE);
        char[][] nameTokens = Eclipse.fromQualifiedName(name);
        long[] pos = new long[nameTokens.length];
        Arrays.fill(pos, p);
        QualifiedNameReference nameReference = new QualifiedNameReference(nameTokens, pos, pS, pE);
        nameReference.statementEnd = pE;
        setGeneratedBy(nameReference, source);
        return nameReference;
    }

    private static long[] copy(long[] array) {
        if (array == null) {
            return null;
        }
        return (long[]) array.clone();
    }

    public static boolean isDirectDescendantOfObject(EclipseNode typeNode) {
        if (!(typeNode.get() instanceof TypeDeclaration)) {
            throw new IllegalArgumentException("not a type node");
        }
        TypeDeclaration typeDecl = typeNode.get();
        if (typeDecl.superclass == null) {
            return true;
        }
        String p = typeDecl.superclass.toString();
        return p.equals("Object") || p.equals("java.lang.Object");
    }

    public static NameReference generateQualifiedNameRef(ASTNode source, char[]... varNames) {
        int pS = source.sourceStart;
        int pE = source.sourceEnd;
        long p = (((long) pS) << 32) | ((long) pE);
        QualifiedNameReference qualifiedNameReference = varNames.length > 1 ? new QualifiedNameReference(varNames, new long[varNames.length], pS, pE) : new SingleNameReference(varNames[0], p);
        setGeneratedBy(qualifiedNameReference, source);
        return qualifiedNameReference;
    }

    public static TypeReference generateQualifiedTypeRef(ASTNode source, char[]... varNames) {
        int pS = source.sourceStart;
        int pE = source.sourceEnd;
        long p = (((long) pS) << 32) | ((long) pE);
        long[] poss = Eclipse.poss(source, varNames.length);
        QualifiedTypeReference qualifiedTypeReference = varNames.length > 1 ? new QualifiedTypeReference(varNames, poss) : new SingleTypeReference(varNames[0], p);
        setGeneratedBy(qualifiedTypeReference, source);
        return qualifiedTypeReference;
    }
}
