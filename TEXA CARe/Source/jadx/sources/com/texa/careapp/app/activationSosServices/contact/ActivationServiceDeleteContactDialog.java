package com.texa.careapp.app.activationSosServices.contact;

import android.view.View;
import androidx.databinding.DataBindingUtil;
import com.texa.care.R;
import com.texa.care.navigation.Screen;
import com.texa.care.navigation.ScreenType;
import com.texa.careapp.CareApplication;
import com.texa.careapp.databinding.DialogActivationServiceDeleteContactBinding;
import com.texa.careapp.model.ContactModel;
import javax.inject.Inject;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public class ActivationServiceDeleteContactDialog extends Screen {

    @Inject
    protected EventBus mEventBus;
    private ContactModel sosContact;

    @Override // com.texa.care.navigation.Screen
    public String getId() {
        return "ActivationServiceDeleteContactDialog";
    }

    @Override // com.texa.care.navigation.Screen
    public int getLayoutId() {
        return R.layout.dialog_activation_service_delete_contact;
    }

    public ActivationServiceDeleteContactDialog(ContactModel contactModel) {
        this.sosContact = contactModel;
    }

    @Override // com.texa.care.navigation.Screen
    public void afterViewInjection(View view) {
        ((CareApplication) getNavigator().getApplication()).component().inject(this);
        DialogActivationServiceDeleteContactBinding dialogActivationServiceDeleteContactBinding = (DialogActivationServiceDeleteContactBinding) DataBindingUtil.bind(view);
        dialogActivationServiceDeleteContactBinding.dialogActivationServiceDeleteContactDescription.setText(String.format(getContext().getString(R.string.sos_dialog_contact_delete_description), this.sosContact.getTitle()));
        dialogActivationServiceDeleteContactBinding.dialogActivationServiceDeleteContactUndo.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.activationSosServices.contact.ActivationServiceDeleteContactDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m147x300dc544(view2);
            }
        });
        dialogActivationServiceDeleteContactBinding.dialogActivationServiceDeleteContactConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.texa.careapp.app.activationSosServices.contact.ActivationServiceDeleteContactDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.m148x19158a45(view2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$0$com-texa-careapp-app-activationSosServices-contact-ActivationServiceDeleteContactDialog, reason: not valid java name */
    public /* synthetic */ void m147x300dc544(View view) {
        getNavigator().goBack();
    }

    /* JADX INFO: renamed from: lambda$afterViewInjection$1$com-texa-careapp-app-activationSosServices-contact-ActivationServiceDeleteContactDialog, reason: not valid java name */
    public /* synthetic */ void m148x19158a45(View view) {
        deleteContact();
    }

    private void deleteContact() {
        this.mEventBus.post(new DeleteContact(this.sosContact.getUid()));
        getNavigator().goBack();
    }

    @Override // com.texa.care.navigation.Screen
    public ScreenType getType() {
        return ScreenType.DIALOG;
    }

    public class DeleteContact {
        String uuid;

        DeleteContact(String str) {
            this.uuid = str;
        }

        public String getUuid() {
            return this.uuid;
        }
    }
}
