package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: SlidingWindow.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0000\u001aH\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0\u00070\u0006\"\u0004\b\u0000\u0010\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\b0\u00062\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0000\u001aD\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\b0\u00070\u000e\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\u000e2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0000¨\u0006\u000f"}, d2 = {"checkWindowSizeStep", "", "size", "", "step", "windowedIterator", "", "", ExifInterface.GPS_DIRECTION_TRUE, "iterator", "partialWindows", "", "reuseBuffer", "windowedSequence", "Lkotlin/sequences/Sequence;", "kotlin-stdlib"}, k = 2, mv = {1, 4, 0})
public final class SlidingWindowKt {
    public static final void checkWindowSizeStep(int i, int i2) {
        String str;
        if (i > 0 && i2 > 0) {
            return;
        }
        if (i != i2) {
            str = "Both size " + i + " and step " + i2 + " must be greater than zero.";
        } else {
            str = "size " + i + " must be greater than zero.";
        }
        throw new IllegalArgumentException(str.toString());
    }

    public static final <T> Sequence<List<T>> windowedSequence(final Sequence<? extends T> windowedSequence, final int i, final int i2, final boolean z, final boolean z2) {
        Intrinsics.checkNotNullParameter(windowedSequence, "$this$windowedSequence");
        checkWindowSizeStep(i, i2);
        return new Sequence<List<? extends T>>() { // from class: kotlin.collections.SlidingWindowKt$windowedSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            public Iterator<List<? extends T>> iterator() {
                return SlidingWindowKt.windowedIterator(windowedSequence.iterator(), i, i2, z, z2);
            }
        };
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: kotlin.collections.SlidingWindowKt$windowedIterator$1, reason: invalid class name */
    /* JADX INFO: compiled from: SlidingWindow.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/SequenceScope;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0})
    @DebugMetadata(c = "kotlin.collections.SlidingWindowKt$windowedIterator$1", f = "SlidingWindow.kt", i = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4}, l = {34, 40, 49, 55, 58}, m = "invokeSuspend", n = {"$this$iterator", "bufferInitialCapacity", "gap", "buffer", "skip", "e", "$this$iterator", "bufferInitialCapacity", "gap", "buffer", "skip", "$this$iterator", "bufferInitialCapacity", "gap", "buffer", "e", "$this$iterator", "bufferInitialCapacity", "gap", "buffer", "$this$iterator", "bufferInitialCapacity", "gap", "buffer"}, s = {"L$0", "I$0", "I$1", "L$1", "I$2", "L$2", "L$0", "I$0", "I$1", "L$1", "I$2", "L$0", "I$0", "I$1", "L$1", "L$2", "L$0", "I$0", "I$1", "L$1", "L$0", "I$0", "I$1", "L$1"})
    static final class AnonymousClass1<T> extends RestrictedSuspendLambda implements Function2<SequenceScope<? super List<? extends T>>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Iterator $iterator;
        final /* synthetic */ boolean $partialWindows;
        final /* synthetic */ boolean $reuseBuffer;
        final /* synthetic */ int $size;
        final /* synthetic */ int $step;
        int I$0;
        int I$1;
        int I$2;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        private SequenceScope p$;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i, int i2, Iterator it, boolean z, boolean z2, Continuation continuation) {
            super(2, continuation);
            this.$size = i;
            this.$step = i2;
            this.$iterator = it;
            this.$reuseBuffer = z;
            this.$partialWindows = z2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> completion) {
            Intrinsics.checkNotNullParameter(completion, "completion");
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$size, this.$step, this.$iterator, this.$reuseBuffer, this.$partialWindows, completion);
            anonymousClass1.p$ = (SequenceScope) obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0094  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00c5  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00c9  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00fc A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x010f  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x015a  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0166  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x018f  */
        /* JADX WARN: Type inference failed for: r11v7 */
        /* JADX WARN: Type inference failed for: r12v1 */
        /* JADX WARN: Type inference failed for: r1v15 */
        /* JADX WARN: Type inference failed for: r1v17, types: [java.lang.Object, kotlin.collections.RingBuffer] */
        /* JADX WARN: Type inference failed for: r1v18, types: [kotlin.collections.RingBuffer] */
        /* JADX WARN: Type inference failed for: r1v25 */
        /* JADX WARN: Type inference failed for: r1v26 */
        /* JADX WARN: Type inference failed for: r1v27 */
        /* JADX WARN: Type inference failed for: r3v9 */
        /* JADX WARN: Type inference failed for: r5v13 */
        /* JADX WARN: Type inference failed for: r5v14 */
        /* JADX WARN: Type inference failed for: r5v15 */
        /* JADX WARN: Type inference failed for: r5v16 */
        /* JADX WARN: Type inference failed for: r5v2 */
        /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object, kotlin.collections.RingBuffer] */
        /* JADX WARN: Type inference failed for: r5v5 */
        /* JADX WARN: Type inference failed for: r5v6, types: [kotlin.collections.RingBuffer] */
        /* JADX WARN: Type inference failed for: r5v7, types: [kotlin.collections.RingBuffer] */
        /* JADX WARN: Type inference failed for: r7v10, types: [java.lang.Object, kotlin.sequences.SequenceScope] */
        /* JADX WARN: Type inference failed for: r7v11 */
        /* JADX WARN: Type inference failed for: r7v17 */
        /* JADX WARN: Type inference failed for: r7v18 */
        /* JADX WARN: Type inference failed for: r7v19 */
        /* JADX WARN: Type inference failed for: r7v8 */
        /* JADX WARN: Type inference failed for: r8v14 */
        /* JADX WARN: Type inference failed for: r9v6 */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00bf -> B:31:0x00c1). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x014d -> B:60:0x0150). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x0186 -> B:73:0x0189). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            SequenceScope sequenceScope;
            int i;
            SequenceScope sequenceScope2;
            AnonymousClass1<T> anonymousClass1;
            int i2;
            Iterator it;
            ArrayList arrayList;
            int i3;
            AnonymousClass1<T> anonymousClass12;
            int i4;
            Iterator it2;
            ?? Expanded;
            ?? r1;
            int i5;
            int i6;
            ?? r7;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i7 = this.label;
            if (i7 == 0) {
                ResultKt.throwOnFailure(obj);
                sequenceScope = this.p$;
                int iCoerceAtMost = RangesKt.coerceAtMost(this.$size, 1024);
                i = this.$step - this.$size;
                if (i >= 0) {
                    arrayList = new ArrayList(iCoerceAtMost);
                    i3 = 0;
                    anonymousClass12 = this;
                    i4 = iCoerceAtMost;
                    it2 = this.$iterator;
                    while (it2.hasNext()) {
                    }
                    if (!arrayList.isEmpty()) {
                        anonymousClass12.L$0 = sequenceScope;
                        anonymousClass12.I$0 = i4;
                        anonymousClass12.I$1 = i;
                        anonymousClass12.L$1 = arrayList;
                        anonymousClass12.I$2 = i3;
                        anonymousClass12.label = 2;
                        if (sequenceScope.yield(arrayList, anonymousClass12) == coroutine_suspended) {
                        }
                    }
                    return Unit.INSTANCE;
                }
                RingBuffer ringBuffer = new RingBuffer(iCoerceAtMost);
                sequenceScope2 = sequenceScope;
                anonymousClass1 = this;
                i2 = iCoerceAtMost;
                it = this.$iterator;
                Expanded = ringBuffer;
                while (it.hasNext()) {
                }
                if (anonymousClass1.$partialWindows) {
                }
                return Unit.INSTANCE;
            }
            if (i7 == 1) {
                it2 = (Iterator) this.L$3;
                arrayList = (ArrayList) this.L$1;
                i3 = this.I$1;
                i4 = this.I$0;
                SequenceScope sequenceScope3 = (SequenceScope) this.L$0;
                ResultKt.throwOnFailure(obj);
                anonymousClass12 = this;
                if (anonymousClass12.$reuseBuffer) {
                    arrayList = new ArrayList(anonymousClass12.$size);
                } else {
                    arrayList.clear();
                }
                sequenceScope = sequenceScope3;
                i = i3;
                while (it2.hasNext()) {
                    Object next = it2.next();
                    if (i3 > 0) {
                        i3--;
                    } else {
                        arrayList.add(next);
                        if (arrayList.size() == anonymousClass12.$size) {
                            anonymousClass12.L$0 = sequenceScope;
                            anonymousClass12.I$0 = i4;
                            anonymousClass12.I$1 = i;
                            anonymousClass12.L$1 = arrayList;
                            anonymousClass12.I$2 = i3;
                            anonymousClass12.L$2 = next;
                            anonymousClass12.L$3 = it2;
                            anonymousClass12.label = 1;
                            if (sequenceScope.yield(arrayList, anonymousClass12) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            i3 = i;
                            sequenceScope3 = sequenceScope;
                            if (anonymousClass12.$reuseBuffer) {
                            }
                            sequenceScope = sequenceScope3;
                            i = i3;
                            while (it2.hasNext()) {
                            }
                        }
                    }
                }
                if ((!arrayList.isEmpty()) && (anonymousClass12.$partialWindows || arrayList.size() == anonymousClass12.$size)) {
                    anonymousClass12.L$0 = sequenceScope;
                    anonymousClass12.I$0 = i4;
                    anonymousClass12.I$1 = i;
                    anonymousClass12.L$1 = arrayList;
                    anonymousClass12.I$2 = i3;
                    anonymousClass12.label = 2;
                    if (sequenceScope.yield(arrayList, anonymousClass12) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            }
            if (i7 == 2) {
            } else {
                if (i7 == 3) {
                    it = (Iterator) this.L$3;
                    RingBuffer ringBuffer2 = (RingBuffer) this.L$1;
                    i = this.I$1;
                    i2 = this.I$0;
                    sequenceScope2 = (SequenceScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    anonymousClass1 = this;
                    ?? r5 = ringBuffer2;
                    r5.removeFirst(anonymousClass1.$step);
                    Expanded = r5;
                    while (it.hasNext()) {
                        Object next2 = it.next();
                        Expanded.add(next2);
                        if (Expanded.isFull()) {
                            int size = Expanded.size();
                            int i8 = anonymousClass1.$size;
                            if (size >= i8) {
                                List arrayList2 = anonymousClass1.$reuseBuffer ? (List) Expanded : new ArrayList((Collection) Expanded);
                                anonymousClass1.L$0 = sequenceScope2;
                                anonymousClass1.I$0 = i2;
                                anonymousClass1.I$1 = i;
                                anonymousClass1.L$1 = Expanded;
                                anonymousClass1.L$2 = next2;
                                anonymousClass1.L$3 = it;
                                anonymousClass1.label = 3;
                                r5 = Expanded;
                                if (sequenceScope2.yield(arrayList2, anonymousClass1) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                r5.removeFirst(anonymousClass1.$step);
                                Expanded = r5;
                                while (it.hasNext()) {
                                }
                            } else {
                                Expanded = Expanded.expanded(i8);
                            }
                        }
                    }
                    if (anonymousClass1.$partialWindows) {
                        r1 = Expanded;
                        i5 = i;
                        i6 = i2;
                        r7 = sequenceScope2;
                        if (r1.size() <= anonymousClass1.$step) {
                        }
                    }
                    return Unit.INSTANCE;
                }
                if (i7 == 4) {
                    RingBuffer ringBuffer3 = (RingBuffer) this.L$1;
                    i5 = this.I$1;
                    i6 = this.I$0;
                    SequenceScope sequenceScope4 = (SequenceScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    anonymousClass1 = this;
                    ?? r12 = ringBuffer3;
                    ?? r72 = sequenceScope4;
                    r12.removeFirst(anonymousClass1.$step);
                    r1 = r12;
                    r7 = r72;
                    if (r1.size() <= anonymousClass1.$step) {
                        List arrayList3 = anonymousClass1.$reuseBuffer ? (List) r1 : new ArrayList((Collection) r1);
                        anonymousClass1.L$0 = r7;
                        anonymousClass1.I$0 = i6;
                        anonymousClass1.I$1 = i5;
                        anonymousClass1.L$1 = r1;
                        anonymousClass1.label = 4;
                        Object objYield = r7.yield(arrayList3, anonymousClass1);
                        r12 = r1;
                        r72 = r7;
                        if (objYield == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        r12.removeFirst(anonymousClass1.$step);
                        r1 = r12;
                        r7 = r72;
                        if (r1.size() <= anonymousClass1.$step) {
                            if (!((Collection) r1).isEmpty()) {
                                anonymousClass1.L$0 = r7;
                                anonymousClass1.I$0 = i6;
                                anonymousClass1.I$1 = i5;
                                anonymousClass1.L$1 = r1;
                                anonymousClass1.label = 5;
                                if (r7.yield(r1, anonymousClass1) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            }
                            return Unit.INSTANCE;
                        }
                    }
                } else {
                    if (i7 != 5) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
    }

    public static final <T> Iterator<List<T>> windowedIterator(Iterator<? extends T> iterator, int i, int i2, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(iterator, "iterator");
        return !iterator.hasNext() ? EmptyIterator.INSTANCE : SequencesKt.iterator(new AnonymousClass1(i, i2, iterator, z2, z, null));
    }
}
