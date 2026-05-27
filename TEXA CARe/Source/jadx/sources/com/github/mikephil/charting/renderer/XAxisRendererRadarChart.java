package com.github.mikephil.charting.renderer;

import android.graphics.Canvas;
import com.github.mikephil.charting.charts.RadarChart;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.data.RadarData;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;

/* JADX INFO: loaded from: classes.dex */
public class XAxisRendererRadarChart extends XAxisRenderer {
    private RadarChart mChart;

    @Override // com.github.mikephil.charting.renderer.XAxisRenderer, com.github.mikephil.charting.renderer.AxisRenderer
    public void renderLimitLines(Canvas canvas) {
    }

    public XAxisRendererRadarChart(ViewPortHandler viewPortHandler, XAxis xAxis, RadarChart radarChart) {
        super(viewPortHandler, xAxis, null);
        this.mChart = radarChart;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.github.mikephil.charting.components.XAxis, java.lang.Object, lombok.launch.PatchFixesHider$Delegate] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.github.mikephil.charting.renderer.XAxisRenderer, com.github.mikephil.charting.renderer.AxisRenderer
    public void renderAxisLabels(Canvas canvas) {
        if (this.mXAxis.isEnabled()) {
            ?? r0 = this.mXAxis;
            if (r0.handleDelegateForType(r0)) {
                float labelRotationAngle = this.mXAxis.getLabelRotationAngle();
                MPPointF mPPointF = MPPointF.getInstance(0.5f, 0.25f);
                this.mAxisLabelPaint.setTypeface(this.mXAxis.getTypeface());
                this.mAxisLabelPaint.setTextSize(this.mXAxis.getTextSize());
                this.mAxisLabelPaint.setColor(this.mXAxis.getTextColor());
                float sliceAngle = this.mChart.getSliceAngle();
                float factor = this.mChart.getFactor();
                MPPointF centerOffsets = this.mChart.getCenterOffsets();
                MPPointF mPPointF2 = MPPointF.getInstance(0.0f, 0.0f);
                for (int i = 0; i < ((RadarData) this.mChart.getData()).getMaxEntryCountSet().getEntryCount(); i++) {
                    float f = i;
                    String axisLabel = this.mXAxis.getValueFormatter().getAxisLabel(f, this.mXAxis);
                    Utils.getPosition(centerOffsets, (this.mChart.getYRange() * factor) + (this.mXAxis.mLabelRotatedWidth / 2.0f), ((f * sliceAngle) + this.mChart.getRotationAngle()) % 360.0f, mPPointF2);
                    drawLabel(canvas, axisLabel, mPPointF2.x, mPPointF2.y - (this.mXAxis.mLabelRotatedHeight / 2.0f), mPPointF, labelRotationAngle);
                }
                MPPointF.recycleInstance(centerOffsets);
                MPPointF.recycleInstance(mPPointF2);
                MPPointF.recycleInstance(mPPointF);
            }
        }
    }
}
