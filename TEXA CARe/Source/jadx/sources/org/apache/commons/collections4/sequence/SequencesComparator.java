package org.apache.commons.collections4.sequence;

import java.util.List;
import org.apache.commons.collections4.Equator;
import org.apache.commons.collections4.functors.DefaultEquator;

/* JADX INFO: loaded from: classes2.dex */
public class SequencesComparator<T> {
    private final Equator<? super T> equator;
    private final List<T> sequence1;
    private final List<T> sequence2;
    private final int[] vDown;
    private final int[] vUp;

    public SequencesComparator(List<T> list, List<T> list2) {
        this(list, list2, DefaultEquator.defaultEquator());
    }

    public SequencesComparator(List<T> list, List<T> list2, Equator<? super T> equator) {
        this.sequence1 = list;
        this.sequence2 = list2;
        this.equator = equator;
        int size = list.size() + list2.size() + 2;
        this.vDown = new int[size];
        this.vUp = new int[size];
    }

    public EditScript<T> getScript() {
        EditScript<T> editScript = new EditScript<>();
        buildScript(0, this.sequence1.size(), 0, this.sequence2.size(), editScript);
        return editScript;
    }

    private Snake buildSnake(int i, int i2, int i3, int i4) {
        int i5 = i;
        while (true) {
            int i6 = i5 - i2;
            if (i6 >= i4 || i5 >= i3 || !this.equator.equate(this.sequence1.get(i5), this.sequence2.get(i6))) {
                break;
            }
            i5++;
        }
        return new Snake(i, i5, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x0128, code lost:
    
        r5 = r5 + 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Snake getMiddleSnake(int i, int i2, int i3, int i4) {
        int i5;
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i6 == 0 || i7 == 0) {
            return null;
        }
        int i8 = i6 - i7;
        int i9 = i7 + i6;
        if (i9 % 2 != 0) {
            i9++;
        }
        int i10 = i9 / 2;
        int i11 = i10 + 1;
        this.vDown[i11] = i;
        this.vUp[i11] = i2 + 1;
        int i12 = 0;
        while (i12 <= i10) {
            int i13 = -i12;
            for (int i14 = i13; i14 <= i12; i14 += 2) {
                int i15 = i14 + i10;
                if (i14 == i13) {
                    int[] iArr = this.vDown;
                    iArr[i15] = iArr[i15 + 1];
                } else {
                    if (i14 != i12) {
                        int[] iArr2 = this.vDown;
                        if (iArr2[i15 - 1] < iArr2[i15 + 1]) {
                        }
                    }
                    int[] iArr3 = this.vDown;
                    iArr3[i15] = iArr3[i15 - 1] + 1;
                }
                int i16 = this.vDown[i15];
                for (int i17 = ((i16 - i) + i3) - i14; i16 < i2 && i17 < i4 && this.equator.equate(this.sequence1.get(i16), this.sequence2.get(i17)); i17++) {
                    i16++;
                    this.vDown[i15] = i16;
                }
                if (i8 % 2 != 0 && i8 - i12 <= i14 && i14 <= i8 + i12) {
                    int[] iArr4 = this.vUp;
                    int i18 = i15 - i8;
                    if (iArr4[i18] <= this.vDown[i15]) {
                        return buildSnake(iArr4[i18], (i14 + i) - i3, i2, i4);
                    }
                }
            }
            int i19 = i8 - i12;
            int i20 = i19;
            while (true) {
                int i21 = i8 + i12;
                if (i20 <= i21) {
                    int i22 = (i20 + i10) - i8;
                    if (i20 == i19) {
                        this.vUp[i22] = r11[i22 + 1] - 1;
                    } else {
                        if (i20 != i21) {
                            int[] iArr5 = this.vUp;
                            if (iArr5[i22 + 1] <= iArr5[i22 - 1]) {
                            }
                        }
                        int[] iArr6 = this.vUp;
                        iArr6[i22] = iArr6[i22 - 1];
                    }
                    int i23 = this.vUp[i22] - 1;
                    int i24 = ((i23 - i) + i3) - i20;
                    while (i23 >= i && i24 >= i3) {
                        i5 = i10;
                        if (!this.equator.equate(this.sequence1.get(i23), this.sequence2.get(i24))) {
                            break;
                        }
                        this.vUp[i22] = i23;
                        i24--;
                        i23--;
                        i10 = i5;
                    }
                    i5 = i10;
                    if (i8 % 2 == 0 && i13 <= i20 && i20 <= i12) {
                        int[] iArr7 = this.vUp;
                        if (iArr7[i22] <= this.vDown[i22 + i8]) {
                            return buildSnake(iArr7[i22], (i20 + i) - i3, i2, i4);
                        }
                    }
                    i20 += 2;
                    i10 = i5;
                }
            }
        }
        throw new RuntimeException("Internal Error");
    }

    private void buildScript(int i, int i2, int i3, int i4, EditScript<T> editScript) {
        Snake middleSnake = getMiddleSnake(i, i2, i3, i4);
        if (middleSnake != null && ((middleSnake.getStart() != i2 || middleSnake.getDiag() != i2 - i4) && (middleSnake.getEnd() != i || middleSnake.getDiag() != i - i3))) {
            buildScript(i, middleSnake.getStart(), i3, middleSnake.getStart() - middleSnake.getDiag(), editScript);
            for (int start = middleSnake.getStart(); start < middleSnake.getEnd(); start++) {
                editScript.append(new KeepCommand<>(this.sequence1.get(start)));
            }
            buildScript(middleSnake.getEnd(), i2, middleSnake.getEnd() - middleSnake.getDiag(), i4, editScript);
            return;
        }
        int i5 = i;
        int i6 = i3;
        while (true) {
            if (i5 >= i2 && i6 >= i4) {
                return;
            }
            if (i5 < i2 && i6 < i4 && this.equator.equate(this.sequence1.get(i5), this.sequence2.get(i6))) {
                editScript.append(new KeepCommand<>(this.sequence1.get(i5)));
                i5++;
            } else if (i2 - i > i4 - i3) {
                editScript.append(new DeleteCommand<>(this.sequence1.get(i5)));
                i5++;
            } else {
                editScript.append(new InsertCommand<>(this.sequence2.get(i6)));
            }
            i6++;
        }
    }

    private static class Snake {
        private final int diag;
        private final int end;
        private final int start;

        public Snake(int i, int i2, int i3) {
            this.start = i;
            this.end = i2;
            this.diag = i3;
        }

        public int getStart() {
            return this.start;
        }

        public int getEnd() {
            return this.end;
        }

        public int getDiag() {
            return this.diag;
        }
    }
}
