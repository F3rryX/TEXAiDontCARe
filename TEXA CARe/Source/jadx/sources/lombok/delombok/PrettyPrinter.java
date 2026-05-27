package lombok.delombok;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.crashlytics.internal.settings.model.AppSettingsData;
import com.sun.source.tree.Tree;
import com.sun.tools.javac.tree.DocCommentTable;
import com.sun.tools.javac.tree.JCTree;
import com.sun.tools.javac.util.JCDiagnostic;
import com.sun.tools.javac.util.List;
import com.sun.tools.javac.util.Name;
import com.texa.careapp.Constants;
import com.texa.carelib.core.utils.Version;
import com.texa.carelib.webservices.utils.internal.GsonDTCLocaleSerializer;
import java.io.IOException;
import java.io.Writer;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import lombok.javac.CommentInfo;
import lombok.javac.Javac;
import lombok.javac.JavacTreeMaker;
import lombok.javac.PackageName;
import lombok.permit.Permit;
import okhttp3.HttpUrl;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: com.texa.care.apk:lombok/delombok/PrettyPrinter.SCL.lombok */
public class PrettyPrinter extends JCTree.Visitor {
    private static final String LINE_SEP = System.getProperty("line.separator");
    private static final Map<JavacTreeMaker.TreeTag, String> OPERATORS;
    private final Writer out;
    private final JCTree.JCCompilationUnit compilationUnit;
    private List<CommentInfo> comments;
    private final FormatPreferences formatPreferences;
    private final Map<JCTree, String> docComments;
    private final DocCommentTable docTable;
    private boolean needsAlign;
    private boolean needsNewLine;
    private boolean needsSpace;
    private boolean aligned;
    private Name __INIT__;
    private Name __VALUE__;
    private Name currentTypeName;
    private static final long DEFAULT = 8796093022208L;
    private static final int PREFIX = 14;
    private static final Method getExtendsClause;
    private static final Method getEndPosition;
    private static final Method storeEnd;
    private static final Map<Class<?>, Map<String, Field>> reflectionCache;
    private int indent = 0;
    private boolean onNewLine = true;
    private boolean innermostArrayBracketsAreVarargs = false;
    private long flagMod = -1;
    private boolean jcAnnotatedTypeInit = false;
    private Class<?> jcAnnotatedTypeClass = null;

    static {
        Method storeEndMethodTemp;
        Map<JavacTreeMaker.TreeTag, String> map = new HashMap<>();
        map.put(JavacTreeMaker.TreeTag.treeTag("POS"), "+");
        map.put(JavacTreeMaker.TreeTag.treeTag("NEG"), "-");
        map.put(JavacTreeMaker.TreeTag.treeTag("NOT"), "!");
        map.put(JavacTreeMaker.TreeTag.treeTag("COMPL"), "~");
        map.put(JavacTreeMaker.TreeTag.treeTag("PREINC"), "++");
        map.put(JavacTreeMaker.TreeTag.treeTag("PREDEC"), "--");
        map.put(JavacTreeMaker.TreeTag.treeTag("POSTINC"), "++");
        map.put(JavacTreeMaker.TreeTag.treeTag("POSTDEC"), "--");
        map.put(JavacTreeMaker.TreeTag.treeTag("NULLCHK"), "<*nullchk*>");
        map.put(JavacTreeMaker.TreeTag.treeTag("OR"), Constants.VEHICLE_DESCRIPTION_SEPARATOR);
        map.put(JavacTreeMaker.TreeTag.treeTag("AND"), "&&");
        map.put(JavacTreeMaker.TreeTag.treeTag("EQ"), "==");
        map.put(JavacTreeMaker.TreeTag.treeTag("NE"), "!=");
        map.put(JavacTreeMaker.TreeTag.treeTag("LT"), "<");
        map.put(JavacTreeMaker.TreeTag.treeTag("GT"), ">");
        map.put(JavacTreeMaker.TreeTag.treeTag("LE"), "<=");
        map.put(JavacTreeMaker.TreeTag.treeTag("GE"), ">=");
        map.put(JavacTreeMaker.TreeTag.treeTag("BITOR"), "|");
        map.put(JavacTreeMaker.TreeTag.treeTag("BITXOR"), "^");
        map.put(JavacTreeMaker.TreeTag.treeTag("BITAND"), "&");
        map.put(JavacTreeMaker.TreeTag.treeTag("SL"), "<<");
        map.put(JavacTreeMaker.TreeTag.treeTag("SR"), ">>");
        map.put(JavacTreeMaker.TreeTag.treeTag("USR"), ">>>");
        map.put(JavacTreeMaker.TreeTag.treeTag("PLUS"), "+");
        map.put(JavacTreeMaker.TreeTag.treeTag("MINUS"), "-");
        map.put(JavacTreeMaker.TreeTag.treeTag("MUL"), "*");
        map.put(JavacTreeMaker.TreeTag.treeTag("DIV"), "/");
        map.put(JavacTreeMaker.TreeTag.treeTag("MOD"), "%");
        map.put(JavacTreeMaker.TreeTag.treeTag("BITOR_ASG"), "|=");
        map.put(JavacTreeMaker.TreeTag.treeTag("BITXOR_ASG"), "^=");
        map.put(JavacTreeMaker.TreeTag.treeTag("BITAND_ASG"), "&=");
        map.put(JavacTreeMaker.TreeTag.treeTag("SL_ASG"), "<<=");
        map.put(JavacTreeMaker.TreeTag.treeTag("SR_ASG"), ">>=");
        map.put(JavacTreeMaker.TreeTag.treeTag("USR_ASG"), ">>>=");
        map.put(JavacTreeMaker.TreeTag.treeTag("PLUS_ASG"), "+=");
        map.put(JavacTreeMaker.TreeTag.treeTag("MINUS_ASG"), "-=");
        map.put(JavacTreeMaker.TreeTag.treeTag("MUL_ASG"), "*=");
        map.put(JavacTreeMaker.TreeTag.treeTag("DIV_ASG"), "/=");
        map.put(JavacTreeMaker.TreeTag.treeTag("MOD_ASG"), "%=");
        OPERATORS = map;
        getExtendsClause = getMethod((Class<?>) JCTree.JCClassDecl.class, "getExtendsClause", (Class<?>[]) new Class[0]);
        if (Javac.getJavaCompilerVersion() < 8) {
            getEndPosition = getMethod((Class<?>) JCDiagnostic.DiagnosticPosition.class, "getEndPosition", (Class<?>[]) new Class[]{Map.class});
            storeEnd = getMethod((Class<?>) Map.class, "put", (Class<?>[]) new Class[]{Object.class, Object.class});
        } else {
            getEndPosition = getMethod((Class<?>) JCDiagnostic.DiagnosticPosition.class, "getEndPosition", "com.sun.tools.javac.tree.EndPosTable");
            try {
                Class<?> endPosTable = Class.forName("com.sun.tools.javac.tree.EndPosTable");
                try {
                    storeEndMethodTemp = Permit.getMethod(endPosTable, "storeEnd", JCTree.class, Integer.TYPE);
                } catch (NoSuchMethodException e) {
                    try {
                        Class<?> endPosTable2 = Class.forName("com.sun.tools.javac.parser.JavacParser$AbstractEndPosTable");
                        storeEndMethodTemp = Permit.getMethod(endPosTable2, "storeEnd", JCTree.class, Integer.TYPE);
                    } catch (ClassNotFoundException ex) {
                        throw sneakyThrow(ex);
                    } catch (NoSuchMethodException ex2) {
                        throw sneakyThrow(ex2);
                    }
                }
                storeEnd = storeEndMethodTemp;
            } catch (ClassNotFoundException ex3) {
                throw sneakyThrow(ex3);
            }
        }
        Permit.setAccessible(getEndPosition);
        Permit.setAccessible(storeEnd);
        reflectionCache = new HashMap();
    }

