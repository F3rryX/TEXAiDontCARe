package com.texa.careapp.exceptions;

/* JADX INFO: loaded from: classes2.dex */
public class DatabaseIOException extends Exception {
    public DatabaseIOException() {
        this("Could not save to database.");
    }

    public DatabaseIOException(String str) {
        super(str);
    }
}
