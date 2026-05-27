package com.texa.carelib.care;

import com.texa.carelib.core.utils.internal.Utils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public class DateTime {
    private final Precision mPrecision;
    private final Date mTime;

    public enum Precision {
        Year,
        Month,
        Day,
        Hour,
        Minute,
        Second
    }

    public DateTime(long j) {
        this(j, Precision.Second);
    }

    public DateTime(long j, Precision precision) {
        this.mTime = new Date(j);
        this.mPrecision = precision;
    }

    public Date getTime() {
        return this.mTime;
    }

    public Precision getPrecision() {
        return this.mPrecision;
    }

    public long getTimeInMillis() {
        return this.mTime.getTime();
    }

    public boolean equals(Object obj) {
        DateTime dateTime;
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() == obj.getClass()) {
            dateTime = (DateTime) obj;
        } else {
            if (Date.class != obj.getClass()) {
                return false;
            }
            dateTime = new DateTime(((Date) obj).getTime(), Precision.Second);
        }
        if (!Utils.equals(this.mPrecision, dateTime.mPrecision)) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar.setTimeInMillis(this.mTime.getTime());
        calendar2.setTimeInMillis(dateTime.mTime.getTime());
        if (this.mPrecision.compareTo(Precision.Year) >= 0 && calendar.get(1) != calendar2.get(1)) {
            return false;
        }
        if (this.mPrecision.compareTo(Precision.Month) >= 0 && calendar.get(2) != calendar2.get(2)) {
            return false;
        }
        if (this.mPrecision.compareTo(Precision.Day) >= 0 && calendar.get(5) != calendar2.get(5)) {
            return false;
        }
        if (this.mPrecision.compareTo(Precision.Hour) >= 0 && calendar.get(11) != calendar2.get(11)) {
            return false;
        }
        if (this.mPrecision.compareTo(Precision.Minute) < 0 || calendar.get(12) == calendar2.get(12)) {
            return this.mPrecision.compareTo(Precision.Second) < 0 || calendar.get(13) == calendar2.get(13);
        }
        return false;
    }

    public int hashCode() {
        return Utils.hashCode(this.mTime, this.mPrecision);
    }

    public String format() {
        return format(Locale.getDefault());
    }

    /* JADX INFO: renamed from: com.texa.carelib.care.DateTime$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$texa$carelib$care$DateTime$Precision;

        static {
            int[] iArr = new int[Precision.values().length];
            $SwitchMap$com$texa$carelib$care$DateTime$Precision = iArr;
            try {
                iArr[Precision.Year.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$DateTime$Precision[Precision.Month.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$DateTime$Precision[Precision.Day.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$DateTime$Precision[Precision.Hour.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$DateTime$Precision[Precision.Minute.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$texa$carelib$care$DateTime$Precision[Precision.Second.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public String format(Locale locale) {
        int i = AnonymousClass1.$SwitchMap$com$texa$carelib$care$DateTime$Precision[getPrecision().ordinal()];
        if (i == 1) {
            return new SimpleDateFormat("yyyy", locale).format(getTime());
        }
        if (i == 2) {
            return new SimpleDateFormat("yyyy-MM", locale).format(getTime());
        }
        if (i == 3) {
            return new SimpleDateFormat("yyyy-MM-dd", locale).format(getTime());
        }
        if (i == 4) {
            return new SimpleDateFormat("yyyy-MM-dd HH:00", locale).format(getTime());
        }
        if (i == 5) {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm", locale).format(getTime());
        }
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale).format(getTime());
    }

    public static DateTime parse(String str) throws ParseException {
        Precision precision;
        SimpleDateFormat simpleDateFormat = null;
        switch (str.length()) {
            case 4:
                simpleDateFormat = new SimpleDateFormat("yyyy", Locale.US);
                precision = Precision.Year;
                break;
            case 5:
            case 6:
                simpleDateFormat = new SimpleDateFormat("yyyyMM", Locale.US);
                precision = Precision.Month;
                break;
            case 7:
            case 8:
                simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.US);
                precision = Precision.Day;
                break;
            case 9:
            case 10:
                simpleDateFormat = new SimpleDateFormat("yyyyMMddHH", Locale.US);
                precision = Precision.Hour;
                break;
            case 11:
            case 12:
                simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmm", Locale.US);
                precision = Precision.Minute;
                break;
            case 13:
            case 14:
                simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss", Locale.US);
                precision = Precision.Second;
                break;
            default:
                precision = null;
                break;
        }
        if (simpleDateFormat == null) {
            throw new IllegalArgumentException("Invalid date time format.");
        }
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return new DateTime(simpleDateFormat.parse(str).getTime(), precision);
    }
}
