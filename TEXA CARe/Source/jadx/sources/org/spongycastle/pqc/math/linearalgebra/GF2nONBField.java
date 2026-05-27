package org.spongycastle.pqc.math.linearalgebra;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.Random;

/* JADX INFO: loaded from: classes3.dex */
public class GF2nONBField extends GF2nField {
    private static final int MAXLONG = 64;
    private int mBit;
    private int mLength;
    int[][] mMult;
    private int mType;

    public GF2nONBField(int i, SecureRandom secureRandom) throws RuntimeException {
        super(secureRandom);
        if (i < 3) {
            throw new IllegalArgumentException("k must be at least 3");
        }
        this.mDegree = i;
        this.mLength = this.mDegree / 64;
        int i2 = this.mDegree & 63;
        this.mBit = i2;
        if (i2 == 0) {
            this.mBit = 64;
        } else {
            this.mLength++;
        }
        computeType();
        if (this.mType < 3) {
            this.mMult = (int[][]) Array.newInstance((Class<?>) int.class, this.mDegree, 2);
            for (int i3 = 0; i3 < this.mDegree; i3++) {
                int[][] iArr = this.mMult;
                iArr[i3][0] = -1;
                iArr[i3][1] = -1;
            }
            computeMultMatrix();
            computeFieldPolynomial();
            this.fields = new java.util.Vector();
            this.matrices = new java.util.Vector();
            return;
        }
        throw new RuntimeException("\nThe type of this field is " + this.mType);
    }

    int getONBLength() {
        return this.mLength;
    }

    int getONBBit() {
        return this.mBit;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GF2nField
    protected GF2nElement getRandomRoot(GF2Polynomial gF2Polynomial) {
        GF2nPolynomial gF2nPolynomialGcd;
        int degree;
        int degree2;
        GF2nPolynomial gF2nPolynomial = new GF2nPolynomial(gF2Polynomial, this);
        int degree3 = gF2nPolynomial.getDegree();
        while (degree3 > 1) {
            while (true) {
                GF2nONBElement gF2nONBElement = new GF2nONBElement(this, this.random);
                GF2nPolynomial gF2nPolynomial2 = new GF2nPolynomial(2, GF2nONBElement.ZERO(this));
                gF2nPolynomial2.set(1, gF2nONBElement);
                GF2nPolynomial gF2nPolynomial3 = new GF2nPolynomial(gF2nPolynomial2);
                for (int i = 1; i <= this.mDegree - 1; i++) {
                    gF2nPolynomial3 = gF2nPolynomial3.multiplyAndReduce(gF2nPolynomial3, gF2nPolynomial).add(gF2nPolynomial2);
                }
                gF2nPolynomialGcd = gF2nPolynomial3.gcd(gF2nPolynomial);
                degree = gF2nPolynomialGcd.getDegree();
                degree2 = gF2nPolynomial.getDegree();
                if (degree != 0 && degree != degree2) {
                    break;
                }
            }
            if ((degree << 1) > degree2) {
                gF2nPolynomial = gF2nPolynomial.quotient(gF2nPolynomialGcd);
            } else {
                gF2nPolynomial = new GF2nPolynomial(gF2nPolynomialGcd);
            }
            degree3 = gF2nPolynomial.getDegree();
        }
        return gF2nPolynomial.at(0);
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GF2nField
    protected void computeCOBMatrix(GF2nField gF2nField) {
        GF2nElement randomRoot;
        if (this.mDegree != gF2nField.mDegree) {
            throw new IllegalArgumentException("GF2nField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!");
        }
        GF2Polynomial[] gF2PolynomialArr = new GF2Polynomial[this.mDegree];
        for (int i = 0; i < this.mDegree; i++) {
            gF2PolynomialArr[i] = new GF2Polynomial(this.mDegree);
        }
        do {
            randomRoot = gF2nField.getRandomRoot(this.fieldPolynomial);
        } while (randomRoot.isZero());
        GF2nElement[] gF2nElementArr = new GF2nPolynomialElement[this.mDegree];
        gF2nElementArr[0] = (GF2nElement) randomRoot.clone();
        for (int i2 = 1; i2 < this.mDegree; i2++) {
            gF2nElementArr[i2] = gF2nElementArr[i2 - 1].square();
        }
        for (int i3 = 0; i3 < this.mDegree; i3++) {
            for (int i4 = 0; i4 < this.mDegree; i4++) {
                if (gF2nElementArr[i3].testBit(i4)) {
                    gF2PolynomialArr[(this.mDegree - i4) - 1].setBit((this.mDegree - i3) - 1);
                }
            }
        }
        this.fields.addElement(gF2nField);
        this.matrices.addElement(gF2PolynomialArr);
        gF2nField.fields.addElement(this);
        gF2nField.matrices.addElement(invertMatrix(gF2PolynomialArr));
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GF2nField
    protected void computeFieldPolynomial() {
        int i = this.mType;
        if (i == 1) {
            this.fieldPolynomial = new GF2Polynomial(this.mDegree + 1, "ALL");
            return;
        }
        if (i == 2) {
            GF2Polynomial gF2Polynomial = new GF2Polynomial(this.mDegree + 1, "ONE");
            GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this.mDegree + 1, "X");
            gF2Polynomial2.addToThis(gF2Polynomial);
            GF2Polynomial gF2Polynomial3 = gF2Polynomial;
            GF2Polynomial gF2Polynomial4 = gF2Polynomial2;
            int i2 = 1;
            while (i2 < this.mDegree) {
                GF2Polynomial gF2PolynomialShiftLeft = gF2Polynomial4.shiftLeft();
                gF2PolynomialShiftLeft.addToThis(gF2Polynomial3);
                i2++;
                gF2Polynomial3 = gF2Polynomial4;
                gF2Polynomial4 = gF2PolynomialShiftLeft;
            }
            this.fieldPolynomial = gF2Polynomial4;
        }
    }

    int[][] invMatrix(int[][] iArr) {
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) int.class, this.mDegree, this.mDegree);
        for (int i = 0; i < this.mDegree; i++) {
            iArr2[i][i] = 1;
        }
        for (int i2 = 0; i2 < this.mDegree; i2++) {
            for (int i3 = i2; i3 < this.mDegree; i3++) {
                iArr[(this.mDegree - 1) - i2][i3] = iArr[i2][i2];
            }
        }
        return (int[][]) null;
    }

