package com.texa.careapp.app.activationSosServices.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.careapp.databinding.DialogActivationServiceSelectContactNumberBinding;
import com.texa.careapp.model.ContactModel;
import java.util.ArrayList;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public class ActivationServiceSelectContactNumberDialog extends Screen {

    @Inject
    protected EventBus mEventBus;
    private ContactModel sosContact;

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "ActivationServiceSelectContactNumberDialog";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.dialog_activation_service_select_contact_number;
    }

    ActivationServiceSelectContactNumberDialog(ContactModel contactModel) {
        this.sosContact = contactModel;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        LinearLayout linearLayout = ((DialogActivationServiceSelectContactNumberBinding) DataBindingUtil.bind(view)).dialogActivationServiceSelectContactNumberLay;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        for (final int i = 0; i < this.sosContact.getPhoneNumbers().size(); i++) {
            TextView textView = (TextView) layoutInflaterFrom.inflate(R.layout.dialog_activation_service_select_contact_number_item, (ViewGroup) linearLayout, false);
            textView.setText(this.sosContact.getPhoneNumbers().get(i));
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.activationSosServices.contact.ActivationServiceSelectContactNumberDialog$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.m149x87bb09fc(i, view2);
                }
            });
            linearLayout.addView(textView);
            if (i < this.sosContact.getPhoneNumbers().size() - 1) {
                View view2 = new View(getContext());
                view2.setBackgroundResource(R.drawable.pick_contact_line);
                view2.setLayoutParams(new ViewGroup.LayoutParams(-1, 3));
                linearLayout.addView(view2);
            }
        }
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-contact-ActivationServiceSelectContactNumberDialog, reason: not valid java name */
    public /* synthetic */ void m149x87bb09fc(int i, View view) {
        ContactModel contactModel = this.sosContact;
        contactModel.setPhoneNumber(contactModel.getPhoneNumbers().get(i));
        this.sosContact.setPhoneNumbers(new ArrayList<String>(i) { // from class: com.texa.careapp.app.activationSosServices.contact.ActivationServiceSelectContactNumberDialog.1
            final /* synthetic */ int val$finalI;

            {
                this.val$finalI = i;
                add(ActivationServiceSelectContactNumberDialog.this.sosContact.getPhoneNumbers().get(i));
            }
        });
        this.mEventBus.post(new PickContactNumber(this.sosContact));
        getNavigator().goBack();
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG;
    }

    class PickContactNumber {
        ContactModel sosContact;

        PickContactNumber(ContactModel contactModel) {
            this.sosContact = contactModel;
        }

        ContactModel getSosContact() {
            return this.sosContact;
        }
    }
}
