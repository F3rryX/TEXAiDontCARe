package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.ArrayRow;
import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class Chain {
    private static final boolean DEBUG = false;

    Chain() {
    }

    static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i) {
        int i2;
        int i3;
        ChainHead[] chainHeadArr;
        if (i == 0) {
            int i4 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i3 = i4;
            i2 = 0;
        } else {
            i2 = 2;
            i3 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            ChainHead chainHead = chainHeadArr[i5];
            chainHead.define();
            if (constraintWidgetContainer.optimizeFor(4)) {
                if (!Optimizer.applyChainOptimized(constraintWidgetContainer, linearSystem, i, i2, chainHead)) {
                    applyChainConstraints(constraintWidgetContainer, linearSystem, i, i2, chainHead);
                }
            } else {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i, i2, chainHead);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x004a A[PHI: r8 r14
      0x004a: PHI (r8v4 boolean) = (r8v2 boolean), (r8v47 boolean) binds: [B:28:0x0048, B:17:0x0035] A[DONT_GENERATE, DONT_INLINE]
      0x004a: PHI (r14v4 boolean) = (r14v2 boolean), (r14v32 boolean) binds: [B:28:0x0048, B:17:0x0035] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004c A[PHI: r8 r14
      0x004c: PHI (r8v44 boolean) = (r8v2 boolean), (r8v47 boolean) binds: [B:28:0x0048, B:17:0x0035] A[DONT_GENERATE, DONT_INLINE]
      0x004c: PHI (r14v29 boolean) = (r14v2 boolean), (r14v32 boolean) binds: [B:28:0x0048, B:17:0x0035] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x015c  */
    /* JADX WARN: Type inference failed for: r38v0, types: [androidx.constraintlayout.solver.LinearSystem] */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27, types: [androidx.constraintlayout.solver.SolverVariable] */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [androidx.constraintlayout.solver.widgets.ConstraintWidget] */
    /* JADX WARN: Type inference failed for: r7v32 */
    /* JADX WARN: Type inference failed for: r7v33 */
    /* JADX WARN: Type inference failed for: r7v34 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i, int i2, ChainHead chainHead) {
        boolean z;
        boolean z2;
        boolean z3;
        int i3;
        ConstraintWidget constraintWidget;
        int i4;
        ConstraintAnchor constraintAnchor;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        ConstraintWidget constraintWidget2;
        ConstraintAnchor constraintAnchor2;
        SolverVariable solverVariable3;
        SolverVariable solverVariable4;
        ConstraintWidget constraintWidget3;
        ?? r5;
        float f;
        int size;
        ArrayList<ConstraintWidget> arrayList;
        int i5;
        boolean z4;
        int i6;
        boolean z5;
        ConstraintWidget constraintWidget4;
        boolean z6;
        int i7;
        ConstraintWidget constraintWidget5 = chainHead.mFirst;
        ConstraintWidget constraintWidget6 = chainHead.mLast;
        ConstraintWidget constraintWidget7 = chainHead.mFirstVisibleWidget;
        ConstraintWidget constraintWidget8 = chainHead.mLastVisibleWidget;
        ConstraintWidget constraintWidget9 = chainHead.mHead;
        float f2 = chainHead.mTotalWeight;
        ConstraintWidget constraintWidget10 = chainHead.mFirstMatchConstraintWidget;
        ConstraintWidget constraintWidget11 = chainHead.mLastMatchConstraintWidget;
        boolean z7 = constraintWidgetContainer.mListDimensionBehaviors[i] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (i == 0) {
            z = constraintWidget9.mHorizontalChainStyle == 0;
            z2 = constraintWidget9.mHorizontalChainStyle == 1;
            z3 = constraintWidget9.mHorizontalChainStyle == 2;
        } else {
            z = constraintWidget9.mVerticalChainStyle == 0;
            z2 = constraintWidget9.mVerticalChainStyle == 1;
            if (constraintWidget9.mVerticalChainStyle == 2) {
            }
        }
        ?? r7 = constraintWidget5;
        boolean z8 = z2;
        boolean z9 = z;
        boolean z10 = false;
        while (true) {
            if (z10) {
                break;
            }
            ConstraintAnchor constraintAnchor3 = r7.mListAnchors[i2];
            int i8 = (z7 || z3) ? 1 : 4;
            int margin = constraintAnchor3.getMargin();
            float f3 = f2;
            if (constraintAnchor3.mTarget != null && r7 != constraintWidget5) {
                margin += constraintAnchor3.mTarget.getMargin();
            }
            int i9 = margin;
            if (z3 && r7 != constraintWidget5 && r7 != constraintWidget7) {
                z4 = z10;
                z5 = z8;
                i6 = 6;
            } else if (z9 && z7) {
                z4 = z10;
                z5 = z8;
                i6 = 4;
            } else {
                z4 = z10;
                i6 = i8;
                z5 = z8;
            }
            if (constraintAnchor3.mTarget != null) {
                if (r7 == constraintWidget7) {
                    z6 = z9;
                    constraintWidget4 = constraintWidget9;
                    linearSystem.addGreaterThan(constraintAnchor3.mSolverVariable, constraintAnchor3.mTarget.mSolverVariable, i9, 5);
                } else {
                    constraintWidget4 = constraintWidget9;
                    z6 = z9;
                    linearSystem.addGreaterThan(constraintAnchor3.mSolverVariable, constraintAnchor3.mTarget.mSolverVariable, i9, 6);
                }
                linearSystem.addEquality(constraintAnchor3.mSolverVariable, constraintAnchor3.mTarget.mSolverVariable, i9, i6);
            } else {
                constraintWidget4 = constraintWidget9;
                z6 = z9;
            }
            if (z7) {
                if (r7.getVisibility() == 8 || r7.mListDimensionBehaviors[i] != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i7 = 0;
                } else {
                    i7 = 0;
                    linearSystem.addGreaterThan(r7.mListAnchors[i2 + 1].mSolverVariable, r7.mListAnchors[i2].mSolverVariable, 0, 5);
                }
                linearSystem.addGreaterThan(r7.mListAnchors[i2].mSolverVariable, constraintWidgetContainer.mListAnchors[i2].mSolverVariable, i7, 6);
            }
            ConstraintAnchor constraintAnchor4 = r7.mListAnchors[i2 + 1].mTarget;
            if (constraintAnchor4 != null) {
                ConstraintWidget constraintWidget12 = constraintAnchor4.mOwner;
                if (constraintWidget12.mListAnchors[i2].mTarget != null && constraintWidget12.mListAnchors[i2].mTarget.mOwner == r7) {
                    obj = constraintWidget12;
                }
            }
            if (obj != null) {
                r7 = obj;
                z10 = z4;
            } else {
                z10 = true;
            }
            z8 = z5;
            f2 = f3;
            z9 = z6;
            constraintWidget9 = constraintWidget4;
            r7 = r7;
        }
        ConstraintWidget constraintWidget13 = constraintWidget9;
        float f4 = f2;
        boolean z11 = z9;
        boolean z12 = z8;
        if (constraintWidget8 != null) {
            int i10 = i2 + 1;
            if (constraintWidget6.mListAnchors[i10].mTarget != null) {
                ConstraintAnchor constraintAnchor5 = constraintWidget8.mListAnchors[i10];
                linearSystem.addLowerThan(constraintAnchor5.mSolverVariable, constraintWidget6.mListAnchors[i10].mTarget.mSolverVariable, -constraintAnchor5.getMargin(), 5);
            }
        }
        if (z7) {
            int i11 = i2 + 1;
            linearSystem.addGreaterThan(constraintWidgetContainer.mListAnchors[i11].mSolverVariable, constraintWidget6.mListAnchors[i11].mSolverVariable, constraintWidget6.mListAnchors[i11].getMargin(), 6);
        }
        ArrayList<ConstraintWidget> arrayList2 = chainHead.mWeightedMatchConstraintsWidgets;
        if (arrayList2 != null && (size = arrayList2.size()) > 1) {
            float f5 = (!chainHead.mHasUndefinedWeights || chainHead.mHasComplexMatchWeights) ? f4 : chainHead.mWidgetsMatchCount;
            float f6 = 0.0f;
            ConstraintWidget constraintWidget14 = null;
            int i12 = 0;
            float f7 = 0.0f;
            while (i12 < size) {
                ConstraintWidget constraintWidget15 = arrayList2.get(i12);
                float f8 = constraintWidget15.mWeight[i];
                if (f8 < f6) {
                    if (chainHead.mHasComplexMatchWeights) {
                        linearSystem.addEquality(constraintWidget15.mListAnchors[i2 + 1].mSolverVariable, constraintWidget15.mListAnchors[i2].mSolverVariable, 0, 4);
                        arrayList = arrayList2;
                        i5 = size;
                        i12++;
                        size = i5;
                        arrayList2 = arrayList;
                        f6 = 0.0f;
                    } else {
                        f8 = 1.0f;
                        f6 = 0.0f;
                    }
                }
                if (f8 == f6) {
                    linearSystem.addEquality(constraintWidget15.mListAnchors[i2 + 1].mSolverVariable, constraintWidget15.mListAnchors[i2].mSolverVariable, 0, 6);
                    arrayList = arrayList2;
                    i5 = size;
                    i12++;
                    size = i5;
                    arrayList2 = arrayList;
                    f6 = 0.0f;
                } else {
                    if (constraintWidget14 != null) {
                        SolverVariable solverVariable5 = constraintWidget14.mListAnchors[i2].mSolverVariable;
                        int i13 = i2 + 1;
                        SolverVariable solverVariable6 = constraintWidget14.mListAnchors[i13].mSolverVariable;
                        SolverVariable solverVariable7 = constraintWidget15.mListAnchors[i2].mSolverVariable;
                        arrayList = arrayList2;
                        SolverVariable solverVariable8 = constraintWidget15.mListAnchors[i13].mSolverVariable;
                        i5 = size;
                        ArrayRow arrayRowCreateRow = linearSystem.createRow();
                        arrayRowCreateRow.createRowEqualMatchDimensions(f7, f5, f8, solverVariable5, solverVariable6, solverVariable7, solverVariable8);
                        linearSystem.addConstraint(arrayRowCreateRow);
                    } else {
                        arrayList = arrayList2;
                        i5 = size;
                    }
                    f7 = f8;
                    constraintWidget14 = constraintWidget15;
                    i12++;
                    size = i5;
                    arrayList2 = arrayList;
                    f6 = 0.0f;
                }
            }
        }
        if (constraintWidget7 != null && (constraintWidget7 == constraintWidget8 || z3)) {
            ConstraintAnchor constraintAnchor6 = constraintWidget5.mListAnchors[i2];
            int i14 = i2 + 1;
            ConstraintAnchor constraintAnchor7 = constraintWidget6.mListAnchors[i14];
            SolverVariable solverVariable9 = constraintWidget5.mListAnchors[i2].mTarget != null ? constraintWidget5.mListAnchors[i2].mTarget.mSolverVariable : null;
            SolverVariable solverVariable10 = constraintWidget6.mListAnchors[i14].mTarget != null ? constraintWidget6.mListAnchors[i14].mTarget.mSolverVariable : null;
            if (constraintWidget7 == constraintWidget8) {
                constraintAnchor6 = constraintWidget7.mListAnchors[i2];
                constraintAnchor7 = constraintWidget7.mListAnchors[i14];
            }
            if (solverVariable9 != null && solverVariable10 != null) {
                if (i == 0) {
                    f = constraintWidget13.mHorizontalBiasPercent;
                } else {
                    f = constraintWidget13.mVerticalBiasPercent;
                }
                linearSystem.addCentering(constraintAnchor6.mSolverVariable, solverVariable9, constraintAnchor6.getMargin(), f, solverVariable10, constraintAnchor7.mSolverVariable, constraintAnchor7.getMargin(), 5);
            }
        } else if (!z11 || constraintWidget7 == null) {
            int i15 = 8;
            if (z12 && constraintWidget7 != null) {
                boolean z13 = chainHead.mWidgetsMatchCount > 0 && chainHead.mWidgetsCount == chainHead.mWidgetsMatchCount;
                ConstraintWidget constraintWidget16 = constraintWidget7;
                ConstraintWidget constraintWidget17 = constraintWidget16;
                while (constraintWidget16 != null) {
                    ConstraintWidget constraintWidget18 = constraintWidget16.mNextChainWidget[i];
                    while (constraintWidget18 != null && constraintWidget18.getVisibility() == i15) {
                        constraintWidget18 = constraintWidget18.mNextChainWidget[i];
                    }
                    if (constraintWidget16 == constraintWidget7 || constraintWidget16 == constraintWidget8 || constraintWidget18 == null) {
                        constraintWidget = constraintWidget17;
                        i4 = 8;
                    } else {
                        ConstraintWidget constraintWidget19 = constraintWidget18 == constraintWidget8 ? null : constraintWidget18;
                        ConstraintAnchor constraintAnchor8 = constraintWidget16.mListAnchors[i2];
                        SolverVariable solverVariable11 = constraintAnchor8.mSolverVariable;
                        if (constraintAnchor8.mTarget != null) {
                            SolverVariable solverVariable12 = constraintAnchor8.mTarget.mSolverVariable;
                        }
                        int i16 = i2 + 1;
                        SolverVariable solverVariable13 = constraintWidget17.mListAnchors[i16].mSolverVariable;
                        int margin2 = constraintAnchor8.getMargin();
                        int margin3 = constraintWidget16.mListAnchors[i16].getMargin();
                        if (constraintWidget19 != null) {
                            constraintAnchor = constraintWidget19.mListAnchors[i2];
                            solverVariable = constraintAnchor.mSolverVariable;
                            solverVariable2 = constraintAnchor.mTarget != null ? constraintAnchor.mTarget.mSolverVariable : null;
                        } else {
                            constraintAnchor = constraintWidget16.mListAnchors[i16].mTarget;
                            solverVariable = constraintAnchor != null ? constraintAnchor.mSolverVariable : null;
                            solverVariable2 = constraintWidget16.mListAnchors[i16].mSolverVariable;
                        }
                        if (constraintAnchor != null) {
                            margin3 += constraintAnchor.getMargin();
                        }
                        int i17 = margin3;
                        if (constraintWidget17 != null) {
                            margin2 += constraintWidget17.mListAnchors[i16].getMargin();
                        }
                        int i18 = margin2;
                        int i19 = z13 ? 6 : 4;
                        if (solverVariable11 == null || solverVariable13 == null || solverVariable == null || solverVariable2 == null) {
                            constraintWidget2 = constraintWidget19;
                            constraintWidget = constraintWidget17;
                            i4 = 8;
                        } else {
                            constraintWidget2 = constraintWidget19;
                            constraintWidget = constraintWidget17;
                            i4 = 8;
                            linearSystem.addCentering(solverVariable11, solverVariable13, i18, 0.5f, solverVariable, solverVariable2, i17, i19);
                        }
                        constraintWidget18 = constraintWidget2;
                    }
                    if (constraintWidget16.getVisibility() == i4) {
                        constraintWidget16 = constraintWidget;
                    }
                    constraintWidget17 = constraintWidget16;
                    i15 = 8;
                    constraintWidget16 = constraintWidget18;
                }
                ConstraintAnchor constraintAnchor9 = constraintWidget7.mListAnchors[i2];
                ConstraintAnchor constraintAnchor10 = constraintWidget5.mListAnchors[i2].mTarget;
                int i20 = i2 + 1;
                ConstraintAnchor constraintAnchor11 = constraintWidget8.mListAnchors[i20];
                ConstraintAnchor constraintAnchor12 = constraintWidget6.mListAnchors[i20].mTarget;
                if (constraintAnchor10 == null) {
                    i3 = 5;
                } else if (constraintWidget7 != constraintWidget8) {
                    i3 = 5;
                    linearSystem.addEquality(constraintAnchor9.mSolverVariable, constraintAnchor10.mSolverVariable, constraintAnchor9.getMargin(), 5);
                } else {
                    i3 = 5;
                    if (constraintAnchor12 != null) {
                        linearSystem.addCentering(constraintAnchor9.mSolverVariable, constraintAnchor10.mSolverVariable, constraintAnchor9.getMargin(), 0.5f, constraintAnchor11.mSolverVariable, constraintAnchor12.mSolverVariable, constraintAnchor11.getMargin(), 5);
                    }
                }
                if (constraintAnchor12 != null && constraintWidget7 != constraintWidget8) {
                    linearSystem.addEquality(constraintAnchor11.mSolverVariable, constraintAnchor12.mSolverVariable, -constraintAnchor11.getMargin(), i3);
                }
            }
        } else {
            boolean z14 = chainHead.mWidgetsMatchCount > 0 && chainHead.mWidgetsCount == chainHead.mWidgetsMatchCount;
            ConstraintWidget constraintWidget20 = constraintWidget7;
            ConstraintWidget constraintWidget21 = constraintWidget20;
            while (constraintWidget20 != null) {
                ConstraintWidget constraintWidget22 = constraintWidget20.mNextChainWidget[i];
                while (constraintWidget22 != null && constraintWidget22.getVisibility() == 8) {
                    constraintWidget22 = constraintWidget22.mNextChainWidget[i];
                }
                if (constraintWidget22 != null || constraintWidget20 == constraintWidget8) {
                    ConstraintAnchor constraintAnchor13 = constraintWidget20.mListAnchors[i2];
                    SolverVariable solverVariable14 = constraintAnchor13.mSolverVariable;
                    SolverVariable solverVariable15 = constraintAnchor13.mTarget != null ? constraintAnchor13.mTarget.mSolverVariable : null;
                    if (constraintWidget21 != constraintWidget20) {
                        solverVariable15 = constraintWidget21.mListAnchors[i2 + 1].mSolverVariable;
                    } else if (constraintWidget20 == constraintWidget7 && constraintWidget21 == constraintWidget20) {
                        solverVariable15 = constraintWidget5.mListAnchors[i2].mTarget != null ? constraintWidget5.mListAnchors[i2].mTarget.mSolverVariable : null;
                    }
                    int margin4 = constraintAnchor13.getMargin();
                    int i21 = i2 + 1;
                    int margin5 = constraintWidget20.mListAnchors[i21].getMargin();
                    if (constraintWidget22 != null) {
                        constraintAnchor2 = constraintWidget22.mListAnchors[i2];
                        SolverVariable solverVariable16 = constraintAnchor2.mSolverVariable;
                        solverVariable4 = constraintWidget20.mListAnchors[i21].mSolverVariable;
                        solverVariable3 = solverVariable16;
                    } else {
                        constraintAnchor2 = constraintWidget6.mListAnchors[i21].mTarget;
                        solverVariable3 = constraintAnchor2 != null ? constraintAnchor2.mSolverVariable : null;
                        solverVariable4 = constraintWidget20.mListAnchors[i21].mSolverVariable;
                    }
                    if (constraintAnchor2 != null) {
                        margin5 += constraintAnchor2.getMargin();
                    }
                    if (constraintWidget21 != null) {
                        margin4 += constraintWidget21.mListAnchors[i21].getMargin();
                    }
                    if (solverVariable14 == null || solverVariable15 == null || solverVariable3 == null || solverVariable4 == null) {
                        constraintWidget3 = constraintWidget22;
                    } else {
                        if (constraintWidget20 == constraintWidget7) {
                            margin4 = constraintWidget7.mListAnchors[i2].getMargin();
                        }
                        int i22 = margin4;
                        constraintWidget3 = constraintWidget22;
                        linearSystem.addCentering(solverVariable14, solverVariable15, i22, 0.5f, solverVariable3, solverVariable4, constraintWidget20 == constraintWidget8 ? constraintWidget8.mListAnchors[i21].getMargin() : margin5, z14 ? 6 : 4);
                    }
                }
                if (constraintWidget20.getVisibility() != 8) {
                    constraintWidget21 = constraintWidget20;
                }
                constraintWidget20 = constraintWidget3;
            }
        }
        if ((z11 || z12) && constraintWidget7 != null) {
            ConstraintAnchor constraintAnchor14 = constraintWidget7.mListAnchors[i2];
            int i23 = i2 + 1;
            ConstraintAnchor constraintAnchor15 = constraintWidget8.mListAnchors[i23];
            SolverVariable solverVariable17 = constraintAnchor14.mTarget != null ? constraintAnchor14.mTarget.mSolverVariable : null;
            SolverVariable solverVariable18 = constraintAnchor15.mTarget != null ? constraintAnchor15.mTarget.mSolverVariable : null;
            if (constraintWidget6 != constraintWidget8) {
                ConstraintAnchor constraintAnchor16 = constraintWidget6.mListAnchors[i23];
                r5 = constraintAnchor16.mTarget != null ? constraintAnchor16.mTarget.mSolverVariable : null;
            } else {
                r5 = solverVariable18;
            }
            if (constraintWidget7 == constraintWidget8) {
                constraintAnchor14 = constraintWidget7.mListAnchors[i2];
                constraintAnchor15 = constraintWidget7.mListAnchors[i23];
            }
            if (solverVariable17 == null || r5 == 0) {
                return;
            }
            int margin6 = constraintAnchor14.getMargin();
            if (constraintWidget8 != null) {
                constraintWidget6 = constraintWidget8;
            }
            linearSystem.addCentering(constraintAnchor14.mSolverVariable, solverVariable17, margin6, 0.5f, r5, constraintAnchor15.mSolverVariable, constraintWidget6.mListAnchors[i23].getMargin(), 5);
        }
    }
}
