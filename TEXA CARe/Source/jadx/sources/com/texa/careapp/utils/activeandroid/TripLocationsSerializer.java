package com.texa.careapp.utils.activeandroid;

import com.activeandroid.serializer.TypeSerializer;
import com.texa.careapp.model.TripModel;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TripLocationsSerializer extends TypeSerializer {
    @Override // com.activeandroid.serializer.TypeSerializer
    public Class<?> getDeserializedType() {
        return TripModel.TripLocations.class;
    }

    @Override // com.activeandroid.serializer.TypeSerializer
    public Class<?> getSerializedType() {
        return String.class;
    }

    @Override // com.activeandroid.serializer.TypeSerializer
    public String serialize(Object obj) {
        JSONArray jSONArray = new JSONArray();
        if (obj == null) {
            return jSONArray.toString();
        }
        for (TripModel.LocationData locationData : (TripModel.TripLocations) obj) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("latitude", locationData.latitude + "");
                jSONObject.put("longitude", locationData.longitude + "");
                jSONObject.put("accuracy", locationData.accuracy + "");
                jSONObject.put("timestamp", locationData.timestamp.getTime() + "");
                jSONArray.put(jSONObject);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return jSONArray.toString();
    }

    @Override // com.activeandroid.serializer.TypeSerializer
    public TripModel.TripLocations deserialize(Object obj) {
        TripModel.TripLocations tripLocations = new TripModel.TripLocations();
        if (obj == null) {
            return tripLocations;
        }
        try {
            JSONArray jSONArray = new JSONArray(obj.toString());
            for (int i = 0; i < jSONArray.length(); i++) {
                TripModel.LocationData locationData = new TripModel.LocationData();
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String str = (String) (jSONObject.has("latitude") ? jSONObject.get("latitude") : null);
                String str2 = (String) (jSONObject.has("longitude") ? jSONObject.get("longitude") : null);
                String str3 = (String) (jSONObject.has("accuracy") ? jSONObject.get("accuracy") : null);
                String str4 = (String) (jSONObject.has("timestamp") ? jSONObject.get("timestamp") : null);
                if (str != null) {
                    locationData.latitude = Double.parseDouble(str);
                }
                if (str2 != null) {
                    locationData.longitude = Double.parseDouble(str2);
                }
                if (str3 != null) {
                    locationData.accuracy = Float.parseFloat(str3);
                }
                if (str4 != null) {
                    locationData.timestamp = new Date(Long.parseLong(str4));
                }
                tripLocations.add(locationData);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return tripLocations;
    }
}
