package com.google.firebase.appindexing.builders;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Date;

/* JADX INFO: compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class ReservationBuilder extends IndexableBuilder<ReservationBuilder> {
    ReservationBuilder() {
        super("Reservation");
    }

    public ReservationBuilder setPartySize(long j) {
        put("partySize", j);
        return this;
    }

    public ReservationBuilder setReservationFor(LocalBusinessBuilder localBusinessBuilder) {
        put("reservationFor", localBusinessBuilder);
        return this;
    }

    public ReservationBuilder setStartDate(Date date) {
        Preconditions.checkNotNull(date);
        put("startDate", date.getTime());
        return this;
    }
}
