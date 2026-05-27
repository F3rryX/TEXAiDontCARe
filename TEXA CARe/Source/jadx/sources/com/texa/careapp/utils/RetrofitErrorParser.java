package com.texa.careapp.utils;

import android.content.Context;
import android.widget.Toast;
import com.google.gson.Gson;
import com.texa.care.R;
import com.texa.careapp.Constants;
import com.texa.careapp.networking.response.ServerResponse;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.HashMap;
import retrofit2.HttpException;
import timber.log.Timber;

/* JADX INFO: loaded from: classes2.dex */
public class RetrofitErrorParser {
    private static HashMap<String, Integer> ERROR_CODES = null;
    private static final String TAG = "RetrofitErrorParser";
    private final Context mContext;

    static {
        HashMap<String, Integer> map = new HashMap<>();
        ERROR_CODES = map;
        map.put(Constants.ERROR_KO_DONGLE_STATUS, Integer.valueOf(R.string.error_user_dongle_association));
        ERROR_CODES.put(Constants.ERROR_KO_USER_EXISTING, Integer.valueOf(R.string.error_user_existing));
        ERROR_CODES.put(Constants.ERROR_KO_INPUT_HWID_MISSING, Integer.valueOf(R.string.error_hwid_missing));
        ERROR_CODES.put(Constants.ERROR_KO_INPUT_MODEL_ERROR, Integer.valueOf(R.string.error_ko_input_model_error));
        ERROR_CODES.put(Constants.ERROR_KO_USERAUTH_CREDENTIALS_WRONG, Integer.valueOf(R.string.error_credentials_wrong));
        ERROR_CODES.put(Constants.ERROR_KO_DONGLE_USER_LIMIT_EXCEEDED, Integer.valueOf(R.string.error_dongle_user_limit_exceeded));
        ERROR_CODES.put(Constants.ERROR_KO_USER_DONGLE_LIMIT_EXCEEDED, Integer.valueOf(R.string.error_user_dongle_limit_exceeded));
        ERROR_CODES.put(Constants.ERROR_KO_USER_NOT_FOUND, Integer.valueOf(R.string.user_not_found));
        ERROR_CODES.put(Constants.ERROR_KO_CONTENTS_VEHICLE_VIN_MISMATCH, Integer.valueOf(R.string.error_ko_contents_vehicle_vin_mismatch));
        ERROR_CODES.put(Constants.KO_API_REMOTE_SERVICE_ERROR, Integer.valueOf(R.string.remote_service_error));
        ERROR_CODES.put(Constants.ERROR_KO_CONTRACT_ALREADY_ACCEPTED, Integer.valueOf(R.string.error_ko_cotract_already_accepted));
        ERROR_CODES.put(Constants.ERROR_KO_PURCHASE_NOT_FOUND, Integer.valueOf(R.string.error_ko_purchase_not_found));
        ERROR_CODES.put(Constants.ERROR_KO_CONTACT_NOT_EDITABLE, Integer.valueOf(R.string.error_ko_contact_not_editable));
        ERROR_CODES.put(Constants.ERROR_KO_CUSTOMER_NOT_FOUND, Integer.valueOf(R.string.on_boarding_customer_not_found));
    }

    public RetrofitErrorParser(Context context) {
        this.mContext = context;
    }

    public void parse(Throwable th) {
        if (th instanceof HttpException) {
            parse((HttpException) th);
        } else if (th instanceof IOException) {
            notifyError(R.string.error_network);
        } else if (th instanceof UnknownHostException) {
            notifyError(R.string.error_network);
        }
    }

    public void parse(HttpException httpException) {
        try {
            ServerResponse serverResponse = (ServerResponse) new Gson().fromJson(httpException.response().errorBody().charStream(), ServerResponse.class);
            Timber.e("API error[URL=%s, Error=%s", httpException.response().raw().request().url().getUrl(), serverResponse.toString());
            String error = serverResponse.getError();
            if (error == null) {
                error = serverResponse.getMessage();
            }
            if (ERROR_CODES.containsKey(error)) {
                notifyError(ERROR_CODES.get(error).intValue());
            }
        } catch (Exception e) {
            Timber.e(e, "Invalid server response. Error details: [code=%s, m %s", Integer.valueOf(httpException.code()), httpException.message());
            int iCode = httpException.code();
            if (403 == iCode) {
                notifyError(R.string.error_http_forbidden);
                return;
            }
            if (404 == iCode) {
                notifyError(R.string.error_http_not_found);
            } else {
                if (iCode < 500 || iCode >= 600) {
                    return;
                }
                notifyError(R.string.error_http_internal_server_error);
            }
        }
    }

    public String parseToString(HttpException httpException) {
        String error = "";
        try {
            ServerResponse serverResponse = (ServerResponse) new Gson().fromJson(httpException.response().errorBody().charStream(), ServerResponse.class);
            error = serverResponse.getError();
            if (error == null) {
                error = serverResponse.getMessage();
            } else if (ERROR_CODES.containsKey(error)) {
                error = this.mContext.getResources().getString(ERROR_CODES.get(error).intValue());
            }
        } catch (Exception e) {
            Timber.e(e, "Invalid server response. Error details: [code=%s, m %s", Integer.valueOf(httpException.code()), httpException.message());
            int iCode = httpException.code();
            if (403 == iCode) {
                notifyError(R.string.error_http_forbidden);
            } else if (404 == iCode) {
                notifyError(R.string.error_http_not_found);
            } else if (iCode >= 500 && iCode < 600) {
                notifyError(R.string.error_http_internal_server_error);
            }
        }
        return error;
    }

    public String toString(Throwable th) {
        return th instanceof HttpException ? toString(th) : "";
    }

    public String toString(HttpException httpException) {
        StringBuilder sb = new StringBuilder();
        sb.append("HttpException, ");
        if (httpException.getCause() != null) {
            sb.append(httpException.getCause());
            sb.append(", ");
        }
        if (httpException.response() != null) {
            sb.append(httpException.response().code());
            sb.append(", ");
            try {
                sb.append(new Gson().fromJson(httpException.response().errorBody().charStream(), ServerResponse.class));
            } catch (Exception unused) {
                sb.append("null");
            }
        }
        return sb.toString();
    }

    private void notifyError(int i) {
        Toast.makeText(this.mContext, i, 1).show();
    }

    public boolean isRawDataInvalid(Exception exc) {
        if (exc instanceof HttpException) {
            try {
                ServerResponse serverResponse = (ServerResponse) new Gson().fromJson(((HttpException) exc).response().errorBody().charStream(), ServerResponse.class);
                if (serverResponse != null && Constants.ERROR_KO_INPUT_MODEL_ERROR.equals(serverResponse.getMessage()) && serverResponse.getDetails() != null) {
                    return serverResponse.getDetails().containsValue(Constants.ERROR_KO_INPUT_BASE64_NOT_VALID);
                }
            } catch (Exception e) {
                Timber.e(e, "Invalid response body.", new Object[0]);
            }
        }
        return false;
    }

    public boolean isUserRecoveryInProgress(Throwable th) {
        if (th instanceof HttpException) {
            try {
                return Constants.ERROR_KO_USER_RECOVERY_IN_PROGRESS.equals(((ServerResponse) new Gson().fromJson(((HttpException) th).response().errorBody().charStream(), ServerResponse.class)).getMessage());
            } catch (Exception e) {
                Timber.e(e, "Invalid response body.", new Object[0]);
            }
        }
        return false;
    }
}
