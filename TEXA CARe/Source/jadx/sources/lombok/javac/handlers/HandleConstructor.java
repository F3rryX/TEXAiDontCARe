package lombok.javac.handlers;

import com.sun.tools.javac.code.Symbol;
import com.sun.tools.javac.code.Type;
import com.sun.tools.javac.tree.JCTree;
import com.sun.tools.javac.util.List;
import com.sun.tools.javac.util.ListBuffer;
import com.sun.tools.javac.util.Name;
import java.lang.annotation.Annotation;
import java.util.Iterator;
import javax.lang.model.type.TypeKind;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.ConfigurationKeys;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.core.AST;
import lombok.core.AnnotationValues;
import lombok.core.handlers.HandlerUtil;
import lombok.delombok.LombokOptionsFactory;
import lombok.javac.Javac;
import lombok.javac.JavacAnnotationHandler;
import lombok.javac.JavacNode;
import lombok.javac.JavacTreeMaker;
import lombok.javac.handlers.JavacHandlerUtil;
import okhttp3.internal.http2.Http2Stream;

/* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/handlers/HandleConstructor.SCL.lombok */
public class HandleConstructor {

    /* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/handlers/HandleConstructor$SkipIfConstructorExists.SCL.lombok */
    public enum SkipIfConstructorExists {
        YES,
        NO,
        I_AM_BUILDER
    }

    /* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/handlers/HandleConstructor$HandleNoArgsConstructor.SCL.lombok */
    public static class HandleNoArgsConstructor extends JavacAnnotationHandler<NoArgsConstructor> {
        private HandleConstructor handleConstructor = new HandleConstructor();

        @Override // lombok.javac.JavacAnnotationHandler
        public void handle(AnnotationValues<NoArgsConstructor> annotation, JCTree.JCAnnotation ast, JavacNode annotationNode) {
            HandlerUtil.handleFlagUsage(annotationNode, ConfigurationKeys.NO_ARGS_CONSTRUCTOR_FLAG_USAGE, "@NoArgsConstructor", ConfigurationKeys.ANY_CONSTRUCTOR_FLAG_USAGE, "any @xArgsConstructor");
            JavacHandlerUtil.deleteAnnotationIfNeccessary(annotationNode, (Class<? extends Annotation>) NoArgsConstructor.class);
            JavacHandlerUtil.deleteImportFromCompilationUnit(annotationNode, "lombok.AccessLevel");
            JavacNode typeNode = annotationNode.up();
            if (HandleConstructor.checkLegality(typeNode, annotationNode, NoArgsConstructor.class.getSimpleName())) {
                List<JCTree.JCAnnotation> onConstructor = JavacHandlerUtil.unboxAndRemoveAnnotationParameter(ast, "onConstructor", "@NoArgsConstructor(onConstructor", annotationNode);
                NoArgsConstructor ann = (NoArgsConstructor) annotation.getInstance();
                AccessLevel level = ann.access();
                if (level == AccessLevel.NONE) {
                    return;
                }
                String staticName = ann.staticName();
                boolean force = ann.force();
                this.handleConstructor.generateConstructor(typeNode, level, onConstructor, List.nil(), force, staticName, SkipIfConstructorExists.NO, annotationNode);
            }
        }
    }

    /* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/handlers/HandleConstructor$HandleRequiredArgsConstructor.SCL.lombok */
    public static class HandleRequiredArgsConstructor extends JavacAnnotationHandler<RequiredArgsConstructor> {
        private HandleConstructor handleConstructor = new HandleConstructor();

