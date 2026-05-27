package com.texa.careapp.app.ecodriving;

import android.content.Context;
import android.location.Address;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import androidx.databinding.DataBindingUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.texa.care.R;
import com.texa.care.eco_driving.events.drivingevents.DrivingEventType;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.CareApplication;
import com.texa.careapp.Constants;
import com.texa.careapp.app.ecodriving.EcoDrivingTripDetailScreenAdapter;
import com.texa.careapp.app.ecodriving.model.EcoDrivingEventsDataManager;
import com.texa.careapp.app.ecodriving.model.TripEventModel;
import com.texa.careapp.app.ecodriving.model.TripObjectModel;
import com.texa.careapp.databinding.ScreenEcoDrivingTripEventItemBinding;
import com.texa.careapp.exceptions.DatabaseIOException;
import com.texa.careapp.utils.EcoDrivingUtils;
import com.texa.careapp.utils.FirebaseAnalyticsEventManager;
import com.texa.careapp.utils.Utils;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.schedulers.Schedulers;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import pl.charmas.android.reactivelocation2.ReactiveLocationProvider;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
class EcoDrivingTripDetailScreenAdapter extends RecyclerView.Adapter<TripDetailViewHolder> {
    private final CareApplication.ApplicationComponent mComponent;
    private final Context mContext;
    private final Navigator mNavigator;
    private final ReactiveLocationProvider mRxLocation;
    private final int score;
    private final List<TripEventModel> tripEvents;

