package com.google.firebase.appindexing.builders;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class DigitalDocumentPermissionBuilder extends IndexableBuilder<DigitalDocumentPermissionBuilder> {
    public static final String COMMENT_PERMISSION = "CommentPermission";
    public static final String READ_PERMISSION = "ReadPermission";
    public static final String WRITE_PERMISSION = "WritePermission";

    DigitalDocumentPermissionBuilder() {
        super("DigitalDocumentPermission");
    }

    public DigitalDocumentPermissionBuilder setGrantee(PersonBuilder... personBuilderArr) {
        put("grantee", personBuilderArr);
        return this;
    }

    public DigitalDocumentPermissionBuilder setPermissionType(String str) {
        put("permissionType", str);
        return this;
    }
}
