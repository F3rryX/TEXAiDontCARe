package com.texa.careapp.app.dashboard;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.texa.care.navigation.Navigator;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.dashboard.card.DashboardCardObserver;
import com.texa.careapp.app.dashboard.card.DiagnosisCardView;
import com.texa.careapp.app.dashboard.card.DiagnosisCardViewPresenter;
import com.texa.careapp.app.dashboard.card.EcoDrivingCardView;
import com.texa.careapp.app.dashboard.card.EcoDrivingCardViewPresenter;
import com.texa.careapp.app.dashboard.card.FindVehicleCardView;
import com.texa.careapp.app.dashboard.card.FindVehicleCardViewPresenter;
import com.texa.careapp.app.dashboard.card.ParametersCardView;
import com.texa.careapp.app.dashboard.card.ParametersCardViewPresenter;
import com.texa.careapp.app.dashboard.card.ScheduleCardView;
import com.texa.careapp.app.dashboard.card.ScheduleCardViewPresenter;
import java.util.ArrayList;
import java.util.List;
import java.util.Observable;
import java.util.Observer;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class DashboardScreenAdapter extends PagerAdapter {
    private static final int CARD_DIAGNOSIS = 1;
    private static final int CARD_ECO_DRIVING = 4;
    private static final int CARD_FIND_VEHICLE = 3;
    private static final int CARD_PARAMETERS = 2;
    private static final int CARD_SCHEDULE = 0;
    private DiagnosisCardView diagnosisCardView;
    private EcoDrivingCardView ecoDrivingCardView;
    private FindVehicleCardView findVehicleCardView;
    private boolean isSmallScreen;
    private final CareApplication mCareApplication;

    @Inject
    protected Context mContext;
    private Navigator mNavigator;
    private ViewPager mViewPager;
    private ParametersCardView parametersCardView;
    private ScheduleCardView scheduleCardView;
    private Observable mObservers = new DashboardCardObserver();
    private final List<View> mDiscardedViews = new ArrayList();
    private final SparseArray<View> mBindedViews = new SparseArray<>();

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return 5;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int i) {
        return "";
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return obj == view;
    }

    DashboardScreenAdapter(CareApplication careApplication, Navigator navigator) {
        this.mCareApplication = careApplication;
        careApplication.component().inject(this);
        this.mNavigator = navigator;
        this.isSmallScreen = this.mContext.getResources().getDisplayMetrics().widthPixels < 500;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        View viewDisplayScheduleCard;
        if (i == 0) {
            viewDisplayScheduleCard = this.mBindedViews.get(i);
            if (viewDisplayScheduleCard == null) {
                viewDisplayScheduleCard = displayScheduleCard(viewGroup);
            }
        } else if (i == 1) {
            viewDisplayScheduleCard = this.mBindedViews.get(i);
            if (viewDisplayScheduleCard == null) {
                viewDisplayScheduleCard = displayDiagnosisCard(viewGroup);
            }
        } else if (i == 2) {
            viewDisplayScheduleCard = this.mBindedViews.get(i);
            if (viewDisplayScheduleCard == null) {
                viewDisplayScheduleCard = displayParametersCard(viewGroup, this.mNavigator);
            }
        } else if (i == 3) {
            viewDisplayScheduleCard = this.mBindedViews.get(i);
            if (viewDisplayScheduleCard == null) {
                viewDisplayScheduleCard = displayFindVehicleCard(viewGroup, this.mNavigator);
            }
        } else if (i != 4) {
            viewDisplayScheduleCard = null;
        } else {
            viewDisplayScheduleCard = this.mBindedViews.get(i);
            if (viewDisplayScheduleCard == null) {
                viewDisplayScheduleCard = displayEcoDrivingCard(viewGroup);
            }
        }
        if (viewDisplayScheduleCard != null) {
            if (viewDisplayScheduleCard instanceof Observer) {
                this.mObservers.addObserver((Observer) viewDisplayScheduleCard);
            }
            this.mBindedViews.append(i, viewDisplayScheduleCard);
            viewGroup.addView(viewDisplayScheduleCard, 0);
        }
        return viewDisplayScheduleCard;
    }

    private View displayFindVehicleCard(ViewGroup viewGroup, Navigator navigator) {
        if (this.findVehicleCardView == null) {
            FindVehicleCardView findVehicleCardView = new FindVehicleCardView(viewGroup.getContext());
            this.findVehicleCardView = findVehicleCardView;
            findVehicleCardView.setPresenter(new FindVehicleCardViewPresenter(this.mCareApplication.component(), navigator, this.isSmallScreen));
        }
        return this.findVehicleCardView;
    }

    private View displayParametersCard(ViewGroup viewGroup, Navigator navigator) {
        if (this.parametersCardView == null) {
            ParametersCardView parametersCardView = new ParametersCardView(viewGroup.getContext());
            this.parametersCardView = parametersCardView;
            parametersCardView.setPresenter(new ParametersCardViewPresenter(this.mCareApplication, navigator, this.isSmallScreen));
        }
        return this.parametersCardView;
    }

    private View displayDiagnosisCard(ViewGroup viewGroup) {
        if (this.diagnosisCardView == null) {
            DiagnosisCardView diagnosisCardView = new DiagnosisCardView(viewGroup.getContext());
            this.diagnosisCardView = diagnosisCardView;
            diagnosisCardView.setPresenter(new DiagnosisCardViewPresenter(this.mCareApplication.component(), this.isSmallScreen));
        }
        return this.diagnosisCardView;
    }

    private View displayScheduleCard(ViewGroup viewGroup) {
        if (this.scheduleCardView == null) {
            ScheduleCardView scheduleCardView = new ScheduleCardView(viewGroup.getContext());
            this.scheduleCardView = scheduleCardView;
            scheduleCardView.setPresenter(new ScheduleCardViewPresenter(this.mCareApplication.component(), this.isSmallScreen));
        }
        return this.scheduleCardView;
    }

    private View displayEcoDrivingCard(ViewGroup viewGroup) {
        if (this.ecoDrivingCardView == null) {
            EcoDrivingCardView ecoDrivingCardView = new EcoDrivingCardView(viewGroup.getContext());
            this.ecoDrivingCardView = ecoDrivingCardView;
            ecoDrivingCardView.setPresenter(new EcoDrivingCardViewPresenter(this.mCareApplication.component(), this.isSmallScreen));
        }
        return this.ecoDrivingCardView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        View view = this.mBindedViews.get(i);
        if (view != 0) {
            if (view instanceof Observer) {
                this.mObservers.deleteObserver((Observer) view);
            }
            this.mDiscardedViews.add(view);
            this.mBindedViews.remove(i);
            viewGroup.removeView(view);
        }
    }

    protected RecyclerView.LayoutManager getLayoutManager() {
        return new GridLayoutManager(this.mContext, 1, 1, false);
    }

    public ViewPager getViewPager() {
        return this.mViewPager;
    }

    public void setViewPager(ViewPager viewPager) {
        this.mViewPager = viewPager;
    }

    void updateViews() {
        this.mObservers.notifyObservers();
    }
}
