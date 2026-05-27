package lombok.javac;

import com.sun.source.util.Trees;
import com.sun.tools.javac.tree.JCTree;
import com.sun.tools.javac.util.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.SortedSet;
import javax.annotation.processing.Messager;
import lombok.ConfigurationKeys;
import lombok.core.CleanupRegistry;
import lombok.core.LombokConfiguration;

/* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/JavacTransformer.SCL.lombok */
public class JavacTransformer {
    private final HandlerLibrary handlers;
    private final Messager messager;

    public JavacTransformer(Messager messager, Trees trees) {
        this.messager = messager;
        this.handlers = HandlerLibrary.load(messager, trees);
    }

    public SortedSet<Long> getPriorities() {
        return this.handlers.getPriorities();
    }

    public SortedSet<Long> getPrioritiesRequiringResolutionReset() {
        return this.handlers.getPrioritiesRequiringResolutionReset();
    }

    public void transform(long priority, Context context, List<JCTree.JCCompilationUnit> compilationUnitsRaw, CleanupRegistry cleanup) {
        com.sun.tools.javac.util.List<JCTree.JCCompilationUnit> compilationUnits;
        if (compilationUnitsRaw instanceof com.sun.tools.javac.util.List) {
            compilationUnits = (com.sun.tools.javac.util.List) compilationUnitsRaw;
        } else {
            compilationUnits = com.sun.tools.javac.util.List.nil();
            for (int i = compilationUnitsRaw.size() - 1; i >= 0; i--) {
                compilationUnits = compilationUnits.prepend(compilationUnitsRaw.get(i));
            }
        }
        List<JavacAST> asts = new ArrayList<>();
        for (JCTree.JCCompilationUnit unit : compilationUnits) {
            if (!Boolean.TRUE.equals(LombokConfiguration.read(ConfigurationKeys.LOMBOK_DISABLE, JavacAST.getAbsoluteFileLocation(unit)))) {
                asts.add(new JavacAST(this.messager, context, unit, cleanup));
            }
        }
        for (JavacAST ast : asts) {
            ast.traverse(new AnnotationVisitor(priority));
            this.handlers.callASTVisitors(ast, priority);
        }
        for (JavacAST ast2 : asts) {
            if (ast2.isChanged()) {
                LombokOptions.markChanged(context, ast2.top().get());
            }
        }
    }

    /* JADX INFO: loaded from: com.texa.care.apk:lombok/javac/JavacTransformer$AnnotationVisitor.SCL.lombok */
    private class AnnotationVisitor extends JavacASTAdapter {
        private final long priority;

        AnnotationVisitor(long priority) {
            this.priority = priority;
        }

        @Override // lombok.javac.JavacASTAdapter, lombok.javac.JavacASTVisitor
        public void visitAnnotationOnType(JCTree.JCClassDecl type, JavacNode annotationNode, JCTree.JCAnnotation annotation) {
            JCTree.JCCompilationUnit top = annotationNode.top().get();
            JavacTransformer.this.handlers.handleAnnotation(top, annotationNode, annotation, this.priority);
        }

        @Override // lombok.javac.JavacASTAdapter, lombok.javac.JavacASTVisitor
        public void visitAnnotationOnField(JCTree.JCVariableDecl field, JavacNode annotationNode, JCTree.JCAnnotation annotation) {
            JCTree.JCCompilationUnit top = annotationNode.top().get();
            JavacTransformer.this.handlers.handleAnnotation(top, annotationNode, annotation, this.priority);
        }

        @Override // lombok.javac.JavacASTAdapter, lombok.javac.JavacASTVisitor
        public void visitAnnotationOnMethod(JCTree.JCMethodDecl method, JavacNode annotationNode, JCTree.JCAnnotation annotation) {
            JCTree.JCCompilationUnit top = annotationNode.top().get();
            JavacTransformer.this.handlers.handleAnnotation(top, annotationNode, annotation, this.priority);
        }

        @Override // lombok.javac.JavacASTAdapter, lombok.javac.JavacASTVisitor
        public void visitAnnotationOnMethodArgument(JCTree.JCVariableDecl argument, JCTree.JCMethodDecl method, JavacNode annotationNode, JCTree.JCAnnotation annotation) {
            JCTree.JCCompilationUnit top = annotationNode.top().get();
            JavacTransformer.this.handlers.handleAnnotation(top, annotationNode, annotation, this.priority);
        }

        @Override // lombok.javac.JavacASTAdapter, lombok.javac.JavacASTVisitor
        public void visitAnnotationOnLocal(JCTree.JCVariableDecl local, JavacNode annotationNode, JCTree.JCAnnotation annotation) {
            JCTree.JCCompilationUnit top = annotationNode.top().get();
            JavacTransformer.this.handlers.handleAnnotation(top, annotationNode, annotation, this.priority);
        }

        @Override // lombok.javac.JavacASTAdapter, lombok.javac.JavacASTVisitor
        public void visitAnnotationOnTypeUse(JCTree typeUse, JavacNode annotationNode, JCTree.JCAnnotation annotation) {
            JCTree.JCCompilationUnit top = annotationNode.top().get();
            JavacTransformer.this.handlers.handleAnnotation(top, annotationNode, annotation, this.priority);
        }
    }
}
