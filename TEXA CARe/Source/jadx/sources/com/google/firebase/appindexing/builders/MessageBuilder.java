package com.google.firebase.appindexing.builders;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Date;
import org.spongycastle.i18n.TextBundle;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class MessageBuilder extends IndexableBuilder<MessageBuilder> {
    MessageBuilder() {
        super("Message");
    }

    public MessageBuilder setDateRead(Date date) {
        Preconditions.checkNotNull(date);
        put("dateRead", date.getTime());
        return this;
    }

    public MessageBuilder setDateReceived(Date date) {
        Preconditions.checkNotNull(date);
        put("dateReceived", date.getTime());
        return this;
    }

    public MessageBuilder setDateSent(Date date) {
        Preconditions.checkNotNull(date);
        put("dateSent", date.getTime());
        return this;
    }

    public MessageBuilder setMessageAttachment(IndexableBuilder<?>... indexableBuilderArr) {
        put("messageAttachment", indexableBuilderArr);
        return this;
    }

    public MessageBuilder setRecipient(PersonBuilder... personBuilderArr) {
        put("recipient", personBuilderArr);
        return this;
    }

    public MessageBuilder setSender(PersonBuilder personBuilder) {
        put("sender", personBuilder);
        return this;
    }

    public MessageBuilder setText(String str) {
        put(TextBundle.TEXT_ENTRY, str);
        return this;
    }

    MessageBuilder(String str) {
        super("EmailMessage");
    }
}