    private void computeType() throws RuntimeException {
        if ((this.mDegree & 7) == 0) {
            throw new RuntimeException("The extension degree is divisible by 8!");
        }
        this.mType = 1;
        int iGcd = 0;
        while (iGcd != 1) {
            int i = (this.mType * this.mDegree) + 1;
            if (IntegerFunctions.isPrime(i)) {
                iGcd = IntegerFunctions.gcd((this.mType * this.mDegree) / IntegerFunctions.order(2, i), this.mDegree);
            }
            this.mType++;
        }
        int i2 = this.mType - 1;
        this.mType = i2;
        if (i2 == 1) {
            int i3 = (this.mDegree << 1) + 1;
            if (IntegerFunctions.isPrime(i3)) {
                if (IntegerFunctions.gcd((this.mDegree << 1) / IntegerFunctions.order(2, i3), this.mDegree) == 1) {
                    this.mType++;
                }
            }
        }
    }

    private void computeMultMatrix() {
        int iElementOfOrder;
        int i;
        int i2 = this.mType;
        if ((i2 & 7) != 0) {
            int i3 = (i2 * this.mDegree) + 1;
            int[] iArr = new int[i3];
            int i4 = this.mType;
            if (i4 == 1) {
                iElementOfOrder = 1;
            } else {
                iElementOfOrder = i4 == 2 ? i3 - 1 : elementOfOrder(i4, i3);
            }
            int i5 = 0;
            int i6 = 1;
            while (true) {
                i = this.mType;
                if (i5 >= i) {
                    break;
                }
                int i7 = i6;
                for (int i8 = 0; i8 < this.mDegree; i8++) {
                    iArr[i7] = i8;
                    i7 = (i7 << 1) % i3;
                    if (i7 < 0) {
                        i7 += i3;
                    }
                }
                i6 = (i6 * iElementOfOrder) % i3;
                if (i6 < 0) {
                    i6 += i3;
                }
                i5++;
            }
            if (i != 1) {
                if (i != 2) {
                    throw new RuntimeException("only type 1 or type 2 implemented");
                }
                int i9 = 1;
                while (i9 < i3 - 1) {
                    int[][] iArr2 = this.mMult;
                    int i10 = i9 + 1;
                    if (iArr2[iArr[i10]][0] == -1) {
                        iArr2[iArr[i10]][0] = iArr[i3 - i9];
                    } else {
                        iArr2[iArr[i10]][1] = iArr[i3 - i9];
                    }
                    i9 = i10;
                }
                return;
            }
            int i11 = 1;
            while (i11 < i3 - 1) {
                int[][] iArr3 = this.mMult;
                int i12 = i11 + 1;
                if (iArr3[iArr[i12]][0] == -1) {
                    iArr3[iArr[i12]][0] = iArr[i3 - i11];
                } else {
                    iArr3[iArr[i12]][1] = iArr[i3 - i11];
                }
                i11 = i12;
            }
            int i13 = this.mDegree >> 1;
            for (int i14 = 1; i14 <= i13; i14++) {
                int[][] iArr4 = this.mMult;
                int i15 = i14 - 1;
                if (iArr4[i15][0] == -1) {
                    iArr4[i15][0] = (i13 + i14) - 1;
                } else {
                    iArr4[i15][1] = (i13 + i14) - 1;
                }
                int i16 = (i13 + i14) - 1;
                if (iArr4[i16][0] == -1) {
                    iArr4[i16][0] = i15;
                } else {
                    iArr4[i16][1] = i15;
                }
            }
            return;
        }
        throw new RuntimeException("bisher nur fuer Gausssche Normalbasen implementiert");
    }

    private int elementOfOrder(int i, int i2) {
        Random random = new Random();
        int iNextInt = 0;
        while (iNextInt == 0) {
            int i3 = i2 - 1;
            iNextInt = random.nextInt() % i3;
            if (iNextInt < 0) {
                iNextInt += i3;
            }
        }
        int iOrder = IntegerFunctions.order(iNextInt, i2);
        while (true) {
            if (iOrder % i == 0 && iOrder != 0) {
                break;
            }
            while (iNextInt == 0) {
                int i4 = i2 - 1;
                iNextInt = random.nextInt() % i4;
                if (iNextInt < 0) {
                    iNextInt += i4;
                }
            }
            iOrder = IntegerFunctions.order(iNextInt, i2);
        }
        int i5 = iNextInt;
        for (int i6 = 2; i6 <= i / iOrder; i6++) {
            i5 *= iNextInt;
        }
        return i5;
    }
}