        @Override // lombok.javac.JavacAnnotationHandler
        public void handle(AnnotationValues<RequiredArgsConstructor> annotation, JCTree.JCAnnotation ast, JavacNode annotationNode) {
            HandlerUtil.handleFlagUsage(annotationNode, ConfigurationKeys.REQUIRED_ARGS_CONSTRUCTOR_FLAG_USAGE, "@RequiredArgsConstructor", ConfigurationKeys.ANY_CONSTRUCTOR_FLAG_USAGE, "any @xArgsConstructor");
            JavacHandlerUtil.deleteAnnotationIfNeccessary(annotationNode, (Class<? extends Annotation>) RequiredArgsConstructor.class);
            JavacHandlerUtil.deleteImportFromCompilationUnit(annotationNode, "lombok.AccessLevel");
            JavacNode typeNode = annotationNode.up();
            if (HandleConstructor.checkLegality(typeNode, annotationNode, RequiredArgsConstructor.class.getSimpleName())) {
                List<JCTree.JCAnnotation> onConstructor = JavacHandlerUtil.unboxAndRemoveAnnotationParameter(ast, "onConstructor", "@RequiredArgsConstructor(onConstructor", annotationNode);
                RequiredArgsConstructor ann = (RequiredArgsConstructor) annotation.getInstance();
                AccessLevel level = ann.access();
                if (level == AccessLevel.NONE) {
                    return;
                }
                String staticName = ann.staticName();
                if (annotation.isExplicit("suppressConstructorProperties")) {
                    annotationNode.addError("This deprecated feature is no longer supported. Remove it; you can create a lombok.config file with 'lombok.anyConstructor.suppressConstructorProperties = true'.");
                }
                this.handleConstructor.generateConstructor(typeNode, level, onConstructor, HandleConstructor.findRequiredFields(typeNode), false, staticName, SkipIfConstructorExists.NO, annotationNode);
            }
        }
    }

    public static List<JavacNode> findRequiredFields(JavacNode typeNode) {
        return findFields(typeNode, true);
    }

    public static List<JavacNode> findFinalFields(JavacNode typeNode) {
        return findFields(typeNode, false);
    }

    public static List<JavacNode> findFields(JavacNode typeNode, boolean nullMarked) {
        ListBuffer<JavacNode> fields = new ListBuffer<>();
        for (JavacNode child : typeNode.down()) {
            if (child.getKind() == AST.Kind.FIELD) {
                JCTree.JCVariableDecl fieldDecl = child.get();
                if (!fieldDecl.name.toString().startsWith("$")) {
                    long fieldFlags = fieldDecl.mods.flags;
                    if ((fieldFlags & 8) == 0) {
                        boolean isFinal = (fieldFlags & 16) != 0;
                        boolean isNonNull = nullMarked && JavacHandlerUtil.hasNonNullAnnotations(child);
                        if (isFinal || isNonNull) {
                            if (fieldDecl.init == null) {
                                fields.append(child);
                            }
                        }
                    }
                }
            }
        }
        return fields.toList();
    }

    /* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/handlers/HandleConstructor$HandleAllArgsConstructor.SCL.lombok */
    public static class HandleAllArgsConstructor extends JavacAnnotationHandler<AllArgsConstructor> {
        private HandleConstructor handleConstructor = new HandleConstructor();

        @Override // lombok.javac.JavacAnnotationHandler
        public void handle(AnnotationValues<AllArgsConstructor> annotation, JCTree.JCAnnotation ast, JavacNode annotationNode) {
            HandlerUtil.handleFlagUsage(annotationNode, ConfigurationKeys.ALL_ARGS_CONSTRUCTOR_FLAG_USAGE, "@AllArgsConstructor", ConfigurationKeys.ANY_CONSTRUCTOR_FLAG_USAGE, "any @xArgsConstructor");
            JavacHandlerUtil.deleteAnnotationIfNeccessary(annotationNode, (Class<? extends Annotation>) AllArgsConstructor.class);
            JavacHandlerUtil.deleteImportFromCompilationUnit(annotationNode, "lombok.AccessLevel");
            JavacNode typeNode = annotationNode.up();
            if (HandleConstructor.checkLegality(typeNode, annotationNode, AllArgsConstructor.class.getSimpleName())) {
                List<JCTree.JCAnnotation> onConstructor = JavacHandlerUtil.unboxAndRemoveAnnotationParameter(ast, "onConstructor", "@AllArgsConstructor(onConstructor", annotationNode);
                AllArgsConstructor ann = (AllArgsConstructor) annotation.getInstance();
                AccessLevel level = ann.access();
                if (level == AccessLevel.NONE) {
                    return;
                }
                String staticName = ann.staticName();
                if (annotation.isExplicit("suppressConstructorProperties")) {
                    annotationNode.addError("This deprecated feature is no longer supported. Remove it; you can create a lombok.config file with 'lombok.anyConstructor.suppressConstructorProperties = true'.");
                }
                this.handleConstructor.generateConstructor(typeNode, level, onConstructor, HandleConstructor.findAllFields(typeNode), false, staticName, SkipIfConstructorExists.NO, annotationNode);
            }
        }
    }

