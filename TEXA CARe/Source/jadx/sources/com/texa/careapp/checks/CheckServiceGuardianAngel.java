package com.texa.careapp.checks;

import androidx.core.os.OperationCanceledException;
import com.activeandroid.Model;
import com.texa.careapp.app.events.ModelUpdateEvent;
import com.texa.careapp.checks.Check;
import com.texa.careapp.model.ContactModel;
import com.texa.careapp.model.ServiceDataModel;
import com.texa.careapp.model.UserModel;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.subjects.PublishSubject;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

/* JADX INFO: loaded from: classes2.dex */
class CheckServiceGuardianAngel implements Check {
    private ServiceDataModel service;
    private final UserModel user;
    private PublishSubject<ServiceDataModel> serviceObservable = PublishSubject.create();
    private PublishSubject<Integer> guardianAngelContactsObservable = PublishSubject.create();

    @Override // com.texa.careapp.checks.Check
    public String description() {
        return "";
    }

    @Override // com.texa.careapp.checks.Check
    public void resolve() {
    }

    CheckServiceGuardianAngel(ServiceDataModel serviceDataModel) {
        this.service = serviceDataModel;
        this.user = serviceDataModel.getUser();
    }

    @Override // com.texa.careapp.checks.Check
    public Observable<Check.Result> check() {
        return Observable.combineLatest(this.serviceObservable, this.guardianAngelContactsObservable, new BiFunction() { // from class: com.texa.careapp.checks.CheckServiceGuardianAngel$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return this.f$0.checkCurrentStatus((ServiceDataModel) obj, (Integer) obj2);
            }
        }).doOnSubscribe(new Consumer() { // from class: com.texa.careapp.checks.CheckServiceGuardianAngel$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f$0.m586lambda$check$0$comtexacareappchecksCheckServiceGuardianAngel((Disposable) obj);
            }
        }).doOnComplete(new Action() { // from class: com.texa.careapp.checks.CheckServiceGuardianAngel$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() throws Exception {
                this.f$0.m587lambda$check$1$comtexacareappchecksCheckServiceGuardianAngel();
            }
        }).distinctUntilChanged().onErrorReturn(new Function() { // from class: com.texa.careapp.checks.CheckServiceGuardianAngel$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Check.Result.OK;
            }
        });
    }

    /* JADX INFO: renamed from: lambda$check$0$com-texa-careapp-checks-CheckServiceGuardianAngel, reason: not valid java name */
    public /* synthetic */ void m586lambda$check$0$comtexacareappchecksCheckServiceGuardianAngel(Disposable disposable) throws Exception {
        EventBus.getDefault().register(this);
    }

    /* JADX INFO: renamed from: lambda$check$1$com-texa-careapp-checks-CheckServiceGuardianAngel, reason: not valid java name */
    public /* synthetic */ void m587lambda$check$1$comtexacareappchecksCheckServiceGuardianAngel() throws Exception {
        EventBus.getDefault().unregister(this);
    }

    @Override // com.texa.careapp.checks.Check
    public Check.Result checkCurrentStatus() {
        return checkCurrentStatus(this.service, Integer.valueOf(this.user.getGuardianAngelContacts().size()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Check.Result checkCurrentStatus(ServiceDataModel serviceDataModel, Integer num) {
        if (serviceDataModel == null) {
            return Check.Result.OK;
        }
        if (serviceDataModel.getIdType() != ServiceDataModel.DongleServiceId.SOS_LIGHT) {
            return Check.Result.OK;
        }
        if (serviceDataModel.getIdType() == ServiceDataModel.DongleServiceId.SOS_LIGHT) {
            if (num.intValue() < 1) {
                return Check.Result.BLOCKING;
            }
            if (num.intValue() < 2) {
                return Check.Result.WARNING;
            }
        }
        return Check.Result.OK;
    }

    @Subscribe
    public void onEvent(ModelUpdateEvent modelUpdateEvent) {
        Model model = modelUpdateEvent.getModel();
        if ((model instanceof ServiceDataModel) && model.equals(this.service)) {
            if (modelUpdateEvent.getAction() == ModelUpdateEvent.DatabaseAction.DELETE) {
                this.serviceObservable.onError(new OperationCanceledException("service Checked was cancelled"));
                return;
            }
            ServiceDataModel serviceDataModel = (ServiceDataModel) model;
            this.service = serviceDataModel;
            this.serviceObservable.onNext(serviceDataModel);
            return;
        }
        if (model instanceof ContactModel) {
            this.guardianAngelContactsObservable.onNext(Integer.valueOf(this.user.getGuardianAngelContacts().size()));
        }
    }
}
