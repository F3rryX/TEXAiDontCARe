# TEXA iDontCARe

## La storia

**TEXA CARe** era un'applicazione Android prodotta da TEXA S.p.A. che permetteva, tramite un dongle Bluetooth proprietario, di monitorare in tempo reale i parametri del veicolo (RPM, temperatura, velocità, codici errore DTC e molto altro).

Con il tempo l'app è diventata **obsoleta e non più utilizzabile**: aggiornamenti Android, dongle fuori produzione e server dismessi hanno reso impossibile qualsiasi funzionalità. Chi aveva il dongle si è ritrovato con un accessorio inutile e nessuna alternativa ufficiale.

## L'idea

Anziché abbandonare tutto, abbiamo deciso di analizzare il funzionamento originale dell'app — smontando l'APK con **jadx** e **apktool** — per capire quali parametri venivano letti, come venivano decodificati e con quale protocollo comunicava col veicolo.

Da quella analisi è nata **TEXA iDontCARe**: un'app **open source**, completamente riscritta, che si interfaccia con qualsiasi adattatore **ELM327 via BLE** (ampiamente disponibile e a basso costo) e legge gli stessi dati del veicolo tramite il protocollo standard **OBD-II (SAE J1979)**.

Nessun dongle proprietario. Nessun server. Nessun abbonamento.

## Struttura del repository

```
TEXAiDontCARe/
├── TexaiDontCARe/          # App Android open source (questo progetto)
│   ├── app/src/            # Codice sorgente Kotlin
│   │   └── com/obd2reader/
│   │       ├── ble/        # BleManager – connessione ELM327 via BLE
│   │       ├── obd/        # Protocollo OBD-II, parser risposte ELM327
│   │       ├── ui/         # MainActivity
│   │       └── viewmodel/  # MainViewModel
│   └── ...
│
└── TEXA CARe/              # Materiale originale (solo riferimento)
    ├── TEXA CARe_2.3.0_APKPure.xapk   # APK originale
    └── Source/
        ├── jadx/           # Sorgenti Java decompilati con jadx
        └── apktool/        # Smali + risorse decodate con apktool
```

## Requisiti

- Android 8.0+ (API 26)
- Adattatore **ELM327 Bluetooth Low Energy** (BLE)
- Veicolo con porta **OBD-II** (praticamente tutti i veicoli dal 2001 in poi)

## Come funziona

1. Accendi il veicolo e collega l'adattatore ELM327 BLE alla porta OBD-II
2. Apri l'app, esegui la scansione e seleziona il dispositivo
3. L'app inizializza l'ELM327 con la sequenza AT standard e avvia il polling dei parametri in tempo reale

## Parametri supportati

| Parametro | PID OBD-II |
|---|---|
| RPM Motore | `010C` |
| Velocità | `010D` |
| Temperatura refrigerante | `0105` |
| Posizione acceleratore | `0111` |
| Carico motore | `0104` |
| Temperatura aria aspirata | `010F` |
| Livello carburante | `012F` |
| Tensione batteria | `ATRV` |
| Codici errore DTC | `03` |
| Cancella DTC | `04` |

## Licenza

MIT — libero per uso personale e commerciale.

---

*Progetto nato dall'analisi di un prodotto dismesso. Nessuna violazione di proprietà intellettuale: i PID OBD-II sono standard pubblici SAE J1979 / ISO 15031-5.*
