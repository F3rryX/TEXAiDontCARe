package com.texa.carelib.core;

import com.texa.carelib.core.utils.internal.Check;
import com.texa.carelib.core.utils.internal.Utils;
import java.lang.Comparable;

/* JADX INFO: loaded from: classes2.dex */
public final class Range<T extends Comparable<? super T>> {
    private final T mLower;
    private final T mUpper;

    public Range(T t, T t2) {
        Check.notNull(t, "lower must not be null");
        Check.notNull(t2, "upper must not be null");
        this.mLower = t;
        this.mUpper = t2;
        if (t.compareTo(t2) > 0) {
            throw new IllegalArgumentException("lower must be less than or equal to upper");
        }
    }

    public static <T extends Comparable<? super T>> Range<T> create(T t, T t2) {
        return new Range<>(t, t2);
    }

    public T getLower() {
        return this.mLower;
    }

    public T getUpper() {
        return this.mUpper;
    }

    public boolean contains(T t) {
        Check.notNull(t, "value must not be null");
        return (t.compareTo(this.mLower) >= 0) && (t.compareTo(this.mUpper) <= 0);
    }

    public boolean contains(Range<T> range) {
        Check.notNull(range, "value must not be null");
        return (range.mLower.compareTo(this.mLower) >= 0) && (range.mUpper.compareTo(this.mUpper) <= 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Range)) {
            return false;
        }
        Range range = (Range) obj;
        return this.mLower.equals(range.mLower) && this.mUpper.equals(range.mUpper);
    }

    public T clamp(T t) {
        Check.notNull(t, "value must not be null");
        if (t.compareTo(this.mLower) < 0) {
            return this.mLower;
        }
        return t.compareTo(this.mUpper) > 0 ? this.mUpper : t;
    }

    public Range<T> intersect(Range<T> range) {
        Check.notNull(range, "Range must not be null");
        int iCompareTo = range.mLower.compareTo(this.mLower);
        int iCompareTo2 = range.mUpper.compareTo(this.mUpper);
        if (iCompareTo <= 0 && iCompareTo2 >= 0) {
            return this;
        }
        if (iCompareTo < 0 || iCompareTo2 > 0) {
            return create(iCompareTo <= 0 ? this.mLower : range.mLower, iCompareTo2 >= 0 ? this.mUpper : range.mUpper);
        }
        return range;
    }

    public Range<T> intersect(T t, T t2) {
        Check.notNull(t, "lower must not be null");
        Check.notNull(t2, "upper must not be null");
        int iCompareTo = t.compareTo(this.mLower);
        int iCompareTo2 = t2.compareTo(this.mUpper);
        if (iCompareTo <= 0 && iCompareTo2 >= 0) {
            return this;
        }
        if (iCompareTo <= 0) {
            t = this.mLower;
        }
        if (iCompareTo2 >= 0) {
            t2 = this.mUpper;
        }
        return create(t, t2);
    }

    public Range<T> extend(Range<T> range) {
        Check.notNull(range, "Range must not be null");
        int iCompareTo = range.mLower.compareTo(this.mLower);
        int iCompareTo2 = range.mUpper.compareTo(this.mUpper);
        if (iCompareTo <= 0 && iCompareTo2 >= 0) {
            return range;
        }
        if (iCompareTo < 0 || iCompareTo2 > 0) {
            return create(iCompareTo >= 0 ? this.mLower : range.mLower, iCompareTo2 <= 0 ? this.mUpper : range.mUpper);
        }
        return this;
    }

    public Range<T> extend(T t, T t2) {
        Check.notNull(t, "lower must not be null");
        Check.notNull(t2, "upper must not be null");
        int iCompareTo = t.compareTo(this.mLower);
        int iCompareTo2 = t2.compareTo(this.mUpper);
        if (iCompareTo >= 0 && iCompareTo2 <= 0) {
            return this;
        }
        if (iCompareTo >= 0) {
            t = this.mLower;
        }
        if (iCompareTo2 <= 0) {
            t2 = this.mUpper;
        }
        return create(t, t2);
    }

    public Range<T> extend(T t) {
        Check.notNull(t, "value must not be null");
        return extend(t, t);
    }

    public String toString() {
        return String.format("[%s, %s]", this.mLower, this.mUpper);
    }

    public int hashCode() {
        return Utils.hashCode(this.mLower, this.mUpper);
    }
}
