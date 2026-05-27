package lombok.javac;

import com.sun.source.tree.LabeledStatementTree;
import com.sun.source.tree.VariableTree;
import com.sun.tools.javac.tree.JCTree;
import com.sun.tools.javac.tree.TreeCopier;
import com.sun.tools.javac.util.Context;
import com.sun.tools.javac.util.List;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import lombok.javac.JavacTreeMaker;

/* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/TreeMirrorMaker.SCL.lombok */
public class TreeMirrorMaker extends TreeCopier<Void> {
    private final IdentityHashMap<JCTree, JCTree> originalToCopy;

    public TreeMirrorMaker(JavacTreeMaker maker, Context context) {
        super(maker.getUnderlyingTreeMaker());
        this.originalToCopy = new IdentityHashMap<>();
    }

    public <T extends JCTree> T copy(T t) {
        T t2 = (T) super.copy(t);
        this.originalToCopy.put(t, t2);
        return t2;
    }

    public <T extends JCTree> T copy(T t, Void r6) {
        T t2 = (T) super.copy(t, r6);
        this.originalToCopy.put(t, t2);
        return t2;
    }

    public <T extends JCTree> List<T> copy(List<T> list) {
        List<T> listCopy = super.copy(list);
        if (list != null) {
            Iterator it = list.iterator();
            Iterator it2 = listCopy.iterator();
            while (it.hasNext()) {
                this.originalToCopy.put((JCTree) it.next(), (JCTree) it2.next());
            }
        }
        return listCopy;
    }

    public <T extends JCTree> List<T> copy(List<T> list, Void r6) {
        List<T> listCopy = super.copy(list, r6);
        if (list != null) {
            Iterator it = list.iterator();
            Iterator it2 = listCopy.iterator();
            while (it.hasNext()) {
                this.originalToCopy.put((JCTree) it.next(), (JCTree) it2.next());
            }
        }
        return listCopy;
    }

    public Map<JCTree, JCTree> getOriginalToCopyMap() {
        return Collections.unmodifiableMap(this.originalToCopy);
    }

    /* JADX INFO: renamed from: visitVariable, reason: merged with bridge method [inline-methods] */
    public JCTree m2218visitVariable(VariableTree node, Void p) {
        JCTree.JCVariableDecl original = node instanceof JCTree.JCVariableDecl ? (JCTree.JCVariableDecl) node : null;
        JCTree.JCVariableDecl copy = super.visitVariable(node, p);
        if (original == null) {
            return copy;
        }
        copy.sym = original.sym;
        if (copy.sym != null) {
            copy.type = original.type;
        }
        if (copy.type != null) {
            boolean wipeSymAndType = copy.type.isErroneous();
            if (!wipeSymAndType) {
                JavacTreeMaker.TypeTag typeTag = JavacTreeMaker.TypeTag.typeTag(copy.type);
                wipeSymAndType = Javac.CTC_NONE.equals(typeTag) || Javac.CTC_ERROR.equals(typeTag) || Javac.CTC_UNKNOWN.equals(typeTag) || Javac.CTC_UNDETVAR.equals(typeTag);
            }
            if (wipeSymAndType) {
                copy.sym = null;
                copy.type = null;
            }
        }
        return copy;
    }

    /* JADX INFO: renamed from: visitLabeledStatement, reason: merged with bridge method [inline-methods] */
    public JCTree m2219visitLabeledStatement(LabeledStatementTree node, Void p) {
        return (JCTree) node.getStatement().accept(this, p);
    }
}
