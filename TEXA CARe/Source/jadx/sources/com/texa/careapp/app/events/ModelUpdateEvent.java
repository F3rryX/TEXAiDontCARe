package com.texa.careapp.app.events;

import com.activeandroid.Model;

/* JADX INFO: loaded from: classes2.dex */
public class ModelUpdateEvent {
    private final DatabaseAction action;
    private final Model model;

    public enum DatabaseAction {
        UPDATE,
        DELETE
    }

    public Model getModel() {
        return this.model;
    }

    public DatabaseAction getAction() {
        return this.action;
    }

    public ModelUpdateEvent(Model model) {
        this.model = model;
        this.action = DatabaseAction.UPDATE;
    }

    public ModelUpdateEvent(Model model, DatabaseAction databaseAction) {
        this.model = model;
        this.action = databaseAction;
    }
}
