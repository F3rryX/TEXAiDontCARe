package com.texa.carelib.profile.internal;

import android.R;
import android.util.SparseIntArray;
import com.texa.carelib.communication.Commands;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.Hex;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
class SerialProfileCommandSubscriptionController {
    private static final String TAG = "SerialProfileCommandSubscriptionController";
    private final NotificationListener mNotificationListener;
    private final Set<Integer> mNotifiedMessages = new HashSet();
    private final SparseIntArray mSubscriptions = new SparseIntArray();

    interface NotificationListener {
        void onNotificationReceived(MessageNotificationEvent messageNotificationEvent);
    }

    SerialProfileCommandSubscriptionController(NotificationListener notificationListener) {
        this.mNotificationListener = notificationListener;
    }

    void onCommandNotify(int i) {
        if (isSubscribed(i)) {
            CareLog.v(TAG, "Received notification for command 0x%1$s(%2$s)...", Hex.valueOf(i), Commands.getName(Integer.valueOf(i)));
            consumeNotification(this.mNotificationListener, i);
        } else {
            CareLog.w(TAG, "Received notification for command 0x%1$s(%2$s) from the dongle but no subscriber is yet registered to handle them...", Hex.valueOf(i), Commands.getName(Integer.valueOf(i)));
            enqueueNotification(Integer.valueOf(i));
        }
    }

    void subscribe(int i) {
        synchronized (this.mSubscriptions) {
            this.mSubscriptions.put(i, this.mSubscriptions.get(i, 0) + 1);
        }
        if (this.mNotifiedMessages.contains(Integer.valueOf(i))) {
            consumeNotification(this.mNotificationListener, i);
        }
    }

    void unsubscribe(int i) {
        synchronized (this.mSubscriptions) {
            int i2 = this.mSubscriptions.get(i, 0);
            if (i2 > 0) {
                this.mSubscriptions.put(i, i2 - 1);
            }
        }
    }

    protected void enqueueNotification(Integer num) {
        synchronized (this.mNotifiedMessages) {
            this.mNotifiedMessages.add(Integer.valueOf(R.id.message));
        }
    }

    protected boolean isSubscribed(int i) {
        synchronized (this.mSubscriptions) {
            boolean z = true;
            if (this.mSubscriptions.indexOfKey(i) < 0) {
                return true;
            }
            if (this.mSubscriptions.get(i, 0) <= 0) {
                z = false;
            }
            return z;
        }
    }

    protected void consumeNotification(NotificationListener notificationListener, int i) {
        MessageNotificationEvent messageNotificationEvent = new MessageNotificationEvent(i);
        notificationListener.onNotificationReceived(messageNotificationEvent);
        if (messageNotificationEvent.isConsumed()) {
            synchronized (this.mNotifiedMessages) {
                this.mNotifiedMessages.remove(Integer.valueOf(i));
            }
        }
    }

    static class MessageNotificationEvent {
        private final int mCommandId;
        private boolean mConsumed = false;

        MessageNotificationEvent(int i) {
            this.mCommandId = i;
        }

        boolean isConsumed() {
            return this.mConsumed;
        }

        void setConsumed() {
            this.mConsumed = true;
        }

        int getCommandId() {
            return this.mCommandId;
        }
    }
}
