package org.objectweb.asm;

import com.texa.carelib.core.utils.Version;

/* JADX INFO: loaded from: com.texa.care.apk:org/objectweb/asm/MethodTooLargeException.SCL.lombok */
public final class MethodTooLargeException extends IndexOutOfBoundsException {
    private static final long serialVersionUID = 6807380416709738314L;
    private final String className;
    private final String methodName;
    private final String descriptor;
    private final int codeSize;

    public MethodTooLargeException(String className, String methodName, String descriptor, int codeSize) {
        super("Method too large: " + className + Version.SEPARATOR + methodName + " " + descriptor);
        this.className = className;
        this.methodName = methodName;
        this.descriptor = descriptor;
        this.codeSize = codeSize;
    }

    public String getClassName() {
        return this.className;
    }

    public String getMethodName() {
        return this.methodName;
    }

    public String getDescriptor() {
        return this.descriptor;
    }

    public int getCodeSize() {
        return this.codeSize;
    }
}
