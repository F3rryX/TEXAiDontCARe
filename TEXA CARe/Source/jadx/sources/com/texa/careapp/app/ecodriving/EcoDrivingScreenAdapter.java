package com.texa.careapp.app.ecodriving;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.texa.care.R;
import com.texa.careapp.app.ecodriving.model.EcoDrivingEventsDataManager;
import com.texa.careapp.app.ecodriving.model.TripObjectModel;
import com.texa.careapp.app.ecodriving.utils.AvgCalculator;
import com.texa.careapp.app.ecodriving.utils.EcoDrivingScore;
import com.texa.careapp.databinding.ScreenEcoDrivingTripItemBinding;
import com.texa.careapp.utils.EcoDrivingUtils;
import com.texa.careapp.utils.Utils;
import com.texa.careapp.views.CircleDisplay;
import com.texa.careapp.views.ParallaxRecyclerAdapter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
class EcoDrivingScreenAdapter extends ParallaxRecyclerAdapter<TripObjectModel> {
    private AvgCalculator avgCalculator;
    private List<TripObjectModel> content;
    private SimpleDateFormat dayOfWeekFormat;
    private SimpleDateFormat hourMinuteFormat;
    private LayoutInflater layoutInflater;
    private Context mContext;
    private String tripVehicle;

    EcoDrivingScreenAdapter(Context context, List<TripObjectModel> list) {
        super(list);
        this.dayOfWeekFormat = new SimpleDateFormat("EEEE", Locale.getDefault());
        this.hourMinuteFormat = new SimpleDateFormat("HH.mm", Locale.getDefault());
        this.mContext = context;
        this.content = list;
        this.layoutInflater = LayoutInflater.from(context);
        this.avgCalculator = new AvgCalculator();
    }

    @Override // com.texa.careapp.views.ParallaxRecyclerAdapter
    public void onBindViewHolderImpl(RecyclerView.ViewHolder viewHolder, ParallaxRecyclerAdapter<TripObjectModel> parallaxRecyclerAdapter, int i) {
        ((ViewHolder) viewHolder).bindView(this.mContext, this.content.get(i));
    }

    @Override // com.texa.careapp.views.ParallaxRecyclerAdapter
    public RecyclerView.ViewHolder onCreateViewHolderImpl(ViewGroup viewGroup, ParallaxRecyclerAdapter<TripObjectModel> parallaxRecyclerAdapter, int i) {
        return new ViewHolder((ScreenEcoDrivingTripItemBinding) DataBindingUtil.inflate(this.layoutInflater, R.layout.screen_eco_driving_trip_item, viewGroup, false));
    }

