package lombok.javac.handlers;

import com.sun.tools.javac.code.BoundKind;
import com.sun.tools.javac.tree.JCTree;
import com.sun.tools.javac.util.ListBuffer;
import com.sun.tools.javac.util.Name;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.ConfigurationKeys;
import lombok.Singular;
import lombok.Value;
import lombok.core.AST;
import lombok.core.AnnotationValues;
import lombok.core.HandlerPriority;
import lombok.core.handlers.HandlerUtil;
import lombok.experimental.NonFinal;
import lombok.experimental.SuperBuilder;
import lombok.javac.Javac;
import lombok.javac.JavacAnnotationHandler;
import lombok.javac.JavacNode;
import lombok.javac.JavacTreeMaker;
import lombok.javac.handlers.HandleBuilder;
import lombok.javac.handlers.JavacHandlerUtil;
import lombok.javac.handlers.JavacSingularsRecipes;

/* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/handlers/HandleSuperBuilder.SCL.lombok */
@HandlerPriority(-1024)
public class HandleSuperBuilder extends JavacAnnotationHandler<SuperBuilder> {
    private static final String SELF_METHOD = "self";
    private static final String TO_BUILDER_METHOD_NAME = "toBuilder";
    private static final String FILL_VALUES_METHOD_NAME = "$fillValuesFrom";
    private static final String STATIC_FILL_VALUES_METHOD_NAME = "$fillValuesFromInstanceIntoBuilder";
    private static final String INSTANCE_VARIABLE_NAME = "instance";
    private static final String BUILDER_VARIABLE_NAME = "b";

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0487, code lost:
    
