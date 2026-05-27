package com.texa.carelib.care.featureverifier.internal;

import com.texa.carelib.communication.Commands;
import com.texa.carelib.communication.CommunicationStatus;
import com.texa.carelib.communication.Message;
import com.texa.carelib.core.CareError;
import com.texa.carelib.core.utils.FirmwareVersion;
import com.texa.carelib.core.utils.Version;
import com.texa.carelib.profile.Profile;
import com.texa.carelib.profile.ProfileSubModule;
import com.texa.carelib.profile.events.CommunicationStatusChangedEvent;
import com.texa.carelib.profile.internal.SerialProfileMessageReceiver;
import com.texa.carelib.profile.internal.parser.GetFirmwareStatusPacketParser;
import com.texa.carelib.profile.internal.parser.GetSupportedCommandsPacketParser;
import java.beans.PropertyChangeEvent;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class SerialCommandVerifier extends ProfileSubModule implements CommandVerifier, SerialProfileMessageReceiver {
    private static final HashSet<Integer> LEGACY_COMMANDS;
    private static final String TAG;
    private final Profile mProfile;
    private Set<Integer> mSupportedCommands = null;
    private boolean mIsLegacyFirmware = true;
    private boolean mIsReady = false;

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void loadInfo() {
    }

    public SerialCommandVerifier(Profile profile) {
        this.mProfile = profile;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public Profile getProfile() {
        return this.mProfile;
    }

    @Override // com.texa.carelib.profile.ProfileSubModule
    public void onCommunicationStatusChanged(CommunicationStatusChangedEvent communicationStatusChangedEvent) {
        if (CommunicationStatus.CONNECTED == communicationStatusChangedEvent.getCommunicationStatus()) {
            this.mIsReady = false;
            this.mIsLegacyFirmware = true;
            this.mSupportedCommands = null;
        }
    }

    @Override // com.texa.carelib.profile.ProfileSubModule, com.texa.carelib.profile.internal.SerialProfileMessageReceiver
    public void onMessageReceived(Object obj, Message message, CareError careError) {
        int commandID = message.getCommandID();
        if (commandID == 65) {
            handleMessageGetFirmwareStatus(message, careError);
        } else {
            if (commandID != 239) {
                return;
            }
            handleMessageGetSupportedCommands(message, careError);
        }
    }

    private void handleMessageGetFirmwareStatus(Message message, CareError careError) {
        FirmwareVersion mainAppVersion;
        if (careError == null && this.mIsLegacyFirmware) {
            HashSet hashSet = new HashSet(Arrays.asList(16, 17, 33, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 69, 70, 71, 72, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 85, 86, 87, 90, 91, 96, 97, 98, 99, 112, 162, 163, 192, Integer.valueOf(Commands.GetStatus), Integer.valueOf(Commands.GetTripStatus), Integer.valueOf(Commands.GetBTMacAddress), Integer.valueOf(Commands.GetHardwareVersion), Integer.valueOf(Commands.GetFirmwareVersion), Integer.valueOf(Commands.GetSerialNumber), Integer.valueOf(Commands.GetSOSStatus)));
            GetFirmwareStatusPacketParser.GetFirmwareStatusResponse getFirmwareStatusResponse = GetFirmwareStatusPacketParser.parse(message);
            if (getFirmwareStatusResponse != null && (mainAppVersion = getFirmwareStatusResponse.getMainAppVersion()) != null && "CARE".equals(mainAppVersion.getProductName())) {
                if (mainAppVersion.getVersion().compareTo(new Version(2, 0, 1, 3)) >= 0) {
                    hashSet.addAll(Arrays.asList(128, 144, 145, 146, 100, 113));
                }
                if (mainAppVersion.getVersion().compareTo(new Version(3, 0, 0, 0)) >= 0) {
                    hashSet.addAll(Arrays.asList(67, 73, Integer.valueOf(Commands.GetSettings)));
                }
                if (mainAppVersion.getVersion().compareTo(new Version(3, 0, 0, 23)) >= 0) {
                    hashSet.addAll(Arrays.asList(115, 114, 116, 117));
                }
                if (mainAppVersion.getVersion().compareTo(new Version(3, 0, 1, 1)) >= 0) {
                    hashSet.addAll(Arrays.asList(129, 130));
                }
                if (mainAppVersion.getVersion().compareTo(new Version(3, 0, 1, 2)) >= 0) {
                    hashSet.add(118);
                }
            }
            setSupportedCommands(hashSet);
        }
    }

    @Override // com.texa.carelib.care.featureverifier.internal.CommandVerifier
    public Set<Integer> getSupportedCommands() {
        Set<Integer> set = this.mSupportedCommands;
        return set == null ? Collections.emptySet() : set;
    }

    @Override // com.texa.carelib.care.featureverifier.internal.CommandVerifier
    public boolean isCommandSupported(int i) {
        if (isReady()) {
            return getSupportedCommands().contains(Integer.valueOf(i));
        }
        return false;
    }

    @Override // com.texa.carelib.care.featureverifier.internal.CommandVerifier
    public boolean isReady() {
        return this.mIsReady;
    }

    protected void setSupportedCommands(Set<Integer> set) {
        Set<Integer> set2 = this.mSupportedCommands;
        if (set != null) {
            HashSet hashSet = new HashSet();
            this.mSupportedCommands = hashSet;
            hashSet.addAll(set);
        } else {
            this.mSupportedCommands = null;
        }
        firePropertyChange(new PropertyChangeEvent(this, CommandVerifier.PROPERTY_SUPPORTED_COMMANDS, set2, this.mSupportedCommands));
    }

    protected void onProfileReady(boolean z) {
        if (z) {
            loadInfo();
        }
    }

    protected void handleMessageGetSupportedCommands(Message message, CareError careError) {
        this.mIsReady = true;
        this.mIsLegacyFirmware = 126 == message.getStatus();
        if (careError == null) {
            setSupportedCommands(GetSupportedCommandsPacketParser.parse(message));
        } else {
            setSupportedCommands(null);
        }
    }

    private boolean isLegacyFirmware() {
        return this.mIsLegacyFirmware;
    }

    static {
        HashSet<Integer> hashSet = new HashSet<>();
        LEGACY_COMMANDS = hashSet;
        hashSet.addAll(Arrays.asList(129, Integer.valueOf(Commands.GetHardwareVersion), Integer.valueOf(Commands.GetSerialNumber), Integer.valueOf(Commands.GetStatus), 65, 163, 162, 17, 16, 69, 72, 74, 70, 71, 75, 78, 45, 48, 49, 50, 51, 80, 81, 46, 44, 47, 32, 33, 66, 192, Integer.valueOf(Commands.GetSOSStatus), 52, 53, 54, Integer.valueOf(Commands.GetTripStatus), 96, 97, 98, 99, 55, 57, 56, 91, 90, 112, 144, 145, 146, 128, 113, 67, Integer.valueOf(Commands.GetSettings), 73, 100, 114, 115, 116, 117, 129, 130, 118));
        TAG = "SerialCommandVerifier";
    }
}
