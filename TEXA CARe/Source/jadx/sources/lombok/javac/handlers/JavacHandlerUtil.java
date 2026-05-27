package lombok.javac.handlers;

import com.sun.source.tree.Tree;
import com.sun.tools.javac.code.BoundKind;
import com.sun.tools.javac.code.Scope;
import com.sun.tools.javac.code.Symbol;
import com.sun.tools.javac.code.Symtab;
import com.sun.tools.javac.code.Type;
import com.sun.tools.javac.tree.JCTree;
import com.sun.tools.javac.tree.TreeScanner;
import com.sun.tools.javac.util.Context;
import com.sun.tools.javac.util.JCDiagnostic;
import com.sun.tools.javac.util.List;
import com.sun.tools.javac.util.ListBuffer;
import com.sun.tools.javac.util.Name;
import com.sun.tools.javac.util.Options;
import com.texa.carelib.care.vehicle.internal.MockDataID;
import com.texa.carelib.core.utils.Version;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.lang.model.element.Element;
import lombok.AccessLevel;
import lombok.ConfigurationKeys;
import lombok.Data;
import lombok.Getter;
import lombok.core.AST;
import lombok.core.AnnotationValues;
import lombok.core.CleanupTask;
import lombok.core.LombokImmutableList;
import lombok.core.TypeResolver;
import lombok.core.configuration.NullCheckExceptionType;
import lombok.core.configuration.TypeName;
import lombok.core.handlers.HandlerUtil;
import lombok.delombok.LombokOptionsFactory;
import lombok.experimental.Accessors;
import lombok.experimental.Tolerate;
import lombok.javac.Javac;
import lombok.javac.JavacAugments;
import lombok.javac.JavacNode;
import lombok.javac.JavacTreeMaker;
import lombok.permit.Permit;
import okhttp3.internal.http2.Http2Stream;

/* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/handlers/JavacHandlerUtil.SCL.lombok */
public class JavacHandlerUtil {
    private static final Pattern SECTION_FINDER;
    private static final Pattern FIND_RETURN;
    static final /* synthetic */ boolean $assertionsDisabled;

    /* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/handlers/JavacHandlerUtil$MemberExistsResult.SCL.lombok */
    public enum MemberExistsResult {
        NOT_EXISTS,
        EXISTS_BY_LOMBOK,
        EXISTS_BY_USER
    }

    static {
        $assertionsDisabled = !JavacHandlerUtil.class.desiredAssertionStatus();
        SECTION_FINDER = Pattern.compile("^\\s*\\**\\s*[-*][-*]+\\s*([GS]ETTER|WITHER)\\s*[-*][-*]+\\s*\\**\\s*$", 10);
        FIND_RETURN = Pattern.compile("^\\s*\\**\\s*@returns?\\s+.*$", 10);
    }

    private JavacHandlerUtil() {
    }

    /* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/handlers/JavacHandlerUtil$MarkingScanner.SCL.lombok */
    private static class MarkingScanner extends TreeScanner {
        private final JCTree source;
        private final Context context;

        MarkingScanner(JCTree source, Context context) {
            this.source = source;
            this.context = context;
        }

        public void scan(JCTree tree) {
            if (tree == null) {
                return;
            }
            JavacHandlerUtil.setGeneratedBy(tree, this.source, this.context);
            super.scan(tree);
        }
    }

    public static boolean inNetbeansEditor(JavacNode node) {
        return inNetbeansEditor(node.getContext());
    }

    public static boolean inNetbeansEditor(Context context) {
        Options options = Options.instance(context);
        return options.keySet().contains("ide") && !options.keySet().contains("backgroundCompilation");
    }

    public static boolean inNetbeansCompileOnSave(Context context) {
        Options options = Options.instance(context);
        return options.keySet().contains("ide") && options.keySet().contains("backgroundCompilation");
    }

    public static JCTree getGeneratedBy(JCTree node) {
        return JavacAugments.JCTree_generatedNode.get(node);
    }

    public static boolean isGenerated(JCTree node) {
        return getGeneratedBy(node) != null;
    }

    public static <T extends JCTree> T recursiveSetGeneratedBy(T node, JCTree source, Context context) {
        if (node == null) {
            return null;
        }
        setGeneratedBy(node, source, context);
        node.accept(new MarkingScanner(source, context));
        return node;
    }

    public static <T extends JCTree> T setGeneratedBy(T node, JCTree source, Context context) {
        if (node == null) {
            return null;
        }
        if (source == null) {
            JavacAugments.JCTree_generatedNode.clear(node);
        } else {
            JavacAugments.JCTree_generatedNode.set(node, source);
        }
        if (source != null && (!inNetbeansEditor(context) || ((node instanceof JCTree.JCVariableDecl) && (((JCTree.JCVariableDecl) node).mods.flags & 8589934592L) != 0))) {
            ((JCTree) node).pos = source.pos;
        }
        return node;
    }

    public static boolean hasAnnotation(String type, JavacNode node) {
        return hasAnnotation(type, node, false);
    }

    public static boolean hasAnnotation(Class<? extends Annotation> type, JavacNode node) {
        return hasAnnotation(type, node, false);
    }

    public static boolean hasAnnotationAndDeleteIfNeccessary(Class<? extends Annotation> type, JavacNode node) {
        return hasAnnotation(type, node, true);
    }

    private static boolean hasAnnotation(Class<? extends Annotation> type, JavacNode node, boolean delete) {
        if (node == null || type == null) {
            return false;
        }
        switch (node.getKind()) {
            case ARGUMENT:
            case FIELD:
            case LOCAL:
            case TYPE:
            case METHOD:
                for (JavacNode child : node.down()) {
                    if (annotationTypeMatches(type, child)) {
                        if (delete) {
                            deleteAnnotationIfNeccessary(child, type);
                        }
                        break;
                    }
                }
                break;
        }
        return false;
    }

    private static boolean hasAnnotation(String type, JavacNode node, boolean delete) {
        if (node == null || type == null) {
            return false;
        }
        switch (node.getKind()) {
            case ARGUMENT:
            case FIELD:
            case LOCAL:
            case TYPE:
            case METHOD:
                for (JavacNode child : node.down()) {
                    if (annotationTypeMatches(type, child)) {
                        if (delete) {
                            deleteAnnotationIfNeccessary(child, type);
                        }
                        break;
                    }
                }
                break;
        }
        return false;
    }

    public static JavacNode findInnerClass(JavacNode parent, String name) {
        for (JavacNode child : parent.down()) {
            if (child.getKind() == AST.Kind.TYPE) {
                JCTree.JCClassDecl td = child.get();
                if (td.name.contentEquals(name)) {
                    return child;
                }
            }
        }
        return null;
    }

    public static JavacNode findAnnotation(Class<? extends Annotation> type, JavacNode node) {
        return findAnnotation(type, node, false);
    }

    public static JavacNode findAnnotation(Class<? extends Annotation> type, JavacNode node, boolean delete) {
        if (node == null || type == null) {
            return null;
        }
        switch (node.getKind()) {
            case ARGUMENT:
            case FIELD:
            case LOCAL:
            case TYPE:
            case METHOD:
                Iterator<JavacNode> it = node.down().iterator();
                while (it.hasNext()) {
                    JavacNode child = it.next();
                    if (annotationTypeMatches(type, child)) {
                        if (delete) {
                            deleteAnnotationIfNeccessary(child, type);
                        }
                        break;
                    }
                }
                break;
        }
        return null;
    }

    public static boolean annotationTypeMatches(Class<? extends Annotation> type, JavacNode node) {
        if (node.getKind() != AST.Kind.ANNOTATION) {
            return false;
        }
        return typeMatches(type, node, node.get().annotationType);
    }

    public static boolean annotationTypeMatches(String type, JavacNode node) {
        if (node.getKind() != AST.Kind.ANNOTATION) {
            return false;
        }
        return typeMatches(type, node, node.get().annotationType);
    }

    public static boolean typeMatches(Class<?> type, JavacNode node, JCTree typeNode) {
        return typeMatches(type.getName(), node, typeNode);
    }

    public static boolean typeMatches(String type, JavacNode node, JCTree typeNode) {
        String typeName = typeNode.toString();
        TypeResolver resolver = new TypeResolver(node.getImportList());
        return resolver.typeMatches(node, type, typeName);
    }

    public static boolean isFieldDeprecated(JavacNode field) {
        if (!(field.get() instanceof JCTree.JCVariableDecl)) {
            return false;
        }
        JCTree.JCVariableDecl fieldNode = field.get();
        if ((fieldNode.mods.flags & MockDataID.Parameter.VEHICLE_SPEED) != 0) {
            return true;
        }
        for (JavacNode child : field.down()) {
            if (annotationTypeMatches((Class<? extends Annotation>) Deprecated.class, child)) {
                return true;
            }
        }
        return false;
    }

    public static boolean nodeHasDeprecatedFlag(JCTree node) {
        return node instanceof JCTree.JCVariableDecl ? (((JCTree.JCVariableDecl) node).mods.flags & MockDataID.Parameter.VEHICLE_SPEED) != 0 : node instanceof JCTree.JCMethodDecl ? (((JCTree.JCMethodDecl) node).mods.flags & MockDataID.Parameter.VEHICLE_SPEED) != 0 : (node instanceof JCTree.JCClassDecl) && (((JCTree.JCClassDecl) node).mods.flags & MockDataID.Parameter.VEHICLE_SPEED) != 0;
    }

