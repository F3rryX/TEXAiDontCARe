.class public Lcom/texa/careapp/app/schedule/BinderScheduleView;
.super Ljava/lang/Object;
.source "BinderScheduleView.java"


# instance fields
.field private final formatDays:Ljava/text/SimpleDateFormat;

.field private final formatMonth:Ljava/text/SimpleDateFormat;

.field private final formatYear:Ljava/text/SimpleDateFormat;

.field mContext:Landroid/content/Context;

.field vehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/texa/careapp/utils/VehicleObserver;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->formatDays:Ljava/text/SimpleDateFormat;

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MMM"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->formatMonth:Ljava/text/SimpleDateFormat;

    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->formatYear:Ljava/text/SimpleDateFormat;

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->vehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    return-void
.end method

.method private setCircle(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/schedule/BinderScheduleView;->setCircleBackground(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/schedule/BinderScheduleView;->setCircleLabel(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V

    return-void
.end method

.method private setCircleBackground(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V
    .locals 2

    .line 116
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 122
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mCircleBackground:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    .line 123
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f080180

    .line 122
    invoke-static {p2, v1, v0}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mCircleBackground:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f080181

    .line 118
    invoke-static {p2, v1, v0}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private setCircleLabel(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/schedule/BinderScheduleView;->setCircleLabelView(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/schedule/BinderScheduleView;->setCircleLabelValues(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V

    return-void
.end method

.method private setCircleLabelValues(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V
    .locals 1

    .line 189
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/schedule/BinderScheduleView;->setCircleLabelValuesForDataSchedule(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/schedule/BinderScheduleView;->setCircleLabelValuesForOdometerSchedule(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V

    :goto_0
    return-void

    .line 194
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private setCircleLabelValuesForDataSchedule(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V
    .locals 5

    .line 199
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 220
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object p2

    .line 221
    iget-object v0, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mBetweenText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->formatDays:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleValue:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->formatMonth:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleMeasure:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->formatYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 226
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 207
    :cond_1
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->daysToExpire()J

    move-result-wide v0

    .line 208
    iget-object p2, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    const v2, 0x7f110910

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v2, 0x1e

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 211
    div-long/2addr v0, v2

    .line 212
    iget-object p2, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    const v2, 0x7f110afc

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 215
    :cond_2
    iget-object v2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mBetweenText:Landroid/widget/TextView;

    const v3, 0x7f110074

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 216
    iget-object v2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleMeasure:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 201
    :cond_3
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mBetweenText:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "!"

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleMeasure:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setCircleLabelValuesForOdometerSchedule(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V
    .locals 4

    .line 231
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result v0

    const-string v1, "!"

    const-string v2, ""

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 238
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->vehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->vehicleObserver:Lcom/texa/careapp/utils/VehicleObserver;

    invoke-virtual {v0}, Lcom/texa/careapp/utils/VehicleObserver;->getSelectedVehicle()Lcom/texa/careapp/model/VehicleModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/VehicleModel;->getOdometer()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p2, v0}, Lcom/texa/careapp/utils/Utils;->nonNegativeSubtraction(II)I

    move-result p2

    .line 240
    iget-object v0, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mBetweenText:Landroid/widget/TextView;

    const v1, 0x7f110074

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v0, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleMeasure:Landroidx/appcompat/widget/AppCompatTextView;

    const p2, 0x7f110ab8

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mBetweenText:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleMeasure:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mBetweenText:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleMeasure:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setCircleLabelView(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V
    .locals 5

    .line 134
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const v1, 0x7f0600ca

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    const v4, 0x7f0600c7

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 161
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mBetweenText:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mBetweenText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 166
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleValue:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 168
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleMeasure:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 169
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleMeasure:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p2, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    invoke-static {p2, v4}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 170
    :cond_0
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 171
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mBetweenText:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mBetweenText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 175
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleValue:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 177
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleMeasure:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 178
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleMeasure:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p2, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 180
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 184
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 151
    :cond_3
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mBetweenText:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mBetweenText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 155
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleValue:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 157
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleMeasure:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 158
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleMeasure:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p2, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    goto :goto_0

    .line 141
    :cond_4
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mBetweenText:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mBetweenText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 145
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleValue:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    const v3, 0x7f0600f3

    invoke-static {v0, v3}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 147
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleMeasure:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 148
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleMeasure:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p2, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    goto :goto_0

    .line 136
    :cond_5
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mBetweenText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 138
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mScheduleMeasure:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setDeleteLabel(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V
    .locals 2

    .line 268
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->isDeletable()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 269
    invoke-static {p2}, Lcom/texa/careapp/utils/Utils;->isScheduleEditableByUser(Lcom/texa/careapp/model/IScheduleModel;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 270
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mDeleteButton:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mUnDeletableButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mDeleteButton:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mUnDeletableButton:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mDeleteButton:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mUnDeletableButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setDescription(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V
    .locals 0

    .line 105
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getDesciption()Ljava/lang/String;

    move-result-object p2

    .line 106
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setRefreshLabel(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V
    .locals 3

    .line 253
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 262
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mRefreshButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-static {p2}, Lcom/texa/careapp/utils/Utils;->isScheduleEditableByUser(Lcom/texa/careapp/model/IScheduleModel;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 256
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mRefreshButton:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mRefreshButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setTitle(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/texa/careapp/utils/Utils;->getScheduleTitle(Lcom/texa/careapp/model/IScheduleModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 99
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p2, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    const v0, 0x7f0600ca

    invoke-static {p2, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mTitle:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object p2, p0, Lcom/texa/careapp/app/schedule/BinderScheduleView;->mContext:Landroid/content/Context;

    const v0, 0x7f060074

    invoke-static {p2, v0}, Lcom/texa/careapp/utils/Utils;->getColorResource(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bindView(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)Lcom/texa/careapp/app/schedule/IScheduleViewHolder;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/schedule/BinderScheduleView;->setTitle(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/schedule/BinderScheduleView;->setDescription(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/schedule/BinderScheduleView;->setCircle(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/schedule/BinderScheduleView;->setRefreshLabel(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/texa/careapp/app/schedule/BinderScheduleView;->setDeleteLabel(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;)V

    return-object p1
.end method

.method public setItemContainerButtonListener(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;Landroid/view/View$OnLongClickListener;)Lcom/texa/careapp/app/schedule/IScheduleViewHolder;
    .locals 0

    .line 63
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p1
.end method

.method public setItemDeleteButtonListener(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;Landroid/view/View$OnClickListener;)Lcom/texa/careapp/app/schedule/IScheduleViewHolder;
    .locals 0

    .line 54
    invoke-static {p2}, Lcom/texa/careapp/utils/Utils;->isScheduleEditableByUser(Lcom/texa/careapp/model/IScheduleModel;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 55
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mDeleteButton:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mDeleteButton:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object p1
.end method

.method public setItemRefreshButtonListener(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;Landroid/view/View$OnClickListener;)Lcom/texa/careapp/app/schedule/IScheduleViewHolder;
    .locals 3

    .line 38
    invoke-interface {p2}, Lcom/texa/careapp/model/IScheduleModel;->getExpiringStatus()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 47
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p2}, Lcom/texa/careapp/utils/Utils;->isScheduleEditableByUser(Lcom/texa/careapp/model/IScheduleModel;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 41
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 43
    :cond_1
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mContainer:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object p1
.end method

.method public setItemUndeletableButtonListener(Lcom/texa/careapp/app/schedule/IScheduleViewHolder;Lcom/texa/careapp/model/IScheduleModel;Landroid/view/View$OnClickListener;)Lcom/texa/careapp/app/schedule/IScheduleViewHolder;
    .locals 0

    .line 68
    invoke-static {p2}, Lcom/texa/careapp/utils/Utils;->isScheduleEditableByUser(Lcom/texa/careapp/model/IScheduleModel;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 69
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mUnDeletableButton:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p2, p1, Lcom/texa/careapp/app/schedule/IScheduleViewHolder;->mUnDeletableButton:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object p1
.end method
