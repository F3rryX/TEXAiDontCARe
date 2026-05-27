package com.texa.careapp.app.sos;

import com.texa.careapp.FlavorDelegator;
import com.texa.careapp.app.sos.featuremanager.SosFeatureManager;
import com.texa.careapp.carelib.ICareObserver;
import com.texa.careapp.model.DongleDataManager;
import com.texa.careapp.remotelogger.LoggerManager;
import com.texa.careapp.utils.MechanicDataManager;
import com.texa.careapp.utils.ServiceDataManager;
import com.texa.careapp.utils.UserDataManager;
import com.texa.carelib.communication.Communication;
import com.texa.carelib.profile.Profile;
import dagger.MembersInjector;
import javax.inject.Provider;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: loaded from: classes2.dex */
public final class ContactsScreen_MembersInjector implements MembersInjector<ContactsScreen> {
    private final Provider<EventBus> eventBusProvider;
    private final Provider<ICareObserver> mCareObserverProvider;
    private final Provider<Communication> mCommunicationProvider;
    private final Provider<DongleDataManager> mDongleDataManagerProvider;
    private final Provider<FlavorDelegator> mFlavorDelegatorProvider;
    private final Provider<LoggerManager> mLoggerManagerProvider;
    private final Provider<MechanicDataManager> mMechanicDataManagerProvider;
    private final Provider<Profile> mProfileProvider;
    private final Provider<ServiceDataManager> mServiceDataManagerProvider;
    private final Provider<SosFeatureManager> mSosFeatureManagerProvider;
    private final Provider<UserDataManager> mUserDataManagerProvider;

    public ContactsScreen_MembersInjector(Provider<UserDataManager> provider, Provider<FlavorDelegator> provider2, Provider<ICareObserver> provider3, Provider<Communication> provider4, Provider<DongleDataManager> provider5, Provider<SosFeatureManager> provider6, Provider<MechanicDataManager> provider7, Provider<EventBus> provider8, Provider<LoggerManager> provider9, Provider<ServiceDataManager> provider10, Provider<Profile> provider11) {
        this.mUserDataManagerProvider = provider;
        this.mFlavorDelegatorProvider = provider2;
        this.mCareObserverProvider = provider3;
        this.mCommunicationProvider = provider4;
        this.mDongleDataManagerProvider = provider5;
        this.mSosFeatureManagerProvider = provider6;
        this.mMechanicDataManagerProvider = provider7;
        this.eventBusProvider = provider8;
        this.mLoggerManagerProvider = provider9;
        this.mServiceDataManagerProvider = provider10;
        this.mProfileProvider = provider11;
    }

    public static MembersInjector<ContactsScreen> create(Provider<UserDataManager> provider, Provider<FlavorDelegator> provider2, Provider<ICareObserver> provider3, Provider<Communication> provider4, Provider<DongleDataManager> provider5, Provider<SosFeatureManager> provider6, Provider<MechanicDataManager> provider7, Provider<EventBus> provider8, Provider<LoggerManager> provider9, Provider<ServiceDataManager> provider10, Provider<Profile> provider11) {
        return new ContactsScreen_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11);
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ContactsScreen contactsScreen) {
        injectMUserDataManager(contactsScreen, this.mUserDataManagerProvider.get());
        injectMFlavorDelegator(contactsScreen, this.mFlavorDelegatorProvider.get());
        injectMCareObserver(contactsScreen, this.mCareObserverProvider.get());
        injectMCommunication(contactsScreen, this.mCommunicationProvider.get());
        injectMDongleDataManager(contactsScreen, this.mDongleDataManagerProvider.get());
        injectMSosFeatureManager(contactsScreen, this.mSosFeatureManagerProvider.get());
        injectMMechanicDataManager(contactsScreen, this.mMechanicDataManagerProvider.get());
        injectEventBus(contactsScreen, this.eventBusProvider.get());
        injectMLoggerManager(contactsScreen, this.mLoggerManagerProvider.get());
        injectMServiceDataManager(contactsScreen, this.mServiceDataManagerProvider.get());
        injectMProfile(contactsScreen, this.mProfileProvider.get());
    }

    public static void injectMUserDataManager(ContactsScreen contactsScreen, UserDataManager userDataManager) {
        contactsScreen.mUserDataManager = userDataManager;
    }

    public static void injectMFlavorDelegator(ContactsScreen contactsScreen, FlavorDelegator flavorDelegator) {
        contactsScreen.mFlavorDelegator = flavorDelegator;
    }

    public static void injectMCareObserver(ContactsScreen contactsScreen, ICareObserver iCareObserver) {
        contactsScreen.mCareObserver = iCareObserver;
    }

    public static void injectMCommunication(ContactsScreen contactsScreen, Communication communication) {
        contactsScreen.mCommunication = communication;
    }

    public static void injectMDongleDataManager(ContactsScreen contactsScreen, DongleDataManager dongleDataManager) {
        contactsScreen.mDongleDataManager = dongleDataManager;
    }

    public static void injectMSosFeatureManager(ContactsScreen contactsScreen, SosFeatureManager sosFeatureManager) {
        contactsScreen.mSosFeatureManager = sosFeatureManager;
    }

    public static void injectMMechanicDataManager(ContactsScreen contactsScreen, MechanicDataManager mechanicDataManager) {
        contactsScreen.mMechanicDataManager = mechanicDataManager;
    }

    public static void injectEventBus(ContactsScreen contactsScreen, EventBus eventBus) {
        contactsScreen.eventBus = eventBus;
    }

    public static void injectMLoggerManager(ContactsScreen contactsScreen, LoggerManager loggerManager) {
        contactsScreen.mLoggerManager = loggerManager;
    }

    public static void injectMServiceDataManager(ContactsScreen contactsScreen, ServiceDataManager serviceDataManager) {
        contactsScreen.mServiceDataManager = serviceDataManager;
    }

    public static void injectMProfile(ContactsScreen contactsScreen, Profile profile) {
        contactsScreen.mProfile = profile;
    }
}