    public PrettyPrinter(Writer out, JCTree.JCCompilationUnit cu, List<CommentInfo> comments, FormatPreferences preferences) {
        this.out = out;
        this.comments = comments;
        this.compilationUnit = cu;
        this.formatPreferences = preferences;
        Object dc = Javac.getDocComments(this.compilationUnit);
        if (dc instanceof Map) {
            this.docComments = (Map) dc;
            this.docTable = null;
        } else if (dc instanceof DocCommentTable) {
            this.docComments = null;
            this.docTable = (DocCommentTable) dc;
        } else {
            this.docComments = null;
            this.docTable = null;
        }
    }

    private int endPos(JCTree tree) {
        return Javac.getEndPosition(tree, this.compilationUnit);
    }

    private static int lineEndPos(String s, int start) {
        int pos = s.indexOf(10, start);
        if (pos < 0) {
            pos = s.length();
        }
        return pos;
    }

    /* JADX INFO: loaded from: com.texa.care.apk:lombok/delombok/PrettyPrinter$UncheckedIOException.SCL.lombok */
    public static final class UncheckedIOException extends RuntimeException {
        UncheckedIOException(IOException source) {
            super(toMsg(source));
            setStackTrace(source.getStackTrace());
        }

        private static String toMsg(Throwable t) {
            String msg = t.getMessage();
            String n = t.getClass().getSimpleName();
            return (msg == null || msg.isEmpty()) ? n : n + ": " + msg;
        }
    }

    private void align() {
        if (this.onNewLine) {
            for (int i = 0; i < this.indent; i++) {
                try {
                    this.out.write(this.formatPreferences.indent());
                } catch (IOException e) {
                    throw new UncheckedIOException(e);
                }
            }
            this.onNewLine = false;
            this.aligned = true;
            this.needsAlign = false;
        }
    }

    private void print(JCTree tree) {
        if (tree == null) {
            print("/*missing*/");
            return;
        }
        consumeComments(tree);
        tree.accept(this);
        consumeTrailingComments(endPos(tree));
    }

    private void print(List<? extends JCTree> trees, String infix) {
        boolean first = true;
        JCTree prev = null;
        for (JCTree tree : trees) {
            if (!suppress(tree)) {
                if (!first && infix != null && !infix.isEmpty()) {
                    if ("\n".equals(infix)) {
                        println(prev);
                    } else {
                        print(infix);
                    }
                }
                first = false;
                print(tree);
                prev = tree;
            }
        }
    }

    private boolean suppress(JCTree tree) {
        if (tree instanceof JCTree.JCBlock) {
            JCTree.JCBlock block = (JCTree.JCBlock) tree;
            return -1 == block.pos && block.stats.isEmpty();
        }
        if (tree instanceof JCTree.JCExpressionStatement) {
            JCTree.JCMethodInvocation jCMethodInvocation = ((JCTree.JCExpressionStatement) tree).expr;
            if (jCMethodInvocation instanceof JCTree.JCMethodInvocation) {
                JCTree.JCMethodInvocation inv = jCMethodInvocation;
                if (inv.typeargs.isEmpty() && inv.args.isEmpty() && (inv.meth instanceof JCTree.JCIdent) && tree.pos == ((JCTree.JCExpression) jCMethodInvocation).pos) {
                    return inv.meth.name.toString().equals("super");
                }
                return false;
            }
            return false;
        }
        return false;
    }

