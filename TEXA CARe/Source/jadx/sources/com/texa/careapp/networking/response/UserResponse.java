package com.texa.careapp.networking.response;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.Constants;
import com.texa.careapp.fcm.FcmConstants;
import com.texa.careapp.model.ContactModel;
import com.texa.careapp.model.TermsModel;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class UserResponse {
    public static final String TAG = "UserResponse";

    @SerializedName("user")
    @Expose
    public UserData userData;

    public static class UserData {

        @Expose
        public String address;

        @Expose
        public String city;

        @SerializedName("street_number")
        @Expose
        public String civicNumber;

        @SerializedName("contacts")
        @Expose
        public List<ContactModel> contactModelList;

        @Expose
        public String country;

        @SerializedName("post_code")
        @Expose
        public String countryCode;

        @Expose
        public String email;

        @Expose
        public String firstName;

        @SerializedName("tax_code")
        @Expose
        public String fiscalCode;

        @Expose
        public String lastName;

        @SerializedName("license_exp_date")
        @Expose
        public Date licenseExpireDate;

        @Expose
        public String province;

        @SerializedName(Constants.TERM_CONDITION_NAME)
        @Expose
        public List<TermsModel> termsModelList;

        @SerializedName(FcmConstants.NOTIFICATION_USER_ID)
        @Expose
        public String uid;

        @Expose
        public String userName;
    }
}