    public static List<JavacNode> findAllFields(JavacNode typeNode) {
        return findAllFields(typeNode, false);
    }

    public static List<JavacNode> findAllFields(JavacNode typeNode, boolean evenFinalInitialized) {
        ListBuffer<JavacNode> fields = new ListBuffer<>();
        for (JavacNode child : typeNode.down()) {
            if (child.getKind() == AST.Kind.FIELD) {
                JCTree.JCVariableDecl fieldDecl = child.get();
                if (!fieldDecl.name.toString().startsWith("$")) {
                    long fieldFlags = fieldDecl.mods.flags;
                    if ((fieldFlags & 8) == 0) {
                        boolean isFinal = (fieldFlags & 16) != 0;
                        if (evenFinalInitialized || !isFinal || fieldDecl.init == null) {
                            fields.append(child);
                        }
                    }
                }
            }
        }
        return fields.toList();
    }

    public static boolean checkLegality(JavacNode typeNode, JavacNode errorNode, String name) {
        JCTree.JCClassDecl typeDecl = null;
        if (typeNode.get() instanceof JCTree.JCClassDecl) {
            typeDecl = (JCTree.JCClassDecl) typeNode.get();
        }
        long modifiers = typeDecl == null ? 0L : typeDecl.mods.flags;
        boolean notAClass = (modifiers & 8704) != 0;
        if (typeDecl == null || notAClass) {
            errorNode.addError(name + " is only supported on a class or an enum.");
            return false;
        }
        return true;
    }

    public void generateExtraNoArgsConstructor(JavacNode typeNode, JavacNode source) {
        Boolean v;
        if (JavacHandlerUtil.isDirectDescendantOfObject(typeNode) && (v = (Boolean) typeNode.getAst().readConfiguration(ConfigurationKeys.NO_ARGS_CONSTRUCTOR_EXTRA_PRIVATE)) != null && v.booleanValue()) {
            generate(typeNode, AccessLevel.PRIVATE, List.nil(), List.nil(), true, null, SkipIfConstructorExists.NO, source, true);
        }
    }

    public void generateRequiredArgsConstructor(JavacNode typeNode, AccessLevel level, String staticName, SkipIfConstructorExists skipIfConstructorExists, JavacNode source) {
        generateConstructor(typeNode, level, List.nil(), findRequiredFields(typeNode), false, staticName, skipIfConstructorExists, source);
    }

    public void generateAllArgsConstructor(JavacNode typeNode, AccessLevel level, String staticName, SkipIfConstructorExists skipIfConstructorExists, JavacNode source) {
        generateConstructor(typeNode, level, List.nil(), findAllFields(typeNode), false, staticName, skipIfConstructorExists, source);
    }

    public void generateConstructor(JavacNode typeNode, AccessLevel level, List<JCTree.JCAnnotation> onConstructor, List<JavacNode> fields, boolean allToDefault, String staticName, SkipIfConstructorExists skipIfConstructorExists, JavacNode source) {
        generate(typeNode, level, onConstructor, fields, allToDefault, staticName, skipIfConstructorExists, source, false);
    }

