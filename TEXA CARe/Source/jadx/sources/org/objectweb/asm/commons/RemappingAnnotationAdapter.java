package org.objectweb.asm.commons;

import org.objectweb.asm.AnnotationVisitor;
import org.objectweb.asm.Opcodes;

/* JADX INFO: loaded from: com.texa.care.apk:org/objectweb/asm/commons/RemappingAnnotationAdapter.SCL.lombok */
@Deprecated
public class RemappingAnnotationAdapter extends AnnotationVisitor {
    protected final Remapper remapper;

    public RemappingAnnotationAdapter(AnnotationVisitor annotationVisitor, Remapper remapper) {
        this(Opcodes.ASM6, annotationVisitor, remapper);
    }

    protected RemappingAnnotationAdapter(int api, AnnotationVisitor annotationVisitor, Remapper remapper) {
        super(api, annotationVisitor);
        this.remapper = remapper;
    }

    @Override // org.objectweb.asm.AnnotationVisitor
    public void visit(String name, Object value) {
        this.av.visit(name, this.remapper.mapValue(value));
    }

    @Override // org.objectweb.asm.AnnotationVisitor
    public void visitEnum(String name, String descriptor, String value) {
        this.av.visitEnum(name, this.remapper.mapDesc(descriptor), value);
    }

    @Override // org.objectweb.asm.AnnotationVisitor
    public AnnotationVisitor visitAnnotation(String name, String descriptor) {
        AnnotationVisitor annotationVisitor = this.av.visitAnnotation(name, this.remapper.mapDesc(descriptor));
        if (annotationVisitor == null) {
            return null;
        }
        return annotationVisitor == this.av ? this : new RemappingAnnotationAdapter(annotationVisitor, this.remapper);
    }

    @Override // org.objectweb.asm.AnnotationVisitor
    public AnnotationVisitor visitArray(String name) {
        AnnotationVisitor annotationVisitor = this.av.visitArray(name);
        if (annotationVisitor == null) {
            return null;
        }
        return annotationVisitor == this.av ? this : new RemappingAnnotationAdapter(annotationVisitor, this.remapper);
    }
}
