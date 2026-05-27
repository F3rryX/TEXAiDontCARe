package com.texa.careapp.app.events;

/* JADX INFO: loaded from: classes2.dex */
public class ShowProgressEvent {
    private static final String TAG = "ShowProgressEvent";
    private CharSequence message;
    private CharSequence title;

    protected boolean canEqual(Object obj) {
        return obj instanceof ShowProgressEvent;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ShowProgressEvent)) {
            return false;
        }
        ShowProgressEvent showProgressEvent = (ShowProgressEvent) obj;
        if (!showProgressEvent.canEqual(this)) {
            return false;
        }
        CharSequence title = getTitle();
        CharSequence title2 = showProgressEvent.getTitle();
        if (title != null ? !title.equals(title2) : title2 != null) {
            return false;
        }
        CharSequence message = getMessage();
        CharSequence message2 = showProgressEvent.getMessage();
        return message != null ? message.equals(message2) : message2 == null;
    }

    public int hashCode() {
        CharSequence title = getTitle();
        int iHashCode = title == null ? 43 : title.hashCode();
        CharSequence message = getMessage();
        return ((iHashCode + 59) * 59) + (message != null ? message.hashCode() : 43);
    }

    public void setMessage(CharSequence charSequence) {
        this.message = charSequence;
    }

    public void setTitle(CharSequence charSequence) {
        this.title = charSequence;
    }

    public String toString() {
        return "ShowProgressEvent(title=" + ((Object) getTitle()) + ", message=" + ((Object) getMessage()) + ")";
    }

    public CharSequence getTitle() {
        return this.title;
    }

    public CharSequence getMessage() {
        return this.message;
    }
}
