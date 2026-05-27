package com.texa.carelib.communication.internal;

import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import com.texa.carelib.communication.Commands;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.core.utils.internal.Utils;
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes2.dex */
public class MessageTimeoutHandler {
    public static final String TAG = "MessageTimeoutHandler";
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final SparseArray<ConcurrentLinkedQueue<Runnable>> mPendingCommands = new SparseArray<>();

    public interface CommandTimeoutListener {
        void onCommandTimeout(Message message);
    }

    public void subscribe(Message message, int i, CommandTimeoutListener commandTimeoutListener) {
        int commandID = message.getCommandID();
        TimeoutTask timeoutTask = new TimeoutTask(message, commandTimeoutListener);
        ConcurrentLinkedQueue<Runnable> concurrentLinkedQueue = this.mPendingCommands.get(commandID);
        if (concurrentLinkedQueue == null) {
            concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
            this.mPendingCommands.put(commandID, concurrentLinkedQueue);
        }
        concurrentLinkedQueue.add(timeoutTask);
        if (!this.mHandler.postDelayed(timeoutTask, i)) {
            CareLog.wtf(TAG, "FATAL: Could not set the timeout event.", new Object[0]);
        }
        CareLog.v(TAG, "Subscribe command: 0x%02X(%s), Timeout: %d, Queue: %d", Integer.valueOf(commandID), Commands.getName(Integer.valueOf(commandID)), Integer.valueOf(i), Integer.valueOf(concurrentLinkedQueue.size()));
    }

    public void reset() {
        CareLog.v(TAG, "Unsubscribe all commands", new Object[0]);
        this.mHandler.removeCallbacksAndMessages(null);
        this.mPendingCommands.clear();
    }

    public void unsubscribe(Message message) {
        int commandID = message.getCommandID();
        ConcurrentLinkedQueue<Runnable> concurrentLinkedQueue = this.mPendingCommands.get(commandID);
        if (concurrentLinkedQueue != null) {
            Runnable runnablePoll = concurrentLinkedQueue.poll();
            CareLog.v(TAG, String.format("Unsubscribe command: 0x%02X(%s), Queue: %d", Integer.valueOf(commandID), Commands.getName(Integer.valueOf(commandID)), Integer.valueOf(concurrentLinkedQueue.size())), new Object[0]);
            if (runnablePoll != null) {
                this.mHandler.removeCallbacks(runnablePoll);
            }
        }
    }

    public int getPendingCommandsCount() {
        int size = 0;
        for (int i = 0; i < this.mPendingCommands.size(); i++) {
            ConcurrentLinkedQueue<Runnable> concurrentLinkedQueue = this.mPendingCommands.get(this.mPendingCommands.keyAt(i));
            if (concurrentLinkedQueue != null) {
                size += concurrentLinkedQueue.size();
            }
        }
        return size;
    }

    public void dump() {
        for (int i = 0; i < this.mPendingCommands.size(); i++) {
            int iKeyAt = this.mPendingCommands.keyAt(i);
            ConcurrentLinkedQueue<Runnable> concurrentLinkedQueue = this.mPendingCommands.get(iKeyAt);
            if (concurrentLinkedQueue != null && concurrentLinkedQueue.size() > 0) {
                CareLog.v(TAG, String.format("InProgress Command %d(%s): %d", Integer.valueOf(iKeyAt), Commands.getName(Integer.valueOf(iKeyAt)), Integer.valueOf(concurrentLinkedQueue.size())), new Object[0]);
            }
        }
    }

    private class TimeoutTask implements Runnable {
        private final Date mCreateDate = Calendar.getInstance().getTime();
        private final CommandTimeoutListener mListener;
        private final Message mMessage;

        public TimeoutTask(Message message, CommandTimeoutListener commandTimeoutListener) {
            this.mMessage = message;
            this.mListener = commandTimeoutListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            CareLog.v(MessageTimeoutHandler.TAG, String.format("Command %d(%s): TIMEOUT Send date[%s] Current Date[%s]", Integer.valueOf(this.mMessage.getCommandID()), Commands.getName(Integer.valueOf(this.mMessage.getCommandID())), Utils.getISO8601Date(this.mCreateDate), Utils.getISO8601Date(Utils.getUTCNow())), new Object[0]);
            CommandTimeoutListener commandTimeoutListener = this.mListener;
            if (commandTimeoutListener != null) {
                commandTimeoutListener.onCommandTimeout(this.mMessage);
            } else {
                CareLog.wtf(MessageTimeoutHandler.TAG, "command timeout is null!!!", new Object[0]);
            }
        }
    }
}
