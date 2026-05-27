package com.texa.carelib.profile.taskexecutor.internal;

import com.texa.carelib.core.logging.CareLog;
import com.texa.carelib.profile.internal.filecarrier.SerialFileCarrierFacade;
import com.texa.carelib.profile.taskexecutor.CareExecutor;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ThreadExecutor implements CareExecutor {
    private final boolean mDaemon;
    private final List<Thread> mThreadList = new ArrayList();

    public ThreadExecutor(boolean z) {
        this.mDaemon = z;
    }

    @Override // java.util.concurrent.Executor
    public void execute(final Runnable runnable) {
        Thread thread = new Thread(new Runnable() { // from class: com.texa.carelib.profile.taskexecutor.internal.ThreadExecutor$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws Exception {
                this.f$0.m755x8d9a48bc(runnable);
            }
        });
        thread.setPriority(1);
        thread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.texa.carelib.profile.taskexecutor.internal.ThreadExecutor$$ExternalSyntheticLambda1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public final void uncaughtException(Thread thread2, Throwable th) {
                CareLog.e(SerialFileCarrierFacade.TAG, th, "Exception occurred.", new Object[0]);
            }
        });
        thread.start();
        synchronized (this.mThreadList) {
            this.mThreadList.add(thread);
        }
    }

    /* JADX INFO: renamed from: lambda$execute$0$com-texa-carelib-profile-taskexecutor-internal-ThreadExecutor, reason: not valid java name */
    public /* synthetic */ void m755x8d9a48bc(Runnable runnable) throws Exception {
        try {
            runnable.run();
            synchronized (this.mThreadList) {
                this.mThreadList.remove(Thread.currentThread());
            }
        } catch (Exception e) {
            synchronized (this.mThreadList) {
                this.mThreadList.remove(Thread.currentThread());
                throw e;
            }
        }
    }

    @Override // com.texa.carelib.profile.taskexecutor.CareExecutor
    public void interruptAll() {
        synchronized (this.mThreadList) {
            for (Thread thread : this.mThreadList) {
                if (thread.isAlive()) {
                    thread.interrupt();
                }
            }
        }
    }
}
