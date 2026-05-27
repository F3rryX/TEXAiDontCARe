package lombok.eclipse.handlers.singulars;

import java.util.List;
import lombok.core.LombokImmutableList;
import lombok.eclipse.EclipseNode;
import lombok.eclipse.handlers.EclipseSingularsRecipes;
import org.eclipse.jdt.internal.compiler.ast.Statement;

/* JADX INFO: loaded from: com.texa.care.apk:lombok/eclipse/handlers/singulars/EclipseJavaUtilSetSingularizer.SCL.lombok */
public class EclipseJavaUtilSetSingularizer extends EclipseJavaUtilListSetSingularizer {
    @Override // lombok.eclipse.handlers.singulars.EclipseJavaUtilListSetSingularizer, lombok.eclipse.handlers.EclipseSingularsRecipes.EclipseSingularizer
    public /* bridge */ /* synthetic */ List generateFields(EclipseSingularsRecipes.SingularData singularData, EclipseNode eclipseNode) {
        return super.generateFields(singularData, eclipseNode);
    }

    @Override // lombok.eclipse.handlers.singulars.EclipseJavaUtilListSetSingularizer, lombok.eclipse.handlers.EclipseSingularsRecipes.EclipseSingularizer
    public /* bridge */ /* synthetic */ void generateMethods(EclipseSingularsRecipes.SingularData singularData, boolean z, EclipseNode eclipseNode, boolean z2, EclipseSingularsRecipes.TypeReferenceMaker typeReferenceMaker, EclipseSingularsRecipes.StatementMaker statementMaker) {
        super.generateMethods(singularData, z, eclipseNode, z2, typeReferenceMaker, statementMaker);
    }

    @Override // lombok.eclipse.handlers.singulars.EclipseJavaUtilListSetSingularizer, lombok.eclipse.handlers.EclipseSingularsRecipes.EclipseSingularizer
    public /* bridge */ /* synthetic */ List listFieldsToBeGenerated(EclipseSingularsRecipes.SingularData singularData, EclipseNode eclipseNode) {
        return super.listFieldsToBeGenerated(singularData, eclipseNode);
    }

    @Override // lombok.eclipse.handlers.singulars.EclipseJavaUtilListSetSingularizer, lombok.eclipse.handlers.EclipseSingularsRecipes.EclipseSingularizer
    public /* bridge */ /* synthetic */ List listMethodsToBeGenerated(EclipseSingularsRecipes.SingularData singularData, EclipseNode eclipseNode) {
        return super.listMethodsToBeGenerated(singularData, eclipseNode);
    }

    @Override // lombok.eclipse.handlers.EclipseSingularsRecipes.EclipseSingularizer
    public LombokImmutableList<String> getSupportedTypes() {
        return LombokImmutableList.of("java.util.Set", "java.util.SortedSet", "java.util.NavigableSet");
    }

    @Override // lombok.eclipse.handlers.EclipseSingularsRecipes.EclipseSingularizer
    public void appendBuildCode(EclipseSingularsRecipes.SingularData data, EclipseNode builderType, List<Statement> statements, char[] targetVariableName, String builderVariable) {
        if (useGuavaInstead(builderType)) {
            this.guavaListSetSingularizer.appendBuildCode(data, builderType, statements, targetVariableName, builderVariable);
        } else if (data.getTargetFqn().equals("java.util.Set")) {
            statements.addAll(createJavaUtilSetMapInitialCapacitySwitchStatements(data, builderType, false, "emptySet", "singleton", "LinkedHashSet", builderVariable));
        } else {
            statements.addAll(createJavaUtilSimpleCreationAndFillStatements(data, builderType, false, true, false, true, "TreeSet", builderVariable));
        }
    }
}