    private void generate(JavacNode typeNode, AccessLevel level, List<JCTree.JCAnnotation> onConstructor, List<JavacNode> fields, boolean allToDefault, String staticName, SkipIfConstructorExists skipIfConstructorExists, JavacNode source, boolean noArgs) {
        boolean staticConstrRequired = (staticName == null || staticName.equals("")) ? false : true;
        if (skipIfConstructorExists == SkipIfConstructorExists.NO || JavacHandlerUtil.constructorExists(typeNode) == JavacHandlerUtil.MemberExistsResult.NOT_EXISTS) {
            if (skipIfConstructorExists != SkipIfConstructorExists.NO) {
                for (JavacNode child : typeNode.down()) {
                    if (child.getKind() == AST.Kind.ANNOTATION) {
                        boolean skipGeneration = JavacHandlerUtil.annotationTypeMatches((Class<? extends Annotation>) NoArgsConstructor.class, child) || JavacHandlerUtil.annotationTypeMatches((Class<? extends Annotation>) AllArgsConstructor.class, child) || JavacHandlerUtil.annotationTypeMatches((Class<? extends Annotation>) RequiredArgsConstructor.class, child);
                        if (!skipGeneration && skipIfConstructorExists == SkipIfConstructorExists.YES) {
                            skipGeneration = JavacHandlerUtil.annotationTypeMatches((Class<? extends Annotation>) Builder.class, child);
                        }
                        if (skipGeneration) {
                            if (staticConstrRequired) {
                                source.addWarning("Ignoring static constructor name: explicit @XxxArgsConstructor annotation present; its `staticName` parameter will be used.");
                                return;
                            }
                            return;
                        }
                    }
                }
            }
            if (noArgs && noArgsConstructorExists(typeNode)) {
                return;
            }
            JCTree.JCMethodDecl constr = createConstructor(staticConstrRequired ? AccessLevel.PRIVATE : level, onConstructor, typeNode, fields, allToDefault, source);
            ListBuffer<Type> argTypes = new ListBuffer<>();
            Iterator it = fields.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                JavacNode fieldNode = (JavacNode) it.next();
                Type mirror = JavacHandlerUtil.getMirrorForFieldType(fieldNode);
                if (mirror == null) {
                    argTypes = null;
                    break;
                }
                argTypes.append(mirror);
            }
            List<Type> argTypes_ = argTypes == null ? null : argTypes.toList();
            JavacHandlerUtil.injectMethod(typeNode, constr, argTypes_, Javac.createVoidType(typeNode.getSymbolTable(), Javac.CTC_VOID));
            if (staticConstrRequired) {
                Symbol.ClassSymbol sym = typeNode.get().sym;
                Type returnType = sym == null ? null : sym.type;
                JCTree.JCMethodDecl staticConstr = createStaticConstructor(staticName, level, typeNode, allToDefault ? List.nil() : fields, source.get());
                JavacHandlerUtil.injectMethod(typeNode, staticConstr, argTypes_, returnType);
            }
        }
    }

    private static boolean noArgsConstructorExists(JavacNode node) {
        JavacNode node2 = JavacHandlerUtil.upToTypeNode(node);
        if (node2 != null && (node2.get() instanceof JCTree.JCClassDecl)) {
            for (JCTree.JCMethodDecl jCMethodDecl : node2.get().defs) {
                if (jCMethodDecl instanceof JCTree.JCMethodDecl) {
                    JCTree.JCMethodDecl md = jCMethodDecl;
                    if (md.name.contentEquals("<init>") && md.params.size() == 0) {
                        return true;
                    }
                }
            }
        }
        for (JavacNode child : node2.down()) {
            if (JavacHandlerUtil.annotationTypeMatches((Class<? extends Annotation>) NoArgsConstructor.class, child)) {
                return true;
            }
            if (JavacHandlerUtil.annotationTypeMatches((Class<? extends Annotation>) RequiredArgsConstructor.class, child) && findRequiredFields(node2).isEmpty()) {
                return true;
            }
            if (JavacHandlerUtil.annotationTypeMatches((Class<? extends Annotation>) AllArgsConstructor.class, child) && findAllFields(node2).isEmpty()) {
                return true;
            }
        }
        return false;
    }

    public static void addConstructorProperties(JCTree.JCModifiers mods, JavacNode node, List<JavacNode> fields) {
        if (fields.isEmpty()) {
            return;
        }
        JavacTreeMaker maker = node.getTreeMaker();
        JCTree.JCExpression constructorPropertiesType = JavacHandlerUtil.chainDots(node, "java", "beans", "ConstructorProperties");
        ListBuffer<JCTree.JCExpression> fieldNames = new ListBuffer<>();
        for (JavacNode field : fields) {
            Name fieldName = JavacHandlerUtil.removePrefixFromField(field);
            fieldNames.append(maker.Literal(fieldName.toString()));
        }
        JCTree.JCAnnotation annotation = maker.Annotation(constructorPropertiesType, List.of(maker.NewArray(null, List.nil(), fieldNames.toList())));
        mods.annotations = mods.annotations.append(annotation);
    }

    public static JCTree.JCMethodDecl createConstructor(AccessLevel level, List<JCTree.JCAnnotation> onConstructor, JavacNode typeNode, List<JavacNode> fieldsToParam, boolean forceDefaults, JavacNode source) {
        boolean addConstructorProperties;
        JCTree.JCStatement nullCheck;
        JavacTreeMaker maker = typeNode.getTreeMaker();
        boolean isEnum = (typeNode.get().mods.flags & Http2Stream.EMIT_BUFFER_SIZE) != 0;
        if (isEnum) {
            level = AccessLevel.PRIVATE;
        }
        List<JavacNode> fieldsToDefault = fieldsNeedingBuilderDefaults(typeNode, fieldsToParam);
        List<JavacNode> fieldsToExplicit = forceDefaults ? fieldsNeedingExplicitDefaults(typeNode, fieldsToParam) : List.nil();
        if (fieldsToParam.isEmpty()) {
            addConstructorProperties = false;
        } else {
            Boolean v = (Boolean) typeNode.getAst().readConfiguration(ConfigurationKeys.ANY_CONSTRUCTOR_ADD_CONSTRUCTOR_PROPERTIES);
            addConstructorProperties = v != null ? v.booleanValue() : Boolean.FALSE.equals(typeNode.getAst().readConfiguration(ConfigurationKeys.ANY_CONSTRUCTOR_SUPPRESS_CONSTRUCTOR_PROPERTIES));
        }
        ListBuffer<JCTree.JCStatement> nullChecks = new ListBuffer<>();
        ListBuffer<JCTree.JCStatement> assigns = new ListBuffer<>();
        ListBuffer<JCTree.JCVariableDecl> params = new ListBuffer<>();
        for (JavacNode fieldNode : fieldsToParam) {
            JCTree.JCVariableDecl field = fieldNode.get();
            Name fieldName = JavacHandlerUtil.removePrefixFromField(fieldNode);
            Name rawName = field.name;
            List<JCTree.JCAnnotation> copyableAnnotations = JavacHandlerUtil.findCopyableAnnotations(fieldNode);
            long flags = JavacHandlerUtil.addFinalIfNeeded(8589934592L, typeNode.getContext());
            JCTree.JCVariableDecl param = maker.VarDef(maker.Modifiers(flags, copyableAnnotations), fieldName, field.vartype, null);
            params.append(param);
            if (JavacHandlerUtil.hasNonNullAnnotations(fieldNode) && (nullCheck = JavacHandlerUtil.generateNullCheck(maker, fieldNode, param, source)) != null) {
                nullChecks.append(nullCheck);
            }
            JCTree.JCFieldAccess thisX = maker.Select(maker.Ident(fieldNode.toName("this")), rawName);
            assigns.append(maker.Exec(maker.Assign(thisX, maker.Ident(fieldName))));
        }
        for (JavacNode fieldNode2 : fieldsToExplicit) {
            JCTree.JCVariableDecl field2 = fieldNode2.get();
            Name rawName2 = field2.name;
            JCTree.JCFieldAccess thisX2 = maker.Select(maker.Ident(fieldNode2.toName("this")), rawName2);
            assigns.append(maker.Exec(maker.Assign(thisX2, getDefaultExpr(maker, field2.vartype))));
        }
        for (JavacNode fieldNode3 : fieldsToDefault) {
            Name rawName3 = fieldNode3.get().name;
            Name nameOfDefaultProvider = typeNode.toName("$default$" + JavacHandlerUtil.removePrefixFromField(fieldNode3));
            JCTree.JCFieldAccess thisX3 = maker.Select(maker.Ident(fieldNode3.toName("this")), rawName3);
            assigns.append(maker.Exec(maker.Assign(thisX3, maker.Apply(List.nil(), maker.Select(maker.Ident(typeNode.get().name), nameOfDefaultProvider), List.nil()))));
        }
        JCTree.JCModifiers mods = maker.Modifiers(JavacHandlerUtil.toJavacModifier(level), List.nil());
        if (addConstructorProperties && !isLocalType(typeNode) && LombokOptionsFactory.getDelombokOptions(typeNode.getContext()).getFormatPreferences().generateConstructorProperties()) {
            addConstructorProperties(mods, typeNode, fieldsToParam);
        }
        if (onConstructor != null) {
            mods.annotations = mods.annotations.appendList(JavacHandlerUtil.copyAnnotations(onConstructor));
        }
        return JavacHandlerUtil.recursiveSetGeneratedBy(maker.MethodDef(mods, typeNode.toName("<init>"), null, List.nil(), params.toList(), List.nil(), maker.Block(0L, nullChecks.appendList(assigns).toList()), null), source.get(), typeNode.getContext());
    }

    private static List<JavacNode> fieldsNeedingBuilderDefaults(JavacNode typeNode, List<JavacNode> fieldsToParam) {
        ListBuffer<JavacNode> out = new ListBuffer<>();
        for (JavacNode node : typeNode.down()) {
            if (node.getKind() == AST.Kind.FIELD) {
                JCTree.JCVariableDecl varDecl = node.get();
                if ((varDecl.mods.flags & 8) == 0) {
                    Iterator it = fieldsToParam.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            JavacNode ftp = (JavacNode) it.next();
                            if (node == ftp) {
                                break;
                            }
                        } else if (JavacHandlerUtil.hasAnnotation((Class<? extends Annotation>) Builder.Default.class, node)) {
                            out.append(node);
                        }
                    }
                }
            }
        }
        return out.toList();
    }

    private static List<JavacNode> fieldsNeedingExplicitDefaults(JavacNode typeNode, List<JavacNode> fieldsToParam) {
        ListBuffer<JavacNode> out = new ListBuffer<>();
        for (JavacNode node : typeNode.down()) {
            if (node.getKind() == AST.Kind.FIELD) {
                JCTree.JCVariableDecl varDecl = node.get();
                if (varDecl.init == null && (varDecl.mods.flags & 16) != 0 && (varDecl.mods.flags & 8) == 0) {
                    Iterator it = fieldsToParam.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            JavacNode ftp = (JavacNode) it.next();
                            if (node == ftp) {
                                break;
                            }
                        } else if (!JavacHandlerUtil.hasAnnotation((Class<? extends Annotation>) Builder.Default.class, node)) {
                            out.append(node);
                        }
                    }
                }
            }
        }
        return out.toList();
    }

    /* JADX INFO: renamed from: lombok.javac.handlers.HandleConstructor$1, reason: invalid class name */
    /* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/handlers/HandleConstructor$1.SCL.lombok */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$javax$lang$model$type$TypeKind = new int[TypeKind.values().length];

        static {
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.SHORT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.INT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.LONG.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$javax$lang$model$type$TypeKind[TypeKind.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    private static JCTree.JCExpression getDefaultExpr(JavacTreeMaker maker, JCTree.JCExpression type) {
        if (type instanceof JCTree.JCPrimitiveTypeTree) {
            switch (AnonymousClass1.$SwitchMap$javax$lang$model$type$TypeKind[((JCTree.JCPrimitiveTypeTree) type).getPrimitiveTypeKind().ordinal()]) {
                case 1:
                    return maker.Literal(Javac.CTC_BOOLEAN, 0);
                case 2:
                    return maker.Literal(Javac.CTC_CHAR, 0);
                case 3:
                case 4:
                case 5:
                default:
                    return maker.Literal(Javac.CTC_INT, 0);
                case 6:
                    return maker.Literal(Javac.CTC_LONG, 0L);
                case 7:
                    return maker.Literal(Javac.CTC_FLOAT, Float.valueOf(0.0f));
                case 8:
                    return maker.Literal(Javac.CTC_DOUBLE, Double.valueOf(0.0d));
            }
        }
        return maker.Literal(Javac.CTC_BOT, null);
    }

    public static boolean isLocalType(JavacNode type) {
        AST.Kind kind = type.up().getKind();
        if (kind == AST.Kind.COMPILATION_UNIT) {
            return false;
        }
        if (kind == AST.Kind.TYPE) {
            return isLocalType(type.up());
        }
        return true;
    }

    public JCTree.JCMethodDecl createStaticConstructor(String name, AccessLevel level, JavacNode typeNode, List<JavacNode> fields, JCTree source) {
        JCTree.JCTypeApply jCTypeApplyIdent;
        JCTree.JCTypeApply jCTypeApplyIdent2;
        JavacTreeMaker maker = typeNode.getTreeMaker();
        JCTree.JCClassDecl type = typeNode.get();
        JCTree.JCModifiers mods = maker.Modifiers(8 | JavacHandlerUtil.toJavacModifier(level));
        ListBuffer<JCTree.JCTypeParameter> typeParams = new ListBuffer<>();
        ListBuffer<JCTree.JCVariableDecl> params = new ListBuffer<>();
        ListBuffer<JCTree.JCExpression> typeArgs1 = new ListBuffer<>();
        ListBuffer<JCTree.JCExpression> typeArgs2 = new ListBuffer<>();
        ListBuffer<JCTree.JCExpression> args = new ListBuffer<>();
        if (!type.typarams.isEmpty()) {
            for (JCTree.JCTypeParameter param : type.typarams) {
                typeArgs1.append(maker.Ident(param.name));
                typeArgs2.append(maker.Ident(param.name));
                typeParams.append(maker.TypeParameter(param.name, param.bounds));
            }
            jCTypeApplyIdent = maker.TypeApply(maker.Ident(type.name), typeArgs1.toList());
            jCTypeApplyIdent2 = maker.TypeApply(maker.Ident(type.name), typeArgs2.toList());
        } else {
            jCTypeApplyIdent = maker.Ident(type.name);
            jCTypeApplyIdent2 = maker.Ident(type.name);
        }
        for (JavacNode fieldNode : fields) {
            JCTree.JCVariableDecl field = fieldNode.get();
            Name fieldName = JavacHandlerUtil.removePrefixFromField(fieldNode);
            JCTree.JCExpression pType = JavacHandlerUtil.cloneType(maker, field.vartype, source, typeNode.getContext());
            List<JCTree.JCAnnotation> copyableAnnotations = JavacHandlerUtil.findCopyableAnnotations(fieldNode);
            long flags = JavacHandlerUtil.addFinalIfNeeded(8589934592L, typeNode.getContext());
            params.append(maker.VarDef(maker.Modifiers(flags, copyableAnnotations), fieldName, pType, null));
            args.append(maker.Ident(fieldName));
        }
        JCTree.JCReturn returnStatement = maker.Return(maker.NewClass(null, List.nil(), jCTypeApplyIdent2, args.toList(), null));
        JCTree.JCBlock body = maker.Block(0L, List.of(returnStatement));
        return JavacHandlerUtil.recursiveSetGeneratedBy(maker.MethodDef(mods, typeNode.toName(name), jCTypeApplyIdent, typeParams.toList(), params.toList(), List.nil(), body, null), source, typeNode.getContext());
    }
}
