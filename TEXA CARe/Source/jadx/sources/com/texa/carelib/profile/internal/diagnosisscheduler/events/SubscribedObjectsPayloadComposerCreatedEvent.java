package com.texa.carelib.profile.internal.diagnosisscheduler.events;

import com.texa.carelib.core.CareError;
import com.texa.carelib.core.events.ErrorEventBase;

/* JADX INFO: loaded from: classes2.dex */
public class SubscribedObjectsPayloadComposerCreatedEvent extends ErrorEventBase {
    public SubscribedObjectsPayloadComposerCreatedEvent(Object obj, CareError careError) {
        super(obj, careError);
    }
}