    public static <A extends Annotation> AnnotationValues<A> createAnnotation(Class<A> type, JavacNode node) {
        return createAnnotation(type, node.get(), node);
    }

    public static <A extends Annotation> AnnotationValues<A> createAnnotation(Class<A> type, JCTree.JCAnnotation anno, final JavacNode node) {
        JCTree.JCExpression rhs;
        String mName;
        Map<String, AnnotationValues.AnnotationValue> values = new HashMap<>();
        List<JCTree.JCExpression> arguments = anno.getArguments();
        for (JCTree.JCExpression arg : arguments) {
            java.util.List<String> raws = new ArrayList<>();
            java.util.List<Object> guesses = new ArrayList<>();
            java.util.List<Object> expressions = new ArrayList<>();
            final java.util.List<JCDiagnostic.DiagnosticPosition> positions = new ArrayList<>();
            if (arg instanceof JCTree.JCAssign) {
                JCTree.JCAssign assign = (JCTree.JCAssign) arg;
                mName = assign.lhs.toString();
                rhs = assign.rhs;
            } else {
                rhs = arg;
                mName = "value";
            }
            if (rhs instanceof JCTree.JCNewArray) {
                List<JCTree.JCExpression> elems = ((JCTree.JCNewArray) rhs).elems;
                Iterator it = elems.iterator();
                while (it.hasNext()) {
                    JCTree.JCAnnotation jCAnnotation = (JCTree.JCExpression) it.next();
                    raws.add(jCAnnotation.toString());
                    expressions.add(jCAnnotation);
                    if (jCAnnotation instanceof JCTree.JCAnnotation) {
                        try {
                            guesses.add(createAnnotation(Class.forName(((JCTree.JCExpression) jCAnnotation).type.toString()), jCAnnotation, node));
                        } catch (ClassNotFoundException e) {
                            guesses.add(Javac.calculateGuess(jCAnnotation));
                        }
                    } else {
                        guesses.add(Javac.calculateGuess(jCAnnotation));
                    }
                    positions.add(jCAnnotation.pos());
                }
            } else {
                raws.add(rhs.toString());
                expressions.add(rhs);
                if (rhs instanceof JCTree.JCAnnotation) {
                    try {
                        guesses.add(createAnnotation(Class.forName(rhs.type.toString()), (JCTree.JCAnnotation) rhs, node));
                    } catch (ClassNotFoundException e2) {
                        guesses.add(Javac.calculateGuess(rhs));
                    }
                } else {
                    guesses.add(Javac.calculateGuess(rhs));
                }
                positions.add(rhs.pos());
            }
            values.put(mName, new AnnotationValues.AnnotationValue(node, raws, expressions, guesses, true) { // from class: lombok.javac.handlers.JavacHandlerUtil.1
                @Override // lombok.core.AnnotationValues.AnnotationValue
                public void setError(String message, int valueIdx) {
                    if (valueIdx >= 0) {
                        node.addError(message, (JCDiagnostic.DiagnosticPosition) positions.get(valueIdx));
                    } else {
                        node.addError(message);
                    }
                }

                @Override // lombok.core.AnnotationValues.AnnotationValue
                public void setWarning(String message, int valueIdx) {
                    if (valueIdx >= 0) {
                        node.addWarning(message, (JCDiagnostic.DiagnosticPosition) positions.get(valueIdx));
                    } else {
                        node.addWarning(message);
                    }
                }
            });
        }
        for (Method m : type.getDeclaredMethods()) {
            if (Modifier.isPublic(m.getModifiers())) {
                String name = m.getName();
                if (!values.containsKey(name)) {
                    values.put(name, new AnnotationValues.AnnotationValue(node, new ArrayList(), new ArrayList(), new ArrayList(), false) { // from class: lombok.javac.handlers.JavacHandlerUtil.2
                        @Override // lombok.core.AnnotationValues.AnnotationValue
                        public void setError(String message, int valueIdx) {
                            node.addError(message);
                        }

                        @Override // lombok.core.AnnotationValues.AnnotationValue
                        public void setWarning(String message, int valueIdx) {
                            node.addWarning(message);
                        }
                    });
                }
            }
        }
        return new AnnotationValues<>(type, values, node);
    }

    public static void deleteAnnotationIfNeccessary(JavacNode annotation, String annotationType) {
        deleteAnnotationIfNeccessary0(annotation, annotationType);
    }

    public static void deleteAnnotationIfNeccessary(JavacNode annotation, Class<? extends Annotation> annotationType) {
        deleteAnnotationIfNeccessary0(annotation, annotationType.getName());
    }

    public static void deleteAnnotationIfNeccessary(JavacNode annotation, Class<? extends Annotation> annotationType1, Class<? extends Annotation> annotationType2) {
        deleteAnnotationIfNeccessary0(annotation, annotationType1.getName(), annotationType2.getName());
    }

    public static void deleteAnnotationIfNeccessary(JavacNode annotation, Class<? extends Annotation> annotationType1, String annotationType2) {
        deleteAnnotationIfNeccessary0(annotation, annotationType1.getName(), annotationType2);
    }

    private static void deleteAnnotationIfNeccessary0(JavacNode annotation, String... annotationTypes) {
        if (!inNetbeansEditor(annotation) && annotation.shouldDeleteLombokAnnotations()) {
            JavacNode parentNode = annotation.directUp();
            switch (parentNode.getKind()) {
                case ARGUMENT:
                case FIELD:
                case LOCAL:
                    JCTree.JCVariableDecl variable = parentNode.get();
                    variable.mods.annotations = filterList(variable.mods.annotations, annotation.get());
                    break;
                case TYPE:
                    try {
                        JCTree.JCClassDecl type = parentNode.get();
                        type.mods.annotations = filterList(type.mods.annotations, annotation.get());
                    } catch (ClassCastException e) {
                    }
                    break;
                case METHOD:
                    JCTree.JCMethodDecl method = parentNode.get();
                    method.mods.annotations = filterList(method.mods.annotations, annotation.get());
                    break;
                default:
                    return;
            }
            parentNode.getAst().setChanged();
            for (String annotationType : annotationTypes) {
                deleteImportFromCompilationUnit(annotation, annotationType);
            }
        }
    }

    public static void deleteImportFromCompilationUnit(JavacNode node, String name) {
        if (!inNetbeansEditor(node) && node.shouldDeleteLombokAnnotations()) {
            ListBuffer<JCTree> newDefs = new ListBuffer<>();
            JCTree.JCCompilationUnit unit = node.top().get();
            for (JCTree.JCImport jCImport : unit.defs) {
                boolean delete = false;
                if (jCImport instanceof JCTree.JCImport) {
                    JCTree.JCImport imp0rt = jCImport;
                    delete = !imp0rt.staticImport && imp0rt.qualid.toString().equals(name);
                }
                if (!delete) {
                    newDefs.append(jCImport);
                }
            }
            unit.defs = newDefs.toList();
        }
    }

    private static List<JCTree.JCAnnotation> filterList(List<JCTree.JCAnnotation> annotations, JCTree jcTree) {
        ListBuffer<JCTree.JCAnnotation> newAnnotations = new ListBuffer<>();
        for (JCTree.JCAnnotation ann : annotations) {
            if (jcTree != ann) {
                newAnnotations.append(ann);
            }
        }
        return newAnnotations.toList();
    }

    public static java.util.List<String> toAllGetterNames(JavacNode field) {
        return HandlerUtil.toAllGetterNames(field.getAst(), getAccessorsForField(field), field.getName(), isBoolean(field));
    }

    public static String toGetterName(JavacNode field) {
        return HandlerUtil.toGetterName(field.getAst(), getAccessorsForField(field), field.getName(), isBoolean(field));
    }

    public static java.util.List<String> toAllSetterNames(JavacNode field) {
        return HandlerUtil.toAllSetterNames(field.getAst(), getAccessorsForField(field), field.getName(), isBoolean(field));
    }

    public static String toSetterName(JavacNode field) {
        return HandlerUtil.toSetterName(field.getAst(), getAccessorsForField(field), field.getName(), isBoolean(field));
    }

    public static java.util.List<String> toAllWitherNames(JavacNode field) {
        return HandlerUtil.toAllWitherNames(field.getAst(), getAccessorsForField(field), field.getName(), isBoolean(field));
    }

    public static String toWitherName(JavacNode field) {
        return HandlerUtil.toWitherName(field.getAst(), getAccessorsForField(field), field.getName(), isBoolean(field));
    }

    public static boolean shouldReturnThis(JavacNode field) {
        if ((field.get().mods.flags & 8) != 0) {
            return false;
        }
        AnnotationValues<Accessors> accessors = getAccessorsForField(field);
        return HandlerUtil.shouldReturnThis0(accessors, field.getAst());
    }