    @Override // com.texa.careapp.views.ParallaxRecyclerAdapter
    public int getItemCountImpl(ParallaxRecyclerAdapter<TripObjectModel> parallaxRecyclerAdapter) {
        return this.content.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        final CircleDisplay circleDisplay;
        final RelativeLayout content;
        final TextView date;
        final AppCompatTextView fromTo;
        final TextView header;
        final View line;

        ViewHolder(ScreenEcoDrivingTripItemBinding screenEcoDrivingTripItemBinding) {
            super(screenEcoDrivingTripItemBinding.getRoot());
            this.date = screenEcoDrivingTripItemBinding.screenEcoDrivingTripItemDate;
            this.fromTo = screenEcoDrivingTripItemBinding.screenEcoDrivingTripItemFromTo;
            this.circleDisplay = screenEcoDrivingTripItemBinding.screenEcoDrivingTripItemCircle;
            this.line = screenEcoDrivingTripItemBinding.screenEcoDrivingTripItemLine;
            this.content = screenEcoDrivingTripItemBinding.screenEcoDrivingTripItemLay;
            this.header = screenEcoDrivingTripItemBinding.screenEcoDrivingTripItemCar;
        }

        public void bindView(Context context, TripObjectModel tripObjectModel) {
            if (tripObjectModel.getUuid() != null) {
                if (!EcoDrivingScreenAdapter.this.tripVehicle.equals(tripObjectModel.getVehicleId())) {
                    if (EcoDrivingScreenAdapter.this.tripVehicle.equals(tripObjectModel.getVehicleId())) {
                        return;
                    }
                    this.content.setVisibility(0);
                    this.header.setVisibility(8);
                    long hours = TimeUnit.MILLISECONDS.toHours(tripObjectModel.getTripDuration());
                    long minutes = TimeUnit.MILLISECONDS.toMinutes(tripObjectModel.getTripDuration()) - TimeUnit.HOURS.toMinutes(hours);
                    this.date.setText(String.format(context.getString(R.string.eco_driving_format_day_trip), EcoDrivingScreenAdapter.this.dayOfWeekFormat.format(new Date(tripObjectModel.getStartTrip())), EcoDrivingScreenAdapter.this.hourMinuteFormat.format(new Date(tripObjectModel.getStartTrip()))));
                    this.fromTo.setText(EcoDrivingUtils.getTripInfoData(context, tripObjectModel.getStartLabel(), tripObjectModel.getEndLabel(), tripObjectModel.getStartOdo(), tripObjectModel.getEndOdo(), hours, minutes, EcoDrivingUtils.isTripInProgress(tripObjectModel)));
                    EcoDrivingScreenAdapter ecoDrivingScreenAdapter = EcoDrivingScreenAdapter.this;
                    ecoDrivingScreenAdapter.initCircleDisplayAndView(this.circleDisplay, this.line, ecoDrivingScreenAdapter.avgCalculator.getNormalizedAverageByType(EcoDrivingEventsDataManager.getOverallTripScoreList(tripObjectModel.getUuid())).getValue().intValue(), tripObjectModel.getEndTrip());
                    EcoDrivingScreenAdapter.this.tripVehicle = tripObjectModel.getVehicleId();
                    return;
                }
                this.header.setVisibility(8);
                this.content.setVisibility(0);
                long hours2 = TimeUnit.MILLISECONDS.toHours(tripObjectModel.getTripDuration());
                long minutes2 = TimeUnit.MILLISECONDS.toMinutes(tripObjectModel.getTripDuration()) - TimeUnit.HOURS.toMinutes(hours2);
                this.date.setText(String.format(context.getString(R.string.eco_driving_format_day_trip), EcoDrivingScreenAdapter.this.dayOfWeekFormat.format(new Date(tripObjectModel.getStartTrip())), EcoDrivingScreenAdapter.this.hourMinuteFormat.format(new Date(tripObjectModel.getStartTrip()))));
                this.fromTo.setText(EcoDrivingUtils.getTripInfoData(context, tripObjectModel.getStartLabel(), tripObjectModel.getEndLabel(), tripObjectModel.getStartOdo(), tripObjectModel.getEndOdo(), hours2, minutes2, EcoDrivingUtils.isTripInProgress(tripObjectModel)));
                List<EcoDrivingScore> overallTripScoreList = EcoDrivingEventsDataManager.getOverallTripScoreList(tripObjectModel.getUuid());
                EcoDrivingScreenAdapter ecoDrivingScreenAdapter2 = EcoDrivingScreenAdapter.this;
                ecoDrivingScreenAdapter2.initCircleDisplayAndView(this.circleDisplay, this.line, ecoDrivingScreenAdapter2.avgCalculator.getNormalizedAverageByType(overallTripScoreList).getValue().intValue(), tripObjectModel.getEndTrip());
                return;
            }
            this.content.setVisibility(8);
            this.header.setVisibility(0);
            String vehicleModel = Utils.formatVehicleModel(EcoDrivingEventsDataManager.getVehicle(tripObjectModel.getVehicleId()));
            TextView textView = this.header;
            if (vehicleModel.equalsIgnoreCase("")) {
                vehicleModel = context.getString(R.string.eco_driving_other_vehicle);
            }
            textView.setText(vehicleModel);
            EcoDrivingScreenAdapter.this.tripVehicle = tripObjectModel.getVehicleId();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initCircleDisplayAndView(CircleDisplay circleDisplay, View view, int i, long j) {
        circleDisplay.showValue((i <= -1 || i > 100) ? 0.0f : i, EcoDrivingUtils.MAX_VALUE, false);
        circleDisplay.setColor(EcoDrivingUtils.getReferenceColor(this.mContext, i));
        if (j != 0) {
            view.setBackgroundColor(EcoDrivingUtils.getReferenceColor(this.mContext, i));
        } else {
            view.setBackgroundColor(Utils.getColorResource(this.mContext, R.color.eco_driving_line_background_running_trip));
        }
        circleDisplay.setTypeface(R.font.font_regular);
        circleDisplay.setCustomText(String.valueOf((i <= -1 || i > 100) ? this.mContext.getString(R.string.eco_driving_not_available) : Integer.valueOf(i)));
    }
}
