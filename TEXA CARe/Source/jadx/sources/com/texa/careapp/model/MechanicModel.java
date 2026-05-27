package com.texa.careapp.model;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.texa.careapp.networking.response.CustomerResponse;
import com.texa.careapp.utils.Objects;
import com.texa.careapp.utils.Utils;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
@Table(name = "Mechanic")
public class MechanicModel extends Model {
    public static final String COLUMN_LAST_UPDATE = "LastUpdate";
    public static final String COLUMN_UID = "uuid";
    public static final String TABLE_MECHANIC = "Mechanic";
    public static final String TABLE_MECHANIC_LOCATION = "MechanicLocation";

    @Column
    private String address;
    public List<BusinessTime> business_times;

    @Column
    private String city;

    @Column
    private String closing_end;

    @Column
    private String closing_start;
    public List<MechanicContact> contacts;

    @Column
    private String country;

    @SerializedName(AppMeasurementSdk.ConditionalUserProperty.NAME)
    @Column
    private String customer_name;

    @Column
    private Location location;

    @Column
    private String post_code;

    @Column
    private String street_number;

    @Column(name = "uuid", onUniqueConflict = Column.ConflictAction.REPLACE, unique = true)
    private String uid;

    @Column(name = COLUMN_LAST_UPDATE)
    private Long updatedAt;

    public String getUid() {
        return this.uid;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public String getStreet_number() {
        return this.street_number;
    }

    public void setStreet_number(String str) {
        this.street_number = str;
    }

    public String getPost_code() {
        return this.post_code;
    }

    public void setPost_code(String str) {
        this.post_code = str;
    }

    public String getCity() {
        return this.city;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public String getCountry() {
        return this.country;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setContacts(List<MechanicContact> list) {
        this.contacts = list;
    }

    public String getCustomer_name() {
        return this.customer_name;
    }

    public void setCustomer_name(String str) {
        this.customer_name = str;
    }

    public Location getLocation() {
        return this.location;
    }

    public void setLocation(Location location) {
        this.location = location;
    }

    public void setBusiness_times(List<BusinessTime> list) {
        this.business_times = list;
    }

    public String getClosing_start() {
        return this.closing_start;
    }

    public void setClosing_start(String str) {
        this.closing_start = str;
    }

    public String getClosing_end() {
        return this.closing_end;
    }

    public void setClosing_end(String str) {
        this.closing_end = str;
    }

    public Long getUpdatedAt() {
        return this.updatedAt;
    }

    public void setUpdatedAt(Long l) {
        this.updatedAt = l;
    }

    public static MechanicModel from(CustomerResponse customerResponse) {
        MechanicModel mechanicModel = new MechanicModel();
        mechanicModel.setUid(UUID.randomUUID().toString());
        mechanicModel.setCustomer_name(customerResponse.customer.customer_name);
        mechanicModel.setCity(customerResponse.customer.city);
        mechanicModel.setAddress(customerResponse.customer.address);
        mechanicModel.setStreet_number(customerResponse.customer.street_number);
        mechanicModel.setCountry(customerResponse.customer.country);
        mechanicModel.setLocation(customerResponse.customer.location);
        mechanicModel.setPost_code(customerResponse.customer.post_code);
        ArrayList arrayList = new ArrayList();
        for (BusinessTime businessTime : customerResponse.customer.business_times) {
            businessTime.setMechanicModel(mechanicModel);
            arrayList.add(businessTime);
        }
        mechanicModel.setBusiness_times(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (MechanicContact mechanicContact : customerResponse.customer.contacts) {
            mechanicContact.setMechanicModel(mechanicModel);
            arrayList2.add(mechanicContact);
        }
        mechanicModel.setContacts(arrayList2);
        mechanicModel.setClosing_start(customerResponse.customer.closing_start);
        mechanicModel.setClosing_end(customerResponse.customer.closing_end);
        mechanicModel.setUpdatedAt(Long.valueOf(customerResponse.getUpdatedAt()));
        return mechanicModel;
    }

    public List<BusinessTime> loadBusinessTimeFromDB() {
        List<BusinessTime> many = getMany(BusinessTime.class, "Mechanic");
        this.business_times = many;
        return many;
    }

    public List<MechanicContact> loadMechanicContactsFromDB() {
        List<MechanicContact> many = getMany(MechanicContact.class, "Mechanic");
        this.contacts = many;
        return many;
    }

    public String getName() {
        String str = this.customer_name;
        return (str == null || Utils.isEmpty(str)) ? "" : this.customer_name;
    }

    @Override // com.activeandroid.Model
    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MechanicModel mechanicModel = (MechanicModel) obj;
        return Objects.equal(this.address, mechanicModel.address) && Objects.equal(this.city, mechanicModel.city) && Objects.equal(this.street_number, mechanicModel.street_number) && Objects.equal(this.post_code, mechanicModel.post_code) && Objects.equal(this.country, mechanicModel.country) && Objects.equal(this.location, mechanicModel.location) && Objects.equal(this.customer_name, mechanicModel.customer_name) && Objects.equal(this.business_times, mechanicModel.business_times) && Objects.equal(this.closing_start, mechanicModel.closing_start) && Objects.equal(this.closing_end, mechanicModel.closing_end);
    }

    public static class Location {

        @Expose
        public Double latitude;

        @Expose
        public Double longitude;

        protected boolean canEqual(Object obj) {
            return obj instanceof Location;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Location)) {
                return false;
            }
            Location location = (Location) obj;
            if (!location.canEqual(this)) {
                return false;
            }
            Double latitude = getLatitude();
            Double latitude2 = location.getLatitude();
            if (latitude != null ? !latitude.equals(latitude2) : latitude2 != null) {
                return false;
            }
            Double longitude = getLongitude();
            Double longitude2 = location.getLongitude();
            return longitude != null ? longitude.equals(longitude2) : longitude2 == null;
        }

        public int hashCode() {
            Double latitude = getLatitude();
            int iHashCode = latitude == null ? 43 : latitude.hashCode();
            Double longitude = getLongitude();
            return ((iHashCode + 59) * 59) + (longitude != null ? longitude.hashCode() : 43);
        }

        public void setLatitude(Double d) {
            this.latitude = d;
        }

        public void setLongitude(Double d) {
            this.longitude = d;
        }

        public String toString() {
            return "MechanicModel.Location(latitude=" + getLatitude() + ", longitude=" + getLongitude() + ")";
        }

        public Double getLatitude() {
            return this.latitude;
        }

        public Double getLongitude() {
            return this.longitude;
        }
    }
}
