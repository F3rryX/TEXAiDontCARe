package lombok.core;

import lombok.core.AST;

/* JADX INFO: loaded from: com.texa.care.apk:lombok/core/TypeResolver.SCL.lombok */
public class TypeResolver {
    private ImportList imports;

    public TypeResolver(ImportList importList) {
        this.imports = importList;
    }

    public boolean typeMatches(LombokNode<?, ?, ?> context, String fqn, String typeRef) {
        return typeRefToFullyQualifiedName(context, TypeLibrary.createLibraryForSingleType(fqn), typeRef) != null;
    }

    public String typeRefToFullyQualifiedName(LombokNode<?, ?, ?> context, TypeLibrary library, String typeRef) {
        String typeRef2 = LombokInternalAliasing.processAliases(typeRef);
        String qualified = library.toQualified(typeRef2);
        if (qualified == null) {
            return null;
        }
        if (typeRef2.equals(qualified)) {
            return typeRef2;
        }
        int firstDot = typeRef2.indexOf(46);
        if (firstDot == -1) {
            firstDot = typeRef2.length();
        }
        String firstTypeRef = typeRef2.substring(0, firstDot);
        String fromExplicitImport = this.imports.getFullyQualifiedNameForSimpleName(firstTypeRef);
        if (fromExplicitImport != null) {
            if ((String.valueOf(fromExplicitImport) + typeRef2.substring(firstDot)).equals(qualified)) {
                return qualified;
            }
            return null;
        }
        String pkgName = qualified.substring(0, (qualified.length() - typeRef2.length()) - 1);
        if (!this.imports.hasStarImport(pkgName)) {
            return null;
        }
        LombokNode<?, ?, ?> lombokNodeDirectUp = context;
        while (true) {
            LombokNode<?, ?, ?> n = lombokNodeDirectUp;
            if (n == null) {
                break;
            }
            if (n.getKind() == AST.Kind.TYPE && firstTypeRef.equals(n.getName())) {
                return null;
            }
            if (n.getKind() == AST.Kind.STATEMENT || n.getKind() == AST.Kind.LOCAL) {
                LombokNode<?, ?, ?> newN = n.directUp();
                if (newN == null) {
                    break;
                }
                if (newN.getKind() == AST.Kind.STATEMENT || newN.getKind() == AST.Kind.INITIALIZER || newN.getKind() == AST.Kind.METHOD) {
                    for (LombokNode<?, ?, ?> child : newN.down()) {
                        if (child.getKind() == AST.Kind.TYPE && firstTypeRef.equals(child.getName())) {
                            return null;
                        }
                        if (child == n) {
                            break;
                        }
                    }
                }
                lombokNodeDirectUp = newN;
            } else {
                if (n.getKind() == AST.Kind.TYPE || n.getKind() == AST.Kind.COMPILATION_UNIT) {
                    for (LombokNode<?, ?, ?> child2 : n.down()) {
                        if (child2.getKind() == AST.Kind.TYPE && firstTypeRef.equals(child2.getName())) {
                            return null;
                        }
                    }
                }
                lombokNodeDirectUp = n.directUp();
            }
        }
        return qualified;
    }
}
