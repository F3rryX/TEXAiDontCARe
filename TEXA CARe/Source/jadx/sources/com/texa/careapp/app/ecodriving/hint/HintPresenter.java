package com.texa.careapp.app.ecodriving.hint;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.bumptech.glide.Glide;
import com.texa.care.R;
import com.texa.careapp.CareApplication;
import com.texa.careapp.app.ecodriving.model.EcoDrivingEventsDataManager;
import com.texa.careapp.app.ecodriving.model.HintModel;
import com.texa.careapp.app.ecodriving.model.HintTranslationModel;
import com.texa.careapp.databinding.ScreenEcoDrivingHintBinding;
import com.texa.careapp.utils.Utils;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class HintPresenter {
    private int colorRes;
    private int count;
    private HintModel hint;

    @Inject
    protected Context mContext;
    private int position;

    HintPresenter(CareApplication.ApplicationComponent applicationComponent, HintModel hintModel, int i, int i2, int i3) {
        applicationComponent.inject(this);
        this.hint = hintModel;
        this.position = i;
        this.count = i2;
        this.colorRes = i3;
    }

    public void afterViewInjection(ScreenEcoDrivingHintBinding screenEcoDrivingHintBinding) {
        ImageView imageView = screenEcoDrivingHintBinding.screenEcoDrivingHintIcon;
        TextView textView = screenEcoDrivingHintBinding.screenEcoDrivingHintInfo;
        AppCompatTextView appCompatTextView = screenEcoDrivingHintBinding.screenEcoDrivingHintTitle;
        TextView textView2 = screenEcoDrivingHintBinding.screenEcoDrivingHintDescription;
        screenEcoDrivingHintBinding.screenEcoDrivingHintBackground.setBackgroundColor(this.colorRes);
        if (this.hint.getImageUrl() != null) {
            Glide.with(this.mContext).load(this.hint.getImageUrl()).thumbnail(0.1f).into(imageView);
        }
        textView.setText(String.format(this.mContext.getString(R.string.eco_driving_format_hint_info), String.valueOf(this.position + 1), String.valueOf(this.count)));
        HintModel hintModel = this.hint;
        HintTranslationModel translation = hintModel.getTranslation(hintModel.getIdHint(), Utils.getCurrentLanguage());
        if (translation != null) {
            appCompatTextView.setText(translation.getTitle());
            textView2.setText(translation.getDescription());
        }
        if (this.hint.isViewed()) {
            return;
        }
        this.hint.setViewed(true);
        EcoDrivingEventsDataManager.incrementHintCountView(this.hint);
    }
}
