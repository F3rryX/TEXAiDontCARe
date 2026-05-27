package com.google.firebase.appindexing.builders;

import java.util.Date;
import org.spongycastle.i18n.TextBundle;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class DigitalDocumentBuilder extends IndexableBuilder<DigitalDocumentBuilder> {
    DigitalDocumentBuilder() {
        super("DigitalDocument");
    }

    public DigitalDocumentBuilder setAuthor(PersonBuilder... personBuilderArr) {
        put("author", personBuilderArr);
        return this;
    }

    public DigitalDocumentBuilder setDateCreated(Date date) {
        put("dateCreated", date.getTime());
        return this;
    }

    public DigitalDocumentBuilder setDateModified(Date date) {
        put("dateModified", date.getTime());
        return this;
    }

    public DigitalDocumentBuilder setHasDigitalDocumentPermission(DigitalDocumentPermissionBuilder... digitalDocumentPermissionBuilderArr) {
        put("hasDigitalDocumentPermission", digitalDocumentPermissionBuilderArr);
        return this;
    }

    public DigitalDocumentBuilder setText(String str) {
        put(TextBundle.TEXT_ENTRY, str);
        return this;
    }

    DigitalDocumentBuilder(String str) {
        super(str);
    }
}
