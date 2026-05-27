package lombok.javac.handlers;

import com.sun.tools.javac.tree.JCTree;
import com.sun.tools.javac.util.List;
import java.util.Iterator;
import lombok.ConfigurationKeys;
import lombok.NonNull;
import lombok.core.AST;
import lombok.core.AnnotationValues;
import lombok.core.HandlerPriority;
import lombok.core.handlers.HandlerUtil;
import lombok.javac.Javac;
import lombok.javac.JavacAnnotationHandler;
import lombok.javac.JavacNode;
import lombok.javac.JavacTreeMaker;

/* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/handlers/HandleNonNull.SCL.lombok */
@HandlerPriority(512)
public class HandleNonNull extends JavacAnnotationHandler<NonNull> {
    /* JADX WARN: Removed duplicated region for block: B:50:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01d5 A[LOOP:2: B:58:0x01cb->B:60:0x01d5, LOOP_END] */
    @Override // lombok.javac.JavacAnnotationHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void handle(AnnotationValues<NonNull> annotation, JCTree.JCAnnotation ast, JavacNode annotationNode) {
        JavacNode paramNode;
        Iterator it;
        HandlerUtil.handleFlagUsage(annotationNode, ConfigurationKeys.NON_NULL_FLAG_USAGE, "@NonNull");
        if (annotationNode.up().getKind() == AST.Kind.FIELD) {
            try {
                if (Javac.isPrimitive(annotationNode.up().get().vartype)) {
                    annotationNode.addWarning("@NonNull is meaningless on a primitive.");
                }
                return;
            } catch (Exception e) {
                return;
            }
        }
        switch (annotationNode.up().getKind()) {
            case ARGUMENT:
                paramNode = annotationNode.up();
                break;
            case TYPE_USE:
                JavacNode typeNode = annotationNode.directUp();
                paramNode = typeNode.directUp();
                break;
            default:
                return;
        }
        if (paramNode.getKind() != AST.Kind.ARGUMENT) {
            return;
        }
        try {
            JCTree.JCMethodDecl declaration = paramNode.up().get();
            if (declaration.body == null) {
                return;
            }
            JCTree.JCStatement nullCheck = JavacHandlerUtil.recursiveSetGeneratedBy(JavacHandlerUtil.generateNullCheck(annotationNode.getTreeMaker(), paramNode, annotationNode), ast, annotationNode.getContext());
            if (nullCheck == null) {
                annotationNode.addWarning("@NonNull is meaningless on a primitive.");
                return;
            }
            List<JCTree.JCStatement> statements = declaration.body.stats;
            String expectedName = paramNode.getName();
            List<JCTree.JCStatement> stats = statements;
            int idx = 0;
            while (stats.size() > idx) {
                int i = idx;
                idx++;
                JCTree.JCSynchronized jCSynchronized = (JCTree.JCStatement) stats.get(i);
                if (!JavacHandlerUtil.isConstructorCall(jCSynchronized)) {
                    if (jCSynchronized instanceof JCTree.JCTry) {
                        stats = ((JCTree.JCTry) jCSynchronized).body.stats;
                        idx = 0;
                    } else if (jCSynchronized instanceof JCTree.JCSynchronized) {
                        stats = jCSynchronized.body.stats;
                        idx = 0;
                    } else {
                        String varNameOfNullCheck = returnVarNameIfNullCheck(jCSynchronized);
                        if (varNameOfNullCheck != null) {
                            if (varNameOfNullCheck.equals(expectedName)) {
                                return;
                            }
                        } else {
                            List<JCTree.JCStatement> tail = statements;
                            List<JCTree.JCStatement> head = List.nil();
                            for (JCTree.JCStatement stat : statements) {
                                if (JavacHandlerUtil.isConstructorCall(stat) || (JavacHandlerUtil.isGenerated(stat) && isNullCheck(stat))) {
                                    tail = tail.tail;
                                    head = head.prepend(stat);
                                } else {
                                    List<JCTree.JCStatement> newList = tail.prepend(nullCheck);
                                    it = head.iterator();
                                    while (it.hasNext()) {
                                        newList = newList.prepend((JCTree.JCStatement) it.next());
                                    }
                                    declaration.body.stats = newList;
                                    annotationNode.getAst().setChanged();
                                }
                            }
                            List<JCTree.JCStatement> newList2 = tail.prepend(nullCheck);
                            it = head.iterator();
                            while (it.hasNext()) {
                            }
                            declaration.body.stats = newList2;
                            annotationNode.getAst().setChanged();
                        }
                    }
                }
            }
            List<JCTree.JCStatement> tail2 = statements;
            List<JCTree.JCStatement> head2 = List.nil();
            while (r0.hasNext()) {
            }
            List<JCTree.JCStatement> newList22 = tail2.prepend(nullCheck);
            it = head2.iterator();
            while (it.hasNext()) {
            }
            declaration.body.stats = newList22;
            annotationNode.getAst().setChanged();
        } catch (Exception e2) {
        }
    }

    public boolean isNullCheck(JCTree.JCStatement stat) {
        return returnVarNameIfNullCheck(stat) != null;
    }

    public String returnVarNameIfNullCheck(JCTree.JCStatement stat) {
        JCTree.JCExpression cond;
        if (!(stat instanceof JCTree.JCIf)) {
            return null;
        }
        JCTree.JCStatement then = ((JCTree.JCIf) stat).thenpart;
        if (then instanceof JCTree.JCBlock) {
            List<JCTree.JCStatement> stats = ((JCTree.JCBlock) then).stats;
            if (stats.length() == 0) {
                return null;
            }
            then = (JCTree.JCStatement) stats.get(0);
        }
        if (!(then instanceof JCTree.JCThrow)) {
            return null;
        }
        JCTree.JCExpression jCExpression = ((JCTree.JCIf) stat).cond;
        while (true) {
            cond = jCExpression;
            if (!(cond instanceof JCTree.JCParens)) {
                break;
            }
            jCExpression = ((JCTree.JCParens) cond).expr;
        }
        if (!(cond instanceof JCTree.JCBinary)) {
            return null;
        }
        JCTree.JCBinary bin = (JCTree.JCBinary) cond;
        if (Javac.CTC_EQUAL.equals(JavacTreeMaker.TreeTag.treeTag((JCTree) bin)) && (bin.lhs instanceof JCTree.JCIdent) && (bin.rhs instanceof JCTree.JCLiteral) && Javac.CTC_BOT.equals(JavacTreeMaker.TypeTag.typeTag((JCTree) bin.rhs))) {
            return bin.lhs.name.toString();
        }
        return null;
    }
}