    public static JCTree.JCExpression cloneSelfType(JavacNode childOfType) {
        JavacNode typeNode = childOfType;
        JavacTreeMaker maker = childOfType.getTreeMaker();
        while (typeNode != null && typeNode.getKind() != AST.Kind.TYPE) {
            typeNode = typeNode.up();
        }
        if (typeNode != null && (typeNode.get() instanceof JCTree.JCClassDecl)) {
            JCTree.JCClassDecl type = typeNode.get();
            ListBuffer<JCTree.JCExpression> typeArgs = new ListBuffer<>();
            if (!type.typarams.isEmpty()) {
                for (JCTree.JCTypeParameter tp : type.typarams) {
                    typeArgs.append(maker.Ident(tp.name));
                }
                return maker.TypeApply(maker.Ident(type.name), typeArgs.toList());
            }
            return maker.Ident(type.name);
        }
        return null;
    }

    public static boolean isBoolean(JavacNode field) {
        JCTree.JCExpression varType = field.get().vartype;
        return isBoolean(varType);
    }

    public static boolean isBoolean(JCTree.JCExpression varType) {
        return varType != null && varType.toString().equals("boolean");
    }

    public static Name removePrefixFromField(JavacNode field) {
        CharSequence newName;
        java.util.List<String> prefixes = null;
        Iterator<JavacNode> it = field.down().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            JavacNode node = it.next();
            if (annotationTypeMatches((Class<? extends Annotation>) Accessors.class, node)) {
                AnnotationValues<Accessors> ann = createAnnotation(Accessors.class, node);
                if (ann.isExplicit("prefix")) {
                    prefixes = Arrays.asList(((Accessors) ann.getInstance()).prefix());
                }
            }
        }
        if (prefixes == null) {
            JavacNode javacNodeUp = field.up();
            while (true) {
                JavacNode current = javacNodeUp;
                if (current == null) {
                    break;
                }
                for (JavacNode node2 : current.down()) {
                    if (annotationTypeMatches((Class<? extends Annotation>) Accessors.class, node2)) {
                        AnnotationValues<Accessors> ann2 = createAnnotation(Accessors.class, node2);
                        if (ann2.isExplicit("prefix")) {
                            prefixes = Arrays.asList(((Accessors) ann2.getInstance()).prefix());
                        }
                    }
                }
                javacNodeUp = current.up();
            }
        }
        if (prefixes == null) {
            prefixes = (java.util.List) field.getAst().readConfiguration(ConfigurationKeys.ACCESSORS_PREFIX);
        }
        return (prefixes.isEmpty() || (newName = HandlerUtil.removePrefix(field.getName(), prefixes)) == null) ? field.get().name : field.toName(newName.toString());
    }

    public static AnnotationValues<Accessors> getAccessorsForField(JavacNode field) {
        for (JavacNode node : field.down()) {
            if (annotationTypeMatches((Class<? extends Annotation>) Accessors.class, node)) {
                return createAnnotation(Accessors.class, node);
            }
        }
        JavacNode javacNodeUp = field.up();
        while (true) {
            JavacNode current = javacNodeUp;
            if (current != null) {
                for (JavacNode node2 : current.down()) {
                    if (annotationTypeMatches((Class<? extends Annotation>) Accessors.class, node2)) {
                        return createAnnotation(Accessors.class, node2);
                    }
                }
                javacNodeUp = current.up();
            } else {
                return AnnotationValues.of(Accessors.class, field);
            }
        }
    }

    public static MemberExistsResult fieldExists(String fieldName, JavacNode node) {
        JavacNode node2 = upToTypeNode(node);
        if (node2 != null && (node2.get() instanceof JCTree.JCClassDecl)) {
            for (JCTree.JCVariableDecl jCVariableDecl : node2.get().defs) {
                if ((jCVariableDecl instanceof JCTree.JCVariableDecl) && jCVariableDecl.name.contentEquals(fieldName)) {
                    return getGeneratedBy(jCVariableDecl) == null ? MemberExistsResult.EXISTS_BY_USER : MemberExistsResult.EXISTS_BY_LOMBOK;
                }
            }
        }
        return MemberExistsResult.NOT_EXISTS;
    }

    public static MemberExistsResult methodExists(String methodName, JavacNode node, int params) {
        return methodExists(methodName, node, true, params);
    }

    public static MemberExistsResult methodExists(String methodName, JavacNode node, boolean caseSensitive, int params) {
        JavacNode node2 = upToTypeNode(node);
        if (node2 != null && (node2.get() instanceof JCTree.JCClassDecl)) {
            for (JCTree.JCMethodDecl jCMethodDecl : node2.get().defs) {
                if (jCMethodDecl instanceof JCTree.JCMethodDecl) {
                    JCTree.JCMethodDecl md = jCMethodDecl;
                    String name = md.name.toString();
                    boolean matches = caseSensitive ? name.equals(methodName) : name.equalsIgnoreCase(methodName);
                    if (matches) {
                        if (params > -1) {
                            List<JCTree.JCVariableDecl> ps = md.params;
                            int minArgs = 0;
                            int maxArgs = 0;
                            if (ps != null && ps.length() > 0) {
                                minArgs = ps.length();
                                if ((((JCTree.JCVariableDecl) ps.last()).mods.flags & 17179869184L) != 0) {
                                    maxArgs = Integer.MAX_VALUE;
                                    minArgs--;
                                } else {
                                    maxArgs = minArgs;
                                }
                            }
                            if (params < minArgs || params > maxArgs) {
                            }
                        }
                        if (!isTolerate(node2, md)) {
                            return getGeneratedBy(jCMethodDecl) == null ? MemberExistsResult.EXISTS_BY_USER : MemberExistsResult.EXISTS_BY_LOMBOK;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return MemberExistsResult.NOT_EXISTS;
    }

    public static boolean isTolerate(JavacNode node, JCTree.JCMethodDecl md) {
        List<JCTree.JCAnnotation> annotations = md.getModifiers().getAnnotations();
        if (annotations != null) {
            for (JCTree.JCAnnotation anno : annotations) {
                if (typeMatches((Class<?>) Tolerate.class, node, anno.getAnnotationType())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public static MemberExistsResult constructorExists(JavacNode node) {
        JavacNode node2 = upToTypeNode(node);
        if (node2 != null && (node2.get() instanceof JCTree.JCClassDecl)) {
            for (JCTree.JCMethodDecl jCMethodDecl : node2.get().defs) {
                if (jCMethodDecl instanceof JCTree.JCMethodDecl) {
                    JCTree.JCMethodDecl md = jCMethodDecl;
                    if (md.name.contentEquals("<init>") && (md.mods.flags & 68719476736L) == 0 && !isTolerate(node2, md)) {
                        return getGeneratedBy(jCMethodDecl) == null ? MemberExistsResult.EXISTS_BY_USER : MemberExistsResult.EXISTS_BY_LOMBOK;
                    }
                }
            }
        }
        return MemberExistsResult.NOT_EXISTS;
    }

    public static boolean isConstructorCall(JCTree.JCStatement statement) {
        String name;
        if (!(statement instanceof JCTree.JCExpressionStatement)) {
            return false;
        }
        JCTree.JCMethodInvocation jCMethodInvocation = ((JCTree.JCExpressionStatement) statement).expr;
        if (!(jCMethodInvocation instanceof JCTree.JCMethodInvocation)) {
            return false;
        }
        JCTree.JCFieldAccess jCFieldAccess = jCMethodInvocation.meth;
        if (jCFieldAccess instanceof JCTree.JCFieldAccess) {
            name = jCFieldAccess.name.toString();
        } else if (jCFieldAccess instanceof JCTree.JCIdent) {
            name = ((JCTree.JCIdent) jCFieldAccess).name.toString();
        } else {
            name = "";
        }
        return "super".equals(name) || "this".equals(name);
    }

    public static int toJavacModifier(AccessLevel accessLevel) {
        switch (accessLevel) {
            case MODULE:
            case PACKAGE:
                return 0;
            case PUBLIC:
            default:
                return 1;
            case NONE:
            case PRIVATE:
                return 2;
            case PROTECTED:
                return 4;
        }
    }

    /* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/handlers/JavacHandlerUtil$GetterMethod.SCL.lombok */
    private static class GetterMethod {
        private final Name name;
        private final JCTree.JCExpression type;

        GetterMethod(Name name, JCTree.JCExpression type) {
            this.name = name;
            this.type = type;
        }
    }

    private static GetterMethod findGetter(JavacNode field) {
        String getterName;
        JavacNode containingType;
        JCTree.JCVariableDecl decl = field.get();
        JavacNode typeNode = field.up();
        for (String potentialGetterName : toAllGetterNames(field)) {
            for (JavacNode potentialGetter : typeNode.down()) {
                if (potentialGetter.getKind() == AST.Kind.METHOD) {
                    JCTree.JCMethodDecl method = potentialGetter.get();
                    if (method.name.toString().equalsIgnoreCase(potentialGetterName) && (method.mods.flags & 8) == 0 && (method.params == null || method.params.size() <= 0)) {
                        return new GetterMethod(method.name, method.restype);
                    }
                }
            }
        }
        boolean hasGetterAnnotation = false;
        for (JavacNode child : field.down()) {
            if (child.getKind() == AST.Kind.ANNOTATION && annotationTypeMatches((Class<? extends Annotation>) Getter.class, child)) {
                AnnotationValues<Getter> ann = createAnnotation(Getter.class, child);
                if (((Getter) ann.getInstance()).value() == AccessLevel.NONE) {
                    return null;
                }
                hasGetterAnnotation = true;
            }
        }
        if (!hasGetterAnnotation && HandleGetter.fieldQualifiesForGetterGeneration(field) && (containingType = field.up()) != null) {
            for (JavacNode child2 : containingType.down()) {
                if (child2.getKind() == AST.Kind.ANNOTATION && annotationTypeMatches((Class<? extends Annotation>) Data.class, child2)) {
                    hasGetterAnnotation = true;
                }
                if (child2.getKind() == AST.Kind.ANNOTATION && annotationTypeMatches((Class<? extends Annotation>) Getter.class, child2)) {
                    AnnotationValues<Getter> ann2 = createAnnotation(Getter.class, child2);
                    if (((Getter) ann2.getInstance()).value() == AccessLevel.NONE) {
                        return null;
                    }
                    hasGetterAnnotation = true;
                }
            }
        }
        if (!hasGetterAnnotation || (getterName = toGetterName(field)) == null) {
            return null;
        }
        return new GetterMethod(field.toName(getterName), decl.vartype);
    }

    static boolean lookForGetter(JavacNode field, HandlerUtil.FieldAccess fieldAccess) {
        if (fieldAccess == HandlerUtil.FieldAccess.GETTER) {
            return true;
        }
        if (fieldAccess == HandlerUtil.FieldAccess.ALWAYS_FIELD) {
            return false;
        }
        for (JavacNode child : field.down()) {
            if (child.getKind() == AST.Kind.ANNOTATION && annotationTypeMatches((Class<? extends Annotation>) Getter.class, child)) {
                AnnotationValues<Getter> ann = createAnnotation(Getter.class, child);
                if (((Getter) ann.getInstance()).lazy()) {
                    return true;
                }
            }
        }
        return false;
    }

    static JCTree.JCExpression getFieldType(JavacNode field, HandlerUtil.FieldAccess fieldAccess) {
        if (field.getKind() == AST.Kind.METHOD) {
            return field.get().restype;
        }
        boolean lookForGetter = lookForGetter(field, fieldAccess);
        GetterMethod getter = lookForGetter ? findGetter(field) : null;
        if (getter != null) {
            return getter.type;
        }
        return field.get().vartype;
    }

    static JCTree.JCExpression createFieldAccessor(JavacTreeMaker maker, JavacNode field, HandlerUtil.FieldAccess fieldAccess) {
        return createFieldAccessor(maker, field, fieldAccess, null);
    }

    static JCTree.JCExpression createFieldAccessor(JavacTreeMaker maker, JavacNode field, HandlerUtil.FieldAccess fieldAccess, JCTree.JCExpression receiver) {
        boolean lookForGetter = lookForGetter(field, fieldAccess);
        GetterMethod getter = lookForGetter ? findGetter(field) : null;
        JCTree.JCVariableDecl fieldDecl = field.get();
        if (getter == null) {
            if (receiver == null) {
                if ((fieldDecl.mods.flags & 8) == 0) {
                    receiver = maker.Ident(field.toName("this"));
                } else {
                    JavacNode containerNode = field.up();
                    if (containerNode != null && (containerNode.get() instanceof JCTree.JCClassDecl)) {
                        JCTree.JCClassDecl container = field.up().get();
                        receiver = maker.Ident(container.name);
                    }
                }
            }
            return receiver == null ? maker.Ident(fieldDecl.name) : maker.Select(receiver, fieldDecl.name);
        }
        if (receiver == null) {
            receiver = maker.Ident(field.toName("this"));
        }
        JCTree.JCMethodInvocation call = maker.Apply(List.nil(), maker.Select(receiver, getter.name), List.nil());
        return call;
    }

    static JCTree.JCExpression createMethodAccessor(JavacTreeMaker maker, JavacNode method) {
        return createMethodAccessor(maker, method, null);
    }

    static JCTree.JCExpression createMethodAccessor(JavacTreeMaker maker, JavacNode method, JCTree.JCExpression receiver) {
        JavacNode containerNode;
        JCTree.JCMethodDecl methodDecl = method.get();
        if (receiver == null && (methodDecl.mods.flags & 8) == 0) {
            receiver = maker.Ident(method.toName("this"));
        } else if (receiver == null && (containerNode = method.up()) != null && (containerNode.get() instanceof JCTree.JCClassDecl)) {
            JCTree.JCClassDecl container = method.up().get();
            receiver = maker.Ident(container.name);
        }
        JCTree.JCMethodInvocation call = maker.Apply(List.nil(), receiver == null ? maker.Ident(methodDecl.name) : maker.Select(receiver, methodDecl.name), List.nil());
        return call;
    }

    public static Type getMirrorForFieldType(JavacNode fieldNode) {
        Symbol.VarSymbol element = fieldNode.getElement();
        if (element instanceof Symbol.VarSymbol) {
            return element.type;
        }
        return null;
    }

    public static JavacNode injectFieldAndMarkGenerated(JavacNode typeNode, JCTree.JCVariableDecl field) {
        return injectField(typeNode, field, true);
    }

    public static JavacNode injectField(JavacNode typeNode, JCTree.JCVariableDecl field) {
        return injectField(typeNode, field, false);
    }

    public static JavacNode injectField(JavacNode typeNode, JCTree.JCVariableDecl field, boolean addGenerated) {
        return injectField(typeNode, field, addGenerated, false);
    }

    public static JavacNode injectField(JavacNode typeNode, JCTree.JCVariableDecl field, boolean addGenerated, boolean specialEnumHandling) {
        List<JCTree> insertBefore;
        JCTree.JCClassDecl type = typeNode.get();
        if (addGenerated) {
            addSuppressWarningsAll(field.mods, typeNode, field.pos, getGeneratedBy(field), typeNode.getContext());
            addGenerated(field.mods, typeNode, field.pos, getGeneratedBy(field), typeNode.getContext());
        }
        List<JCTree> insertAfter = null;
        List<JCTree> list = type.defs;
        while (true) {
            insertBefore = list;
            boolean skip = false;
            if (insertBefore.head instanceof JCTree.JCVariableDecl) {
                JCTree.JCVariableDecl f = (JCTree.JCVariableDecl) insertBefore.head;
                if ((!specialEnumHandling && isEnumConstant(f)) || isGenerated(f)) {
                    skip = true;
                }
            } else if ((insertBefore.head instanceof JCTree.JCMethodDecl) && (((JCTree.JCMethodDecl) insertBefore.head).mods.flags & 68719476736L) != 0) {
                skip = true;
            }
            if (!skip) {
                break;
            }
            insertAfter = insertBefore;
            list = insertBefore.tail;
        }
        List<JCTree> fieldEntry = List.of(field);
        fieldEntry.tail = insertBefore;
        if (insertAfter == null) {
            type.defs = fieldEntry;
        } else {
            insertAfter.tail = fieldEntry;
        }
        return typeNode.add(field, AST.Kind.FIELD);
    }

    public static boolean isEnumConstant(JCTree.JCVariableDecl field) {
        return (field.mods.flags & Http2Stream.EMIT_BUFFER_SIZE) != 0;
    }

    /* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/handlers/JavacHandlerUtil$JCAnnotatedTypeReflect.SCL.lombok */
    static class JCAnnotatedTypeReflect {
        private static Class<?> TYPE;
        private static Constructor<?> CONSTRUCTOR;
        private static Field ANNOTATIONS;
        private static Field UNDERLYING_TYPE;

        JCAnnotatedTypeReflect() {
        }

        private static void init(Class<?> in) {
            if (TYPE == null && in.getName().equals("com.sun.tools.javac.tree.JCTree$JCAnnotatedType")) {
                try {
                    CONSTRUCTOR = Permit.getConstructor(in, List.class, JCTree.JCExpression.class);
                    ANNOTATIONS = Permit.getField(in, "annotations");
                    UNDERLYING_TYPE = Permit.getField(in, "underlyingType");
                    TYPE = in;
                } catch (Exception e) {
                }
            }
        }

        static boolean is(JCTree obj) {
            if (obj == null) {
                return false;
            }
            init(obj.getClass());
            return obj.getClass() == TYPE;
        }

        static List<JCTree.JCAnnotation> getAnnotations(JCTree obj) {
            init(obj.getClass());
            try {
                return (List) ANNOTATIONS.get(obj);
            } catch (Exception e) {
                return List.nil();
            }
        }

        static JCTree.JCExpression getUnderlyingType(JCTree obj) {
            init(obj.getClass());
            try {
                return (JCTree.JCExpression) UNDERLYING_TYPE.get(obj);
            } catch (Exception e) {
                return null;
            }
        }

        static JCTree.JCExpression create(List<JCTree.JCAnnotation> annotations, JCTree.JCExpression underlyingType) {
            try {
                return (JCTree.JCExpression) CONSTRUCTOR.newInstance(annotations, underlyingType);
            } catch (Exception e) {
                return null;
            }
        }
    }

    /* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/handlers/JavacHandlerUtil$ClassSymbolMembersField.SCL.lombok */
    static class ClassSymbolMembersField {
        private static final Field membersField;
        private static final Method removeMethod;
        private static final Method enterMethod;

        ClassSymbolMembersField() {
        }

        static {
            Field f = null;
            Method r = null;
            Method e = null;
            try {
                f = Permit.getField(Symbol.ClassSymbol.class, "members_field");
                r = Permit.getMethod(f.getType(), "remove", Symbol.class);
                e = Permit.getMethod(f.getType(), "enter", Symbol.class);
            } catch (Exception e2) {
            }
            membersField = f;
            removeMethod = r;
            enterMethod = e;
        }

        static void remove(Symbol.ClassSymbol from, Symbol toRemove) {
            if (from == null) {
                return;
            }
            try {
                Scope scope = (Scope) membersField.get(from);
                if (scope == null) {
                    return;
                }
                removeMethod.invoke(scope, toRemove);
            } catch (Exception e) {
            }
        }

        static void enter(Symbol.ClassSymbol from, Symbol toEnter) {
            if (from == null) {
                return;
            }
            try {
                Scope scope = (Scope) membersField.get(from);
                if (scope == null) {
                    return;
                }
                enterMethod.invoke(scope, toEnter);
            } catch (Exception e) {
            }
        }
    }

    public static void injectMethod(JavacNode typeNode, JCTree.JCMethodDecl method) {
        injectMethod(typeNode, method, null, null);
    }

    public static void injectMethod(JavacNode typeNode, JCTree.JCMethodDecl method, List<Type> paramTypes, Type returnType) {
        JCTree.JCClassDecl type = typeNode.get();
        if (method.getName().contentEquals("<init>")) {
            int idx = 0;
            Iterator it = type.defs.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                JCTree.JCMethodDecl jCMethodDecl = (JCTree) it.next();
                if ((jCMethodDecl instanceof JCTree.JCMethodDecl) && (jCMethodDecl.mods.flags & 68719476736L) != 0) {
                    JavacNode tossMe = typeNode.getNodeFor(jCMethodDecl);
                    if (tossMe != null) {
                        tossMe.up().removeChild(tossMe);
                    }
                    type.defs = addAllButOne(type.defs, idx);
                    ClassSymbolMembersField.remove(type.sym, jCMethodDecl.sym);
                } else {
                    idx++;
                }
            }
        }
        addSuppressWarningsAll(method.mods, typeNode, method.pos, getGeneratedBy(method), typeNode.getContext());
        addGenerated(method.mods, typeNode, method.pos, getGeneratedBy(method), typeNode.getContext());
        type.defs = type.defs.append(method);
        fixMethodMirror(typeNode.getContext(), typeNode.getElement(), method.getModifiers().flags, method.getName(), paramTypes, returnType);
        typeNode.add(method, AST.Kind.METHOD);
    }

    private static void fixMethodMirror(Context context, Element typeMirror, long access, Name methodName, List<Type> paramTypes, Type returnType) {
        if (typeMirror == null || paramTypes == null || returnType == null) {
            return;
        }
        Symbol.ClassSymbol cs = (Symbol.ClassSymbol) typeMirror;
        Symbol.MethodSymbol methodSymbol = new Symbol.MethodSymbol(access, methodName, new Type.MethodType(paramTypes, returnType, List.nil(), Symtab.instance(context).methodClass), cs);
        ClassSymbolMembersField.enter(cs, methodSymbol);
    }

    public static JavacNode injectType(JavacNode typeNode, JCTree.JCClassDecl type) {
        JCTree.JCClassDecl typeDecl = typeNode.get();
        addSuppressWarningsAll(type.mods, typeNode, type.pos, getGeneratedBy(type), typeNode.getContext());
        addGenerated(type.mods, typeNode, type.pos, getGeneratedBy(type), typeNode.getContext());
        typeDecl.defs = typeDecl.defs.append(type);
        return typeNode.add(type, AST.Kind.TYPE);
    }

    public static long addFinalIfNeeded(long flags, Context context) {
        boolean addFinal = LombokOptionsFactory.getDelombokOptions(context).getFormatPreferences().generateFinalParams();
        if (addFinal) {
            flags |= 16;
        }
        return flags;
    }

    public static JCTree.JCExpression genTypeRef(JavacNode node, String complexName) {
        String[] parts = complexName.split("\\.");
        if (parts.length > 2 && parts[0].equals("java") && parts[1].equals("lang")) {
            String[] subParts = new String[parts.length - 2];
            System.arraycopy(parts, 2, subParts, 0, subParts.length);
            return genJavaLangTypeRef(node, subParts);
        }
        return chainDots(node, parts);
    }

    public static JCTree.JCExpression genJavaLangTypeRef(JavacNode node, String... simpleNames) {
        if (LombokOptionsFactory.getDelombokOptions(node.getContext()).getFormatPreferences().javaLangAsFqn()) {
            return chainDots(node, "java", "lang", simpleNames);
        }
        return chainDots(node, null, null, simpleNames);
    }

    public static JCTree.JCExpression genJavaLangTypeRef(JavacNode node, int pos, String... simpleNames) {
        if (LombokOptionsFactory.getDelombokOptions(node.getContext()).getFormatPreferences().javaLangAsFqn()) {
            return chainDots(node, pos, "java", "lang", simpleNames);
        }
        return chainDots(node, pos, null, null, simpleNames);
    }

    public static void addSuppressWarningsAll(JCTree.JCModifiers mods, JavacNode node, int pos, JCTree source, Context context) {
        if (LombokOptionsFactory.getDelombokOptions(context).getFormatPreferences().generateSuppressWarnings()) {
            addAnnotation(mods, node, pos, source, context, "java.lang.SuppressWarnings", node.getTreeMaker().Literal("all"));
            if (Boolean.TRUE.equals(node.getAst().readConfiguration(ConfigurationKeys.ADD_FINDBUGS_SUPPRESSWARNINGS_ANNOTATIONS))) {
                JavacTreeMaker maker = node.getTreeMaker();
                addAnnotation(mods, node, pos, source, context, "edu.umd.cs.findbugs.annotations.SuppressFBWarnings", maker.Assign(maker.Ident(node.toName("justification")), maker.Literal("generated code")));
            }
        }
    }

    public static void addGenerated(JCTree.JCModifiers mods, JavacNode node, int pos, JCTree source, Context context) {
        if (LombokOptionsFactory.getDelombokOptions(context).getFormatPreferences().generateGenerated()) {
            if (HandlerUtil.shouldAddGenerated(node)) {
                addAnnotation(mods, node, pos, source, context, "javax.annotation.Generated", node.getTreeMaker().Literal("lombok"));
            }
            if (Boolean.TRUE.equals(node.getAst().readConfiguration(ConfigurationKeys.ADD_LOMBOK_GENERATED_ANNOTATIONS))) {
                addAnnotation(mods, node, pos, source, context, "lombok.Generated", null);
            }
        }
    }

    private static void addAnnotation(JCTree.JCModifiers mods, JavacNode node, int pos, JCTree source, Context context, String annotationTypeFqn, JCTree.JCExpression arg) {
        int idx = annotationTypeFqn.lastIndexOf(46);
        String simpleName = idx == -1 ? annotationTypeFqn : annotationTypeFqn.substring(idx + 1);
        boolean isJavaLangBased = idx == 9 && annotationTypeFqn.regionMatches(0, "java.lang.", 0, 10);
        for (JCTree.JCAnnotation ann : mods.annotations) {
            JCTree.JCIdent annotationType = ann.getAnnotationType();
            if (annotationType instanceof JCTree.JCIdent) {
                Name lastPart = annotationType.name;
                if (lastPart.contentEquals(simpleName)) {
                    return;
                }
            }
            if ((annotationType instanceof JCTree.JCFieldAccess) && annotationType.toString().equals(annotationTypeFqn)) {
                return;
            }
        }
        JavacTreeMaker maker = node.getTreeMaker();
        JCTree.JCExpression annType = isJavaLangBased ? genJavaLangTypeRef(node, simpleName) : chainDotsString(node, annotationTypeFqn);
        annType.pos = pos;
        if (arg != null) {
            arg.pos = pos;
            if (arg instanceof JCTree.JCAssign) {
                ((JCTree.JCAssign) arg).lhs.pos = pos;
                ((JCTree.JCAssign) arg).rhs.pos = pos;
            }
        }
        List<JCTree.JCExpression> argList = arg != null ? List.of(arg) : List.nil();
        JCTree.JCAnnotation annotation = recursiveSetGeneratedBy(maker.Annotation(annType, argList), source, context);
        annotation.pos = pos;
        mods.annotations = mods.annotations.append(annotation);
    }

    private static List<JCTree> addAllButOne(List<JCTree> defs, int idx) {
        ListBuffer<JCTree> out = new ListBuffer<>();
        int i = 0;
        for (JCTree def : defs) {
            int i2 = i;
            i++;
            if (i2 != idx) {
                out.append(def);
            }
        }
        return out.toList();
    }

    public static JCTree.JCExpression chainDots(JavacNode node, String elem1, String elem2, String... elems) {
        return chainDots(node, -1, elem1, elem2, elems);
    }

    public static JCTree.JCExpression chainDots(JavacNode node, String[] elems) {
        return chainDots(node, -1, null, null, elems);
    }

    public static JCTree.JCExpression chainDots(JavacNode node, LombokImmutableList<String> elems) {
        if (!$assertionsDisabled && elems == null) {
            throw new AssertionError();
        }
        JavacTreeMaker maker = node.getTreeMaker();
        JCTree.JCFieldAccess jCFieldAccessIdent = null;
        for (String elem : elems) {
            jCFieldAccessIdent = jCFieldAccessIdent == null ? maker.Ident(node.toName(elem)) : maker.Select(jCFieldAccessIdent, node.toName(elem));
        }
        return jCFieldAccessIdent;
    }

    public static JCTree.JCExpression chainDots(JavacNode node, int pos, String elem1, String elem2, String... elems) {
        if (!$assertionsDisabled && elems == null) {
            throw new AssertionError();
        }
        JavacTreeMaker maker = node.getTreeMaker();
        if (pos != -1) {
            maker = maker.at(pos);
        }
        JCTree.JCIdent jCIdentIdent = elem1 != null ? maker.Ident(node.toName(elem1)) : null;
        if (elem2 != null) {
            jCIdentIdent = jCIdentIdent == null ? maker.Ident(node.toName(elem2)) : maker.Select(jCIdentIdent, node.toName(elem2));
        }
        for (int i = 0; i < elems.length; i++) {
            jCIdentIdent = jCIdentIdent == null ? maker.Ident(node.toName(elems[i])) : maker.Select(jCIdentIdent, node.toName(elems[i]));
        }
        if ($assertionsDisabled || jCIdentIdent != null) {
            return jCIdentIdent;
        }
        throw new AssertionError();
    }

    public static JCTree.JCExpression chainDotsString(JavacNode node, String elems) {
        return chainDots(node, null, null, elems.split("\\."));
    }

    public static List<JCTree.JCAnnotation> findAnnotations(JavacNode fieldNode, Pattern namePattern) {
        ListBuffer<JCTree.JCAnnotation> result = new ListBuffer<>();
        for (JavacNode child : fieldNode.down()) {
            if (child.getKind() == AST.Kind.ANNOTATION) {
                JCTree.JCAnnotation annotation = child.get();
                String name = annotation.annotationType.toString();
                int idx = name.lastIndexOf(Version.SEPARATOR);
                String suspect = idx == -1 ? name : name.substring(idx + 1);
                if (namePattern.matcher(suspect).matches()) {
                    result.append(annotation);
                }
            }
        }
        return result.toList();
    }

    public static boolean hasNonNullAnnotations(JavacNode node) {
        for (JavacNode child : node.down()) {
            if (child.getKind() == AST.Kind.ANNOTATION) {
                JCTree.JCAnnotation annotation = child.get();
                for (String nn : HandlerUtil.NONNULL_ANNOTATIONS) {
                    if (typeMatches(nn, node, annotation.annotationType)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static List<JCTree.JCAnnotation> findCopyableAnnotations(JavacNode node) {
        JCTree.JCAnnotation anno = null;
        String annoName = null;
        Iterator<JavacNode> it = node.down().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            JavacNode child = it.next();
            if (child.getKind() == AST.Kind.ANNOTATION) {
                if (anno != null) {
                    annoName = "";
                    break;
                }
                JCTree.JCAnnotation annotation = (JCTree.JCAnnotation) child.get();
                annoName = annotation.annotationType.toString();
                anno = annotation;
            }
        }
        if (annoName == null) {
            return List.nil();
        }
        java.util.List<TypeName> configuredCopyable = (java.util.List) node.getAst().readConfiguration(ConfigurationKeys.COPYABLE_ANNOTATIONS);
        if (!annoName.isEmpty()) {
            for (TypeName cn : configuredCopyable) {
                if (typeMatches(cn.toString(), node, anno.annotationType)) {
                    return List.of(anno);
                }
            }
            for (String bn : HandlerUtil.BASE_COPYABLE_ANNOTATIONS) {
                if (typeMatches(bn, node, anno.annotationType)) {
                    return List.of(anno);
                }
            }
        }
        ListBuffer<JCTree.JCAnnotation> result = new ListBuffer<>();
        for (JavacNode child2 : node.down()) {
            if (child2.getKind() == AST.Kind.ANNOTATION) {
                JCTree.JCAnnotation annotation2 = child2.get();
                boolean match = false;
                Iterator<TypeName> it2 = configuredCopyable.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    TypeName cn2 = it2.next();
                    if (typeMatches(cn2.toString(), node, annotation2.annotationType)) {
                        result.append(annotation2);
                        match = true;
                        break;
                    }
                }
                if (!match) {
                    Iterator<String> it3 = HandlerUtil.BASE_COPYABLE_ANNOTATIONS.iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            String bn2 = it3.next();
                            if (typeMatches(bn2, node, annotation2.annotationType)) {
                                result.append(annotation2);
                                break;
                            }
                        }
                    }
                }
            }
        }
        return result.toList();
    }

    public static JCTree.JCStatement generateNullCheck(JavacTreeMaker maker, JavacNode variable, JavacNode source) {
        return generateNullCheck(maker, variable, variable.get(), source);
    }

    public static JCTree.JCStatement generateNullCheck(JavacTreeMaker maker, JavacNode variable, JCTree.JCVariableDecl varDecl, JavacNode source) {
        NullCheckExceptionType exceptionType = (NullCheckExceptionType) source.getAst().readConfiguration(ConfigurationKeys.NON_NULL_EXCEPTION_TYPE);
        if (exceptionType == null) {
            exceptionType = NullCheckExceptionType.NULL_POINTER_EXCEPTION;
        }
        if (Javac.isPrimitive(varDecl.vartype)) {
            return null;
        }
        Name fieldName = varDecl.name;
        JCTree.JCExpression exType = genTypeRef(variable, exceptionType.getExceptionType());
        JCTree.JCBlock throwBlock = maker.Block(0L, List.of(maker.Throw(maker.NewClass(null, List.nil(), exType, List.of(maker.Literal(exceptionType.toExceptionMessage(fieldName.toString()))), null))));
        return maker.If(maker.Binary(Javac.CTC_EQUAL, maker.Ident(fieldName), maker.Literal(Javac.CTC_BOT, null)), throwBlock, null);
    }

    public static List<Integer> createListOfNonExistentFields(List<String> list, JavacNode type, boolean excludeStandard, boolean excludeTransient) {
        boolean[] matched = new boolean[list.size()];
        for (JavacNode child : type.down()) {
            if (list.isEmpty()) {
                break;
            }
            if (child.getKind() == AST.Kind.FIELD) {
                JCTree.JCVariableDecl field = child.get();
                if (!excludeStandard || ((field.mods.flags & 8) == 0 && !field.name.toString().startsWith("$"))) {
                    if (!excludeTransient || (field.mods.flags & 128) == 0) {
                        int idx = list.indexOf(child.getName());
                        if (idx > -1) {
                            matched[idx] = true;
                        }
                    }
                }
            }
        }
        ListBuffer<Integer> problematic = new ListBuffer<>();
        for (int i = 0; i < list.size(); i++) {
            if (!matched[i]) {
                problematic.append(Integer.valueOf(i));
            }
        }
        return problematic.toList();
    }

    static List<JCTree.JCAnnotation> unboxAndRemoveAnnotationParameter(JCTree.JCAnnotation ast, String parameterName, String errorName, JavacNode annotationNode) {
        ListBuffer<JCTree.JCExpression> params = new ListBuffer<>();
        ListBuffer<JCTree.JCAnnotation> result = new ListBuffer<>();
        for (JCTree.JCAssign jCAssign : ast.args) {
            String nameOfParam = "value";
            JCTree.JCExpression valueOfParam = null;
            if (jCAssign instanceof JCTree.JCAssign) {
                JCTree.JCAssign assign = jCAssign;
                if (assign.lhs instanceof JCTree.JCIdent) {
                    JCTree.JCIdent ident = assign.lhs;
                    nameOfParam = ident.name.toString();
                }
                valueOfParam = assign.rhs;
            }
            int lastIdx = nameOfParam.length();
            while (lastIdx > 0 && nameOfParam.charAt(lastIdx - 1) == '_') {
                lastIdx--;
            }
            boolean allowRaw = lastIdx < nameOfParam.length();
            if (!parameterName.equals(nameOfParam.substring(0, lastIdx))) {
                params.append(jCAssign);
            } else {
                int endPos = Javac.getEndPosition(jCAssign.pos(), annotationNode.top().get());
                annotationNode.getAst().removeFromDeferredDiagnostics(((JCTree.JCExpression) jCAssign).pos, endPos);
                if (valueOfParam instanceof JCTree.JCAnnotation) {
                    String dummyAnnotationName = ((JCTree.JCAnnotation) valueOfParam).annotationType.toString();
                    if (dummyAnnotationName.replace("_", "").replace("$", "").replace("x", "").replace("X", "").length() > 0) {
                        if (allowRaw) {
                            result.append((JCTree.JCAnnotation) valueOfParam);
                        } else {
                            addError(errorName, annotationNode);
                        }
                    } else {
                        Iterator it = ((JCTree.JCAnnotation) valueOfParam).args.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                JCTree.JCExpression expr = (JCTree.JCExpression) it.next();
                                if ((expr instanceof JCTree.JCAssign) && (((JCTree.JCAssign) expr).lhs instanceof JCTree.JCIdent)) {
                                    JCTree.JCIdent id = ((JCTree.JCAssign) expr).lhs;
                                    if ("value".equals(id.name.toString())) {
                                        expr = ((JCTree.JCAssign) expr).rhs;
                                    } else {
                                        addError(errorName, annotationNode);
                                    }
                                }
                                if (expr instanceof JCTree.JCAnnotation) {
                                    result.append((JCTree.JCAnnotation) expr);
                                } else if (expr instanceof JCTree.JCNewArray) {
                                    for (JCTree.JCAnnotation jCAnnotation : ((JCTree.JCNewArray) expr).elems) {
                                        if (jCAnnotation instanceof JCTree.JCAnnotation) {
                                            result.append(jCAnnotation);
                                        } else {
                                            addError(errorName, annotationNode);
                                            break;
                                        }
                                    }
                                } else {
                                    addError(errorName, annotationNode);
                                    break;
                                }
                            }
                        }
                    }
                } else if (valueOfParam instanceof JCTree.JCNewArray) {
                    JCTree.JCNewArray arr = (JCTree.JCNewArray) valueOfParam;
                    if (!arr.elems.isEmpty()) {
                        if (allowRaw) {
                            for (JCTree.JCAnnotation jCAnnotation2 : arr.elems) {
                                if (jCAnnotation2 instanceof JCTree.JCAnnotation) {
                                    result.append(jCAnnotation2);
                                } else {
                                    addError(errorName, annotationNode);
                                }
                            }
                        } else {
                            addError(errorName, annotationNode);
                        }
                    }
                } else {
                    addError(errorName, annotationNode);
                }
            }
        }
        ast.args = params.toList();
        return result.toList();
    }

    private static void addError(String errorName, JavacNode node) {
        if (node.getLatestJavaSpecSupported() < 8) {
            node.addError("The correct format up to JDK7 is " + errorName + "=@__({@SomeAnnotation, @SomeOtherAnnotation}))");
        } else {
            node.addError("The correct format for JDK8+ is " + errorName + "_={@SomeAnnotation, @SomeOtherAnnotation})");
        }
    }

    public static List<JCTree.JCTypeParameter> copyTypeParams(JavacNode source, List<JCTree.JCTypeParameter> params) {
        if (params == null || params.isEmpty()) {
            return params;
        }
        ListBuffer<JCTree.JCTypeParameter> out = new ListBuffer<>();
        JavacTreeMaker maker = source.getTreeMaker();
        Context context = source.getContext();
        for (JCTree.JCTypeParameter tp : params) {
            List<JCTree.JCExpression> bounds = tp.bounds;
            if (bounds != null && !bounds.isEmpty()) {
                ListBuffer<JCTree.JCExpression> boundsCopy = new ListBuffer<>();
                for (JCTree.JCExpression expr : tp.bounds) {
                    boundsCopy.append(cloneType(maker, expr, source.get(), context));
                }
                bounds = boundsCopy.toList();
            }
            out.append(maker.TypeParameter(tp.name, bounds));
        }
        return out.toList();
    }

    public static List<JCTree.JCAnnotation> getTypeUseAnnotations(JCTree.JCExpression from) {
        return !JCAnnotatedTypeReflect.is(from) ? List.nil() : JCAnnotatedTypeReflect.getAnnotations(from);
    }

    public static JCTree.JCExpression removeTypeUseAnnotations(JCTree.JCExpression from) {
        return !JCAnnotatedTypeReflect.is(from) ? from : JCAnnotatedTypeReflect.getUnderlyingType(from);
    }

    public static JCTree.JCExpression namePlusTypeParamsToTypeReference(JavacTreeMaker maker, Name typeName, List<JCTree.JCTypeParameter> params) {
        if (params.isEmpty()) {
            return maker.Ident(typeName);
        }
        return maker.TypeApply(maker.Ident(typeName), typeParameterNames(maker, params));
    }

    public static List<JCTree.JCExpression> typeParameterNames(JavacTreeMaker maker, List<JCTree.JCTypeParameter> params) {
        ListBuffer<JCTree.JCExpression> typeArgs = new ListBuffer<>();
        for (JCTree.JCTypeParameter param : params) {
            typeArgs.append(maker.Ident(param.name));
        }
        return typeArgs.toList();
    }

    public static void sanityCheckForMethodGeneratingAnnotationsOnBuilderClass(JavacNode typeNode, JavacNode errorNode) {
        List<String> disallowed = List.nil();
        for (JavacNode child : typeNode.down()) {
            for (String annType : HandlerUtil.INVALID_ON_BUILDERS) {
                if (annotationTypeMatches(annType, child)) {
                    int lastIndex = annType.lastIndexOf(46);
                    disallowed = disallowed.append(lastIndex == -1 ? annType : annType.substring(lastIndex + 1));
                }
            }
        }
        int size = disallowed.size();
        if (size == 0) {
            return;
        }
        if (size == 1) {
            errorNode.addError("@" + ((String) disallowed.head) + " is not allowed on builder classes.");
            return;
        }
        StringBuilder out = new StringBuilder();
        for (String a : disallowed) {
            out.append("@").append(a).append(", ");
        }
        out.setLength(out.length() - 2);
        errorNode.addError(out.append(" are not allowed on builder classes.").toString());
    }

    static List<JCTree.JCAnnotation> copyAnnotations(List<? extends JCTree.JCExpression> in) {
        ListBuffer<JCTree.JCAnnotation> out = new ListBuffer<>();
        for (JCTree.JCExpression expr : in) {
            if (expr instanceof JCTree.JCAnnotation) {
                out.append((JCTree.JCAnnotation) expr.clone());
            }
        }
        return out.toList();
    }

    static boolean isClass(JavacNode typeNode) {
        return isClassAndDoesNotHaveFlags(typeNode, 25088);
    }

    static boolean isClassOrEnum(JavacNode typeNode) {
        return isClassAndDoesNotHaveFlags(typeNode, 8704);
    }

    public static boolean isClassAndDoesNotHaveFlags(JavacNode typeNode, int flags) {
        if (!(typeNode.get() instanceof JCTree.JCClassDecl)) {
            return false;
        }
        JCTree.JCClassDecl typeDecl = typeNode.get();
        long typeDeclflags = typeDecl == null ? 0L : typeDecl.mods.flags;
        return (typeDeclflags & ((long) flags)) == 0;
    }

    public static JavacNode upToTypeNode(JavacNode node) {
        if (node == null) {
            throw new NullPointerException("node");
        }
        while (node != null && !(node.get() instanceof JCTree.JCClassDecl)) {
            node = node.up();
        }
        return node;
    }

    public static List<JCTree.JCExpression> cloneTypes(JavacTreeMaker maker, List<JCTree.JCExpression> in, JCTree source, Context context) {
        if (in.isEmpty()) {
            return List.nil();
        }
        if (in.size() == 1) {
            return List.of(cloneType(maker, (JCTree.JCExpression) in.get(0), source, context));
        }
        ListBuffer<JCTree.JCExpression> lb = new ListBuffer<>();
        for (JCTree.JCExpression expr : in) {
            lb.append(cloneType(maker, expr, source, context));
        }
        return lb.toList();
    }

    public static JCTree.JCExpression cloneType(JavacTreeMaker maker, JCTree.JCExpression in, JCTree source, Context context) {
        JCTree.JCExpression out = cloneType0(maker, in);
        if (out != null) {
            recursiveSetGeneratedBy(out, source, context);
        }
        return out;
    }

    private static JCTree.JCExpression cloneType0(JavacTreeMaker maker, JCTree in) {
        JCTree.TypeBoundKind newKind;
        if (in == null) {
            return null;
        }
        if (in instanceof JCTree.JCPrimitiveTypeTree) {
            return (JCTree.JCExpression) in;
        }
        if (in instanceof JCTree.JCIdent) {
            return maker.Ident(((JCTree.JCIdent) in).name);
        }
        if (in instanceof JCTree.JCFieldAccess) {
            JCTree.JCFieldAccess fa = (JCTree.JCFieldAccess) in;
            return maker.Select(cloneType0(maker, fa.selected), fa.name);
        }
        if (in instanceof JCTree.JCArrayTypeTree) {
            JCTree.JCArrayTypeTree att = (JCTree.JCArrayTypeTree) in;
            return maker.TypeArray(cloneType0(maker, att.elemtype));
        }
        if (in instanceof JCTree.JCTypeApply) {
            JCTree.JCTypeApply ta = (JCTree.JCTypeApply) in;
            ListBuffer<JCTree.JCExpression> lb = new ListBuffer<>();
            for (JCTree.JCExpression typeArg : ta.arguments) {
                lb.append(cloneType0(maker, typeArg));
            }
            return maker.TypeApply(cloneType0(maker, ta.clazz), lb.toList());
        }
        if (in instanceof JCTree.JCWildcard) {
            JCTree.JCWildcard w = (JCTree.JCWildcard) in;
            JCTree.JCExpression newInner = cloneType0(maker, w.inner);
            switch (AnonymousClass3.$SwitchMap$com$sun$source$tree$Tree$Kind[w.getKind().ordinal()]) {
                case 1:
                    newKind = maker.TypeBoundKind(BoundKind.SUPER);
                    break;
                case 2:
                    newKind = maker.TypeBoundKind(BoundKind.EXTENDS);
                    break;
                case 3:
                default:
                    newKind = maker.TypeBoundKind(BoundKind.UNBOUND);
                    break;
            }
            return maker.Wildcard(newKind, newInner);
        }
        if (JCAnnotatedTypeReflect.is(in)) {
            JCTree.JCExpression underlyingType = cloneType0(maker, JCAnnotatedTypeReflect.getUnderlyingType(in));
            List<JCTree.JCAnnotation> anns = copyAnnotations(JCAnnotatedTypeReflect.getAnnotations(in));
            return JCAnnotatedTypeReflect.create(anns, underlyingType);
        }
        return (JCTree.JCExpression) in;
    }

    /* JADX INFO: renamed from: lombok.javac.handlers.JavacHandlerUtil$3, reason: invalid class name */
    /* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/handlers/JavacHandlerUtil$3.SCL.lombok */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$sun$source$tree$Tree$Kind = new int[Tree.Kind.values().length];

        static {
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.SUPER_WILDCARD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.EXTENDS_WILDCARD.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.UNBOUNDED_WILDCARD.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            $SwitchMap$lombok$AccessLevel = new int[AccessLevel.valuesCustom().length];
            try {
                $SwitchMap$lombok$AccessLevel[AccessLevel.MODULE.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$lombok$AccessLevel[AccessLevel.PACKAGE.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$lombok$AccessLevel[AccessLevel.PUBLIC.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$lombok$AccessLevel[AccessLevel.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$lombok$AccessLevel[AccessLevel.PRIVATE.ordinal()] = 5;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$lombok$AccessLevel[AccessLevel.PROTECTED.ordinal()] = 6;
            } catch (NoSuchFieldError e9) {
            }
            $SwitchMap$lombok$core$AST$Kind = new int[AST.Kind.valuesCustom().length];
            try {
                $SwitchMap$lombok$core$AST$Kind[AST.Kind.ARGUMENT.ordinal()] = 1;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$lombok$core$AST$Kind[AST.Kind.FIELD.ordinal()] = 2;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$lombok$core$AST$Kind[AST.Kind.LOCAL.ordinal()] = 3;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$lombok$core$AST$Kind[AST.Kind.TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$lombok$core$AST$Kind[AST.Kind.METHOD.ordinal()] = 5;
            } catch (NoSuchFieldError e14) {
            }
        }
    }

    public static String stripLinesWithTagFromJavadoc(String javadoc, String regexpFragment) {
        Pattern p = Pattern.compile("^\\s*\\**\\s*" + regexpFragment + "\\s*\\**\\s*$", 10);
        Matcher m = p.matcher(javadoc);
        return m.replaceAll("");
    }

    public static String stripSectionsFromJavadoc(String javadoc) {
        Matcher m = SECTION_FINDER.matcher(javadoc);
        return !m.find() ? javadoc : javadoc.substring(0, m.start());
    }

    public static String getJavadocSection(String javadoc, String sectionName) {
        Matcher m = SECTION_FINDER.matcher(javadoc);
        int sectionStart = -1;
        int sectionEnd = -1;
        while (m.find()) {
            if (m.group(1).equalsIgnoreCase(sectionName)) {
                sectionStart = m.end() + 1;
            } else if (sectionStart != -1) {
                sectionEnd = m.start();
            }
        }
        if (sectionStart != -1) {
            return sectionEnd != -1 ? javadoc.substring(sectionStart, sectionEnd) : javadoc.substring(sectionStart);
        }
        return null;
    }

    /* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/handlers/JavacHandlerUtil$CopyJavadoc.SCL.lombok */
    public enum CopyJavadoc {
        VERBATIM { // from class: lombok.javac.handlers.JavacHandlerUtil.CopyJavadoc.1
            @Override // lombok.javac.handlers.JavacHandlerUtil.CopyJavadoc
            public String apply(JCTree.JCCompilationUnit cu, JavacNode node) {
                return Javac.getDocComment(cu, node.get());
            }
        },
        GETTER { // from class: lombok.javac.handlers.JavacHandlerUtil.CopyJavadoc.2
            @Override // lombok.javac.handlers.JavacHandlerUtil.CopyJavadoc
            public String apply(final JCTree.JCCompilationUnit cu, JavacNode node) {
                final JCTree n = node.get();
                String javadoc = Javac.getDocComment(cu, n);
                String out = JavacHandlerUtil.getJavadocSection(javadoc, "GETTER");
                final boolean sectionBased = out != null;
                if (!sectionBased) {
                    out = JavacHandlerUtil.stripLinesWithTagFromJavadoc(JavacHandlerUtil.stripSectionsFromJavadoc(javadoc), "@param(?:eter)?\\s+.*");
                }
                node.getAst().cleanupTask("javadocfilter-getter", n, new CleanupTask() { // from class: lombok.javac.handlers.JavacHandlerUtil.CopyJavadoc.2.1
                    @Override // lombok.core.CleanupTask
                    public void cleanup() {
                        String javadoc2 = Javac.getDocComment(cu, n);
                        if (javadoc2 == null || javadoc2.isEmpty()) {
                            return;
                        }
                        String javadoc3 = JavacHandlerUtil.stripSectionsFromJavadoc(javadoc2);
                        if (!sectionBased) {
                            javadoc3 = JavacHandlerUtil.stripLinesWithTagFromJavadoc(JavacHandlerUtil.stripSectionsFromJavadoc(javadoc3), "@returns?\\s+.*");
                        }
                        Javac.setDocComment(cu, n, javadoc3);
                    }
                });
                return out;
            }
        },
        SETTER { // from class: lombok.javac.handlers.JavacHandlerUtil.CopyJavadoc.3
            @Override // lombok.javac.handlers.JavacHandlerUtil.CopyJavadoc
            public String apply(JCTree.JCCompilationUnit cu, JavacNode node) {
                return CopyJavadoc.applySetter(cu, node, "SETTER");
            }
        },
        WITHER { // from class: lombok.javac.handlers.JavacHandlerUtil.CopyJavadoc.4
            @Override // lombok.javac.handlers.JavacHandlerUtil.CopyJavadoc
            public String apply(JCTree.JCCompilationUnit cu, JavacNode node) {
                return CopyJavadoc.applySetter(cu, node, "WITHER");
            }
        };

        public abstract String apply(JCTree.JCCompilationUnit jCCompilationUnit, JavacNode javacNode);

        /* JADX INFO: Access modifiers changed from: private */
        public static String applySetter(final JCTree.JCCompilationUnit cu, JavacNode node, String sectionName) {
            final JCTree n = node.get();
            String javadoc = Javac.getDocComment(cu, n);
            String out = JavacHandlerUtil.getJavadocSection(javadoc, sectionName);
            final boolean sectionBased = out != null;
            if (!sectionBased) {
                out = JavacHandlerUtil.stripLinesWithTagFromJavadoc(JavacHandlerUtil.stripSectionsFromJavadoc(javadoc), "@returns?\\s+.*");
            }
            node.getAst().cleanupTask("javadocfilter-setter", n, new CleanupTask() { // from class: lombok.javac.handlers.JavacHandlerUtil.CopyJavadoc.5
                @Override // lombok.core.CleanupTask
                public void cleanup() {
                    String javadoc2 = Javac.getDocComment(cu, n);
                    if (javadoc2 == null || javadoc2.isEmpty()) {
                        return;
                    }
                    String javadoc3 = JavacHandlerUtil.stripSectionsFromJavadoc(javadoc2);
                    if (!sectionBased) {
                        javadoc3 = JavacHandlerUtil.stripLinesWithTagFromJavadoc(JavacHandlerUtil.stripSectionsFromJavadoc(javadoc3), "@param(?:eter)?\\s+.*");
                    }
                    Javac.setDocComment(cu, n, javadoc3);
                }
            });
            return JavacHandlerUtil.shouldReturnThis(node) ? JavacHandlerUtil.addReturnsThisIfNeeded(out) : out;
        }
    }

    public static void copyJavadoc(JavacNode from, JCTree to, CopyJavadoc copyMode) {
        if (copyMode == null) {
            copyMode = CopyJavadoc.VERBATIM;
        }
        try {
            JCTree.JCCompilationUnit cu = (JCTree.JCCompilationUnit) from.top().get();
            String newJavadoc = copyMode.apply(cu, from);
            if (newJavadoc != null) {
                Javac.setDocComment(cu, to, newJavadoc);
            }
        } catch (Exception e) {
        }
    }

    static String addReturnsThisIfNeeded(String in) {
        return FIND_RETURN.matcher(in).find() ? in : addJavadocLine(in, "@return this");
    }

    static String addJavadocLine(String in, String line) {
        return in.endsWith("\n") ? in + line + "\n" : in + "\n" + line;
    }

    public static boolean isDirectDescendantOfObject(JavacNode typeNode) {
        if (!(typeNode.get() instanceof JCTree.JCClassDecl)) {
            throw new IllegalArgumentException("not a type node");
        }
        JCTree extending = Javac.getExtendsClause(typeNode.get());
        if (extending == null) {
            return true;
        }
        String p = extending.toString();
        return p.equals("Object") || p.equals("java.lang.Object");
    }
}
