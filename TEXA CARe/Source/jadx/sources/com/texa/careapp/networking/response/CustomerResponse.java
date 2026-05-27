package com.texa.careapp.networking.response;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.model.BusinessTime;
import com.texa.careapp.model.MechanicContact;
import com.texa.careapp.model.MechanicModel;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class CustomerResponse {
    private static final String TAG = "CustomerResponse";

    @SerializedName("customer")
    @Expose
    public Customer customer;

    @Expose
    private long updatedAt;

    protected boolean canEqual(Object obj) {
        return obj instanceof CustomerResponse;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CustomerResponse)) {
            return false;
        }
        CustomerResponse customerResponse = (CustomerResponse) obj;
        if (!customerResponse.canEqual(this)) {
            return false;
        }
        Customer customer = getCustomer();
        Customer customer2 = customerResponse.getCustomer();
        if (customer != null ? customer.equals(customer2) : customer2 == null) {
            return getUpdatedAt() == customerResponse.getUpdatedAt();
        }
        return false;
    }

    public int hashCode() {
        Customer customer = getCustomer();
        int iHashCode = customer == null ? 43 : customer.hashCode();
        long updatedAt = getUpdatedAt();
        return ((iHashCode + 59) * 59) + ((int) ((updatedAt >>> 32) ^ updatedAt));
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public void setUpdatedAt(long j) {
        this.updatedAt = j;
    }

    public String toString() {
        return "CustomerResponse(customer=" + getCustomer() + ", updatedAt=" + getUpdatedAt() + ")";
    }

    public Customer getCustomer() {
        return this.customer;
    }

    public long getUpdatedAt() {
        return this.updatedAt;
    }

    public static class Customer {

        @Expose
        public String address;

        @Expose
        public List<BusinessTime> business_times;

        @Expose
        public String city;

        @Expose
        public String closing_end;

        @Expose
        public String closing_start;

        @Expose
        public List<MechanicContact> contacts;

        @Expose
        public String country;

        @SerializedName(AppMeasurementSdk.ConditionalUserProperty.NAME)
        @Expose
        public String customer_name;

        @Expose
        public String id;

        @Expose
        public MechanicModel.Location location;

        @Expose
        public String post_code;

        @Expose
        public String street_number;

        protected boolean canEqual(Object obj) {
            return obj instanceof Customer;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Customer)) {
                return false;
            }
            Customer customer = (Customer) obj;
            if (!customer.canEqual(this)) {
                return false;
            }
            String address = getAddress();
            String address2 = customer.getAddress();
            if (address != null ? !address.equals(address2) : address2 != null) {
                return false;
            }
            String street_number = getStreet_number();
            String street_number2 = customer.getStreet_number();
            if (street_number != null ? !street_number.equals(street_number2) : street_number2 != null) {
                return false;
            }
            String post_code = getPost_code();
            String post_code2 = customer.getPost_code();
            if (post_code != null ? !post_code.equals(post_code2) : post_code2 != null) {
                return false;
            }
            String city = getCity();
            String city2 = customer.getCity();
            if (city != null ? !city.equals(city2) : city2 != null) {
                return false;
            }
            String country = getCountry();
            String country2 = customer.getCountry();
            if (country != null ? !country.equals(country2) : country2 != null) {
                return false;
            }
            List<MechanicContact> contacts = getContacts();
            List<MechanicContact> contacts2 = customer.getContacts();
            if (contacts != null ? !contacts.equals(contacts2) : contacts2 != null) {
                return false;
            }
            String customer_name = getCustomer_name();
            String customer_name2 = customer.getCustomer_name();
            if (customer_name != null ? !customer_name.equals(customer_name2) : customer_name2 != null) {
                return false;
            }
            MechanicModel.Location location = getLocation();
            MechanicModel.Location location2 = customer.getLocation();
            if (location != null ? !location.equals(location2) : location2 != null) {
                return false;
            }
            List<BusinessTime> business_times = getBusiness_times();
            List<BusinessTime> business_times2 = customer.getBusiness_times();
            if (business_times != null ? !business_times.equals(business_times2) : business_times2 != null) {
                return false;
            }
            String closing_start = getClosing_start();
            String closing_start2 = customer.getClosing_start();
            if (closing_start != null ? !closing_start.equals(closing_start2) : closing_start2 != null) {
                return false;
            }
            String closing_end = getClosing_end();
            String closing_end2 = customer.getClosing_end();
            if (closing_end != null ? !closing_end.equals(closing_end2) : closing_end2 != null) {
                return false;
            }
            String id = getId();
            String id2 = customer.getId();
            return id != null ? id.equals(id2) : id2 == null;
        }

        public int hashCode() {
            String address = getAddress();
            int iHashCode = address == null ? 43 : address.hashCode();
            String street_number = getStreet_number();
            int iHashCode2 = ((iHashCode + 59) * 59) + (street_number == null ? 43 : street_number.hashCode());
            String post_code = getPost_code();
            int iHashCode3 = (iHashCode2 * 59) + (post_code == null ? 43 : post_code.hashCode());
            String city = getCity();
            int iHashCode4 = (iHashCode3 * 59) + (city == null ? 43 : city.hashCode());
            String country = getCountry();
            int iHashCode5 = (iHashCode4 * 59) + (country == null ? 43 : country.hashCode());
            List<MechanicContact> contacts = getContacts();
            int iHashCode6 = (iHashCode5 * 59) + (contacts == null ? 43 : contacts.hashCode());
            String customer_name = getCustomer_name();
            int iHashCode7 = (iHashCode6 * 59) + (customer_name == null ? 43 : customer_name.hashCode());
            MechanicModel.Location location = getLocation();
            int iHashCode8 = (iHashCode7 * 59) + (location == null ? 43 : location.hashCode());
            List<BusinessTime> business_times = getBusiness_times();
            int iHashCode9 = (iHashCode8 * 59) + (business_times == null ? 43 : business_times.hashCode());
            String closing_start = getClosing_start();
            int iHashCode10 = (iHashCode9 * 59) + (closing_start == null ? 43 : closing_start.hashCode());
            String closing_end = getClosing_end();
            int iHashCode11 = (iHashCode10 * 59) + (closing_end == null ? 43 : closing_end.hashCode());
            String id = getId();
            return (iHashCode11 * 59) + (id != null ? id.hashCode() : 43);
        }

        public void setAddress(String str) {
            this.address = str;
        }

        public void setBusiness_times(List<BusinessTime> list) {
            this.business_times = list;
        }

        public void setCity(String str) {
            this.city = str;
        }

        public void setClosing_end(String str) {
            this.closing_end = str;
        }

        public void setClosing_start(String str) {
            this.closing_start = str;
        }

        public void setContacts(List<MechanicContact> list) {
            this.contacts = list;
        }

        public void setCountry(String str) {
            this.country = str;
        }

        public void setCustomer_name(String str) {
            this.customer_name = str;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setLocation(MechanicModel.Location location) {
            this.location = location;
        }

        public void setPost_code(String str) {
            this.post_code = str;
        }

        public void setStreet_number(String str) {
            this.street_number = str;
        }

        public String toString() {
            return "CustomerResponse.Customer(address=" + getAddress() + ", street_number=" + getStreet_number() + ", post_code=" + getPost_code() + ", city=" + getCity() + ", country=" + getCountry() + ", contacts=" + getContacts() + ", customer_name=" + getCustomer_name() + ", location=" + getLocation() + ", business_times=" + getBusiness_times() + ", closing_start=" + getClosing_start() + ", closing_end=" + getClosing_end() + ", id=" + getId() + ")";
        }

        public String getAddress() {
            return this.address;
        }

        public String getStreet_number() {
            return this.street_number;
        }

        public String getPost_code() {
            return this.post_code;
        }

        public String getCity() {
            return this.city;
        }

        public String getCountry() {
            return this.country;
        }

        public List<MechanicContact> getContacts() {
            return this.contacts;
        }

        public String getCustomer_name() {
            return this.customer_name;
        }

        public MechanicModel.Location getLocation() {
            return this.location;
        }

        public List<BusinessTime> getBusiness_times() {
            return this.business_times;
        }

        public String getClosing_start() {
            return this.closing_start;
        }

        public String getClosing_end() {
            return this.closing_end;
        }

        public String getId() {
            return this.id;
        }
    }
}