    EcoDrivingTripDetailScreenAdapter(Context context, List<TripEventModel> list, CareApplication.ApplicationComponent applicationComponent, Navigator navigator, int i) {
        this.mContext = context;
        this.tripEvents = list;
        this.mComponent = applicationComponent;
        this.mNavigator = navigator;
        this.score = i;
        this.mRxLocation = new ReactiveLocationProvider(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public TripDetailViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new TripDetailViewHolder((ScreenEcoDrivingTripEventItemBinding) DataBindingUtil.inflate(LayoutInflater.from(viewGroup.getContext()), R.layout.screen_eco_driving_trip_event_item, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(TripDetailViewHolder tripDetailViewHolder, int i) {
        tripDetailViewHolder.bindView(this.mContext, this.tripEvents.get(i), i == this.tripEvents.size() - 1, this.mRxLocation, this.mComponent, this.mNavigator, this.tripEvents, this.score);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.tripEvents.size();
    }

    static class TripDetailViewHolder extends RecyclerView.ViewHolder {
        private static final String ACQUIRE_POSITION_DISPOSABLE_KEY = "ACQUIRE_POSITION_DISPOSABLE_KEY";
        final SimpleDateFormat dateFormat;
        final TextView mDate;
        final AppCompatTextView mDescription;
        private final HashMap<String, Disposable> mDisposableHashMap;
        final ImageView mIcon;
        final RelativeLayout mItemButton;
        final AppCompatTextView mTitle;
        final View separator;

        TripDetailViewHolder(ScreenEcoDrivingTripEventItemBinding screenEcoDrivingTripEventItemBinding) {
            super(screenEcoDrivingTripEventItemBinding.getRoot());
            this.dateFormat = new SimpleDateFormat("EEE HH.mm", Locale.getDefault());
            this.mDisposableHashMap = new HashMap<>();
            this.mItemButton = screenEcoDrivingTripEventItemBinding.screenEcoDrivingTripEventItemButton;
            this.mDate = screenEcoDrivingTripEventItemBinding.screenEcoDrivingTripEventItemDate;
            this.mTitle = screenEcoDrivingTripEventItemBinding.screenEcoDrivingTripEventItemTitle;
            this.mDescription = screenEcoDrivingTripEventItemBinding.screenEcoDrivingTripEventItemDescription;
            this.mIcon = screenEcoDrivingTripEventItemBinding.screenEcoDrivingTripEventItemIcon;
            this.separator = screenEcoDrivingTripEventItemBinding.screenEcoDrivingTripEventItemSeparator;
            screenEcoDrivingTripEventItemBinding.getRoot().setLayerType(1, null);
        }

        public void bindView(final Context context, final TripEventModel tripEventModel, boolean z, ReactiveLocationProvider reactiveLocationProvider, final CareApplication.ApplicationComponent applicationComponent, final Navigator navigator, final List<TripEventModel> list, final int i) {
            this.mItemButton.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m252x23a9594(context, tripEventModel, navigator, applicationComponent, i, list, view);
                }
            });
            this.mDate.setText(this.dateFormat.format(new Date(tripEventModel.getTimestamp().longValue())));
            this.mDate.setTextColor(Utils.getColorResource(context, Constants.ECO_DRIVING_COLOR.get(tripEventModel.getTypeId().intValue())));
            this.mTitle.setText(Constants.ECO_DRIVING_TEXT.get(tripEventModel.getTypeId().intValue()));
            if (tripEventModel.getLabel() != null && !tripEventModel.getLabel().equalsIgnoreCase("")) {
                this.mDescription.setText(EcoDrivingUtils.splitLocation(tripEventModel.getLabel()));
                this.mDescription.setVisibility(0);
            } else if (tripEventModel.getLng() != null && tripEventModel.getLat() != null && (tripEventModel.getLabel() == null || tripEventModel.getLabel().equalsIgnoreCase(""))) {
                this.mDescription.setVisibility(0);
                this.mDescription.setText(String.format(context.getString(R.string.temp_format), String.valueOf(tripEventModel.getLat()), String.valueOf(tripEventModel.getLng())));
                acquiredPosition(this.mDescription, context, reactiveLocationProvider, tripEventModel);
            } else {
                this.mDescription.setVisibility(8);
            }
            this.mIcon.setImageDrawable(ContextCompat.getDrawable(context, Constants.ECO_DRIVING_IMAGES.get(tripEventModel.getTypeId().intValue())));
            if (z) {
                this.separator.setVisibility(4);
            } else {
                this.separator.setVisibility(0);
            }
        }

        /* JADX INFO: renamed from: lambda$bindView$0$com-texa-careapp-app-ecodriving-EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder, reason: not valid java name */
        public /* synthetic */ void m252x23a9594(Context context, TripEventModel tripEventModel, Navigator navigator, CareApplication.ApplicationComponent applicationComponent, int i, List list, View view) {
            String str;
            String str2;
            String str3;
            long tripDuration;
            FirebaseAnalytics.getInstance(context).logEvent(FirebaseAnalyticsEventManager.CAReFirebaseAnalyticsEvent.FBA_TAPPED_EVENT.getTag(), null);
            String str4 = " - ";
            if (tripEventModel == null || tripEventModel.getTripObject() == null) {
                str = " - ";
                str2 = str;
                str3 = str2;
            } else {
                Float fValueOf = Float.valueOf(0.0f);
                if (!tripEventModel.getTripObject().isParent()) {
                    TripObjectModel parentTrip = EcoDrivingEventsDataManager.getParentTrip(tripEventModel.getTripObject().getIdParent());
                    tripDuration = parentTrip != null ? parentTrip.getTripDuration() : 0L;
                    if (isDurationValid(parentTrip.getStartOdo(), parentTrip.getEndOdo())) {
                        fValueOf = Float.valueOf(parentTrip.getEndOdo().floatValue() - parentTrip.getStartOdo().floatValue());
                    }
                } else {
                    tripDuration = tripEventModel.getTripObject().getTripDuration();
                    if (isDurationValid(tripEventModel.getTripObject().getStartOdo(), tripEventModel.getTripObject().getEndOdo())) {
                        fValueOf = Float.valueOf(tripEventModel.getTripObject().getEndOdo().floatValue() - tripEventModel.getTripObject().getStartOdo().floatValue());
                    }
                }
                long hours = TimeUnit.MILLISECONDS.toHours(tripDuration);
                long minutes = TimeUnit.MILLISECONDS.toMinutes(tripDuration) - TimeUnit.HOURS.toMinutes(hours);
                String strSplitCityLocation = tripEventModel.getTripObject().getStartLabel() != null ? EcoDrivingUtils.splitCityLocation(tripEventModel.getTripObject().getStartLabel()) : " - ";
                String strSplitCityLocation2 = tripEventModel.getTripObject().getEndLabel() != null ? EcoDrivingUtils.splitCityLocation(tripEventModel.getTripObject().getEndLabel()) : " - ";
                String str5 = (strSplitCityLocation == null || strSplitCityLocation.equalsIgnoreCase("") || strSplitCityLocation2 == null || strSplitCityLocation2.equalsIgnoreCase("")) ? " - " : String.format(context.getString(R.string.eco_driving_format_from_to_trip_detail), strSplitCityLocation, strSplitCityLocation2);
                String str6 = fValueOf.floatValue() != 0.0f ? String.format(context.getString(R.string.eco_driving_detail_format_distance), String.valueOf(Math.round(fValueOf.floatValue()))) : " - ";
                if (tripEventModel.getTripObject().getEndTrip() > 0) {
                    if (hours > 0 && minutes > 0) {
                        str4 = String.format(context.getString(R.string.eco_driving_detail_format_duration_with_hour), String.valueOf(hours), String.valueOf(minutes));
                    } else if (minutes > 0) {
                        str4 = String.format(context.getString(R.string.eco_driving_detail_format_duration_within_hour), String.valueOf(minutes));
                    }
                }
                str3 = str4;
                str2 = str6;
                str = str5;
            }
            navigator.goTo(new EcoDrivingTripDetailMapScreen(applicationComponent, i, list, str, str2, str3, tripEventModel));
        }

        private boolean isDurationValid(Float f, Float f2) {
            return (f == null || f.floatValue() == -1.0f || f2 == null || f2.floatValue() == -1.0f || f2.floatValue() - f.floatValue() < 0.0f) ? false : true;
        }

        private void acquiredPosition(final AppCompatTextView appCompatTextView, final Context context, ReactiveLocationProvider reactiveLocationProvider, final TripEventModel tripEventModel) {
            if (reactiveLocationProvider == null || tripEventModel.getLat() == null || tripEventModel.getLng() == null) {
                return;
            }
            Utils.safeDispose(this.mDisposableHashMap, ACQUIRE_POSITION_DISPOSABLE_KEY);
            this.mDisposableHashMap.put(ACQUIRE_POSITION_DISPOSABLE_KEY, reactiveLocationProvider.getReverseGeocodeObservable(Locale.getDefault(), tripEventModel.getLat().doubleValue(), tripEventModel.getLng().doubleValue(), 1).subscribeOn(Schedulers.computation()).observeOn(Schedulers.computation()).flatMap(new Function() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda3
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return this.f$0.m251xa70615fe(appCompatTextView, context, tripEventModel, (List) obj);
                }
            }).filter(new Predicate() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda4
                @Override // io.reactivex.functions.Predicate
                public final boolean test(Object obj) {
                    return EcoDrivingTripDetailScreenAdapter.TripDetailViewHolder.lambda$acquiredPosition$2((String) obj);
                }
            }).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    appCompatTextView.setText((String) obj);
                }
            }, new Consumer() { // from class: com.texa.careapp.app.ecodriving.EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder$$ExternalSyntheticLambda2
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Timber.e((Throwable) obj, "UNABLE TO GET REVERSE GEO CODING", new Object[0]);
                }
            }));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: lambda$acquiredPosition$1$com-texa-careapp-app-ecodriving-EcoDrivingTripDetailScreenAdapter$TripDetailViewHolder, reason: not valid java name */
        public /* synthetic */ ObservableSource m251xa70615fe(AppCompatTextView appCompatTextView, Context context, TripEventModel tripEventModel, List list) throws Exception {
            String label;
            try {
                if (list.isEmpty()) {
                    list = null;
                }
                label = updateEventLocation(appCompatTextView, context, list, tripEventModel).getLabel();
            } catch (DatabaseIOException e) {
                e.printStackTrace();
                label = "";
            }
            return Observable.just(EcoDrivingUtils.splitLocation(label));
        }

        static /* synthetic */ boolean lambda$acquiredPosition$2(String str) throws Exception {
            return !Utils.isEmpty(str);
        }

        private String getHumanReadableAddress(Context context, List<Address> list) {
            String strCheckDoubleAddress;
            String locality;
            if (list.get(0).getThoroughfare() != null) {
                strCheckDoubleAddress = Utils.checkDoubleAddress(list);
                locality = list.get(0).getLocality();
            } else {
                if (list.get(0).getFeatureName() != null) {
                    strCheckDoubleAddress = context.getResources().getString(R.string.near) + " " + list.get(0).getFeatureName();
                } else {
                    strCheckDoubleAddress = "";
                }
                locality = list.get(0).getLocality();
            }
            if (locality == null && strCheckDoubleAddress == null) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            if (locality == null) {
                locality = "";
            }
            sb.append(locality);
            sb.append(" - ");
            sb.append(strCheckDoubleAddress != null ? strCheckDoubleAddress : "");
            return sb.toString();
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x005d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private TripEventModel updateEventLocation(AppCompatTextView appCompatTextView, Context context, List<Address> list, TripEventModel tripEventModel) throws DatabaseIOException {
            if (list != null) {
                tripEventModel.setLabel(getHumanReadableAddress(context, list));
                tripEventModel.setLastMod(new Date());
                TripObjectModel tripObject = tripEventModel.getTripObject();
                boolean z = false;
                if (tripEventModel.getTypeId().intValue() == DrivingEventType.DRIVING_START.getNumericType()) {
                    tripObject.setStartLabel(getHumanReadableAddress(context, list));
                } else {
                    if (tripEventModel.getTypeId().intValue() == DrivingEventType.DRIVING_STOP.getNumericType() || tripEventModel.getTypeId().intValue() == DrivingEventType.DRIVING_STOP_TEMP.getNumericType()) {
                        tripObject.setEndLabel(getHumanReadableAddress(context, list));
                    }
                    Utils.safeModelSave(tripEventModel, context);
                    if (z) {
                        tripObject.setSyncNeeded(true);
                        tripObject.setLastMod(new Date());
                        Utils.safeModelSave(tripObject, context);
                    }
                }
                z = true;
                Utils.safeModelSave(tripEventModel, context);
                if (z) {
                }
            }
            return tripEventModel;
        }
    }
}