    private void print(CharSequence s) {
        boolean align = this.needsAlign;
        if (this.needsNewLine && !this.onNewLine) {
            println();
        }
        if (align && !this.aligned) {
            align();
        }
        try {
            if (this.needsSpace && !this.onNewLine && !this.aligned) {
                this.out.write(32);
            }
            this.out.write(s.toString());
            this.needsSpace = false;
            this.onNewLine = false;
            this.aligned = false;
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    private void println() {
        try {
            this.out.write(LINE_SEP);
            this.onNewLine = true;
            this.aligned = false;
            this.needsNewLine = false;
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    private void println(JCTree completed) {
        if (completed != null) {
            int endPos = endPos(completed);
            consumeTrailingComments(endPos);
        }
        try {
            this.out.write(LINE_SEP);
            this.onNewLine = true;
            this.aligned = false;
            this.needsNewLine = false;
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    private void println(CharSequence s) {
        print(s);
        println();
    }

    private void println(CharSequence s, JCTree completed) {
        print(s);
        println(completed);
    }

    private void aPrint(CharSequence s) {
        align();
        print(s);
    }

    private void aPrintln(CharSequence s) {
        align();
        print(s);
        println();
    }

    private void aPrintln(CharSequence s, JCTree completed) {
        align();
        print(s);
        println(completed);
    }

    private void consumeComments(int until) {
        Object obj = this.comments.head;
        while (true) {
            CommentInfo head = (CommentInfo) obj;
            if (this.comments.nonEmpty() && head.pos < until) {
                printComment(head);
                this.comments = this.comments.tail;
                obj = this.comments.head;
            } else {
                return;
            }
        }
    }

    private void consumeComments(JCTree tree) {
        consumeComments(tree.pos);
    }

    private void consumeTrailingComments(int from) {
        boolean prevNewLine = this.onNewLine;
        CommentInfo head = (CommentInfo) this.comments.head;
        boolean stop = false;
        while (this.comments.nonEmpty() && head.prevEndPos == from && !stop && head.start != CommentInfo.StartConnection.ON_NEXT_LINE && head.start != CommentInfo.StartConnection.START_OF_LINE) {
            from = head.endPos;
            printComment(head);
            stop = head.end == CommentInfo.EndConnection.ON_NEXT_LINE;
            this.comments = this.comments.tail;
            head = (CommentInfo) this.comments.head;
        }
        if (!this.onNewLine && prevNewLine) {
            println();
        }
    }

    private String getJavadocFor(JCTree node) {
        if (this.docComments != null) {
            return this.docComments.get(node);
        }
        if (this.docTable != null) {
            return this.docTable.getCommentText(node);
        }
        return null;
    }

    private int dims(JCTree.JCExpression vartype) {
        if (vartype instanceof JCTree.JCArrayTypeTree) {
            return 1 + dims(((JCTree.JCArrayTypeTree) vartype).elemtype);
        }
        if (isJcAnnotatedType(vartype)) {
            JCTree.JCArrayTypeTree jCArrayTypeTree = (JCTree) readObject(vartype, "underlyingType", (JCTree) null);
            if (jCArrayTypeTree instanceof JCTree.JCArrayTypeTree) {
                return 1 + dims(jCArrayTypeTree.elemtype);
            }
            return 0;
        }
        return 0;
    }

    private void printComment(CommentInfo comment) {
        switch (comment.start) {
            case DIRECT_AFTER_PREVIOUS:
                this.needsSpace = false;
                break;
            case AFTER_PREVIOUS:
                this.needsSpace = true;
                break;
            case START_OF_LINE:
                this.needsNewLine = true;
                this.needsAlign = false;
                break;
            case ON_NEXT_LINE:
                if (!this.onNewLine) {
                    this.needsNewLine = true;
                    this.needsAlign = true;
                } else if (!this.aligned) {
                    this.needsAlign = true;
                }
                break;
        }
        if (this.onNewLine && !this.aligned && comment.start != CommentInfo.StartConnection.START_OF_LINE) {
            this.needsAlign = true;
        }
        print(comment.content);
        switch (comment.end) {
            case ON_NEXT_LINE:
                if (!this.aligned) {
                    this.needsNewLine = true;
                    this.needsAlign = true;
                }
                break;
            case AFTER_COMMENT:
                this.needsSpace = true;
                break;
        }
    }

    private void printDocComment(JCTree tree) {
        String dc = getJavadocFor(tree);
        if (dc == null) {
            return;
        }
        aPrintln("/**");
        int pos = 0;
        int endpos = lineEndPos(dc, 0);
        boolean atStart = true;
        while (pos < dc.length()) {
            String line = dc.substring(pos, endpos);
            if (line.trim().isEmpty() && atStart) {
                atStart = false;
            } else {
                atStart = false;
                aPrint(" *");
                if (pos < dc.length() && dc.charAt(pos) > ' ') {
                    print(" ");
                }
                println(dc.substring(pos, endpos));
                pos = endpos + 1;
                endpos = lineEndPos(dc, pos);
            }
        }
        aPrintln(" */");
    }

    private Name name_init(Name someName) {
        if (this.__INIT__ == null) {
            this.__INIT__ = someName.table.fromChars("<init>".toCharArray(), 0, 6);
        }
        return this.__INIT__;
    }

    private Name name_value(Name someName) {
        if (this.__VALUE__ == null) {
            this.__VALUE__ = someName.table.fromChars("value".toCharArray(), 0, 5);
        }
        return this.__VALUE__;
    }

    public void visitTopLevel(JCTree.JCCompilationUnit tree) {
        printDocComment(tree);
        JCTree n = PackageName.getPackageNode(tree);
        if (n != null) {
            consumeComments((JCTree) tree);
            aPrint("package ");
            print(n);
            println(";", n);
        }
        boolean first = true;
        for (JCTree child : tree.defs) {
            if (child instanceof JCTree.JCImport) {
                if (first) {
                    println();
                }
                first = false;
                print(child);
            }
        }
        for (JCTree child2 : tree.defs) {
            if (!(child2 instanceof JCTree.JCImport)) {
                print(child2);
            }
        }
        consumeComments(Integer.MAX_VALUE);
    }

    public void visitImport(JCTree.JCImport tree) {
        aPrint("import ");
        if (tree.staticImport) {
            print("static ");
        }
        print(tree.qualid);
        println(";", tree);
    }

    public void visitClassDef(JCTree.JCClassDecl tree) {
        println();
        printDocComment(tree);
        align();
        print((JCTree) tree.mods);
        boolean isInterface = (tree.mods.flags & 512) != 0;
        boolean isAnnotationInterface = isInterface && (tree.mods.flags & 8192) != 0;
        boolean isEnum = (tree.mods.flags & Http2Stream.EMIT_BUFFER_SIZE) != 0;
        if (isAnnotationInterface) {
            print("@interface ");
        } else if (isInterface) {
            print("interface ");
        } else if (isEnum) {
            print("enum ");
        } else {
            print("class ");
        }
        print((CharSequence) tree.name);
        Name prevTypeName = this.currentTypeName;
        this.currentTypeName = tree.name;
        if (tree.typarams.nonEmpty()) {
            print("<");
            print(tree.typarams, ", ");
            print(">");
        }
        JCTree extendsClause = getExtendsClause(tree);
        if (extendsClause != null) {
            print(" extends ");
            print(extendsClause);
        }
        if (tree.implementing.nonEmpty()) {
            print(isInterface ? " extends " : " implements ");
            print(tree.implementing, ", ");
        }
        println(" {");
        this.indent++;
        printClassMembers(tree.defs, isEnum, isInterface);
        consumeComments(endPos(tree));
        this.indent--;
        aPrintln("}", tree);
        this.currentTypeName = prevTypeName;
    }

    private void printClassMembers(List<JCTree> members, boolean isEnum, boolean isInterface) {
        Class<?> prefType = null;
        int typeOfPrevEnumMember = isEnum ? 3 : 0;
        boolean prevWasEnumMember = isEnum;
        Iterator it = members.iterator();
        while (it.hasNext()) {
            JCTree.JCMethodDecl jCMethodDecl = (JCTree) it.next();
            if (typeOfPrevEnumMember != 3 || !(jCMethodDecl instanceof JCTree.JCMethodDecl) || (jCMethodDecl.mods.flags & 68719476736L) == 0) {
                boolean isEnumVar = isEnum && (jCMethodDecl instanceof JCTree.JCVariableDecl) && (((JCTree.JCVariableDecl) jCMethodDecl).mods.flags & Http2Stream.EMIT_BUFFER_SIZE) != 0;
                if (!isEnumVar && prevWasEnumMember) {
                    prevWasEnumMember = false;
                    if (typeOfPrevEnumMember == 3) {
                        align();
                    }
                    println(";");
                }
                if (isEnumVar) {
                    if (prefType != null && prefType != JCTree.JCVariableDecl.class) {
                        println();
                    }
                    switch (typeOfPrevEnumMember) {
                        case 1:
                            print(", ");
                            break;
                        case 2:
                            println(",");
                            align();
                            break;
                    }
                    print((JCTree) jCMethodDecl);
                    JCTree.JCNewClass jCNewClass = ((JCTree.JCVariableDecl) jCMethodDecl).init;
                    typeOfPrevEnumMember = (!(jCNewClass instanceof JCTree.JCNewClass) || jCNewClass.def == null) ? 1 : 2;
                } else if (jCMethodDecl instanceof JCTree.JCVariableDecl) {
                    if (prefType != null && prefType != JCTree.JCVariableDecl.class) {
                        println();
                    }
                    if (isInterface) {
                        this.flagMod = -26L;
                    }
                    print((JCTree) jCMethodDecl);
                } else if (jCMethodDecl instanceof JCTree.JCMethodDecl) {
                    if ((jCMethodDecl.mods.flags & 68719476736L) == 0) {
                        if (prefType != null) {
                            println();
                        }
                        if (isInterface) {
                            this.flagMod = -1026L;
                        }
                        print((JCTree) jCMethodDecl);
                    }
                } else if (jCMethodDecl instanceof JCTree.JCClassDecl) {
                    if (prefType != null) {
                        println();
                    }
                    if (isInterface) {
                        this.flagMod = -10L;
                    }
                    print((JCTree) jCMethodDecl);
                } else {
                    if (prefType != null) {
                        println();
                    }
                    print((JCTree) jCMethodDecl);
                }
                prefType = jCMethodDecl.getClass();
            }
        }
        if (prevWasEnumMember) {
            if (typeOfPrevEnumMember == 3) {
                align();
            }
            println(";");
        }
    }

    public void visitTypeParameter(JCTree.JCTypeParameter tree) {
        List<? extends JCTree> list = (List) readObject(tree, "annotations", List.nil());
        if (!list.isEmpty()) {
            print(list, " ");
            print(" ");
        }
        print((CharSequence) tree.name);
        if (tree.bounds.nonEmpty()) {
            print(" extends ");
            print(tree.bounds, " & ");
        }
        consumeComments((JCTree) tree);
    }

    public void visitVarDef(JCTree.JCVariableDecl tree) {
        printDocComment(tree);
        align();
        if ((tree.mods.flags & Http2Stream.EMIT_BUFFER_SIZE) != 0) {
            printEnumMember(tree);
            return;
        }
        printAnnotations(tree.mods.annotations, true);
        printModifierKeywords(tree.mods);
        printVarDef0(tree);
        println(";", tree);
    }

    private void printVarDefInline(JCTree.JCVariableDecl tree) {
        printAnnotations(tree.mods.annotations, false);
        printModifierKeywords(tree.mods);
        printVarDef0(tree);
    }

    private void printVarDef0(JCTree.JCVariableDecl tree) {
        boolean varargs = (tree.mods.flags & 17179869184L) != 0;
        try {
            this.innermostArrayBracketsAreVarargs = varargs;
            print((JCTree) tree.vartype);
            print(" ");
            print((CharSequence) tree.name);
            if (tree.init != null) {
                print(" = ");
                print((JCTree) tree.init);
            }
        } finally {
            this.innermostArrayBracketsAreVarargs = false;
        }
    }

    private void printEnumMember(JCTree.JCVariableDecl tree) {
        printAnnotations(tree.mods.annotations, true);
        print((CharSequence) tree.name);
        if (tree.init instanceof JCTree.JCNewClass) {
            JCTree.JCNewClass constructor = tree.init;
            if (constructor.args != null && constructor.args.nonEmpty()) {
                print("(");
                print(constructor.args, ", ");
                print(")");
            }
            if (constructor.def != null && constructor.def.defs != null) {
                println(" {");
                this.indent++;
                printClassMembers(constructor.def.defs, false, false);
                consumeComments(endPos(tree));
                this.indent--;
                aPrint("}");
            }
        }
    }

    public void visitTypeApply(JCTree.JCTypeApply tree) {
        print((JCTree) tree.clazz);
        print("<");
        print(tree.arguments, ", ");
        print(">");
    }

    /* JADX INFO: renamed from: lombok.delombok.PrettyPrinter$1, reason: invalid class name */
    /* JADX INFO: loaded from: com.texa.care.apk:lombok/delombok/PrettyPrinter$1.SCL.lombok */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sun$source$tree$Tree$Kind = new int[Tree.Kind.values().length];

        static {
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.UNBOUNDED_WILDCARD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.EXTENDS_WILDCARD.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.SUPER_WILDCARD.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            $SwitchMap$lombok$javac$CommentInfo$EndConnection = new int[CommentInfo.EndConnection.values().length];
            try {
                $SwitchMap$lombok$javac$CommentInfo$EndConnection[CommentInfo.EndConnection.ON_NEXT_LINE.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$lombok$javac$CommentInfo$EndConnection[CommentInfo.EndConnection.AFTER_COMMENT.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$lombok$javac$CommentInfo$EndConnection[CommentInfo.EndConnection.DIRECT_AFTER_COMMENT.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
            $SwitchMap$lombok$javac$CommentInfo$StartConnection = new int[CommentInfo.StartConnection.values().length];
            try {
                $SwitchMap$lombok$javac$CommentInfo$StartConnection[CommentInfo.StartConnection.DIRECT_AFTER_PREVIOUS.ordinal()] = 1;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$lombok$javac$CommentInfo$StartConnection[CommentInfo.StartConnection.AFTER_PREVIOUS.ordinal()] = 2;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$lombok$javac$CommentInfo$StartConnection[CommentInfo.StartConnection.START_OF_LINE.ordinal()] = 3;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$lombok$javac$CommentInfo$StartConnection[CommentInfo.StartConnection.ON_NEXT_LINE.ordinal()] = 4;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    public void visitWildcard(JCTree.JCWildcard tree) {
        switch (AnonymousClass1.$SwitchMap$com$sun$source$tree$Tree$Kind[tree.getKind().ordinal()]) {
            case 1:
            default:
                print("?");
                break;
            case 2:
                print("? extends ");
                print(tree.inner);
                break;
            case 3:
                print("? super ");
                print(tree.inner);
                break;
        }
    }

    public void visitLiteral(JCTree.JCLiteral tree) {
        JavacTreeMaker.TypeTag typeTag = JavacTreeMaker.TypeTag.typeTag((JCTree) tree);
        if (!Javac.CTC_INT.equals(typeTag)) {
            if (!Javac.CTC_LONG.equals(typeTag)) {
                if (!Javac.CTC_FLOAT.equals(typeTag)) {
                    if (!Javac.CTC_DOUBLE.equals(typeTag)) {
                        if (Javac.CTC_CHAR.equals(typeTag)) {
                            print("'" + quoteChar((char) ((Number) tree.value).intValue()) + "'");
                            return;
                        }
                        if (!Javac.CTC_BOOLEAN.equals(typeTag)) {
                            if (!Javac.CTC_BOT.equals(typeTag)) {
                                print("\"" + quoteChars(tree.value.toString()) + "\"");
                                return;
                            } else {
                                print("null");
                                return;
                            }
                        }
                        print(((Number) tree.value).intValue() == 1 ? "true" : "false");
                        return;
                    }
                    print("" + tree.value);
                    return;
                }
                print(tree.value + "F");
                return;
            }
            print(tree.value + "L");
            return;
        }
        print("" + tree.value);
    }

    public void visitMethodDef(JCTree.JCMethodDecl tree) {
        boolean isConstructor = tree.name == name_init(tree.name);
        if (!isConstructor || (tree.mods.flags & 68719476736L) == 0) {
            printDocComment(tree);
            align();
            print((JCTree) tree.mods);
            if (tree.typarams != null && tree.typarams.nonEmpty()) {
                print("<");
                print(tree.typarams, ", ");
                print("> ");
            }
            if (isConstructor) {
                print(this.currentTypeName == null ? "<init>" : this.currentTypeName);
            } else {
                print((JCTree) tree.restype);
                print(" ");
                print((CharSequence) tree.name);
            }
            print("(");
            boolean first = true;
            for (JCTree.JCVariableDecl param : tree.params) {
                if (!first) {
                    print(", ");
                }
                first = false;
                printVarDefInline(param);
            }
            print(")");
            if (tree.thrown.nonEmpty()) {
                print(" throws ");
                print(tree.thrown, ", ");
            }
            if (tree.defaultValue != null) {
                print(" default ");
                print((JCTree) tree.defaultValue);
            }
            if (tree.body != null) {
                print(" ");
                print((JCTree) tree.body);
            } else {
                println(";", tree);
            }
        }
    }

    public void visitSkip(JCTree.JCSkip that) {
        if (this.onNewLine && !this.aligned) {
            align();
        }
        println(";");
    }

    public void visitAnnotation(JCTree.JCAnnotation tree) {
        print("@");
        print(tree.annotationType);
        if (tree.args.isEmpty()) {
            return;
        }
        print("(");
        boolean done = false;
        if (tree.args.length() == 1 && (tree.args.get(0) instanceof JCTree.JCAssign)) {
            JCTree.JCAssign arg1 = (JCTree.JCAssign) tree.args.get(0);
            JCTree.JCIdent arg1Name = arg1.lhs instanceof JCTree.JCIdent ? (JCTree.JCIdent) arg1.lhs : null;
            if (arg1Name != null && arg1Name.name == name_value(arg1Name.name)) {
                print((JCTree) arg1.rhs);
                done = true;
            }
        }
        if (!done) {
            print(tree.args, ", ");
        }
        print(")");
    }

    public void visitTypeArray(JCTree.JCArrayTypeTree tree) {
        printTypeArray0(tree);
    }

    public void visitNewArray(JCTree.JCNewArray tree) {
        JCTree.JCExpression jCExpression = tree.elemtype;
        int dims = 0;
        if (jCExpression != null) {
            print("new ");
            while (jCExpression instanceof JCTree.JCArrayTypeTree) {
                dims++;
                jCExpression = ((JCTree.JCArrayTypeTree) jCExpression).elemtype;
            }
            print((JCTree) jCExpression);
            for (JCTree.JCExpression expr : tree.dims) {
                print("[");
                print((JCTree) expr);
                print("]");
            }
        }
        for (int i = 0; i < dims; i++) {
            print(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
        }
        if (tree.elems != null) {
            if (jCExpression != null) {
                print("[] ");
            }
            print("{");
            print(tree.elems, ", ");
            print("}");
        }
    }

    public void visitNewClass(JCTree.JCNewClass tree) {
        if (tree.encl != null) {
            print((JCTree) tree.encl);
            print(Version.SEPARATOR);
        }
        boolean moveFirstParameter = tree.args.nonEmpty() && (tree.args.head instanceof JCTree.JCUnary) && ((JCTree.JCExpression) tree.args.head).toString().startsWith("<*nullchk*>");
        if (moveFirstParameter) {
            print((JCTree) ((JCTree.JCUnary) tree.args.head).arg);
            print(Version.SEPARATOR);
        }
        print("new ");
        if (!tree.typeargs.isEmpty()) {
            print("<");
            print(tree.typeargs, ", ");
            print(">");
        }
        print((JCTree) tree.clazz);
        print("(");
        if (moveFirstParameter) {
            print(tree.args.tail, ", ");
        } else {
            print(tree.args, ", ");
        }
        print(")");
        if (tree.def != null) {
            Name previousTypeName = this.currentTypeName;
            this.currentTypeName = null;
            println(" {");
            this.indent++;
            print(tree.def.defs, "");
            this.indent--;
            aPrint("}");
            this.currentTypeName = previousTypeName;
        }
    }

    public void visitIndexed(JCTree.JCArrayAccess tree) {
        print((JCTree) tree.indexed);
        print("[");
        print((JCTree) tree.index);
        print("]");
    }

    public void visitTypeIdent(JCTree.JCPrimitiveTypeTree tree) {
        JavacTreeMaker.TypeTag typeTag = JavacTreeMaker.TypeTag.typeTag((JCTree) tree);
        if (!Javac.CTC_BYTE.equals(typeTag)) {
            if (!Javac.CTC_CHAR.equals(typeTag)) {
                if (!Javac.CTC_SHORT.equals(typeTag)) {
                    if (!Javac.CTC_INT.equals(typeTag)) {
                        if (!Javac.CTC_LONG.equals(typeTag)) {
                            if (!Javac.CTC_FLOAT.equals(typeTag)) {
                                if (!Javac.CTC_DOUBLE.equals(typeTag)) {
                                    if (!Javac.CTC_BOOLEAN.equals(typeTag)) {
                                        if (!Javac.CTC_VOID.equals(typeTag)) {
                                            print(com.google.firebase.messaging.Constants.IPC_BUNDLE_KEY_SEND_ERROR);
                                            return;
                                        } else {
                                            print("void");
                                            return;
                                        }
                                    }
                                    print("boolean");
                                    return;
                                }
                                print("double");
                                return;
                            }
                            print("float");
                            return;
                        }
                        print("long");
                        return;
                    }
                    print("int");
                    return;
                }
                print("short");
                return;
            }
            print("char");
            return;
        }
        print("byte");
    }

    public void visitLabelled(JCTree.JCLabeledStatement tree) {
        aPrint(tree.label);
        print(":");
        if ((tree.body instanceof JCTree.JCSkip) || suppress(tree)) {
            println(" ;", tree);
        } else if (tree.body instanceof JCTree.JCBlock) {
            print(" ");
            print((JCTree) tree.body);
        } else {
            println((JCTree) tree);
            print((JCTree) tree.body);
        }
    }

    public void visitModifiers(JCTree.JCModifiers tree) {
        printAnnotations(tree.annotations, true);
        printModifierKeywords(tree);
    }

    private void printAnnotations(List<JCTree.JCAnnotation> annotations, boolean newlines) {
        for (JCTree.JCAnnotation ann : annotations) {
            print((JCTree) ann);
            if (newlines) {
                println();
                align();
            } else {
                print(" ");
            }
        }
    }

    private void printModifierKeywords(JCTree.JCModifiers tree) {
        long v = this.flagMod & tree.flags;
        this.flagMod = -1L;
        if ((v & 4096) != 0) {
            print("/* synthetic */ ");
        }
        if ((v & 1) != 0) {
            print("public ");
        }
        if ((v & 2) != 0) {
            print("private ");
        }
        if ((v & 4) != 0) {
            print("protected ");
        }
        if ((v & 8) != 0) {
            print("static ");
        }
        if ((v & 16) != 0) {
            print("final ");
        }
        if ((v & 32) != 0) {
            print("synchronized ");
        }
        if ((v & 64) != 0) {
            print("volatile ");
        }
        if ((v & 128) != 0) {
            print("transient ");
        }
        if ((v & 256) != 0) {
            print("native ");
        }
        if ((v & RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) != 0) {
            print("abstract ");
        }
        if ((v & 2048) != 0) {
            print("strictfp ");
        }
        if ((v & DEFAULT) == 0 || (v & 512) != 0) {
            return;
        }
        print("default ");
    }

    public void visitSelect(JCTree.JCFieldAccess tree) {
        print((JCTree) tree.selected);
        print(Version.SEPARATOR);
        print((CharSequence) tree.name);
    }

    public void visitIdent(JCTree.JCIdent tree) {
        print((CharSequence) tree.name);
    }

    public void visitApply(JCTree.JCMethodInvocation tree) {
        if (tree.typeargs.nonEmpty()) {
            if (tree.meth instanceof JCTree.JCFieldAccess) {
                JCTree.JCFieldAccess fa = tree.meth;
                print((JCTree) fa.selected);
                print(".<");
                print(tree.typeargs, ", ");
                print(">");
                print((CharSequence) fa.name);
            } else {
                print("<");
                print(tree.typeargs, ", ");
                print(">");
                print((JCTree) tree.meth);
            }
        } else {
            print((JCTree) tree.meth);
        }
        print("(");
        print(tree.args, ", ");
        print(")");
    }

    public void visitAssert(JCTree.JCAssert tree) {
        aPrint("assert ");
        print((JCTree) tree.cond);
        if (tree.detail != null) {
            print(" : ");
            print((JCTree) tree.detail);
        }
        println(";", tree);
    }

    public void visitAssign(JCTree.JCAssign tree) {
        print((JCTree) tree.lhs);
        print(" = ");
        print((JCTree) tree.rhs);
    }

    public void visitAssignop(JCTree.JCAssignOp tree) {
        print((JCTree) tree.lhs);
        String opname = operator(JavacTreeMaker.TreeTag.treeTag((JCTree) tree));
        print(" " + opname + " ");
        print((JCTree) tree.rhs);
    }

    public void visitUnary(JCTree.JCUnary tree) {
        String op = operator(JavacTreeMaker.TreeTag.treeTag((JCTree) tree));
        if (JavacTreeMaker.TreeTag.treeTag((JCTree) tree).getOperatorPrecedenceLevel() == 14) {
            print(op);
            print((JCTree) tree.arg);
        } else {
            print((JCTree) tree.arg);
            print(op);
        }
    }

    public void visitBinary(JCTree.JCBinary tree) {
        String op = operator(JavacTreeMaker.TreeTag.treeTag((JCTree) tree));
        print((JCTree) tree.lhs);
        print(" ");
        print(op);
        print(" ");
        print((JCTree) tree.rhs);
    }

    public void visitTypeTest(JCTree.JCInstanceOf tree) {
        print((JCTree) tree.expr);
        print(" instanceof ");
        print(tree.clazz);
    }

    public void visitTypeCast(JCTree.JCTypeCast tree) {
        print("(");
        print(tree.clazz);
        print(") ");
        print((JCTree) tree.expr);
    }

    public void visitBlock(JCTree.JCBlock tree) {
        if (tree.pos == -1 && tree.stats.isEmpty()) {
            return;
        }
        if (this.onNewLine) {
            align();
        }
        if ((tree.flags & 8) != 0) {
            print("static ");
        }
        println("{");
        this.indent++;
        print(tree.stats, "");
        consumeComments(endPos(tree));
        this.indent--;
        aPrintln("}", tree);
    }

    public void visitBreak(JCTree.JCBreak tree) {
        aPrint("break");
        if (tree.label != null) {
            print(" ");
            print((CharSequence) tree.label);
        }
        println(";", tree);
    }

    public void visitContinue(JCTree.JCContinue tree) {
        aPrint("continue");
        if (tree.label != null) {
            print(" ");
            print((CharSequence) tree.label);
        }
        println(";", tree);
    }

    public void visitConditional(JCTree.JCConditional tree) {
        print((JCTree) tree.cond);
        print(" ? ");
        print((JCTree) tree.truepart);
        print(" : ");
        print((JCTree) tree.falsepart);
    }

    public void visitParens(JCTree.JCParens tree) {
        print("(");
        print((JCTree) tree.expr);
        print(")");
    }

    public void visitReturn(JCTree.JCReturn tree) {
        aPrint("return");
        if (tree.expr != null) {
            print(" ");
            print((JCTree) tree.expr);
        }
        println(";", tree);
    }

    public void visitThrow(JCTree.JCThrow tree) {
        aPrint("throw ");
        print((JCTree) tree.expr);
        println(";", tree);
    }

    public void visitWhileLoop(JCTree.JCWhileLoop tree) {
        aPrint("while ");
        if (tree.cond instanceof JCTree.JCParens) {
            print((JCTree) tree.cond);
        } else {
            print("(");
            print((JCTree) tree.cond);
            print(")");
        }
        print(" ");
        print((JCTree) tree.body);
    }

    public void visitForLoop(JCTree.JCForLoop tree) {
        aPrint("for (");
        if (tree.init.nonEmpty()) {
            if (tree.init.head instanceof JCTree.JCVariableDecl) {
                boolean first = true;
                int dims = 0;
                for (JCTree.JCStatement i : tree.init) {
                    JCTree.JCVariableDecl vd = (JCTree.JCVariableDecl) i;
                    if (first) {
                        printVarDefInline(vd);
                        dims = dims(vd.vartype);
                    } else {
                        print(", ");
                        print((CharSequence) vd.name);
                        int dimDiff = dims(vd.vartype) - dims;
                        for (int j = 0; j < dimDiff; j++) {
                            print(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
                        }
                        if (vd.init != null) {
                            print(" = ");
                            print((JCTree) vd.init);
                        }
                    }
                    first = false;
                }
            } else {
                boolean first2 = true;
                for (JCTree.JCExpressionStatement jCExpressionStatement : tree.init) {
                    if (!first2) {
                        print(", ");
                    }
                    first2 = false;
                    print((JCTree) jCExpressionStatement.expr);
                }
            }
        }
        print("; ");
        if (tree.cond != null) {
            print((JCTree) tree.cond);
        }
        print("; ");
        boolean first3 = true;
        for (JCTree.JCExpressionStatement exprStatement : tree.step) {
            if (!first3) {
                print(", ");
            }
            first3 = false;
            print((JCTree) exprStatement.expr);
        }
        print(") ");
        print((JCTree) tree.body);
    }

    public void visitForeachLoop(JCTree.JCEnhancedForLoop tree) {
        aPrint("for (");
        printVarDefInline(tree.var);
        print(" : ");
        print((JCTree) tree.expr);
        print(") ");
        print((JCTree) tree.body);
    }

    public void visitIf(JCTree.JCIf tree) {
        aPrint("if ");
        if (tree.cond instanceof JCTree.JCParens) {
            print((JCTree) tree.cond);
        } else {
            print("(");
            print((JCTree) tree.cond);
            print(")");
        }
        print(" ");
        if (tree.thenpart instanceof JCTree.JCBlock) {
            println("{");
            this.indent++;
            print(tree.thenpart.stats, "");
            this.indent--;
            if (tree.elsepart == null) {
                aPrintln("}", tree);
            } else {
                aPrint("}");
            }
        } else {
            print((JCTree) tree.thenpart);
        }
        if (tree.elsepart != null) {
            aPrint(" else ");
            print((JCTree) tree.elsepart);
        }
    }

    public void visitExec(JCTree.JCExpressionStatement tree) {
        align();
        print((JCTree) tree.expr);
        println(";", tree);
    }

    public void visitDoLoop(JCTree.JCDoWhileLoop tree) {
        aPrint("do ");
        if (tree.body instanceof JCTree.JCBlock) {
            println("{");
            this.indent++;
            print(tree.body.stats, "");
            this.indent--;
            aPrint("}");
        } else {
            print((JCTree) tree.body);
        }
        print(" while ");
        if (tree.cond instanceof JCTree.JCParens) {
            print((JCTree) tree.cond);
        } else {
            print("(");
            print((JCTree) tree.cond);
            print(")");
        }
        println(";", tree);
    }

    public void visitSynchronized(JCTree.JCSynchronized tree) {
        aPrint("synchronized ");
        if (tree.lock instanceof JCTree.JCParens) {
            print((JCTree) tree.lock);
        } else {
            print("(");
            print((JCTree) tree.lock);
            print(")");
        }
        print(" ");
        print((JCTree) tree.body);
    }

    public void visitCase(JCTree.JCCase tree) {
        if (tree.pat == null) {
            aPrint(GsonDTCLocaleSerializer.LOCALE_DEFAULT_PLACEHOLDER);
        } else {
            aPrint("case ");
            print((JCTree) tree.pat);
        }
        println(": ");
        this.indent++;
        print(tree.stats, "");
        this.indent--;
    }

    public void visitCatch(JCTree.JCCatch tree) {
        print(" catch (");
        print((JCTree) tree.param);
        print(") ");
        print((JCTree) tree.body);
    }

    public void visitSwitch(JCTree.JCSwitch tree) {
        aPrint("switch ");
        if (tree.selector instanceof JCTree.JCParens) {
            print((JCTree) tree.selector);
        } else {
            print("(");
            print((JCTree) tree.selector);
            print(")");
        }
        println(" {");
        print(tree.cases, "\n");
        aPrintln("}", tree);
    }

    public void visitTry(JCTree.JCTry tree) {
        aPrint("try ");
        List<?> resources = (List) readObject(tree, "resources", List.nil());
        int len = resources.length();
        switch (len) {
            case 0:
                break;
            case 1:
                print("(");
                JCTree.JCVariableDecl decl = (JCTree.JCVariableDecl) resources.get(0);
                this.flagMod = -17L;
                printVarDefInline(decl);
                print(") ");
                break;
            default:
                println("(");
                this.indent++;
                int c = 0;
                for (Object i : resources) {
                    align();
                    this.flagMod = -17L;
                    printVarDefInline((JCTree.JCVariableDecl) i);
                    c++;
                    if (c == len) {
                        print(") ");
                    } else {
                        println(";", (JCTree) i);
                    }
                }
                this.indent--;
                break;
        }
        println("{");
        this.indent++;
        for (JCTree.JCStatement stat : tree.body.stats) {
            print((JCTree) stat);
        }
        this.indent--;
        aPrint("}");
        for (JCTree.JCCatch catchBlock : tree.catchers) {
            printCatch(catchBlock);
        }
        if (tree.finalizer != null) {
            println(" finally {");
            this.indent++;
            for (JCTree.JCStatement stat2 : tree.finalizer.stats) {
                print((JCTree) stat2);
            }
            this.indent--;
            aPrint("}");
        }
        println((JCTree) tree);
    }

    private void printCatch(JCTree.JCCatch catchBlock) {
        print(" catch (");
        printVarDefInline(catchBlock.param);
        println(") {");
        this.indent++;
        for (JCTree.JCStatement stat : catchBlock.body.stats) {
            print((JCTree) stat);
        }
        this.indent--;
        aPrint("}");
    }

    public void visitErroneous(JCTree.JCErroneous tree) {
        print("(ERROR)");
    }

    private static String operator(JavacTreeMaker.TreeTag tag) {
        String op = OPERATORS.get(tag);
        return op == null ? "(?op?)" : op;
    }

    private static String quoteChars(String s) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            sb.append(quoteChar(s.charAt(i)));
        }
        return sb.toString();
    }

    private static String quoteChar(char ch) {
        switch (ch) {
            case '\b':
                return "\\b";
            case '\t':
                return "\\t";
            case '\n':
                return "\\n";
            case '\f':
                return "\\f";
            case '\r':
                return "\\r";
            case '\"':
                return "\\\"";
            case '\'':
                return "\\'";
            case '\\':
                return "\\\\";
            default:
                return ch < ' ' ? String.format("\\%03o", Integer.valueOf(ch)) : String.valueOf(ch);
        }
    }

    private static Method getMethod(Class<?> clazz, String name, Class<?>... paramTypes) {
        try {
            return Permit.getMethod(clazz, name, paramTypes);
        } catch (NoSuchMethodException e) {
            throw sneakyThrow(e);
        }
    }

    private static Method getMethod(Class<?> clazz, String name, String... paramTypes) {
        try {
            Class<?>[] c = new Class[paramTypes.length];
            for (int i = 0; i < paramTypes.length; i++) {
                c[i] = Class.forName(paramTypes[i]);
            }
            return Permit.getMethod(clazz, name, c);
        } catch (ClassNotFoundException e) {
            throw sneakyThrow(e);
        } catch (NoSuchMethodException e2) {
            throw sneakyThrow(e2);
        }
    }

    public static JCTree getExtendsClause(JCTree.JCClassDecl decl) {
        try {
            return (JCTree) getExtendsClause.invoke(decl, new Object[0]);
        } catch (IllegalAccessException e) {
            throw sneakyThrow(e);
        } catch (InvocationTargetException e2) {
            throw sneakyThrow(e2.getCause());
        }
    }

    static RuntimeException sneakyThrow(Throwable t) throws Throwable {
        if (t == null) {
            throw new NullPointerException("t");
        }
        sneakyThrow0(t);
        return null;
    }

    private static <T extends Throwable> void sneakyThrow0(Throwable t) throws Throwable {
        throw t;
    }

    private <T> T readObject(JCTree jCTree, String str, T t) {
        Class<?> cls = jCTree.getClass();
        Map<String, Field> map = reflectionCache.get(cls);
        if (map == null) {
            Map<Class<?>, Map<String, Field>> map2 = reflectionCache;
            HashMap map3 = new HashMap();
            map = map3;
            map2.put(cls, map3);
        }
        Field field = map.get(str);
        if (field == null) {
            try {
                field = Permit.getField(cls, str);
                map.put(str, field);
            } catch (Exception e) {
                return t;
            }
        }
        try {
            return (T) field.get(jCTree);
        } catch (Exception e2) {
            return t;
        }
    }

    public void visitTypeBoundKind(JCTree.TypeBoundKind tree) {
        print(String.valueOf(tree.kind));
    }

    public void visitTree(JCTree tree) {
        String simpleName = tree.getClass().getSimpleName();
        if ("JCTypeUnion".equals(simpleName)) {
            print((List) readObject(tree, "alternatives", List.nil()), " | ");
            return;
        }
        if ("JCTypeIntersection".equals(simpleName)) {
            print((List) readObject(tree, "bounds", List.nil()), " & ");
            return;
        }
        if ("JCMemberReference".equals(simpleName)) {
            printMemberReference0(tree);
            return;
        }
        if ("JCLambda".equals(simpleName)) {
            printLambda0(tree);
        } else if ("JCAnnotatedType".equals(simpleName)) {
            printAnnotatedType0(tree);
        } else if (!"JCPackageDecl".equals(simpleName)) {
            throw new AssertionError("Unhandled tree type: " + tree.getClass() + ": " + tree);
        }
    }

    private boolean isJcAnnotatedType(Object o) {
        if (o == null) {
            return false;
        }
        if (this.jcAnnotatedTypeInit) {
            return this.jcAnnotatedTypeClass == o.getClass();
        }
        Class<?> c = o.getClass();
        if (c.getSimpleName().equals("JCAnnotatedType")) {
            this.jcAnnotatedTypeClass = c;
            this.jcAnnotatedTypeInit = true;
            return true;
        }
        return false;
    }

    private void printMemberReference0(JCTree tree) {
        print((JCTree) readObject(tree, "expr", (JCTree.JCExpression) null));
        print("::");
        List<? extends JCTree> list = (List) readObject(tree, "typeargs", List.nil());
        if (list != null && !list.isEmpty()) {
            print("<");
            print(list, ", ");
            print(">");
        }
        print(readObject(tree, "mode", new Object()).toString().equals("INVOKE") ? (CharSequence) readObject(tree, AppMeasurementSdk.ConditionalUserProperty.NAME, (Name) null) : AppSettingsData.STATUS_NEW);
    }

    private void printLambda0(JCTree tree) {
        List<JCTree.JCVariableDecl> params = (List) readObject(tree, "params", List.nil());
        boolean explicit = true;
        int paramLength = params.size();
        try {
            explicit = readObject(tree, "paramKind", new Object()).toString().equals("EXPLICIT");
        } catch (Exception e) {
        }
        boolean useParens = paramLength != 1 || explicit;
        if (useParens) {
            print("(");
        }
        if (explicit) {
            boolean first = true;
            for (JCTree.JCVariableDecl vd : params) {
                if (!first) {
                    print(", ");
                }
                first = false;
                printVarDefInline(vd);
            }
        } else {
            String sep = "";
            for (JCTree.JCVariableDecl param : params) {
                print(sep);
                print((CharSequence) param.name);
                sep = ", ";
            }
        }
        if (useParens) {
            print(")");
        }
        print(" -> ");
        JCTree.JCBlock jCBlock = (JCTree) readObject(tree, "body", (JCTree) null);
        if (jCBlock instanceof JCTree.JCBlock) {
            println("{");
            this.indent++;
            print(jCBlock.stats, "");
            this.indent--;
            aPrint("}");
            return;
        }
        print((JCTree) jCBlock);
    }

    private void printAnnotatedType0(JCTree tree) {
        JCTree.JCFieldAccess jCFieldAccess = (JCTree) readObject(tree, "underlyingType", (JCTree) null);
        if (jCFieldAccess instanceof JCTree.JCFieldAccess) {
            print((JCTree) jCFieldAccess.selected);
            print(Version.SEPARATOR);
            print((List) readObject(tree, "annotations", List.nil()), " ");
            print(" ");
            print((CharSequence) jCFieldAccess.name);
            return;
        }
        if (jCFieldAccess instanceof JCTree.JCArrayTypeTree) {
            printTypeArray0(tree);
            return;
        }
        print((List) readObject(tree, "annotations", List.nil()), " ");
        print(" ");
        print((JCTree) jCFieldAccess);
    }

    private void printTypeArray0(JCTree tree) {
        JCTree inner = tree;
        int dimCount = 0;
        while (true) {
            if (inner instanceof JCTree.JCArrayTypeTree) {
                inner = ((JCTree.JCArrayTypeTree) inner).elemtype;
                dimCount++;
            } else {
                if (!isJcAnnotatedType(inner)) {
                    break;
                }
                JCTree.JCArrayTypeTree jCArrayTypeTree = (JCTree) readObject(inner, "underlyingType", (JCTree) null);
                if (!(jCArrayTypeTree instanceof JCTree.JCArrayTypeTree)) {
                    break;
                }
                inner = jCArrayTypeTree.elemtype;
                dimCount++;
            }
        }
        print(inner);
        JCTree jCTree = tree;
        while (true) {
            JCTree inner2 = jCTree;
            if (inner2 instanceof JCTree.JCArrayTypeTree) {
                dimCount--;
                print((dimCount == 0 && this.innermostArrayBracketsAreVarargs) ? "..." : HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
                jCTree = ((JCTree.JCArrayTypeTree) inner2).elemtype;
            } else if (isJcAnnotatedType(inner2)) {
                JCTree.JCArrayTypeTree jCArrayTypeTree2 = (JCTree) readObject(inner2, "underlyingType", (JCTree) null);
                if (jCArrayTypeTree2 instanceof JCTree.JCArrayTypeTree) {
                    dimCount--;
                    print(" ");
                    print((List) readObject(inner2, "annotations", List.nil()), " ");
                    print(" ");
                    print((dimCount == 0 && this.innermostArrayBracketsAreVarargs) ? "..." : HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
                    jCTree = jCArrayTypeTree2.elemtype;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }
}