        if (r0.getModifiers().getFlags().contains(javax.lang.model.element.Modifier.ABSTRACT) != false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x048a, code lost:
    
        r13.addError("Existing Builder must be an abstract static inner class.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0490, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0491, code lost:
    
        lombok.javac.handlers.JavacHandlerUtil.sanityCheckForMethodGeneratingAnnotationsOnBuilderClass(r34, r13);
        r0 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x04a7, code lost:
    
        if (r0.hasNext() == false) goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x04aa, code lost:
    
        r0 = r0.next();
        r0 = r0.singularData;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x04bf, code lost:
    
        if (r0 != null) goto L223;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x04c5, code lost:
    
        r0 = r0.getSingularizer();
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x04ce, code lost:
    
        if (r0 != null) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x04dd, code lost:
    
        if (r0.checkForAlreadyExistingNodesAndGenerateError(r34, r0) == false) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x04e0, code lost:
    
        r0.singularData = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x04e9, code lost:
    
        generateBuilderFields(r34, r0, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x04f4, code lost:
    
        if (r23 == false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x04f7, code lost:
    
        r0 = r34.getTreeMaker();
        r0 = r0.VarDef(r0.Modifiers(2), r34.toName("$lombokUnclean"), r0.TypeIdent(lombok.javac.Javac.CTC_BOOLEAN), null);
        lombok.javac.handlers.JavacHandlerUtil.recursiveSetGeneratedBy(r0, r12, r13.getContext());
        lombok.javac.handlers.JavacHandlerUtil.injectFieldAndMarkGenerated(r34, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0532, code lost:
    
        if (r0 == false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x053a, code lost:
    
        if (r30 == null) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x053d, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0541, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0542, code lost:
    
        r0 = generateFillValuesMethod(r0, r2, r0, r0, r0);
        lombok.javac.handlers.JavacHandlerUtil.recursiveSetGeneratedBy(r0, r12, r13.getContext());
        lombok.javac.handlers.JavacHandlerUtil.injectMethod(r34, r0);
        r0 = generateStaticFillValuesMethod(r0, r0, r0, r0);
        lombok.javac.handlers.JavacHandlerUtil.recursiveSetGeneratedBy(r0, r12, r13.getContext());
        lombok.javac.handlers.JavacHandlerUtil.injectMethod(r34, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0584, code lost:
    
        if (r30 == null) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0587, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x058b, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x058c, code lost:
    
        r0 = generateAbstractSelfMethod(r0, r2, r0);
        lombok.javac.handlers.JavacHandlerUtil.recursiveSetGeneratedBy(r0, r12, r13.getContext());
        lombok.javac.handlers.JavacHandlerUtil.injectMethod(r34, r0);
        r2 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x05ac, code lost:
    
        if (r30 == null) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x05af, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x05b3, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x05b4, code lost:
    
        r0 = generateAbstractBuildMethod(r0, r2, r3, r0);
        lombok.javac.handlers.JavacHandlerUtil.recursiveSetGeneratedBy(r0, r12, r13.getContext());
        lombok.javac.handlers.JavacHandlerUtil.injectMethod(r34, r0);
        r0 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x05dd, code lost:
    
        if (r0.hasNext() == false) goto L219;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x05e0, code lost:
    
        generateSetterMethodsForBuilder(r34, r0.next(), r13, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x05fa, code lost:
    
        r0 = new java.util.ArrayList<>();
        r0 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0613, code lost:
    
        if (r0.hasNext() == false) goto L220;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0616, code lost:
    
        r0 = r0.next().createdFields.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0635, code lost:
    
        if (r0.hasNext() == false) goto L221;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0638, code lost:
    
        r0 = r0.next();
        r0.add(new lombok.core.handlers.InclusionExclusionUtils.Included<>(r0, null, true));
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x065d, code lost:
    
        r0 = r34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0664, code lost:
    
        if (r30 == null) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0667, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x066b, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x066c, code lost:
    
        r0 = lombok.javac.handlers.HandleToString.createToString(r0, r0, true, r3, lombok.core.handlers.HandlerUtil.FieldAccess.ALWAYS_FIELD, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0677, code lost:
    
        if (r0 == null) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x067a, code lost:
    
        lombok.javac.handlers.JavacHandlerUtil.injectMethod(r34, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0683, code lost:
    
        if (r23 == false) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0686, code lost:
    
        r0 = generateCleanMethod(r0, r34, r12);
        lombok.javac.handlers.JavacHandlerUtil.recursiveSetGeneratedBy(r0, r12, r13.getContext());
        lombok.javac.handlers.JavacHandlerUtil.injectMethod(r34, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x06b1, code lost:
    
        if ((r0.mods.flags & okhttp3.internal.ws.RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) == 0) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x06b4, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x06b8, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x06b9, code lost:
    
        r39 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x06bd, code lost:
    
        if (r39 != false) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x06c0, code lost:
    
        r40 = findInnerClass(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x06cc, code lost:
    
        if (r40 != null) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x06cf, code lost:
    
        r40 = generateBuilderImplClass(r13, r0, r0, r0, r0);
        lombok.javac.handlers.JavacHandlerUtil.recursiveSetGeneratedBy(r40.get(), r12, r13.getContext());
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x06f2, code lost:
    
        r0 = r40.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x070c, code lost:
    
        if (r0.getModifiers().getFlags().contains(javax.lang.model.element.Modifier.STATIC) == false) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x071f, code lost:
    
        if (r0.getModifiers().getFlags().contains(javax.lang.model.element.Modifier.ABSTRACT) == false) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0722, code lost:
    
        r13.addError("Existing BuilderImpl must be a non-abstract static inner class.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0728, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0729, code lost:
    
        lombok.javac.handlers.JavacHandlerUtil.sanityCheckForMethodGeneratingAnnotationsOnBuilderClass(r40, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x072f, code lost:
    
        r0 = lombok.javac.handlers.HandleConstructor.createConstructor(lombok.AccessLevel.PRIVATE, com.sun.tools.javac.util.List.nil(), r40, com.sun.tools.javac.util.List.nil(), false, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0743, code lost:
    
        if (r0 == null) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0746, code lost:
    
        lombok.javac.handlers.JavacHandlerUtil.injectMethod(r40, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x074d, code lost:
    
        r0 = generateSelfMethod(r40, r0);
        lombok.javac.handlers.JavacHandlerUtil.recursiveSetGeneratedBy(r0, r12, r13.getContext());
        lombok.javac.handlers.JavacHandlerUtil.injectMethod(r40, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0774, code lost:
    
        if (lombok.javac.handlers.JavacHandlerUtil.methodExists(r16, r40, -1) != lombok.javac.handlers.JavacHandlerUtil.MemberExistsResult.NOT_EXISTS) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0777, code lost:
    
        r0 = generateBuildMethod(r16, r0, r40, r0);
        lombok.javac.handlers.JavacHandlerUtil.recursiveSetGeneratedBy(r0, r12, r13.getContext());
        lombok.javac.handlers.JavacHandlerUtil.injectMethod(r40, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x07a3, code lost:
    
        if (r30 == null) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x07a6, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x07aa, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x07ab, code lost:
    
        generateBuilderBasedConstructor(r0, r0, r0, r13, r0, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x07b0, code lost:
    
        if (r39 == false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x07b3, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x07bf, code lost:
    
        if (lombok.javac.handlers.JavacHandlerUtil.methodExists(r15, r0, -1) != lombok.javac.handlers.JavacHandlerUtil.MemberExistsResult.NOT_EXISTS) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x07c2, code lost:
    
        r0 = generateBuilderMethod(r15, r0, r0, r13, r0, r0);
        lombok.javac.handlers.JavacHandlerUtil.recursiveSetGeneratedBy(r0, r12, r13.getContext());
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x07e0, code lost:
    
        if (r0 == null) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x07e3, code lost:
    
        lombok.javac.handlers.JavacHandlerUtil.injectMethod(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x07ec, code lost:
    
        if (r0 == false) goto L231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x07fe, code lost:
    
        switch(lombok.javac.handlers.HandleSuperBuilder.AnonymousClass3.$SwitchMap$lombok$javac$handlers$JavacHandlerUtil$MemberExistsResult[lombok.javac.handlers.JavacHandlerUtil.methodExists(lombok.javac.handlers.HandleSuperBuilder.TO_BUILDER_METHOD_NAME, r0, 0).ordinal()]) {
            case 1: goto L195;
            case 2: goto L197;
            default: goto L232;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x0818, code lost:
    
        r13.addWarning("Not generating toBuilder() as it already exists.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x081e, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x081f, code lost:
    
        r0 = generateToBuilderMethod(r0, r0, r13, r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x0830, code lost:
    
        if (r0 == null) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x0833, code lost:
    
        lombok.javac.handlers.JavacHandlerUtil.recursiveSetGeneratedBy(r0, r12, r13.getContext());
        lombok.javac.handlers.JavacHandlerUtil.injectMethod(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x0845, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0422, code lost:
    
        r34 = findInnerClass(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x042e, code lost:
    
        if (r34 != null) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0431, code lost:
    
        r34 = generateBuilderAbstractClass(r13, r0, r0, r30, r0, r22, r0, r0);
        lombok.javac.handlers.JavacHandlerUtil.recursiveSetGeneratedBy(r34.get(), r12, r13.getContext());
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x045a, code lost:
    
        r0 = r34.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0474, code lost:
    
        if (r0.getModifiers().getFlags().contains(javax.lang.model.element.Modifier.STATIC) == false) goto L102;
     */
    @Override // lombok.javac.JavacAnnotationHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void handle(AnnotationValues<SuperBuilder> annotation, JCTree.JCAnnotation ast, JavacNode annotationNode) {
        HandlerUtil.handleExperimentalFlagUsage(annotationNode, ConfigurationKeys.SUPERBUILDER_FLAG_USAGE, "@SuperBuilder");
        SuperBuilder superbuilderAnnotation = (SuperBuilder) annotation.getInstance();
        JavacHandlerUtil.deleteAnnotationIfNeccessary(annotationNode, (Class<? extends Annotation>) SuperBuilder.class);
        String builderMethodName = superbuilderAnnotation.builderMethodName();
        String buildMethodName = superbuilderAnnotation.buildMethodName();
        if (builderMethodName == null) {
            builderMethodName = "builder";
        }
        if (buildMethodName == null) {
            buildMethodName = "build";
        }
        if (!HandlerUtil.checkName("builderMethodName", builderMethodName, annotationNode) || !HandlerUtil.checkName("buildMethodName", buildMethodName, annotationNode)) {
            return;
        }
        boolean toBuilder = superbuilderAnnotation.toBuilder();
        JavacNode tdParent = annotationNode.up();
        List<HandleBuilder.BuilderFieldData> builderFields = new ArrayList<>();
        com.sun.tools.javac.util.List.nil();
        com.sun.tools.javac.util.List.nil();
        com.sun.tools.javac.util.List<JCTree.JCExpression> superclassTypeParams = com.sun.tools.javac.util.List.nil();
        boolean addCleaning = false;
        if (!(tdParent.get() instanceof JCTree.JCClassDecl)) {
            annotationNode.addError("@SuperBuilder is only supported on types.");
            return;
        }
        JCTree.JCClassDecl td = tdParent.get();
        ListBuffer<JavacNode> allFields = new ListBuffer<>();
        boolean valuePresent = JavacHandlerUtil.hasAnnotation((Class<? extends Annotation>) Value.class, tdParent) || JavacHandlerUtil.hasAnnotation("lombok.experimental.Value", tdParent);
        for (JavacNode fieldNode : HandleConstructor.findAllFields(tdParent, true)) {
            JCTree.JCVariableDecl fd = fieldNode.get();
            JavacNode isDefault = JavacHandlerUtil.findAnnotation(Builder.Default.class, fieldNode, true);
            boolean isFinal = (fd.mods.flags & 16) != 0 || (valuePresent && !JavacHandlerUtil.hasAnnotation((Class<? extends Annotation>) NonFinal.class, fieldNode));
            HandleBuilder.BuilderFieldData bfd = new HandleBuilder.BuilderFieldData();
            bfd.rawName = fd.name;
            bfd.name = JavacHandlerUtil.removePrefixFromField(fieldNode);
            bfd.annotations = JavacHandlerUtil.findCopyableAnnotations(fieldNode);
            bfd.type = fd.vartype;
            bfd.singularData = getSingularData(fieldNode);
            bfd.originalFieldNode = fieldNode;
            if (bfd.singularData != null && isDefault != null) {
                isDefault.addError("@Builder.Default and @Singular cannot be mixed.");
                isDefault = null;
            }
            if (fd.init == null && isDefault != null) {
                isDefault.addWarning("@Builder.Default requires an initializing expression (' = something;').");
                isDefault = null;
            }
            if (fd.init != null && isDefault == null) {
                if (!isFinal) {
                    fieldNode.addWarning("@SuperBuilder will ignore the initializing expression entirely. If you want the initializing expression to serve as default, add @Builder.Default. If it is not supposed to be settable during building, make the field final.");
                }
            }
            if (isDefault != null) {
                bfd.nameOfDefaultProvider = tdParent.toName("$default$" + bfd.name);
                bfd.nameOfSetFlag = tdParent.toName(bfd.name + "$set");
                bfd.nameOfSetFlag = tdParent.toName(bfd.name + "$set");
                JCTree.JCMethodDecl md = HandleBuilder.generateDefaultProvider(bfd.nameOfDefaultProvider, fieldNode, td.typarams);
                JavacHandlerUtil.recursiveSetGeneratedBy(md, ast, annotationNode.getContext());
                if (md != null) {
                    JavacHandlerUtil.injectMethod(tdParent, md);
                }
            }
            addObtainVia(bfd, fieldNode);
            builderFields.add(bfd);
            allFields.append(fieldNode);
        }
        String builderClassName = td.name.toString() + "Builder";
        String builderImplClassName = builderClassName + "Impl";
        JCTree extendsClause = Javac.getExtendsClause(td);
        JCTree.JCFieldAccess jCFieldAccessChainDots = null;
        if (extendsClause instanceof JCTree.JCTypeApply) {
            superclassTypeParams = ((JCTree.JCTypeApply) extendsClause).getTypeArguments();
            extendsClause = ((JCTree.JCTypeApply) extendsClause).getType();
        }
        if (extendsClause instanceof JCTree.JCFieldAccess) {
            Name superclassClassName = ((JCTree.JCFieldAccess) extendsClause).getIdentifier();
            String superclassBuilderClassName = superclassClassName + "Builder";
            jCFieldAccessChainDots = tdParent.getTreeMaker().Select((JCTree.JCFieldAccess) extendsClause, tdParent.toName(superclassBuilderClassName));
        } else if (extendsClause != null) {
            String superclassBuilderClassName2 = extendsClause.toString() + "Builder";
            jCFieldAccessChainDots = JavacHandlerUtil.chainDots(tdParent, extendsClause.toString(), superclassBuilderClassName2, new String[0]);
        }
        com.sun.tools.javac.util.List<JCTree.JCTypeParameter> typeParams = td.typarams;
        List<String> typeParamStrings = new ArrayList<>();
        for (JCTree.JCTypeParameter typeParam : typeParams) {
            typeParamStrings.add(typeParam.getName().toString());
        }
        String classGenericName = generateNonclashingNameFor("C", typeParamStrings);
        String builderGenericName = generateNonclashingNameFor("B", typeParamStrings);
        com.sun.tools.javac.util.List<JCTree.JCExpression> thrownExceptions = com.sun.tools.javac.util.List.nil();
        Iterator<HandleBuilder.BuilderFieldData> it = builderFields.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            HandleBuilder.BuilderFieldData bfd2 = it.next();
            if (bfd2.singularData != null && bfd2.singularData.getSingularizer() != null && bfd2.singularData.getSingularizer().requiresCleaning()) {
                addCleaning = true;
                break;
            }
            if (bfd2.obtainVia != null) {
                if (bfd2.obtainVia.field().isEmpty() == bfd2.obtainVia.method().isEmpty()) {
                    bfd2.obtainViaNode.addError("The syntax is either @ObtainVia(field = \"fieldName\") or @ObtainVia(method = \"methodName\").");
                    return;
                } else if (bfd2.obtainVia.method().isEmpty() && bfd2.obtainVia.isStatic()) {
                    bfd2.obtainViaNode.addError("@ObtainVia(isStatic = true) is not valid unless 'method' has been set.");
                    return;
                }
            }
        }
    }

    /* JADX INFO: renamed from: lombok.javac.handlers.HandleSuperBuilder$3, reason: invalid class name */
    /* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/handlers/HandleSuperBuilder$3.SCL.lombok */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$lombok$javac$handlers$JavacHandlerUtil$MemberExistsResult = new int[JavacHandlerUtil.MemberExistsResult.values().length];

        static {
            try {
                $SwitchMap$lombok$javac$handlers$JavacHandlerUtil$MemberExistsResult[JavacHandlerUtil.MemberExistsResult.EXISTS_BY_USER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$lombok$javac$handlers$JavacHandlerUtil$MemberExistsResult[JavacHandlerUtil.MemberExistsResult.NOT_EXISTS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    private JavacNode generateBuilderAbstractClass(JavacNode source, JavacNode tdParent, String builderClass, JCTree.JCExpression superclassBuilderClassExpression, com.sun.tools.javac.util.List<JCTree.JCTypeParameter> typeParams, com.sun.tools.javac.util.List<JCTree.JCExpression> superclassTypeParams, String classGenericName, String builderGenericName) {
        JavacTreeMaker maker = tdParent.getTreeMaker();
        JCTree.JCModifiers mods = maker.Modifiers(1033L);
        ListBuffer<JCTree.JCTypeParameter> allTypeParams = new ListBuffer<>();
        allTypeParams.addAll(JavacHandlerUtil.copyTypeParams(source, typeParams));
        JCTree.JCExpression annotatedClass = maker.Ident(tdParent.toName(tdParent.getName()));
        if (typeParams.nonEmpty()) {
            annotatedClass = maker.TypeApply(annotatedClass, getTypeParamExpressions(typeParams, maker).toList());
        }
        allTypeParams.add(maker.TypeParameter(tdParent.toName(classGenericName), com.sun.tools.javac.util.List.of(annotatedClass)));
        Name builderClassName = tdParent.toName(builderClass);
        ListBuffer<JCTree.JCExpression> typeParamsForBuilder = getTypeParamExpressions(typeParams, maker);
        typeParamsForBuilder.add(maker.Ident(tdParent.toName(classGenericName)));
        typeParamsForBuilder.add(maker.Ident(tdParent.toName(builderGenericName)));
        JCTree.JCTypeApply typeApply = maker.TypeApply(maker.Ident(builderClassName), typeParamsForBuilder.toList());
        allTypeParams.add(maker.TypeParameter(tdParent.toName(builderGenericName), com.sun.tools.javac.util.List.of(typeApply)));
        JCTree.JCTypeApply jCTypeApplyTypeApply = null;
        if (superclassBuilderClassExpression != null) {
            ListBuffer<JCTree.JCExpression> typeParamsForBuilder2 = getTypeParamExpressions(superclassTypeParams, maker);
            typeParamsForBuilder2.add(maker.Ident(tdParent.toName(classGenericName)));
            typeParamsForBuilder2.add(maker.Ident(tdParent.toName(builderGenericName)));
            jCTypeApplyTypeApply = maker.TypeApply(superclassBuilderClassExpression, typeParamsForBuilder2.toList());
        }
        JCTree.JCClassDecl builder = maker.ClassDef(mods, builderClassName, allTypeParams.toList(), jCTypeApplyTypeApply, com.sun.tools.javac.util.List.nil(), com.sun.tools.javac.util.List.nil());
        return JavacHandlerUtil.injectType(tdParent, builder);
    }

    private JavacNode generateBuilderImplClass(JavacNode source, JavacNode tdParent, String builderImplClass, String builderAbstractClass, com.sun.tools.javac.util.List<JCTree.JCTypeParameter> typeParams) {
        JavacTreeMaker maker = tdParent.getTreeMaker();
        JCTree.JCModifiers mods = maker.Modifiers(26L);
        JCTree.JCIdent jCIdentIdent = maker.Ident(tdParent.toName(builderAbstractClass));
        ListBuffer<JCTree.JCTypeParameter> allTypeParams = new ListBuffer<>();
        allTypeParams.addAll(JavacHandlerUtil.copyTypeParams(source, typeParams));
        JCTree.JCExpression annotatedClass = maker.Ident(tdParent.toName(tdParent.getName()));
        if (typeParams.nonEmpty()) {
            annotatedClass = maker.TypeApply(annotatedClass, getTypeParamExpressions(typeParams, maker).toList());
        }
        JCTree.JCExpression builderImplClassExpression = maker.Ident(tdParent.toName(builderImplClass));
        if (typeParams.nonEmpty()) {
            builderImplClassExpression = maker.TypeApply(builderImplClassExpression, getTypeParamExpressions(typeParams, maker).toList());
        }
        ListBuffer<JCTree.JCExpression> typeParamsForBuilder = getTypeParamExpressions(typeParams, maker);
        typeParamsForBuilder.add(annotatedClass);
        typeParamsForBuilder.add(builderImplClassExpression);
        JCTree.JCClassDecl builder = maker.ClassDef(mods, tdParent.toName(builderImplClass), JavacHandlerUtil.copyTypeParams(source, typeParams), maker.TypeApply(jCIdentIdent, typeParamsForBuilder.toList()), com.sun.tools.javac.util.List.nil(), com.sun.tools.javac.util.List.nil());
        return JavacHandlerUtil.injectType(tdParent, builder);
    }

    private void generateBuilderBasedConstructor(JavacNode typeNode, com.sun.tools.javac.util.List<JCTree.JCTypeParameter> typeParams, List<HandleBuilder.BuilderFieldData> builderFields, JavacNode source, String builderClassName, boolean callBuilderBasedSuperConstructor) {
        JCTree.JCIdent jCIdentSelect;
        JCTree.JCStatement nullCheck;
        JavacTreeMaker maker = typeNode.getTreeMaker();
        AccessLevel level = AccessLevel.PROTECTED;
        ListBuffer<JCTree.JCStatement> statements = new ListBuffer<>();
        Name builderVariableName = typeNode.toName(BUILDER_VARIABLE_NAME);
        for (HandleBuilder.BuilderFieldData bfd : builderFields) {
            if (bfd.singularData != null && bfd.singularData.getSingularizer() != null) {
                bfd.singularData.getSingularizer().appendBuildCode(bfd.singularData, bfd.originalFieldNode, bfd.type, statements, bfd.name, BUILDER_VARIABLE_NAME);
                jCIdentSelect = maker.Ident(bfd.singularData.getPluralName());
            } else {
                jCIdentSelect = maker.Select(maker.Ident(builderVariableName), bfd.name);
            }
            JCTree.JCFieldAccess fieldInThis = maker.Select(maker.Ident(typeNode.toName("this")), bfd.rawName);
            JCTree.JCExpressionStatement jCExpressionStatementExec = maker.Exec(maker.Assign(fieldInThis, jCIdentSelect));
            if (bfd.nameOfSetFlag != null) {
                JCTree.JCFieldAccess setField = maker.Select(maker.Ident(builderVariableName), bfd.nameOfSetFlag);
                JCTree.JCFieldAccess fieldInThis2 = maker.Select(maker.Ident(typeNode.toName("this")), bfd.rawName);
                JCTree.JCAssign assignDefault = maker.Assign(fieldInThis2, maker.Apply(JavacHandlerUtil.typeParameterNames(maker, typeNode.get().typarams), maker.Select(maker.Ident(typeNode.get().name), bfd.nameOfDefaultProvider), com.sun.tools.javac.util.List.nil()));
                statements.append(maker.If(setField, jCExpressionStatementExec, maker.Exec(assignDefault)));
            } else {
                statements.append(jCExpressionStatementExec);
            }
            if (JavacHandlerUtil.hasNonNullAnnotations(bfd.originalFieldNode) && (nullCheck = JavacHandlerUtil.generateNullCheck(maker, bfd.originalFieldNode, source)) != null) {
                statements.append(nullCheck);
            }
        }
        JCTree.JCModifiers mods = maker.Modifiers(JavacHandlerUtil.toJavacModifier(level), com.sun.tools.javac.util.List.nil());
        ListBuffer<JCTree.JCVariableDecl> params = new ListBuffer<>();
        long flags = JavacHandlerUtil.addFinalIfNeeded(8589934592L, typeNode.getContext());
        Name builderClassname = typeNode.toName(builderClassName);
        ListBuffer<JCTree.JCExpression> typeParamsForBuilderParameter = getTypeParamExpressions(typeParams, maker);
        JCTree.JCWildcard wildcard = maker.Wildcard(maker.TypeBoundKind(BoundKind.UNBOUND), null);
        typeParamsForBuilderParameter.add(wildcard);
        JCTree.JCWildcard wildcard2 = maker.Wildcard(maker.TypeBoundKind(BoundKind.UNBOUND), null);
        typeParamsForBuilderParameter.add(wildcard2);
        JCTree.JCTypeApply paramType = maker.TypeApply(maker.Ident(builderClassname), typeParamsForBuilderParameter.toList());
        JCTree.JCVariableDecl param = maker.VarDef(maker.Modifiers(flags), builderVariableName, paramType, null);
        params.append(param);
        if (callBuilderBasedSuperConstructor) {
            JCTree.JCMethodInvocation callToSuperConstructor = maker.Apply(com.sun.tools.javac.util.List.nil(), maker.Ident(typeNode.toName("super")), com.sun.tools.javac.util.List.of(maker.Ident(builderVariableName)));
            statements.prepend(maker.Exec(callToSuperConstructor));
        }
        JCTree.JCMethodDecl constr = JavacHandlerUtil.recursiveSetGeneratedBy(maker.MethodDef(mods, typeNode.toName("<init>"), null, com.sun.tools.javac.util.List.nil(), params.toList(), com.sun.tools.javac.util.List.nil(), maker.Block(0L, statements.toList()), null), source.get(), typeNode.getContext());
        JavacHandlerUtil.injectMethod(typeNode, constr, null, Javac.createVoidType(typeNode.getSymbolTable(), Javac.CTC_VOID));
    }

    private JCTree.JCMethodDecl generateBuilderMethod(String builderMethodName, String builderClassName, String builderImplClassName, JavacNode source, JavacNode type, com.sun.tools.javac.util.List<JCTree.JCTypeParameter> typeParams) {
        JavacTreeMaker maker = type.getTreeMaker();
        ListBuffer<JCTree.JCExpression> typeArgs = new ListBuffer<>();
        for (JCTree.JCTypeParameter typeParam : typeParams) {
            typeArgs.append(maker.Ident(typeParam.name));
        }
        JCTree.JCBlock body = maker.Block(0L, com.sun.tools.javac.util.List.of(maker.Return(maker.NewClass(null, com.sun.tools.javac.util.List.nil(), JavacHandlerUtil.namePlusTypeParamsToTypeReference(maker, type.toName(builderImplClassName), typeParams), com.sun.tools.javac.util.List.nil(), null))));
        int modifiers = 1 | 8;
        ListBuffer<JCTree.JCExpression> typeParameterNames = new ListBuffer<>();
        typeParameterNames.addAll(JavacHandlerUtil.typeParameterNames(maker, typeParams));
        JCTree.JCWildcard wildcard = maker.Wildcard(maker.TypeBoundKind(BoundKind.UNBOUND), null);
        typeParameterNames.add(wildcard);
        typeParameterNames.add(wildcard);
        JCTree.JCTypeApply returnType = maker.TypeApply(maker.Ident(type.toName(builderClassName)), typeParameterNames.toList());
        return maker.MethodDef(maker.Modifiers(modifiers), type.toName(builderMethodName), returnType, JavacHandlerUtil.copyTypeParams(source, typeParams), com.sun.tools.javac.util.List.nil(), com.sun.tools.javac.util.List.nil(), body, null);
    }

    private JCTree.JCMethodDecl generateToBuilderMethod(String builderClassName, String builderImplClassName, JavacNode source, JavacNode type, com.sun.tools.javac.util.List<JCTree.JCTypeParameter> typeParams) {
        JavacTreeMaker maker = type.getTreeMaker();
        ListBuffer<JCTree.JCExpression> typeArgs = new ListBuffer<>();
        for (JCTree.JCTypeParameter typeParam : typeParams) {
            typeArgs.append(maker.Ident(typeParam.name));
        }
        JCTree.JCNewClass jCNewClassNewClass = maker.NewClass(null, com.sun.tools.javac.util.List.nil(), JavacHandlerUtil.namePlusTypeParamsToTypeReference(maker, type.toName(builderImplClassName), typeParams), com.sun.tools.javac.util.List.nil(), null);
        com.sun.tools.javac.util.List<JCTree.JCExpression> methodArgs = com.sun.tools.javac.util.List.of(maker.Ident(type.toName("this")));
        JCTree.JCMethodInvocation invokeFillMethod = maker.Apply(com.sun.tools.javac.util.List.nil(), maker.Select(jCNewClassNewClass, type.toName(FILL_VALUES_METHOD_NAME)), methodArgs);
        JCTree.JCBlock body = maker.Block(0L, com.sun.tools.javac.util.List.of(maker.Return(invokeFillMethod)));
        ListBuffer<JCTree.JCExpression> typeParameterNames = new ListBuffer<>();
        typeParameterNames.addAll(JavacHandlerUtil.typeParameterNames(maker, typeParams));
        JCTree.JCWildcard wildcard = maker.Wildcard(maker.TypeBoundKind(BoundKind.UNBOUND), null);
        typeParameterNames.add(wildcard);
        typeParameterNames.add(wildcard);
        JCTree.JCTypeApply returnType = maker.TypeApply(maker.Ident(type.toName(builderClassName)), typeParameterNames.toList());
        return maker.MethodDef(maker.Modifiers(1), type.toName(TO_BUILDER_METHOD_NAME), returnType, com.sun.tools.javac.util.List.nil(), com.sun.tools.javac.util.List.nil(), com.sun.tools.javac.util.List.nil(), body, null);
    }

    private JCTree.JCMethodDecl generateFillValuesMethod(JavacNode type, boolean inherited, String builderGenericName, String classGenericName, String builderImplClassName) {
        JavacTreeMaker maker = type.getTreeMaker();
        com.sun.tools.javac.util.List<JCTree.JCAnnotation> annotations = com.sun.tools.javac.util.List.nil();
        if (inherited) {
            JCTree.JCAnnotation overrideAnnotation = maker.Annotation(JavacHandlerUtil.genJavaLangTypeRef(type, "Override"), com.sun.tools.javac.util.List.nil());
            annotations = com.sun.tools.javac.util.List.of(overrideAnnotation);
        }
        JCTree.JCModifiers modifiers = maker.Modifiers(4L, annotations);
        Name name = type.toName(FILL_VALUES_METHOD_NAME);
        JCTree.JCIdent jCIdentIdent = maker.Ident(type.toName(builderGenericName));
        JCTree.JCVariableDecl param = maker.VarDef(maker.Modifiers(8589934608L), type.toName(INSTANCE_VARIABLE_NAME), maker.Ident(type.toName(classGenericName)), null);
        ListBuffer<JCTree.JCStatement> body = new ListBuffer<>();
        if (inherited) {
            JCTree.JCMethodInvocation callToSuper = maker.Apply(com.sun.tools.javac.util.List.nil(), maker.Select(maker.Ident(type.toName("super")), name), com.sun.tools.javac.util.List.of(maker.Ident(type.toName(INSTANCE_VARIABLE_NAME))));
            body.append(maker.Exec(callToSuper));
        }
        JCTree.JCMethodInvocation callStaticFillValuesMethod = maker.Apply(com.sun.tools.javac.util.List.nil(), maker.Select(maker.Ident(type.toName(builderImplClassName)), type.toName(STATIC_FILL_VALUES_METHOD_NAME)), com.sun.tools.javac.util.List.of(maker.Ident(type.toName(INSTANCE_VARIABLE_NAME)), maker.Ident(type.toName("this"))));
        body.append(maker.Exec(callStaticFillValuesMethod));
        JCTree.JCReturn returnStatement = maker.Return(maker.Apply(com.sun.tools.javac.util.List.nil(), maker.Ident(type.toName(SELF_METHOD)), com.sun.tools.javac.util.List.nil()));
        body.append(returnStatement);
        JCTree.JCBlock bodyBlock = maker.Block(0L, body.toList());
        return maker.MethodDef(modifiers, name, jCIdentIdent, com.sun.tools.javac.util.List.nil(), com.sun.tools.javac.util.List.of(param), com.sun.tools.javac.util.List.nil(), bodyBlock, null);
    }

    private JCTree.JCMethodDecl generateStaticFillValuesMethod(JavacNode type, String builderClassname, com.sun.tools.javac.util.List<JCTree.JCTypeParameter> typeParams, List<HandleBuilder.BuilderFieldData> builderFields) {
        JavacTreeMaker maker = type.getTreeMaker();
        com.sun.tools.javac.util.List<JCTree.JCAnnotation> annotations = com.sun.tools.javac.util.List.nil();
        JCTree.JCModifiers modifiers = maker.Modifiers(10L, annotations);
        Name name = type.toName(STATIC_FILL_VALUES_METHOD_NAME);
        JCTree.JCPrimitiveTypeTree jCPrimitiveTypeTreeTypeIdent = maker.TypeIdent(Javac.CTC_VOID);
        JCTree.JCVariableDecl paramInstance = maker.VarDef(maker.Modifiers(8589934608L), type.toName(INSTANCE_VARIABLE_NAME), JavacHandlerUtil.cloneSelfType(type), null);
        ListBuffer<JCTree.JCExpression> typeParamsForBuilderParameter = getTypeParamExpressions(typeParams, maker);
        JCTree.JCWildcard wildcard = maker.Wildcard(maker.TypeBoundKind(BoundKind.UNBOUND), null);
        typeParamsForBuilderParameter.add(wildcard);
        JCTree.JCWildcard wildcard2 = maker.Wildcard(maker.TypeBoundKind(BoundKind.UNBOUND), null);
        typeParamsForBuilderParameter.add(wildcard2);
        JCTree.JCTypeApply builderType = maker.TypeApply(maker.Ident(type.toName(builderClassname)), typeParamsForBuilderParameter.toList());
        JCTree.JCVariableDecl paramBuilder = maker.VarDef(maker.Modifiers(8589934608L), type.toName(BUILDER_VARIABLE_NAME), builderType, null);
        ListBuffer<JCTree.JCStatement> body = new ListBuffer<>();
        for (HandleBuilder.BuilderFieldData bfd : builderFields) {
            JCTree.JCExpressionStatement exec = createSetterCallWithInstanceValue(bfd, type, maker);
            body.append(exec);
        }
        JCTree.JCBlock bodyBlock = maker.Block(0L, body.toList());
        return maker.MethodDef(modifiers, name, jCPrimitiveTypeTreeTypeIdent, JavacHandlerUtil.copyTypeParams(type, typeParams), com.sun.tools.javac.util.List.of(paramInstance, paramBuilder), com.sun.tools.javac.util.List.nil(), bodyBlock, null);
    }

    private JCTree.JCExpressionStatement createSetterCallWithInstanceValue(HandleBuilder.BuilderFieldData bfd, JavacNode type, JavacTreeMaker maker) {
        JCTree.JCConditional jCConditionalConditional;
        JCTree.JCConditional[] jCConditionalArr = new JCTree.JCExpression[bfd.singularData == null ? 1 : 2];
        if (bfd.obtainVia == null || !bfd.obtainVia.field().isEmpty()) {
            for (int i = 0; i < jCConditionalArr.length; i++) {
                jCConditionalArr[i] = maker.Select(maker.Ident(type.toName(INSTANCE_VARIABLE_NAME)), bfd.obtainVia == null ? bfd.rawName : type.toName(bfd.obtainVia.field()));
            }
        } else if (bfd.obtainVia.isStatic()) {
            for (int i2 = 0; i2 < jCConditionalArr.length; i2++) {
                jCConditionalArr[i2] = maker.Apply(com.sun.tools.javac.util.List.nil(), maker.Select(maker.Ident(type.toName(type.getName())), type.toName(bfd.obtainVia.method())), com.sun.tools.javac.util.List.of(maker.Ident(type.toName(INSTANCE_VARIABLE_NAME))));
            }
        } else {
            for (int i3 = 0; i3 < jCConditionalArr.length; i3++) {
                jCConditionalArr[i3] = maker.Apply(com.sun.tools.javac.util.List.nil(), maker.Select(maker.Ident(type.toName(INSTANCE_VARIABLE_NAME)), type.toName(bfd.obtainVia.method())), com.sun.tools.javac.util.List.nil());
            }
        }
        if (bfd.singularData == null) {
            jCConditionalConditional = jCConditionalArr[0];
        } else {
            jCConditionalConditional = maker.Conditional(maker.Binary(Javac.CTC_EQUAL, jCConditionalArr[0], maker.Literal(Javac.CTC_BOT, null)), maker.Apply(com.sun.tools.javac.util.List.nil(), JavacHandlerUtil.chainDots(type, "java", "util", "Collections", "emptyList"), com.sun.tools.javac.util.List.nil()), jCConditionalArr[1]);
        }
        JCTree.JCMethodInvocation apply = maker.Apply(com.sun.tools.javac.util.List.nil(), maker.Select(maker.Ident(type.toName(BUILDER_VARIABLE_NAME)), bfd.name), com.sun.tools.javac.util.List.of(jCConditionalConditional));
        JCTree.JCExpressionStatement exec = maker.Exec(apply);
        return exec;
    }

    private JCTree.JCMethodDecl generateAbstractSelfMethod(JavacNode type, boolean override, String builderGenericName) {
        JavacTreeMaker maker = type.getTreeMaker();
        com.sun.tools.javac.util.List<JCTree.JCAnnotation> annotations = com.sun.tools.javac.util.List.nil();
        if (override) {
            JCTree.JCAnnotation overrideAnnotation = maker.Annotation(JavacHandlerUtil.genJavaLangTypeRef(type, "Override"), com.sun.tools.javac.util.List.nil());
            annotations = com.sun.tools.javac.util.List.of(overrideAnnotation);
        }
        JCTree.JCModifiers modifiers = maker.Modifiers(1028L, annotations);
        Name name = type.toName(SELF_METHOD);
        return maker.MethodDef(modifiers, name, maker.Ident(type.toName(builderGenericName)), com.sun.tools.javac.util.List.nil(), com.sun.tools.javac.util.List.nil(), com.sun.tools.javac.util.List.nil(), null, null);
    }

    private JCTree.JCMethodDecl generateSelfMethod(JavacNode builderImplType, com.sun.tools.javac.util.List<JCTree.JCTypeParameter> typeParams) {
        JavacTreeMaker maker = builderImplType.getTreeMaker();
        JCTree.JCAnnotation overrideAnnotation = maker.Annotation(JavacHandlerUtil.genJavaLangTypeRef(builderImplType, "Override"), com.sun.tools.javac.util.List.nil());
        JCTree.JCModifiers modifiers = maker.Modifiers(4L, com.sun.tools.javac.util.List.of(overrideAnnotation));
        Name name = builderImplType.toName(SELF_METHOD);
        JCTree.JCExpression returnType = JavacHandlerUtil.namePlusTypeParamsToTypeReference(maker, builderImplType.toName(builderImplType.getName()), typeParams);
        JCTree.JCBlock body = maker.Block(0L, com.sun.tools.javac.util.List.of(maker.Return(maker.Ident(builderImplType.toName("this")))));
        return maker.MethodDef(modifiers, name, returnType, com.sun.tools.javac.util.List.nil(), com.sun.tools.javac.util.List.nil(), com.sun.tools.javac.util.List.nil(), body, null);
    }

    private JCTree.JCMethodDecl generateAbstractBuildMethod(JavacNode type, String methodName, boolean override, String classGenericName) {
        JavacTreeMaker maker = type.getTreeMaker();
        com.sun.tools.javac.util.List<JCTree.JCAnnotation> annotations = com.sun.tools.javac.util.List.nil();
        if (override) {
            JCTree.JCAnnotation overrideAnnotation = maker.Annotation(JavacHandlerUtil.genJavaLangTypeRef(type, "Override"), com.sun.tools.javac.util.List.nil());
            annotations = com.sun.tools.javac.util.List.of(overrideAnnotation);
        }
        JCTree.JCModifiers modifiers = maker.Modifiers(1025L, annotations);
        Name name = type.toName(methodName);
        return maker.MethodDef(modifiers, name, maker.Ident(type.toName(classGenericName)), com.sun.tools.javac.util.List.nil(), com.sun.tools.javac.util.List.nil(), com.sun.tools.javac.util.List.nil(), null, null);
    }

    private JCTree.JCMethodDecl generateBuildMethod(String buildName, JavacNode returnType, JavacNode type, com.sun.tools.javac.util.List<JCTree.JCExpression> thrownExceptions) {
        JavacTreeMaker maker = type.getTreeMaker();
        ListBuffer<JCTree.JCStatement> statements = new ListBuffer<>();
        com.sun.tools.javac.util.List<JCTree.JCExpression> builderArg = com.sun.tools.javac.util.List.of(maker.Ident(type.toName("this")));
        statements.append(maker.Return(maker.NewClass(null, com.sun.tools.javac.util.List.nil(), JavacHandlerUtil.cloneSelfType(returnType), builderArg, null)));
        JCTree.JCBlock body = maker.Block(0L, statements.toList());
        JCTree.JCAnnotation overrideAnnotation = maker.Annotation(JavacHandlerUtil.genJavaLangTypeRef(type, "Override"), com.sun.tools.javac.util.List.nil());
        JCTree.JCModifiers modifiers = maker.Modifiers(1L, com.sun.tools.javac.util.List.of(overrideAnnotation));
        return maker.MethodDef(modifiers, type.toName(buildName), JavacHandlerUtil.cloneSelfType(returnType), com.sun.tools.javac.util.List.nil(), com.sun.tools.javac.util.List.nil(), thrownExceptions, body, null);
    }

    private JCTree.JCMethodDecl generateCleanMethod(List<HandleBuilder.BuilderFieldData> builderFields, JavacNode type, JCTree source) {
        JavacTreeMaker maker = type.getTreeMaker();
        ListBuffer<JCTree.JCStatement> statements = new ListBuffer<>();
        for (HandleBuilder.BuilderFieldData bfd : builderFields) {
            if (bfd.singularData != null && bfd.singularData.getSingularizer() != null) {
                bfd.singularData.getSingularizer().appendCleaningCode(bfd.singularData, type, source, statements);
            }
        }
        statements.append(maker.Exec(maker.Assign(maker.Select(maker.Ident(type.toName("this")), type.toName("$lombokUnclean")), maker.Literal(Javac.CTC_BOOLEAN, 0))));
        JCTree.JCBlock body = maker.Block(0L, statements.toList());
        return maker.MethodDef(maker.Modifiers(1L), type.toName("$lombokClean"), maker.Type(Javac.createVoidType(type.getSymbolTable(), Javac.CTC_VOID)), com.sun.tools.javac.util.List.nil(), com.sun.tools.javac.util.List.nil(), com.sun.tools.javac.util.List.nil(), body, null);
    }

    private void generateBuilderFields(JavacNode builderType, List<HandleBuilder.BuilderFieldData> builderFields, JCTree source) {
        int len = builderFields.size();
        List<JavacNode> existing = new ArrayList<>();
        for (JavacNode child : builderType.down()) {
            if (child.getKind() == AST.Kind.FIELD) {
                existing.add(child);
            }
        }
        List<JCTree.JCVariableDecl> generated = new ArrayList<>();
        for (int i = len - 1; i >= 0; i--) {
            HandleBuilder.BuilderFieldData bfd = builderFields.get(i);
            if (bfd.singularData != null && bfd.singularData.getSingularizer() != null) {
                bfd.createdFields.addAll(bfd.singularData.getSingularizer().generateFields(bfd.singularData, builderType, source));
            } else {
                JavacNode field = null;
                JavacNode setFlag = null;
                for (JavacNode exists : existing) {
                    Name n = exists.get().name;
                    if (n.equals(bfd.name)) {
                        field = exists;
                    }
                    if (n.equals(bfd.nameOfSetFlag)) {
                        setFlag = exists;
                    }
                }
                JavacTreeMaker maker = builderType.getTreeMaker();
                if (field == null) {
                    JCTree.JCModifiers mods = maker.Modifiers(2L);
                    JCTree.JCVariableDecl newField = maker.VarDef(mods, bfd.name, JavacHandlerUtil.cloneType(maker, bfd.type, source, builderType.getContext()), null);
                    field = JavacHandlerUtil.injectFieldAndMarkGenerated(builderType, newField);
                    generated.add(newField);
                }
                if (setFlag == null && bfd.nameOfSetFlag != null) {
                    JCTree.JCModifiers mods2 = maker.Modifiers(2L);
                    JCTree.JCVariableDecl newField2 = maker.VarDef(mods2, bfd.nameOfSetFlag, maker.TypeIdent(Javac.CTC_BOOLEAN), null);
                    JavacHandlerUtil.injectFieldAndMarkGenerated(builderType, newField2);
                    generated.add(newField2);
                }
                bfd.createdFields.add(field);
            }
        }
        for (JCTree.JCVariableDecl gen : generated) {
            JavacHandlerUtil.recursiveSetGeneratedBy(gen, source, builderType.getContext());
        }
    }

    private void generateSetterMethodsForBuilder(final JavacNode builderType, HandleBuilder.BuilderFieldData fieldNode, JavacNode source, final String builderGenericName) {
        boolean deprecate = JavacHandlerUtil.isFieldDeprecated(fieldNode.originalFieldNode);
        final JavacTreeMaker maker = builderType.getTreeMaker();
        JavacSingularsRecipes.ExpressionMaker returnTypeMaker = new JavacSingularsRecipes.ExpressionMaker() { // from class: lombok.javac.handlers.HandleSuperBuilder.1
            @Override // lombok.javac.handlers.JavacSingularsRecipes.ExpressionMaker
            public JCTree.JCExpression make() {
                return maker.Ident(builderType.toName(builderGenericName));
            }
        };
        JavacSingularsRecipes.StatementMaker returnStatementMaker = new JavacSingularsRecipes.StatementMaker() { // from class: lombok.javac.handlers.HandleSuperBuilder.2
            @Override // lombok.javac.handlers.JavacSingularsRecipes.StatementMaker
            public JCTree.JCStatement make() {
                return maker.Return(maker.Apply(com.sun.tools.javac.util.List.nil(), maker.Ident(builderType.toName(HandleSuperBuilder.SELF_METHOD)), com.sun.tools.javac.util.List.nil()));
            }
        };
        if (fieldNode.singularData == null || fieldNode.singularData.getSingularizer() == null) {
            generateSimpleSetterMethodForBuilder(builderType, deprecate, fieldNode.createdFields.get(0), fieldNode.nameOfSetFlag, source, true, returnTypeMaker.make(), returnStatementMaker.make(), fieldNode.annotations);
        } else {
            fieldNode.singularData.getSingularizer().generateMethods(fieldNode.singularData, deprecate, builderType, source.get(), true, returnTypeMaker, returnStatementMaker);
        }
    }

    private void generateSimpleSetterMethodForBuilder(JavacNode builderType, boolean deprecate, JavacNode fieldNode, Name nameOfSetFlag, JavacNode source, boolean fluent, JCTree.JCExpression returnType, JCTree.JCStatement returnStatement, com.sun.tools.javac.util.List<JCTree.JCAnnotation> annosOnParam) {
        Name fieldName = fieldNode.get().name;
        for (JavacNode child : builderType.down()) {
            if (child.getKind() == AST.Kind.METHOD) {
                JCTree.JCMethodDecl methodDecl = child.get();
                Name existingName = methodDecl.name;
                if (existingName.equals(fieldName) && !JavacHandlerUtil.isTolerate(fieldNode, methodDecl)) {
                    return;
                }
            }
        }
        String setterName = fluent ? fieldNode.getName() : HandlerUtil.buildAccessorName("set", fieldNode.getName());
        JavacTreeMaker maker = fieldNode.getTreeMaker();
        JCTree.JCMethodDecl newMethod = HandleSetter.createSetter(1L, deprecate, fieldNode, maker, setterName, nameOfSetFlag, returnType, returnStatement, source, com.sun.tools.javac.util.List.nil(), annosOnParam);
        JavacHandlerUtil.injectMethod(builderType, newMethod);
    }

    private void addObtainVia(HandleBuilder.BuilderFieldData bfd, JavacNode node) {
        for (JavacNode child : node.down()) {
            if (JavacHandlerUtil.annotationTypeMatches((Class<? extends Annotation>) Builder.ObtainVia.class, child)) {
                AnnotationValues<Builder.ObtainVia> ann = JavacHandlerUtil.createAnnotation(Builder.ObtainVia.class, child);
                bfd.obtainVia = (Builder.ObtainVia) ann.getInstance();
                bfd.obtainViaNode = child;
                JavacHandlerUtil.deleteAnnotationIfNeccessary(child, (Class<? extends Annotation>) Builder.ObtainVia.class);
                return;
            }
        }
    }

    private JavacSingularsRecipes.SingularData getSingularData(JavacNode node) {
        for (JavacNode child : node.down()) {
            if (JavacHandlerUtil.annotationTypeMatches((Class<? extends Annotation>) Singular.class, child)) {
                Name pluralName = node.getKind() == AST.Kind.FIELD ? JavacHandlerUtil.removePrefixFromField(node) : node.get().name;
                AnnotationValues<Singular> ann = JavacHandlerUtil.createAnnotation(Singular.class, child);
                JavacHandlerUtil.deleteAnnotationIfNeccessary(child, (Class<? extends Annotation>) Singular.class);
                String explicitSingular = ((Singular) ann.getInstance()).value();
                if (explicitSingular.isEmpty()) {
                    if (Boolean.FALSE.equals(node.getAst().readConfiguration(ConfigurationKeys.SINGULAR_AUTO))) {
                        node.addError("The singular must be specified explicitly (e.g. @Singular(\"task\")) because auto singularization is disabled.");
                        explicitSingular = pluralName.toString();
                    } else {
                        explicitSingular = HandlerUtil.autoSingularize(pluralName.toString());
                        if (explicitSingular == null) {
                            node.addError("Can't singularize this name; please specify the singular explicitly (i.e. @Singular(\"sheep\"))");
                            explicitSingular = pluralName.toString();
                        }
                    }
                }
                Name singularName = node.toName(explicitSingular);
                JCTree.JCExpression type = node.get() instanceof JCTree.JCVariableDecl ? node.get().vartype : null;
                com.sun.tools.javac.util.List<JCTree.JCExpression> typeArgs = com.sun.tools.javac.util.List.nil();
                if (type instanceof JCTree.JCTypeApply) {
                    typeArgs = ((JCTree.JCTypeApply) type).arguments;
                    type = ((JCTree.JCTypeApply) type).clazz;
                }
                String name = type.toString();
                String targetFqn = JavacSingularsRecipes.get().toQualified(name);
                JavacSingularsRecipes.JavacSingularizer singularizer = JavacSingularsRecipes.get().getSingularizer(targetFqn, node);
                if (singularizer == null) {
                    node.addError("Lombok does not know how to create the singular-form builder methods for type '" + name + "'; they won't be generated.");
                    return null;
                }
                return new JavacSingularsRecipes.SingularData(child, singularName, pluralName, typeArgs, targetFqn, singularizer);
            }
        }
        return null;
    }

    private String generateNonclashingNameFor(String classGenericName, List<String> typeParamStrings) {
        if (!typeParamStrings.contains(classGenericName)) {
            return classGenericName;
        }
        int counter = 2;
        while (typeParamStrings.contains(classGenericName + counter)) {
            counter++;
        }
        return classGenericName + counter;
    }

    private JavacNode findInnerClass(JavacNode parent, String name) {
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

    private ListBuffer<JCTree.JCExpression> getTypeParamExpressions(com.sun.tools.javac.util.List<? extends JCTree> typeParams, JavacTreeMaker maker) {
        ListBuffer<JCTree.JCExpression> typeParamsForBuilderParameter = new ListBuffer<>();
        Iterator it = typeParams.iterator();
        while (it.hasNext()) {
            JCTree.JCIdent jCIdent = (JCTree) it.next();
            if (jCIdent instanceof JCTree.JCTypeParameter) {
                typeParamsForBuilderParameter.add(maker.Ident(((JCTree.JCTypeParameter) jCIdent).getName()));
            } else if (jCIdent instanceof JCTree.JCIdent) {
                typeParamsForBuilderParameter.add(maker.Ident(jCIdent.getName()));
            }
        }
        return typeParamsForBuilderParameter;
    }
}
