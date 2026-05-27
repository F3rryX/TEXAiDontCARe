package com.texa.careapp.app.diagnosis.tab.errorDTC;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.texa.careapp.app.errorsDTC.LampStatus;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface IDTCViewPresenter {
    void afterViewInjection(View view);

    void destroySub();

    RecyclerView.LayoutManager getLayoutManager();

    void observeActiveLamps();

    void updateAdapter(List<LampStatus> list);
}
