.class public Lcom/texa/careapp/utils/Devices;
.super Ljava/lang/Object;
.source "Devices.java"


# static fields
.field private static final SUPPORTED_DEVICES:[Ljava/lang/String;

.field private static sDeviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe08

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Acer|A1-810|mango|A1-810"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Acer|Aspire A3|aa3-600|AA3-600"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Acer|CloudMobile S500|a9|S500"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Acer|Icona One 7|vespa|B1-730HD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Acer|Iconia One 7|G1-725|G1-725"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Acer|Iconia One 7|vespa|B1-730HD"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Acer|Iconia One 7|vespa2|B1-750"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Acer|Iconia One 7|vespatn|B1-730"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Acer|Iconia One 8|vespa8|A1-850"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Acer|Iconia One 8|vespa8|B1-810"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Acer|Iconia Tab 10|acer_harley|A3-A20"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Acer|Iconia Tab 10|acer_harleyfhd|A3-A20FHD"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Acer|Iconia Tab 7|acer_aprilia|A1-713"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Acer|Iconia Tab 7|acer_apriliahd|A1-713HD"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Acer|Iconia Tab 8|ducati2fhd|A1-840FHD"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Acer|Iconia Tab 8|ducati2hd|A1-840"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Acer|Iconia Tab 8|ducati2hd3g|A1-841"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Acer|Iconia Tab A200|picasso_e|A200"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Acer|Iconia Tab A210|picasso_e2|A210"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Acer|Iconia Tab A211|picasso_e2|A211"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Acer|Iconia Tab A500|picasso|A500"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Acer|Iconia Tab A501|picasso|A501"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Acer|Iconia Tab A510|picasso_m|A510"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Acer|Iconia Tab A511|picasso_m|A511"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Acer|Iconia Tab A700|picasso_mf|A700"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Acer|Iconia Tab A701|picasso_mf|A701"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Acer|Iconia TalkTab 7|acer_a1_724|A1-724"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Acer|Liquid|a1|Acer Liquid"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Acer|Liquid|a1|Acer S100"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Acer|Liquid C1|I1|I110"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Acer|Liquid E1|C10|V360"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Acer|Liquid E2|C11|V370"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Acer|Liquid E3|acer_e3|E380"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Acer|Liquid E3|acer_e3n|E380"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acer|Liquid E3S|acer_ZXR|Z130"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Acer|Liquid E600|e600|E600"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Acer|Liquid E700|acer_e39|E39"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Acer|Liquid Gallant E350|C8|AK330"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Acer|Liquid Gallant E350|C8|E350"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Acer|Liquid Jade|acer_S55|S55"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Acer|Liquid Jade S|acer_S56|S56"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Acer|Liquid Jade Z|acer_S57|S57"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Acer|Liquid Mini|C4R|E310"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Acer|Liquid S1|a10|S510"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Acer|Liquid S2|a12|S520"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Acer|Liquid S3|s3|S53"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Acer|Liquid X1|s3|S53"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Acer|Liquid Z200|acer_z200|Z200"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Acer|Liquid Z205|acer_z205|Z205"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Acer|Liquid Z205|acer_z205p|Z205"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Acer|Liquid Z205|acer_z205p|Z205P"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Acer|Liquid Z3|ZX|Z130"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Acer|Liquid Z3|acer_ZXR|Z130"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Acer|Liquid Z4|acer_Z6|Z160"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Acer|Liquid Z410|acer_z410|Z410"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Acer|Liquid Z5|acer_ZXL|Z150"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Acer|Liquid Z500|acer_Z500|Z500"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Acer|Liquid Z520|acer_z520|Z520"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Acer|LiquidMT|a4|Acer Liquid Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Acer|LiquidMT|a4|Liquid MT"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Acer|LiquidMT|a4|Liquid Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Acer|Picasso|picasso|A501"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Acer|Picasso|ventana|A500"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Acer|Picasso|ventana|G100W"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Acer|Picasso|ventana|TPA60W"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Acer|TA2|ta2|TA272HUL"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "Acer|Tab 7|td070va1|TD070VA1"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Archos|101 Childpad|A101CHP|ARCHOS 101 CHILDPAD"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Archos|101 Cobalt|AC101CO|Archos 101 Cobalt"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Archos|101 G9|A101|ARCHOS 101G9"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Archos|101 Neon|A101NE|Archos 101 Neon"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Archos|101 Platinum|A101PL|ARCHOS 101 PLATINUM"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Archos|101 Titanium|A101TI|ARCHOS 101 Titanium"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Archos|101 XS|A101XS|ARCHOS 101G10"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Archos|101 Xenon|a101xe|Archos 101 Xenon"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Archos|101XS2|AC101XS2|ARCHOS 101 XS 2"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Archos|101b XS2|ac101bxs2|ARCHOS 101b XS2"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Archos|40 Titanium|a40ti|Archos 40 Titanium"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Archos|40b Titanium|a40btisr|Archos 40b Titanium Surround"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Archos|40c Titanium|ac40cti|Archos 40c Titanium"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Archos|45 Helium 4G|a45he|Archos 45 Helium 4G"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Archos|45 Platinum|msm8625|Archos 45 Platinum"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "Archos|45 Titanium|a45ti|Archos 45 Titanium"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Archos|45c Platinum|ac45cpl|Archos 45c Platinum"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Archos|50 Helium 4G|a50he|Archos 50 Helium 4G"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Archos|50 Neon|a50ne|Archos 50 Neon"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Archos|50 Oxygen|a50ox|Archos 50 Oxygen"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Archos|50 Platinum|msm8625|Archos 50 Platinum"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Archos|50 Titanium|a50ti|Archos 50 Titanium"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Archos|50b Helium|ac50bhe|AC50BHE"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Archos|50b Helium|ac50bhe|Archos 50b Helium 4G"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Archos|50b Platinum|ac50bpl|Archos 50b Platinum"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Archos|50c Oxygen|a50cox|Archos 50c Oxygen"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Archos|53 Platinum|msm8625|Archos 53 Platinum"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Archos|53 Titanium|a53ti|Archos 53 Titanium"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Archos|70 Cobalt|AC70CO|ARCHOS 70 Cobalt"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Archos|70 Neon|ac70ne|Archos 70 Neon"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Archos|70 Titanium|A70TI|ARCHOS 70 Titanium"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Archos|70 Xenon|a70xe|Archos 70 Xenon"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Archos|70b Titanium|A70BTI|ARCHOS 70b TITANIUM"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Archos|79 Neon|a79ne|Archos 79 Neon"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Archos|79 Platinium|AC79PL|ARCHOS 79 Platinum"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Archos|79 Xenon|a79xe|Archos 79 Xenon"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Archos|80 Carbon|AC80CA|ARCHOS 80 Carbon"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Archos|80 Childpad|A80CHP|ARCHOS 80 CHILDPAD"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Archos|80 Cobalt|A80CO|ARCHOS 80 COBALT"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Archos|80 G9|A80|ARCHOS 80G9"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Archos|80 Platinum|A80PL|ARCHOS 80 Platinum"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Archos|80 Titanium|A80TI|ARCHOS 80 TITANIUM"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Archos|80 XS|A80XSK|ARCHOS 80XSK"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Archos|80 Xenon|A80XE|Archos 80 Xenon"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Archos|80b Platinum|A80BPL|ARCHOS 80b PLATINUM"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Archos|90 Neon|a90ne|Archos 90 Neon"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Archos|90b Neon|ac90bne|Archos 90b Neon"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Archos|97 Carbon|A97C|ARCHOS 97 CARBON"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Archos|97 Cobalt|AC97CO|Archos 97 Cobalt"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Archos|97 Platinum|A97PL|ARCHOS 97 Platinum"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Archos|97 Titanium HD|A97TIHD|ARCHOS 97 TITANIUMHD"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Archos|97 Xenon|A97XE|ARCHOS 97 XENON"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Archos|97b Platinum|AC97BPL|ARCHOS 97b PLATINUM"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Archos|97b Titanium|A97BTI|ARCHOS 97B TITANIUM"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Archos|Archos 101 Xenon|ac101cxe|Archos 101c Xenon"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Archos|Archos 101b Platinum|ac101bpl|Archos 101b Platinium"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "Archos|Archos 40c Titanium|ac40ctiv2|ARCHOS 40C TIv2"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Archos|Archos 45b Helium|ac45bhe|AC45BHE"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Archos|Archos 70it 2|A70it2|ARCHOS 70it2"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Archos|Archos 70it 2|A70it2|ARCHOS 70it2G8"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Archos|Archos 80 Helium|ac80he|Archos 80 Helium 4G"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Archos|Archos ArcBook|a101db|Archos 101 DB"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Archos|Auchan QiLive 45|ql45|Qilive 45"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Archos|Auchan QiLive 50|ql50|Qilive 50"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Archos|Auchan Qilive 40|ql40|Qilive 40"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Archos|Auchan Qilive8|QiLive8|QiLive 8"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Archos|Auchan Qilive8QC|QiLive8QC|QiLive 8QC"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Archos|Auchan Qilive97|QiLive97|QiLive 97"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Archos|Auchan Qilive97R|QiLive97R|QiLive 97R"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Archos|Auchan Selecline 10|SELECLINE10|Selecline 10"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Archos|Bush 4\" Android Phone|ac40cti|Bush 4 Android"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Archos|Bush 5\" Android Phone|ac50bne|BUSH 5 Android"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Archos|Bush MyTablet 7|ac70bu|BUSH 7.0 TABLET"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Archos|ChefPad|A97CFP|Archos Chefpad"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Archos|FamilyPad 2|A133FP2|ARCHOS FAMILYPAD 2"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Archos|GamePad|A70GP|ARCHOS GAMEPAD"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Archos|GamePad 2|A70GP2|ARCHOS GAMEPAD2"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Archos|Kuno|KUNO4|KUNO4"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Archos|My Tablet 101|ac101bu|BUSH 10.1 TABLET"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "Archos|Qilive 97R2|qilive97r2|Qilive 97R-2"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Archos|Qilive79|Qilive79|Qilive 79"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "Archos|Qilive7V2|ql70v2|Qilive 70v2"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "Archos|Quechua Tablet 8|A80RG11|A80RG11"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "Archos|Smart Home Tablet|hometablet|Archos Smart Home Tablet"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "Archos|TV Connect|LUDO|ARCHOS LUDOG10"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "Asus|ASUS ETBW11AA|ETBW11AA|ETBW11AA"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "Asus|ASUS ETBW11AA|TF101G|ETBW11AA"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "Asus|ASUS Fonepad|K00G|K00G"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "Asus|ASUS Fonepad 7|K01F|K01F"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "Asus|ASUS Fonepad 7 LTE|K00Y|K00Y"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "Asus|ASUS Fonepad 8|K016_2|K016"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "Asus|ASUS Fonepad 8|K016_3|K016"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "Asus|ASUS Fonepad 8|K016_4|K016"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "Asus|ASUS Fonepad 8(FE380CG)|K016_1|K016"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "Asus|ASUS Fonepad ME371MG|ME371MG|ME371MG"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "Asus|ASUS MeMO Pad FHD 10|ME302KL|ME302KL"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "Asus|ASUS MeMO Pad Smart 10|ME301T|ME301T"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "Asus|ASUS MeMo Pad ME302C|ME302C|ME302C"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "Asus|ASUS Pad|K010|K010"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "Asus|ASUS Trans AiO P1801|P1801-T|ASUS Tablet P1801-T"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "Asus|ASUS TransBook Trio|TX201LA|TX201LA"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "Asus|ASUS Transformer Pad|K010|K010"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "Asus|ASUS Transformer Pad|K010_1|K010"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "Asus|Asus Fonepad Note 6|K00G|K00G"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "Asus|Asus MeMo Pad 7|K012_2|K012_2"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "Asus|Asus Pad TF303CL|K014|K014"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "Asus|Asus Transformer Pad|K018|K018"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "Asus|Cube|asus_google_cube|asus_google_cube"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "Asus|Eee Pad|EeePad|Transformer TF101"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "Asus|Eee Pad|EeePad|Transformer TF101G"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "Asus|Eee Pad Slider|SL101|Slider SL101"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "Asus|Eee Pad TF101|TF101|TF101"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "Asus|Eee Pad TF101|TF101|Transformer TF101"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "Asus|Eee Pad TF101-WiMAX|TF101-WiMAX|TF101-WiMAX"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "Asus|Eee Pad Transformer|TF101|Transformer TF101"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "Asus|EeePad Slider SL101|SL101|Slider SL101"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "Asus|Fonepad 7|K00Z|K00Z"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "Asus|Fonepad 7|K012|K012"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "Asus|Fonepad 7|K01N_1|K01N"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "Asus|Fonepad 7|K01N_2|K01N"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "Asus|Fonepad 7 (FE375CG)|K019_1|K019"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "Asus|Fonepad 7 (FE375CXG)|K019_3|K019"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "Asus|Fonepad 7 (FE375CXG)|K019_4|K019"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "Asus|Fonepad 7 LTE|K01Q|K01Q"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "Asus|Fonepad 7(FE375CXG)|K019_2|K019"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "Asus|Fonepad HD7|K00E|K00E"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "Asus|MeMO PAD|me172v|ME172V"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "Asus|MeMO Pad 7|K013|K013"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "Asus|MeMO Pad 7|K013C|K013C"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "Asus|MeMO Pad 7|K013_1|K013"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "Asus|MeMO Pad 7|K017|K017"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "Asus|MeMO Pad 7|K01A|K01A"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "Asus|MeMO Pad 7 LTE|K00X|ASUS MeMO Pad 7"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "Asus|MeMO Pad 7 ME572C|K007|K007"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "Asus|MeMO Pad 8|K011|K011"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "Asus|MeMO Pad 8|K011_1|K011"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "Asus|MeMO Pad ME103K|K01E_1|K01E"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "Asus|MeMO Pad ME103K|K01E_2|K01E"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "Asus|MeMO pad 8 AST21|K015|AST21"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "Asus|MeMO pad 8 ME581C|K01H|K01H"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "Asus|MeMO pad 8 ME581CL|K015|K015"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "Asus|MeMo Pad HD 7|K00U|K00U"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "Asus|Memo Pad 7|K01U_1|K01U"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "Asus|Memo Pad 7|K01U_2|K01U"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "Asus|Memo Pad HD7 Dual SIM|ASUS-K00S|ASUS K00S"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "Asus|Nexus 7 (2012)|grouper|Nexus 7"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "Asus|Nexus 7 (2012)|tilapia|Nexus 7"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "Asus|Nexus 7 (2013)|deb|Nexus 7"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "Asus|Nexus 7 (2013)|flo|Nexus 7"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "Asus|Nexus Player|fugu|Nexus Player"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "Asus|Nuvifone|a50|Garmin-Asus A50"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "Asus|PadFone E|ASUS-T008|PadFone T008"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "Asus|PadFone Infinity Lite|ASUS-A80|PadFone Infinity"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "Asus|PadFone Mini|ASUS-T00C|PadFone T00C"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "Asus|PadFone S|ASUS_T00N|ASUS_T00N"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "Asus|PadFone Xmini|ASUS-T00S|ASUS PadFone X mini"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "Asus|PadFone mini|ASUS-T00C|PadFone T00C"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "Asus|PadFone mini|ASUS_T00E|ASUS_T00E"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "Asus|PadFone-T004|ASUS-A86|PadFone T004"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "Asus|Padfone S|ASUS_T00N|ASUS_T00N"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "Asus|Padfone X|ASUS-T00D|ASUS PadFone X"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "Asus|Padfone mini|ASUS-T00S|ASUS_T00T"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "Asus|RTC-700A|RTC-tablet|RTC-tablet"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "Asus|T101TA|T10xTA|T10xTA"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "Asus|T50|ASUS_X002|ASUS_X002"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "Asus|TF700T|TF700T|ASUS Pad TF700T"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "Asus|TF700T|TF700T|ASUS Transformer Pad TF700T"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "Asus|Trans Pad Infinity|K00C|K00C"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "Asus|Transformer 10(TF103CE)|K010E|K010E"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "Asus|Transformer Pad|K00C|K00C"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "Asus|Transformer Pad|K010_3|K010"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "Asus|Transformer Pad|TF300T|ASUS Pad TF300T"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "Asus|Transformer Pad|TF300T|ASUS Transformer 300"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "Asus|Transformer Pad|TF300T|ASUS Transformer Pad TF300T"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "Asus|Transformer Pad Infinity|K00C|K00C"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "Asus|Transformer Pad TF303K|K01B|K01B"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "Asus|ZenFone 4|ASUS_T00I|ASUS_T00I"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "Asus|ZenFone 4|ASUS_T00I|ASUS_T00I-D"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "Asus|ZenFone 4|ASUS_T00Q|ASUS_T00Q"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "Asus|ZenFone 5|ASUS_T00F|ASUS_T00F"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "Asus|ZenFone 5|ASUS_T00F1|ASUS_T00F"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "Asus|ZenFone 5|ASUS_T00J|ASUS_T00J"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "Asus|ZenFone 5|ASUS_T00J1|ASUS_T00J"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "Asus|ZenFone 5|ASUS_T00K|ASUS_T00K"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "Asus|ZenFone 5 LTE|ASUS_T00P|ASUS_T00P"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "Asus|ZenFone 6|ASUS_T00G|ASUS_T00G"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "Asus|ZenFone 6|ASUS_Z002|ASUS_Z002"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "Asus|ZenFone C|ASUS_Z007|ASUS_Z007"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "Asus|ZenFone2|ASUS_Z00D|Z00D"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "Asus|Zenfone2|Z008_1|ASUS_Z008D"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "Asus|Zenfone2|Z00A|ASUS_Z00AD"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "Asus|Zenfone2|Z00A_1|ASUS_Z00AD"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "Best Buy|MG103|K010|K010"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "Borqs|Falcon|falcon|falcon"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "British Telecom|HomeSmartphone d800|d800|BT Home SmartPhone S II"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "Dell|Cloud Connect|capri_wyse|CS-1A13"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "Dell|Streak|streak|001DL"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "Dell|Streak|streak|Dell M01M"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "Dell|Streak|streak|Dell Streak"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "Dell|Venue 7|LW|Venue 7 3741"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "Dell|Venue 7|Venue7|Venue 7 3740"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "Dell|Venue 7|Venue7|Venue7 3740"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "Dell|Venue 7|Venue7|Venue7 3740 LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "Dell|Venue 7|thunderbird|Venue 7 3730"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "Dell|Venue 7|thunderbird|Venue 7 HSPA+"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "Dell|Venue 8|BB|Venue 8 7840"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "Dell|Venue 8|Venue8|Venue 8 3840"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "Dell|Venue 8|Venue8|Venue8 3840"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "Dell|Venue 8|Venue8|Venue8 3840 LTE"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "Dell|Venue 8|yellowtail|Venue 8 3830"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "Dell|Venue 8|yellowtail|Venue 8 HSPA+"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "GSmart|GSmart SX1|bravo|GSmart SX1"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "HP|10.0|spruce|HP 10"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "HP|10 Plus|torsa|HP 10 Plus"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "HP|7 G2|redwood|HP 7 G2"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "HP|7 Plus|Ilex|HP 7 Plus"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "HP|7 Plus G2|deschutes|HP 7 Plus G2"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "HP|7 Tablet|Mesquite|HP 7"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "HP|7 Voice Tab|klondike|HP 7 VoiceTab"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "HP|7 VoiceTab|yukon|HP 7 VoiceTab"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "HP|7.1|Holly|HP 7.1"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "HP|8.0|Fir|HP 8"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "HP|8 G2|maple|HP 8 G2"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "HP|Bonsai 10 HD|bonsai10|HP Slate 10 HD"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "HP|Pro Slate 10 EE G1|bulldog|HP Pro Slate 10 EE G1"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "HP|Pro Slate 10 EE G1|hound|HP Pro Slate 10 EE G1"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "HP|Pro Slate 10 EE G1|poodle|HP Pro Slate 10 EE G1"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "HP|Pro Slate 10 EE G1|terrier|HP Pro Slate 10 EE G1"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "HP|Pro Slate 12|dane|HP Pro Slate 12"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "HP|Pro Slate 8|malamute|HP Pro Slate 8"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "HP|Slate 10 HD|bonsai10|HP Slate 10 HD"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "HP|Slate 10 Plus|linkplus|HP Slate 10 Plus"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string v2, "HP|Slate 17|franky|HP Slate 17"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "HP|Slate 6 Voice Tab|pomegranate|HP Slate 6 Voice Tab"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "HP|Slate 6 Voice Tab II|avocado|HP Slate 6 Voice Tab II"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string v2, "HP|Slate 6 VoiceTab Plus|mekong|HP Slate 6 VoiceTab Plus"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "HP|Slate 7 Extreme|olive|HP Slate7 Extreme"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "HP|Slate 7 HD|bonsai10|HP Slate 10 HD"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "HP|Slate 7 HD|bonsai7|HP Slate 7 HD"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "HP|Slate 7 Voice Tab|almond|HP Slate 7 Voice Tab"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v2, "HP|Slate 7 VoiceTab Ultra|charm|HP Slate 7 VoiceTab Ultra"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "HP|Slate 8 Plus|vogue|HP Slate 8 Plus"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "HP|Slate 8 Pro|dogwood|HP Slate 8 Pro"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "HP|Slate21|phobos|Slate 21"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v2, "HP|Slate7 Plus|birch|HP Slate 7 Plus"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "HP|Slate8 Pro|fig|HP Slate 8 Pro"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "HP|SlateBook 14|200a|HP SlateBook 14 PC"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "HP|Tablet 10|balsa|HP_10_Tablet"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "HP|Voice Tab 7|almond|HP Slate 7 Voice Tab"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "HTC|AT&T HTC One X+|evitareul|HTC EVARE_UL"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "HTC|AT&T HTC One X+|evitareul|HTC One X+"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "HTC|Aria|liberty|HTC Aria"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "HTC|Aria|liberty|HTC Aria A6380"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "HTC|Aria|liberty|HTC Gratia A6380"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "HTC|Aria|liberty|HTC Liberty"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "HTC|Butterfly S|dlxpul|HTC Butterfly s"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "HTC|Butterfly S|dlxpul|HTC_Butterfly_s_901s"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "HTC|Chacha|chacha|HTC ChaCha A810b"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v2, "HTC|Chacha|chacha|HTC ChaCha A810e"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string v2, "HTC|Chacha|chacha|HTC ChaChaCha A810e"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "HTC|Chacha|chacha|HTC Status"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "HTC|Desire|bravo|HTC Desire"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v2, "HTC|Desire|bravo|X06HT"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "HTC|Desire|bravoc|PB99400"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "HTC|Desire 320|htc_v01_u|HTC 0PF11"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string v2, "HTC|Desire 320|htc_v01_u|HTC Desire 320"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "HTC|Desire 510|htc_a11ul8x26|HTC Desire 510"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "HTC|Desire 516 dual sim|htc_v2_dcg|HTC Desire 516 dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string v2, "HTC|Desire 516 dual sim|htc_v2_dug|HTC Desire 516 dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "HTC|Desire 516 dual sim|htc_v2_dug|HTC V2"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v2, "HTC|Desire 620 dual sim|htc_a31dtul|HTC_D620u"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string v2, "HTC|Desire 626|htc_a32dcgl|HTC D626d"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string v2, "HTC|Desire 626|htc_a32ul|HTC_D626x"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string v2, "HTC|Desire 626|htc_a32ul|HTC_D630x"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string v2, "HTC|Desire 820|htc_a51ul|HTC 0PFJ4"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "HTC|Desire 820|htc_a51ul|HTC Desire 820"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string v2, "HTC|Desire D820mini|htc_a31dtul|HTC D820mt"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string v2, "HTC|Desire D820mini|htc_a31dtul|HTC D820mu"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, "HTC|Desire HD|ace|001HT"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string v2, "HTC|Desire HD|ace|HTC Desire HD A9191"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string v2, "HTC|Desire HD|ace|Inspire HD"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "HTC|Desire S|saga|HTC Desire S"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v2, "HTC|Desire VC|primodd|HTC Desire VC"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string v2, "HTC|Desire VC|primodd|HTC Desire VC T328d"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v2, "HTC|Desire VC|primodd|HTC PRO_DD"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "HTC|Desire VC|primodd|HTC T328d"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "HTC|Droid DNA|dlx|HTC6435LRA"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "HTC|Droid DNA|dlx|HTC6435LVW"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "HTC|Droid Eris|desirec|Eris"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string v2, "HTC|Droid Eris|desirec|Pulse"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "HTC|Droid Incredible|inc|ADR6300"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "HTC|EVO 3D|shooter|HTCEVOV4G"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string v2, "HTC|EVO 3D|shooter|PG86100"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string v2, "HTC|EVO LTE 4G|jewel|EVO"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v2, "HTC|EVO Shift 4G|speedy|PG06100"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const-string v2, "HTC|Evo 4G|supersonic|PC36100"

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const-string v2, "HTC|Flyer|flyer|HTC Flyer"

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    const-string v2, "HTC|Flyer|flyer|HTC Flyer P510e"

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const-string v2, "HTC|Flyer|flyer|HTC Flyer P511e"

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    const-string v2, "HTC|Flyer|flyer|HTC Flyer P512"

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const-string v2, "HTC|Flyer|flyer|HTC_Flyer_P512_NA"

    aput-object v2, v0, v1

    const/16 v1, 0x170

    const-string v2, "HTC|G1|dream|HTC Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x171

    const-string v2, "HTC|G2|vision|HTC Vision"

    aput-object v2, v0, v1

    const/16 v1, 0x172

    const-string v2, "HTC|G2|vision|T-Mobile G2"

    aput-object v2, v0, v1

    const/16 v1, 0x173

    const-string v2, "HTC|HTC 0P9C8|htc_a5dwgl|HTC Desire 816 dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x174

    const-string v2, "HTC|HTC 5060 dual sim|z4dug|HTC Desire 500 dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x175

    const-string v2, "HTC|HTC 601e|m4|HTC 601e"

    aput-object v2, v0, v1

    const/16 v1, 0x176

    const-string v2, "HTC|HTC 606w|cp3dug|HTC Desire 600"

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const-string v2, "HTC|HTC 606w|cp3dug|HTC Desire 600 dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x178

    const-string v2, "HTC|HTC 606w|cp3dug|HTC PO49120"

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const-string v2, "HTC|HTC 7060|cp5dug|HTC_7060"

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    const-string v2, "HTC|HTC 710C|htc_a5chl|710C"

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    const-string v2, "HTC|HTC 9060|dlxpul|HTC 901e"

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    const-string v2, "HTC|HTC 9060|m7|HTC 801e"

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    const-string v2, "HTC|HTC 9060|m7cdug|HTC 802w"

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    const-string v2, "HTC|HTC Butterfly|dlxu|HTC DLX_U"

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    const-string v2, "HTC|HTC Butterfly|dlxu|HTC X920e"

    aput-object v2, v0, v1

    const/16 v1, 0x180

    const-string v2, "HTC|HTC Butterfly|dlxub1|HTC DLXUB1"

    aput-object v2, v0, v1

    const/16 v1, 0x181

    const-string v2, "HTC|HTC Butterfly 2|htc_b2ul|HTC_B810x"

    aput-object v2, v0, v1

    const/16 v1, 0x182

    const-string v2, "HTC|HTC Butterfly s 9060|dlpdug|HTC 9060"

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const-string v2, "HTC|HTC D816d|htc_a5dwg|HTC_D816d"

    aput-object v2, v0, v1

    const/16 v1, 0x184

    const-string v2, "HTC|HTC D820 Mini|htc_a31dtul|HTC D820mt"

    aput-object v2, v0, v1

    const/16 v1, 0x185

    const-string v2, "HTC|HTC DROID DNA|dlx|HTC6435LRA"

    aput-object v2, v0, v1

    const/16 v1, 0x186

    const-string v2, "HTC|HTC Desire 200|gtou|HTC_Desire_200"

    aput-object v2, v0, v1

    const/16 v1, 0x187

    const-string v2, "HTC|HTC Desire 300|g3u|HTC 301e"

    aput-object v2, v0, v1

    const/16 v1, 0x188

    const-string v2, "HTC|HTC Desire 300|g3u|HTC_0P6A1"

    aput-object v2, v0, v1

    const/16 v1, 0x189

    const-string v2, "HTC|HTC Desire 300|g3u|HTC_Desire_300"

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    const-string v2, "HTC|HTC Desire 310|htc_v1_dug|HTC D310w"

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    const-string v2, "HTC|HTC Desire 310|htc_v1_dug|HTC Desire 310 dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    const-string v2, "HTC|HTC Desire 310|htc_v1_u|HTC_D310n"

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    const-string v2, "HTC|HTC Desire 310|htc_v1_u|HTC_V1"

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    const-string v2, "HTC|HTC Desire 320|htc_v01_u|HTC 0PF120"

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    const-string v2, "HTC|HTC Desire 500|z4u|HTC_Desire_500"

    aput-object v2, v0, v1

    const/16 v1, 0x190

    const-string v2, "HTC|HTC Desire 500 dual sim|z4dug|HTC 5060"

    aput-object v2, v0, v1

    const/16 v1, 0x191

    const-string v2, "HTC|HTC Desire 501|htc_csnu|HTC_603h"

    aput-object v2, v0, v1

    const/16 v1, 0x192

    const-string v2, "HTC|HTC Desire 5088|z4td|HTC 5088"

    aput-object v2, v0, v1

    const/16 v1, 0x193

    const-string v2, "HTC|HTC Desire 510|htc_a11chl|0PCV1"

    aput-object v2, v0, v1

    const/16 v1, 0x194

    const-string v2, "HTC|HTC Desire 510|htc_a11ul|HTC 0PCV20"

    aput-object v2, v0, v1

    const/16 v1, 0x195

    const-string v2, "HTC|HTC Desire 510|htc_a11ul|HTC_0PCV2"

    aput-object v2, v0, v1

    const/16 v1, 0x196

    const-string v2, "HTC|HTC Desire 516|htc_v2_dcg|HTC D516d"

    aput-object v2, v0, v1

    const/16 v1, 0x197

    const-string v2, "HTC|HTC Desire 516|htc_v2_dtg|HTC D516t"

    aput-object v2, v0, v1

    const/16 v1, 0x198

    const-string v2, "HTC|HTC Desire 516|htc_v2_dug|HTC C2"

    aput-object v2, v0, v1

    const/16 v1, 0x199

    const-string v2, "HTC|HTC Desire 516|htc_v2_dug|HTC D516w"

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    const-string v2, "HTC|HTC Desire 516|htc_v2_dug|HTC V2"

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    const-string v2, "HTC|HTC Desire 526GPLUS|htc_v02_u|HTC 0PL41"

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    const-string v2, "HTC|HTC Desire 526GPLUS|htc_v02_u|HTC Desire 526G"

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    const-string v2, "HTC|HTC Desire 600c Dual SIM|cp3dcg|HTC 609d"

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    const-string v2, "HTC|HTC Desire 601|zara|HTC_0P4E2"

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    const-string v2, "HTC|HTC Desire 601|zaracl|HTC0P4E1"

    aput-object v2, v0, v1

    const/16 v1, 0x1a0

    const-string v2, "HTC|HTC Desire 606w|cp3dug|HTC 606w"

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    const-string v2, "HTC|HTC Desire 609d|cp3dcg|HTC 609d"

    aput-object v2, v0, v1

    const/16 v1, 0x1a2

    const-string v2, "HTC|HTC Desire 610|htc_a3qhdul|HTC_0P9O2"

    aput-object v2, v0, v1

    const/16 v1, 0x1a3

    const-string v2, "HTC|HTC Desire 610|htc_a3qhdul|HTC_D610x"

    aput-object v2, v0, v1

    const/16 v1, 0x1a4

    const-string v2, "HTC|HTC Desire 616 dual sim|htc_v3_dug|HTC D616w"

    aput-object v2, v0, v1

    const/16 v1, 0x1a5

    const-string v2, "HTC|HTC Desire 616 dual sim|htc_v3_dug|HTC V3"

    aput-object v2, v0, v1

    const/16 v1, 0x1a6

    const-string v2, "HTC|HTC Desire 620|htc_a31ul|HTC 0PE64"

    aput-object v2, v0, v1

    const/16 v1, 0x1a7

    const-string v2, "HTC|HTC Desire 620G dual sim|htc_a31mg_dug|HTC 0PE65"

    aput-object v2, v0, v1

    const/16 v1, 0x1a8

    const-string v2, "HTC|HTC Desire 620G dual sim|htc_a31mg_dug|HTC_D620h"

    aput-object v2, v0, v1

    const/16 v1, 0x1a9

    const-string v2, "HTC|HTC Desire 700 dual sim|cp5dwg|HTC_709d"

    aput-object v2, v0, v1

    const/16 v1, 0x1aa

    const-string v2, "HTC|HTC Desire 7060|cp5dug|HTC_7060"

    aput-object v2, v0, v1

    const/16 v1, 0x1ab

    const-string v2, "HTC|HTC Desire 7088|cp5dtu|HTC 7088"

    aput-object v2, v0, v1

    const/16 v1, 0x1ac

    const-string v2, "HTC|HTC Desire 709d|cp5dwg|HTC 709d"

    aput-object v2, v0, v1

    const/16 v1, 0x1ad

    const-string v2, "HTC|HTC Desire 816|htc_a5ul|HTC_0P9C2"

    aput-object v2, v0, v1

    const/16 v1, 0x1ae

    const-string v2, "HTC|HTC Desire 816|htc_a5ul|HTC_D816x"

    aput-object v2, v0, v1

    const/16 v1, 0x1af

    const-string v2, "HTC|HTC Desire 816G dual|htc_a5mgp_dug|HTC Desire 816G dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x1b0

    const-string v2, "HTC|HTC Desire 816G dual sim|htc_a5mgp_dug|HTC D816h"

    aput-object v2, v0, v1

    const/16 v1, 0x1b1

    const-string v2, "HTC|HTC Desire 820s|htc_a50ml_dtul|HTC D820ts"

    aput-object v2, v0, v1

    const/16 v1, 0x1b2

    const-string v2, "HTC|HTC Desire 820s|htc_a50ml_dtul|HTC D820us"

    aput-object v2, v0, v1

    const/16 v1, 0x1b3

    const-string v2, "HTC|HTC Desire 820s|htc_a50ml_dtul|HTC Desire 820s dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x1b4

    const-string v2, "HTC|HTC Desire 826|htc_a52dtul|HTC D826w"

    aput-object v2, v0, v1

    const/16 v1, 0x1b5

    const-string v2, "HTC|HTC Desire D626w|htc_a32ml_dtul|HTC D626w"

    aput-object v2, v0, v1

    const/16 v1, 0x1b6

    const-string v2, "HTC|HTC Desire EYE|htc_eyetuhl|HTC 0PFH2"

    aput-object v2, v0, v1

    const/16 v1, 0x1b7

    const-string v2, "HTC|HTC Desire EYE|htc_eyetuhl|HTC_M910x"

    aput-object v2, v0, v1

    const/16 v1, 0x1b8

    const-string v2, "HTC|HTC Desire EYE|htc_eyeul|HTC 0PFH11"

    aput-object v2, v0, v1

    const/16 v1, 0x1b9

    const-string v2, "HTC|HTC Desire V|primods|HTC Desire Q"

    aput-object v2, v0, v1

    const/16 v1, 0x1ba

    const-string v2, "HTC|HTC Desire V|primods|HTC Desire U"

    aput-object v2, v0, v1

    const/16 v1, 0x1bb

    const-string v2, "HTC|HTC Desire V|primods|HTC Desire U dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x1bc

    const-string v2, "HTC|HTC Desire V|primods|HTC PROMIN_U"

    aput-object v2, v0, v1

    const/16 v1, 0x1bd

    const-string v2, "HTC|HTC Desire V|primods|HTC PRO_DS"

    aput-object v2, v0, v1

    const/16 v1, 0x1be

    const-string v2, "HTC|HTC Desire V|primods|HTC T327w"

    aput-object v2, v0, v1

    const/16 v1, 0x1bf

    const-string v2, "HTC|HTC Desire V|primods|HTC T328w"

    aput-object v2, v0, v1

    const/16 v1, 0x1c0

    const-string v2, "HTC|HTC Desire X|protou|HTC POO_U"

    aput-object v2, v0, v1

    const/16 v1, 0x1c1

    const-string v2, "HTC|HTC Desire815G|htc_a5mgp_u|HTC Desire 816G"

    aput-object v2, v0, v1

    const/16 v1, 0x1c2

    const-string v2, "HTC|HTC EVO 3D ISW12HT|shooterk|ISW12HT"

    aput-object v2, v0, v1

    const/16 v1, 0x1c3

    const-string v2, "HTC|HTC EVO 3D X515m|shooteru|HTC EVO 3D X515a"

    aput-object v2, v0, v1

    const/16 v1, 0x1c4

    const-string v2, "HTC|HTC EVO 3D X515m|shooteru|HTC Inspire 3D"

    aput-object v2, v0, v1

    const/16 v1, 0x1c5

    const-string v2, "HTC|HTC EVO 4G LTE|jewel|EVO"

    aput-object v2, v0, v1

    const/16 v1, 0x1c6

    const-string v2, "HTC|HTC Explorer A310e|pico|HTC Explorer"

    aput-object v2, v0, v1

    const/16 v1, 0x1c7

    const-string v2, "HTC|HTC Explorer A310e|pico|HTC Explorer A310b"

    aput-object v2, v0, v1

    const/16 v1, 0x1c8

    const-string v2, "HTC|HTC Hero|hero|ERA G2 Touch"

    aput-object v2, v0, v1

    const/16 v1, 0x1c9

    const-string v2, "HTC|HTC Hero|hero|T-Mobile G2 Touch"

    aput-object v2, v0, v1

    const/16 v1, 0x1ca

    const-string v2, "HTC|HTC Hero|hero|T-Mobile_G2_Touch"

    aput-object v2, v0, v1

    const/16 v1, 0x1cb

    const-string v2, "HTC|HTC Hero|hero|dopod A6288"

    aput-object v2, v0, v1

    const/16 v1, 0x1cc

    const-string v2, "HTC|HTC J Butterfly|dlxj|HTL21"

    aput-object v2, v0, v1

    const/16 v1, 0x1cd

    const-string v2, "HTC|HTC J One|m7wlj|HTL22"

    aput-object v2, v0, v1

    const/16 v1, 0x1ce

    const-string v2, "HTC|HTC ONE|m7cdug|HTC One dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x1cf

    const-string v2, "HTC|HTC ONE S|ville|HTC One S"

    aput-object v2, v0, v1

    const/16 v1, 0x1d0

    const-string v2, "HTC|HTC ONE SV|k2u|HTC K2_U"

    aput-object v2, v0, v1

    const/16 v1, 0x1d1

    const-string v2, "HTC|HTC One|m7|HTC 801e"

    aput-object v2, v0, v1

    const/16 v1, 0x1d2

    const-string v2, "HTC|HTC One|m7|HTC One 801e"

    aput-object v2, v0, v1

    const/16 v1, 0x1d3

    const-string v2, "HTC|HTC One|m7|HTC_PN071"

    aput-object v2, v0, v1

    const/16 v1, 0x1d4

    const-string v2, "HTC|HTC One|m7cdtu|HTC 802t"

    aput-object v2, v0, v1

    const/16 v1, 0x1d5

    const-string v2, "HTC|HTC One|m7cdtu|HTC 802t 16GB"

    aput-object v2, v0, v1

    const/16 v1, 0x1d6

    const-string v2, "HTC|HTC One|m7cdug|HTC 802w"

    aput-object v2, v0, v1

    const/16 v1, 0x1d7

    const-string v2, "HTC|HTC One|m7cdug|HTC One dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x1d8

    const-string v2, "HTC|HTC One|m7cdwg|HTC 802d"

    aput-object v2, v0, v1

    const/16 v1, 0x1d9

    const-string v2, "HTC|HTC One|m7cdwg|HTC One dual 802d"

    aput-object v2, v0, v1

    const/16 v1, 0x1da

    const-string v2, "HTC|HTC One|m7cdwg|HTC One dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x1db

    const-string v2, "HTC|HTC One|m7wls|HTCONE"

    aput-object v2, v0, v1

    const/16 v1, 0x1dc

    const-string v2, "HTC|HTC One (E8)|htc_mecdwg|HTC M8Sd"

    aput-object v2, v0, v1

    const/16 v1, 0x1dd

    const-string v2, "HTC|HTC One (E8)|htc_mectl|HTC M8St"

    aput-object v2, v0, v1

    const/16 v1, 0x1de

    const-string v2, "HTC|HTC One (E8)|htc_mectl|HTC One_E8"

    aput-object v2, v0, v1

    const/16 v1, 0x1df

    const-string v2, "HTC|HTC One (E8)|htc_mecul|HTC One_E8"

    aput-object v2, v0, v1

    const/16 v1, 0x1e0

    const-string v2, "HTC|HTC One (E8)|htc_mecul|HTC_M8Sx"

    aput-object v2, v0, v1

    const/16 v1, 0x1e1

    const-string v2, "HTC|HTC One (E8)|htc_mecwhl|0PAJ5"

    aput-object v2, v0, v1

    const/16 v1, 0x1e2

    const-string v2, "HTC|HTC One (E8) dual sim|htc_mecdug|HTC One_E8 dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x1e3

    const-string v2, "HTC|HTC One (E8) dual sim|htc_mecdug|HTC_M8Sy"

    aput-object v2, v0, v1

    const/16 v1, 0x1e4

    const-string v2, "HTC|HTC One (E8) dual sim|htc_mecdwg|HTC 0PAJ4"

    aput-object v2, v0, v1

    const/16 v1, 0x1e5

    const-string v2, "HTC|HTC One (E8) dual sim|htc_mecdwg|HTC One_E8 dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x1e6

    const-string v2, "HTC|HTC One (M8 EYE)|htc_melsuhl|HTC One_M8 Eye"

    aput-object v2, v0, v1

    const/16 v1, 0x1e7

    const-string v2, "HTC|HTC One (M8 Eye)|htc_melsuhl|HTC 0P6B9"

    aput-object v2, v0, v1

    const/16 v1, 0x1e8

    const-string v2, "HTC|HTC One (M8 Eye)|htc_melsuhl|HTC One_M8 Eye"

    aput-object v2, v0, v1

    const/16 v1, 0x1e9

    const-string v2, "HTC|HTC One (M8)|htc_m8|HTC M8w"

    aput-object v2, v0, v1

    const/16 v1, 0x1ea

    const-string v2, "HTC|HTC One (M8)|htc_m8|HTC One_M8"

    aput-object v2, v0, v1

    const/16 v1, 0x1eb

    const-string v2, "HTC|HTC One (M8)|htc_m8|HTC_0P6B"

    aput-object v2, v0, v1

    const/16 v1, 0x1ec

    const-string v2, "HTC|HTC One (M8)|htc_m8|HTC_0P6B6"

    aput-object v2, v0, v1

    const/16 v1, 0x1ed

    const-string v2, "HTC|HTC One (M8)|htc_m8|HTC_M8x"

    aput-object v2, v0, v1

    const/16 v1, 0x1ee

    const-string v2, "HTC|HTC One (M8)|htc_m8dug|HTC One_M8 dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x1ef

    const-string v2, "HTC|HTC One (M8)|htc_m8dwg|HTC M8d"

    aput-object v2, v0, v1

    const/16 v1, 0x1f0

    const-string v2, "HTC|HTC One (M8)|htc_m8whl|831C"

    aput-object v2, v0, v1

    const/16 v1, 0x1f1

    const-string v2, "HTC|HTC One (M8)|htc_m8wl|HTC One_M8"

    aput-object v2, v0, v1

    const/16 v1, 0x1f2

    const-string v2, "HTC|HTC One (M8)|htc_m8wl|HTC6525LVW"

    aput-object v2, v0, v1

    const/16 v1, 0x1f3

    const-string v2, "HTC|HTC One 801e|m7|HTC One 801s"

    aput-object v2, v0, v1

    const/16 v1, 0x1f4

    const-string v2, "HTC|HTC One E8 dual|htc_mecdwg|HTC_M8Sd"

    aput-object v2, v0, v1

    const/16 v1, 0x1f5

    const-string v2, "HTC|HTC One M9|htc_himauhl|0PJA10"

    aput-object v2, v0, v1

    const/16 v1, 0x1f6

    const-string v2, "HTC|HTC One M9|htc_himauhl|HTC_0PJA10"

    aput-object v2, v0, v1

    const/16 v1, 0x1f7

    const-string v2, "HTC|HTC One M9|htc_himauhl|HTC_M9u"

    aput-object v2, v0, v1

    const/16 v1, 0x1f8

    const-string v2, "HTC|HTC One S|ville|HTC VLE_U"

    aput-object v2, v0, v1

    const/16 v1, 0x1f9

    const-string v2, "HTC|HTC One S|villec2|HTC Z560e"

    aput-object v2, v0, v1

    const/16 v1, 0x1fa

    const-string v2, "HTC|HTC One SC|cp2dcg|HTC One SC T528d"

    aput-object v2, v0, v1

    const/16 v1, 0x1fb

    const-string v2, "HTC|HTC One SV|k2cl|C525c"

    aput-object v2, v0, v1

    const/16 v1, 0x1fc

    const-string v2, "HTC|HTC One SV|k2ul|HTC K2_UL"

    aput-object v2, v0, v1

    const/16 v1, 0x1fd

    const-string v2, "HTC|HTC One SV BLK|k2plccl|HTC One SV"

    aput-object v2, v0, v1

    const/16 v1, 0x1fe

    const-string v2, "HTC|HTC One X|endeavoru|HTC One X"

    aput-object v2, v0, v1

    const/16 v1, 0x1ff

    const-string v2, "HTC|HTC One X|endeavoru|HTC S720e"

    aput-object v2, v0, v1

    const/16 v1, 0x200

    const-string v2, "HTC|HTC One X|evita|HTC One X"

    aput-object v2, v0, v1

    const/16 v1, 0x201

    const-string v2, "HTC|HTC One X+|enrc2b|HTC One X+"

    aput-object v2, v0, v1

    const/16 v1, 0x202

    const-string v2, "HTC|HTC One XL|evita|HTC One X"

    aput-object v2, v0, v1

    const/16 v1, 0x203

    const-string v2, "HTC|HTC One XL|evita|HTC_One_XL"

    aput-object v2, v0, v1

    const/16 v1, 0x204

    const-string v2, "HTC|HTC One XL|evitautl|HTC EVA_UTL"

    aput-object v2, v0, v1

    const/16 v1, 0x205

    const-string v2, "HTC|HTC One max|t6ul|HTC_One_max"

    aput-object v2, v0, v1

    const/16 v1, 0x206

    const-string v2, "HTC|HTC One max|t6whl|HTC0P3P7"

    aput-object v2, v0, v1

    const/16 v1, 0x207

    const-string v2, "HTC|HTC One mini|m4|HTC_One_mini_601e"

    aput-object v2, v0, v1

    const/16 v1, 0x208

    const-string v2, "HTC|HTC One mini|m4|HTC_PO582"

    aput-object v2, v0, v1

    const/16 v1, 0x209

    const-string v2, "HTC|HTC One mini 2|htc_memul|HTC_M8MINx"

    aput-object v2, v0, v1

    const/16 v1, 0x20a

    const-string v2, "HTC|HTC One mini 2|htc_memul|HTC_One_mini_2"

    aput-object v2, v0, v1

    const/16 v1, 0x20b

    const-string v2, "HTC|HTC One mini 601E|m4|HTC_One_mini_601e"

    aput-object v2, v0, v1

    const/16 v1, 0x20c

    const-string v2, "HTC|HTC One remix|htc_memwl|HTC6515LVW"

    aput-object v2, v0, v1

    const/16 v1, 0x20d

    const-string v2, "HTC|HTC Onex X|endeavoru|HTC One X"

    aput-object v2, v0, v1

    const/16 v1, 0x20e

    const-string v2, "HTC|HTC Salsa C510e|icong|HTC Salsa C510b"

    aput-object v2, v0, v1

    const/16 v1, 0x20f

    const-string v2, "HTC|HTC T528w|cp2dug|HTC Desire L dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x210

    const-string v2, "HTC|HTC Velocity 4G|holiday|HTC PH39100"

    aput-object v2, v0, v1

    const/16 v1, 0x211

    const-string v2, "HTC|HTC Velocity 4G|holiday|HTC Raider X710e"

    aput-object v2, v0, v1

    const/16 v1, 0x212

    const-string v2, "HTC|HTC Velocity 4G|holiday|HTC Velocity 4G X710s"

    aput-object v2, v0, v1

    const/16 v1, 0x213

    const-string v2, "HTC|HTC Velocity 4G|holiday|HTC-X710a"

    aput-object v2, v0, v1

    const/16 v1, 0x214

    const-string v2, "HTC|HTC Wildfire S A515c|marvelc|HTC-PG762"

    aput-object v2, v0, v1

    const/16 v1, 0x215

    const-string v2, "HTC|HTC Wildfire S A515c|marvelc|USCCADR6230US"

    aput-object v2, v0, v1

    const/16 v1, 0x216

    const-string v2, "HTC|HTC desire 608t|cp3dtg|HTC 608t"

    aput-object v2, v0, v1

    const/16 v1, 0x217

    const-string v2, "HTC|HTC909d|dlpdwg|HTC 919d"

    aput-object v2, v0, v1

    const/16 v1, 0x218

    const-string v2, "HTC|HTCDesire612VZW|htc_a3qhdcl|HTC331ZLVW"

    aput-object v2, v0, v1

    const/16 v1, 0x219

    const-string v2, "HTC|HTCDesire612VZW|htc_a3qhdcl|HTC331ZLVWPP"

    aput-object v2, v0, v1

    const/16 v1, 0x21a

    const-string v2, "HTC|HTCEVODesign4G|kingdom|HTC Acquire"

    aput-object v2, v0, v1

    const/16 v1, 0x21b

    const-string v2, "HTC|HTCEVODesign4G|kingdom|HTC EVO Design C715e"

    aput-object v2, v0, v1

    const/16 v1, 0x21c

    const-string v2, "HTC|HTCEVODesign4G|kingdom|HTC Hero S"

    aput-object v2, v0, v1

    const/16 v1, 0x21d

    const-string v2, "HTC|HTCEVODesign4G|kingdom|HTC Kingdom"

    aput-object v2, v0, v1

    const/16 v1, 0x21e

    const-string v2, "HTC|HTCEVODesign4G|kingdom|PH44100"

    aput-object v2, v0, v1

    const/16 v1, 0x21f

    const-string v2, "HTC|HTCOneMaxVZW|t6wl|HTC6600LVW"

    aput-object v2, v0, v1

    const/16 v1, 0x220

    const-string v2, "HTC|HTC_Amaze_4G|ruby|HTC Amaze 4G"

    aput-object v2, v0, v1

    const/16 v1, 0x221

    const-string v2, "HTC|HTC_Amaze_4G|ruby|HTC Ruby"

    aput-object v2, v0, v1

    const/16 v1, 0x222

    const-string v2, "HTC|Hero|heroc|HERO200"

    aput-object v2, v0, v1

    const/16 v1, 0x223

    const-string v2, "HTC|Incredible 2|vivow|ADR6350"

    aput-object v2, v0, v1

    const/16 v1, 0x224

    const-string v2, "HTC|Incredible 2|vivow|HTC IncredibleS S710d"

    aput-object v2, v0, v1

    const/16 v1, 0x225

    const-string v2, "HTC|Incredible S|vivo|HTC Incredible S"

    aput-object v2, v0, v1

    const/16 v1, 0x226

    const-string v2, "HTC|Incredible S|vivo|HTC_S710E"

    aput-object v2, v0, v1

    const/16 v1, 0x227

    const-string v2, "HTC|KDDI Infobar A02|imnj|HTX21"

    aput-object v2, v0, v1

    const/16 v1, 0x228

    const-string v2, "HTC|Legend|legend|HTC Legend"

    aput-object v2, v0, v1

    const/16 v1, 0x229

    const-string v2, "HTC|Nexus 9|flounder|Nexus 9"

    aput-object v2, v0, v1

    const/16 v1, 0x22a

    const-string v2, "HTC|Nexus 9 LTE|flounder_lte|Nexus 9"

    aput-object v2, v0, v1

    const/16 v1, 0x22b

    const-string v2, "HTC|Nexus One|passion|Nexus One"

    aput-object v2, v0, v1

    const/16 v1, 0x22c

    const-string v2, "HTC|One XL|evita|HTC One XL"

    aput-object v2, v0, v1

    const/16 v1, 0x22d

    const-string v2, "HTC|Puccini|puccinilte|HTC PG09410"

    aput-object v2, v0, v1

    const/16 v1, 0x22e

    const-string v2, "HTC|Puccini|puccinilte|HTC-P715a"

    aput-object v2, v0, v1

    const/16 v1, 0x22f

    const-string v2, "HTC|Sensation 4G|pyramid|HTC Sensation"

    aput-object v2, v0, v1

    const/16 v1, 0x230

    const-string v2, "HTC|Sensation 4G|pyramid|HTC Sensation 4G"

    aput-object v2, v0, v1

    const/16 v1, 0x231

    const-string v2, "HTC|Sensation 4G|pyramid|HTC Sensation XE with Beats Audio"

    aput-object v2, v0, v1

    const/16 v1, 0x232

    const-string v2, "HTC|Sensation 4G|pyramid|HTC Sensation Z710a"

    aput-object v2, v0, v1

    const/16 v1, 0x233

    const-string v2, "HTC|Sensation 4G|pyramid|HTC Sensation Z710e"

    aput-object v2, v0, v1

    const/16 v1, 0x234

    const-string v2, "HTC|Sensation 4G|pyramid|HTC-Z710a"

    aput-object v2, v0, v1

    const/16 v1, 0x235

    const-string v2, "HTC|Thunderbolt|mecha|ADR6400L"

    aput-object v2, v0, v1

    const/16 v1, 0x236

    const-string v2, "HTC|Thunderbolt|mecha|HTC Mecha"

    aput-object v2, v0, v1

    const/16 v1, 0x237

    const-string v2, "HTC|Wildfire|buzz|HTC Wildfire"

    aput-object v2, v0, v1

    const/16 v1, 0x238

    const-string v2, "HTC|Wildfire CDMA|bee|HTC Bee"

    aput-object v2, v0, v1

    const/16 v1, 0x239

    const-string v2, "HTC|Wildfire CDMA|bee|HTC Wildfire"

    aput-object v2, v0, v1

    const/16 v1, 0x23a

    const-string v2, "HTC|Wildfire S|marvel|HTC Wildfire S"

    aput-object v2, v0, v1

    const/16 v1, 0x23b

    const-string v2, "HTC|Wildfire S|marvel|HTC Wildfire S A510b"

    aput-object v2, v0, v1

    const/16 v1, 0x23c

    const-string v2, "HTC|Wildfire S|marvel|HTC Wildfire S A510e"

    aput-object v2, v0, v1

    const/16 v1, 0x23d

    const-string v2, "HTC|Wildfire S|marvel|HTC-A510a"

    aput-object v2, v0, v1

    const/16 v1, 0x23e

    const-string v2, "HTC|myTouch 3G|sapphire|HTC Magic"

    aput-object v2, v0, v1

    const/16 v1, 0x23f

    const-string v2, "HTC|myTouch 3G|sapphire|T-Mobile myTouch 3G"

    aput-object v2, v0, v1

    const/16 v1, 0x240

    const-string v2, "HTC|myTouch 3G Slide|espresso|T-Mobile myTouch 3G Slide"

    aput-object v2, v0, v1

    const/16 v1, 0x241

    const-string v2, "HTC|myTouch 4G|glacier|HTC Glacier"

    aput-object v2, v0, v1

    const/16 v1, 0x242

    const-string v2, "HTC|myTouch 4G|glacier|HTC Panache"

    aput-object v2, v0, v1

    const/16 v1, 0x243

    const-string v2, "HTC|myTouch 4G Slide|doubleshot|myTouch_4G_Slide"

    aput-object v2, v0, v1

    const/16 v1, 0x244

    const-string v2, "Honeywell|70eLW0|dblack_wo|Dolphin 70e Black"

    aput-object v2, v0, v1

    const/16 v1, 0x245

    const-string v2, "Honeywell|70eLWN|dblack_wn|Dolphin 70e Black"

    aput-object v2, v0, v1

    const/16 v1, 0x246

    const-string v2, "Huawei|A199|hwa199|HUAWEI A199"

    aput-object v2, v0, v1

    const/16 v1, 0x247

    const-string v2, "Huawei|Ascend D|hwu9500|U9500"

    aput-object v2, v0, v1

    const/16 v1, 0x248

    const-string v2, "Huawei|B199|hwB199|HUAWEI B199"

    aput-object v2, v0, v1

    const/16 v1, 0x249

    const-string v2, "Huawei|C8812|hwc8812|HUAWEI C8812"

    aput-object v2, v0, v1

    const/16 v1, 0x24a

    const-string v2, "Huawei|C8813DQ|hwC8813DQ|HUAWEI C8813DQ"

    aput-object v2, v0, v1

    const/16 v1, 0x24b

    const-string v2, "Huawei|C8815|hwC8815|HUAWEI C8815"

    aput-object v2, v0, v1

    const/16 v1, 0x24c

    const-string v2, "Huawei|C8816|hwC8816|HUAWEI C8816"

    aput-object v2, v0, v1

    const/16 v1, 0x24d

    const-string v2, "Huawei|C8816D|hwC8816D|HUAWEI C8816D"

    aput-object v2, v0, v1

    const/16 v1, 0x24e

    const-string v2, "Huawei|C8817E|hwC8817E|HUAWEI C8817E"

    aput-object v2, v0, v1

    const/16 v1, 0x24f

    const-string v2, "Huawei|C8817L|hwC8817L|HUAWEI C8817L"

    aput-object v2, v0, v1

    const/16 v1, 0x250

    const-string v2, "Huawei|C8818|hwC8818|HUAWEI C8818"

    aput-object v2, v0, v1

    const/16 v1, 0x251

    const-string v2, "Huawei|D2|hwD2-6070|HUAWEI D2-6070"

    aput-object v2, v0, v1

    const/16 v1, 0x252

    const-string v2, "Huawei|G350|HWG350|HUAWEI G350-U20"

    aput-object v2, v0, v1

    const/16 v1, 0x253

    const-string v2, "Huawei|G350|hwg350|HUAWEI G350"

    aput-object v2, v0, v1

    const/16 v1, 0x254

    const-string v2, "Huawei|G350|hwg350|HUAWEI G350-U00"

    aput-object v2, v0, v1

    const/16 v1, 0x255

    const-string v2, "Huawei|G506|hwG506-U151|HUAWEI G506-U151"

    aput-object v2, v0, v1

    const/16 v1, 0x256

    const-string v2, "Huawei|G510|hwG510-0010|HUAWEI G510-0010"

    aput-object v2, v0, v1

    const/16 v1, 0x257

    const-string v2, "Huawei|G510|hwG510-0100|HUAWEI G510-0100"

    aput-object v2, v0, v1

    const/16 v1, 0x258

    const-string v2, "Huawei|G510|hwG510-0100|HuaweiG510-0100"

    aput-object v2, v0, v1

    const/16 v1, 0x259

    const-string v2, "Huawei|G510|hwG510-0100|HuaweiG510-0100-orange"

    aput-object v2, v0, v1

    const/16 v1, 0x25a

    const-string v2, "Huawei|G520|hwG520-5000|HUAWEI G520-5000"

    aput-object v2, v0, v1

    const/16 v1, 0x25b

    const-string v2, "Huawei|G521-L076|HWG521-L|HUAWEI G521-L076"

    aput-object v2, v0, v1

    const/16 v1, 0x25c

    const-string v2, "Huawei|G521-L176|HWG521-L|HUAWEI G521-L176"

    aput-object v2, v0, v1

    const/16 v1, 0x25d

    const-string v2, "Huawei|G526|hwG526-L11|G526-L11"

    aput-object v2, v0, v1

    const/16 v1, 0x25e

    const-string v2, "Huawei|G526|hwG526-L22|G526-L22"

    aput-object v2, v0, v1

    const/16 v1, 0x25f

    const-string v2, "Huawei|G526|hwG526-L33|G526-L33"

    aput-object v2, v0, v1

    const/16 v1, 0x260

    const-string v2, "Huawei|G527|hwG527-U081|G527-U081"

    aput-object v2, v0, v1

    const/16 v1, 0x261

    const-string v2, "Huawei|G535-L11|hwG535-L11|HUAWEI G535-L11"

    aput-object v2, v0, v1

    const/16 v1, 0x262

    const-string v2, "Huawei|G535-L11|hwG535-L11|Kestrel"

    aput-object v2, v0, v1

    const/16 v1, 0x263

    const-string v2, "Huawei|G535-L11|hwG535-L11|Orange Gova"

    aput-object v2, v0, v1

    const/16 v1, 0x264

    const-string v2, "Huawei|G535-L11|hwG535-L11|Speedsurfer"

    aput-object v2, v0, v1

    const/16 v1, 0x265

    const-string v2, "Huawei|G535-L11|hwG535-L11|Ultym5"

    aput-object v2, v0, v1

    const/16 v1, 0x266

    const-string v2, "Huawei|G6|hwG6-T00|HUAWEI G6-T00"

    aput-object v2, v0, v1

    const/16 v1, 0x267

    const-string v2, "Huawei|G6-C00|hwG6-C00|HUAWEI G6-C00"

    aput-object v2, v0, v1

    const/16 v1, 0x268

    const-string v2, "Huawei|G6-L11|hwG6-L11|HUAWEI G6-L11"

    aput-object v2, v0, v1

    const/16 v1, 0x269

    const-string v2, "Huawei|G6-L22|hwG6-L22|HUAWEI G6-L22"

    aput-object v2, v0, v1

    const/16 v1, 0x26a

    const-string v2, "Huawei|G6-L33|hwG6-L33|HUAWEI G6-L33"

    aput-object v2, v0, v1

    const/16 v1, 0x26b

    const-string v2, "Huawei|G6-U00|hwG6-U00|HUAWEI G6-U00"

    aput-object v2, v0, v1

    const/16 v1, 0x26c

    const-string v2, "Huawei|G6-U10|hwG6-U10|HUAWEI G6-U10"

    aput-object v2, v0, v1

    const/16 v1, 0x26d

    const-string v2, "Huawei|G6-U251|hwG6-U251|HUAWEI G6-U251"

    aput-object v2, v0, v1

    const/16 v1, 0x26e

    const-string v2, "Huawei|G6-U34|hwG6-U34|HUAWEI G6-U34"

    aput-object v2, v0, v1

    const/16 v1, 0x26f

    const-string v2, "Huawei|G606|HWG606|HUAWEI G606-T00"

    aput-object v2, v0, v1

    const/16 v1, 0x270

    const-string v2, "Huawei|G610|hwG610-T00|HUAWEI G610-T00"

    aput-object v2, v0, v1

    const/16 v1, 0x271

    const-string v2, "Huawei|G610|hwG610-U00|G610-U00"

    aput-object v2, v0, v1

    const/16 v1, 0x272

    const-string v2, "Huawei|G610|hwG610-U00|HUAWEI G610-U00"

    aput-object v2, v0, v1

    const/16 v1, 0x273

    const-string v2, "Huawei|G610|hwG610-U30|HUAWEI G610-U30"

    aput-object v2, v0, v1

    const/16 v1, 0x274

    const-string v2, "Huawei|G610-T01|hwG610-T01|HUAWEI G610-T01"

    aput-object v2, v0, v1

    const/16 v1, 0x275

    const-string v2, "Huawei|G610-T11|hwG610-T11|HUAWEI G610-T11"

    aput-object v2, v0, v1

    const/16 v1, 0x276

    const-string v2, "Huawei|G610-U15|hwG610-U15|HUAWEI G610-U15"

    aput-object v2, v0, v1

    const/16 v1, 0x277

    const-string v2, "Huawei|G610-U20|hwG610-U20|HUAWEI G610-U20"

    aput-object v2, v0, v1

    const/16 v1, 0x278

    const-string v2, "Huawei|G610C|hwG610-C00|HUAWEI G610-C00"

    aput-object v2, v0, v1

    const/16 v1, 0x279

    const-string v2, "Huawei|G615-U10|hwG615-U10|HUAWEI G615-U10"

    aput-object v2, v0, v1

    const/16 v1, 0x27a

    const-string v2, "Huawei|G616-L076|HWG616-L|HUAWEI G616-L076"

    aput-object v2, v0, v1

    const/16 v1, 0x27b

    const-string v2, "Huawei|G620-L72|hwG620-L72|HUAWEI G620-L72"

    aput-object v2, v0, v1

    const/16 v1, 0x27c

    const-string v2, "Huawei|G620S-L03|hwG620S-L03|HUAWEI G620"

    aput-object v2, v0, v1

    const/16 v1, 0x27d

    const-string v2, "Huawei|G620S-L03|hwG620S-L03|Personal Huawei G620S"

    aput-object v2, v0, v1

    const/16 v1, 0x27e

    const-string v2, "Huawei|G628-TL00|HWG628-TL|HUAWEI G628-TL00"

    aput-object v2, v0, v1

    const/16 v1, 0x27f

    const-string v2, "Huawei|G629-UL00|HWG629-UL|HUAWEI G629-UL00"

    aput-object v2, v0, v1

    const/16 v1, 0x280

    const-string v2, "Huawei|G630-U00|hwG630-U00|HUAWEI G630-U00"

    aput-object v2, v0, v1

    const/16 v1, 0x281

    const-string v2, "Huawei|G630-U251|hwG630-U251|HUAWEI G630-U251"

    aput-object v2, v0, v1

    const/16 v1, 0x282

    const-string v2, "Huawei|G660-L075|hwG660-L075|HUAWEI G660-L075"

    aput-object v2, v0, v1

    const/16 v1, 0x283

    const-string v2, "Huawei|G7-L03|hwG7-L03|HUAWEI G7"

    aput-object v2, v0, v1

    const/16 v1, 0x284

    const-string v2, "Huawei|G7-L03|hwG7-L03|HUAWEI G7-L03"

    aput-object v2, v0, v1

    const/16 v1, 0x285

    const-string v2, "Huawei|G7-TL00|hwG7-TL00|HUAWEI G7-TL00"

    aput-object v2, v0, v1

    const/16 v1, 0x286

    const-string v2, "Huawei|G700|hwG700-T00|HUAWEI G700-T00"

    aput-object v2, v0, v1

    const/16 v1, 0x287

    const-string v2, "Huawei|G700|hwG700-U00|HUAWEI G700-U00"

    aput-object v2, v0, v1

    const/16 v1, 0x288

    const-string v2, "Huawei|G700-T01|hwG700-T01|HUAWEI G700-T01"

    aput-object v2, v0, v1

    const/16 v1, 0x289

    const-string v2, "Huawei|G700-U10|hwG700-U10|HUAWEI G700-U10"

    aput-object v2, v0, v1

    const/16 v1, 0x28a

    const-string v2, "Huawei|G700-U20|hwG700-U20|HUAWEI G700-U20"

    aput-object v2, v0, v1

    const/16 v1, 0x28b

    const-string v2, "Huawei|G716|hwG716-L070|HUAWEI G716-L070"

    aput-object v2, v0, v1

    const/16 v1, 0x28c

    const-string v2, "Huawei|G718|hwg718|HUAWEI G718"

    aput-object v2, v0, v1

    const/16 v1, 0x28d

    const-string v2, "Huawei|G730|hwG730-C00|HUAWEI G730-C00"

    aput-object v2, v0, v1

    const/16 v1, 0x28e

    const-string v2, "Huawei|G730|hwG730-T00|HUAWEI G730-T00"

    aput-object v2, v0, v1

    const/16 v1, 0x28f

    const-string v2, "Huawei|G730|hwG730-U00|HUAWEI G730-U00"

    aput-object v2, v0, v1

    const/16 v1, 0x290

    const-string v2, "Huawei|G730-L075|hwG730-L075|HUAWEI G730-L075"

    aput-object v2, v0, v1

    const/16 v1, 0x291

    const-string v2, "Huawei|G730-U10|hwG730-U10|HUAWEI G730-U10"

    aput-object v2, v0, v1

    const/16 v1, 0x292

    const-string v2, "Huawei|G730-U251|hwG730-U251|HUAWEI G730-U251"

    aput-object v2, v0, v1

    const/16 v1, 0x293

    const-string v2, "Huawei|G730-U27|hwG730-U27|HUAWEI G730-U27"

    aput-object v2, v0, v1

    const/16 v1, 0x294

    const-string v2, "Huawei|G730-U30|hwG730-U30|HUAWEI G730-U30"

    aput-object v2, v0, v1

    const/16 v1, 0x295

    const-string v2, "Huawei|G740|hwG740-L00|G740-L00"

    aput-object v2, v0, v1

    const/16 v1, 0x296

    const-string v2, "Huawei|G740|hwG740-L00|Orange Yumo"

    aput-object v2, v0, v1

    const/16 v1, 0x297

    const-string v2, "Huawei|G750-T00|hwG750-T00|HUAWEI G750-T00"

    aput-object v2, v0, v1

    const/16 v1, 0x298

    const-string v2, "Huawei|G750-T01|hwG750-T01|HUAWEI G750-T01"

    aput-object v2, v0, v1

    const/16 v1, 0x299

    const-string v2, "Huawei|G750-T01M|hwG750-T01M|HUAWEI G750-T01M"

    aput-object v2, v0, v1

    const/16 v1, 0x29a

    const-string v2, "Huawei|G750-T20|hwG750-T20|HUAWEI G750-T20"

    aput-object v2, v0, v1

    const/16 v1, 0x29b

    const-string v2, "Huawei|G750-U10|hwG750-U10|HUAWEI G750-U10"

    aput-object v2, v0, v1

    const/16 v1, 0x29c

    const-string v2, "Huawei|G7500|HWG7500|HUAWEI G7500"

    aput-object v2, v0, v1

    const/16 v1, 0x29d

    const-string v2, "Huawei|Gran_Roraima|hws7721u|Orinoquia Gran Roraima + S7-722u"

    aput-object v2, v0, v1

    const/16 v1, 0x29e

    const-string v2, "Huawei|H30-L01|hwH30|HONOR H30-L01"

    aput-object v2, v0, v1

    const/16 v1, 0x29f

    const-string v2, "Huawei|H30-L01M|hwH30|HONOR H30-L01M"

    aput-object v2, v0, v1

    const/16 v1, 0x2a0

    const-string v2, "Huawei|H30-L02|hwH30|HONOR H30-L02"

    aput-object v2, v0, v1

    const/16 v1, 0x2a1

    const-string v2, "Huawei|H60|hwH60|H60-L01"

    aput-object v2, v0, v1

    const/16 v1, 0x2a2

    const-string v2, "Huawei|H60-J1|hwH60|HW-H60-J1"

    aput-object v2, v0, v1

    const/16 v1, 0x2a3

    const-string v2, "Huawei|HUAWEI G630|hwG630-T00|HUAWEI G630-T00"

    aput-object v2, v0, v1

    const/16 v1, 0x2a4

    const-string v2, "Huawei|HUAWEI G7-L01|hwG7-L01|G7-L01"

    aput-object v2, v0, v1

    const/16 v1, 0x2a5

    const-string v2, "Huawei|HUAWEI MediaPad 10 Link+|hws10231l|402HW"

    aput-object v2, v0, v1

    const/16 v1, 0x2a6

    const-string v2, "Huawei|HUAWEI MediaPad 10 Link+|hws10231l|MediaPad 10 Link+"

    aput-object v2, v0, v1

    const/16 v1, 0x2a7

    const-string v2, "Huawei|HUAWEI MediaPad 10 Link+|hws10231l|S10-232L"

    aput-object v2, v0, v1

    const/16 v1, 0x2a8

    const-string v2, "Huawei|HUAWEI MediaPad 10 Link+|hws10231l|SpeedTAB"

    aput-object v2, v0, v1

    const/16 v1, 0x2a9

    const-string v2, "Huawei|HUAWEI MediaPad 7 Youth2|hws7721u|MediaPad 7 Youth 2"

    aput-object v2, v0, v1

    const/16 v1, 0x2aa

    const-string v2, "Huawei|HUAWEI MediaPad 7 Youth2|hws7721u|S7-721u"

    aput-object v2, v0, v1

    const/16 v1, 0x2ab

    const-string v2, "Huawei|HUAWEI MediaPad M1 8.0|hws8301l|403HW"

    aput-object v2, v0, v1

    const/16 v1, 0x2ac

    const-string v2, "Huawei|HUAWEI MediaPad M1 8.0|hws8301l|CNPC Security Pad S1"

    aput-object v2, v0, v1

    const/16 v1, 0x2ad

    const-string v2, "Huawei|HUAWEI MediaPad M1 8.0|hws8301l|MediaPad M1 8.0"

    aput-object v2, v0, v1

    const/16 v1, 0x2ae

    const-string v2, "Huawei|HUAWEI MediaPad M1 8.0|hws8301l|MediaPad M1 8.0 (LTE)"

    aput-object v2, v0, v1

    const/16 v1, 0x2af

    const-string v2, "Huawei|HUAWEI MediaPad M1 8.0|hws8301l|MediaPad M1 8.0 (WIFI)"

    aput-object v2, v0, v1

    const/16 v1, 0x2b0

    const-string v2, "Huawei|HUAWEI MediaPad M1 8.0|hws8301l|S8-303L"

    aput-object v2, v0, v1

    const/16 v1, 0x2b1

    const-string v2, "Huawei|HUAWEI MediaPad M1 8.0|hws8301l|S8-303LT"

    aput-object v2, v0, v1

    const/16 v1, 0x2b2

    const-string v2, "Huawei|HUAWEI MediaPad M1 8.0|hws8301l|S8-306L"

    aput-object v2, v0, v1

    const/16 v1, 0x2b3

    const-string v2, "Huawei|HUAWEI MediaPad X1 7.0|hw7d501l|7D-501u"

    aput-object v2, v0, v1

    const/16 v1, 0x2b4

    const-string v2, "Huawei|HUAWEI MediaPad X1 7.0|hw7d501l|MediaPad X1"

    aput-object v2, v0, v1

    const/16 v1, 0x2b5

    const-string v2, "Huawei|HUAWEI MediaPad X1 7.0|hw7d501l|MediaPad X1 7.0"

    aput-object v2, v0, v1

    const/16 v1, 0x2b6

    const-string v2, "Huawei|HUAWEI MediaPad X1 7.0|hw7d501l|X1 7.0"

    aput-object v2, v0, v1

    const/16 v1, 0x2b7

    const-string v2, "Huawei|HUAWEI P6|hwp6-u06|HUAWEI Ascend P6"

    aput-object v2, v0, v1

    const/16 v1, 0x2b8

    const-string v2, "Huawei|HUAWEI P6|hwp6-u06|HUAWEI P6-U06"

    aput-object v2, v0, v1

    const/16 v1, 0x2b9

    const-string v2, "Huawei|HUAWEI P6|hwp6-u06|HUAWEI P6-U06-orange"

    aput-object v2, v0, v1

    const/16 v1, 0x2ba

    const-string v2, "Huawei|HUAWEI Y536-A1|hwY536A1|HUAWEI Y536A1"

    aput-object v2, v0, v1

    const/16 v1, 0x2bb

    const-string v2, "Huawei|HUAWEI Y610|HWY610-U|HUAWEI Y610-U00"

    aput-object v2, v0, v1

    const/16 v1, 0x2bc

    const-string v2, "Huawei|HUAWEI Y618|HWY618-T|HUAWEI Y618-T00"

    aput-object v2, v0, v1

    const/16 v1, 0x2bd

    const-string v2, "Huawei|Honor3|hwH30-T10|H30-T10"

    aput-object v2, v0, v1

    const/16 v1, 0x2be

    const-string v2, "Huawei|Honor3|hwH30-U10|H30-U10"

    aput-object v2, v0, v1

    const/16 v1, 0x2bf

    const-string v2, "Huawei|Honor3|hwhn3-u00|HUAWEI HN3-U00"

    aput-object v2, v0, v1

    const/16 v1, 0x2c0

    const-string v2, "Huawei|Honor3|hwhn3-u01|HUAWEI HN3-U01"

    aput-object v2, v0, v1

    const/16 v1, 0x2c1

    const-string v2, "Huawei|IDEOS|U8150|Comet"

    aput-object v2, v0, v1

    const/16 v1, 0x2c2

    const-string v2, "Huawei|IDEOS|u8150|Ideos"

    aput-object v2, v0, v1

    const/16 v1, 0x2c3

    const-string v2, "Huawei|M220|hwmediaqm220|M220c"

    aput-object v2, v0, v1

    const/16 v1, 0x2c4

    const-string v2, "Huawei|M220|hwmediaqm220|dTV01"

    aput-object v2, v0, v1

    const/16 v1, 0x2c5

    const-string v2, "Huawei|M620|M620|TB01"

    aput-object v2, v0, v1

    const/16 v1, 0x2c6

    const-string v2, "Huawei|M835|hwm835|HUAWEI-M835"

    aput-object v2, v0, v1

    const/16 v1, 0x2c7

    const-string v2, "Huawei|M865|hwm865|USCCADR3305"

    aput-object v2, v0, v1

    const/16 v1, 0x2c8

    const-string v2, "Huawei|M868|hwm868|HUAWEI M868"

    aput-object v2, v0, v1

    const/16 v1, 0x2c9

    const-string v2, "Huawei|MT2-L01|hwmt2-l01|HUAWEI MT2-L01"

    aput-object v2, v0, v1

    const/16 v1, 0x2ca

    const-string v2, "Huawei|MT2-L02|hwmt2-l02|HUAWEI MT2-L02"

    aput-object v2, v0, v1

    const/16 v1, 0x2cb

    const-string v2, "Huawei|MT2-L03|hwMT2L03|MT2L03"

    aput-object v2, v0, v1

    const/16 v1, 0x2cc

    const-string v2, "Huawei|MT2-L05|hwmt2-l05|HUAWEI MT2-L05"

    aput-object v2, v0, v1

    const/16 v1, 0x2cd

    const-string v2, "Huawei|MT2L03LITE|hwMT2L03LITE|MT2L03"

    aput-object v2, v0, v1

    const/16 v1, 0x2ce

    const-string v2, "Huawei|MT7-CL00|hwmt7|HUAWEI MT7-CL00"

    aput-object v2, v0, v1

    const/16 v1, 0x2cf

    const-string v2, "Huawei|MT7-TL00|hwmt7|HUAWEI MT7-TL00"

    aput-object v2, v0, v1

    const/16 v1, 0x2d0

    const-string v2, "Huawei|MT7-TL10|hwmt7|HUAWEI MT7-TL10"

    aput-object v2, v0, v1

    const/16 v1, 0x2d1

    const-string v2, "Huawei|MT7-UL00|hwmt7|HUAWEI MT7-UL00"

    aput-object v2, v0, v1

    const/16 v1, 0x2d2

    const-string v2, "Huawei|Mate|hwmt1-t00|HUAWEI MT1-T00"

    aput-object v2, v0, v1

    const/16 v1, 0x2d3

    const-string v2, "Huawei|Mate2|hwmt2-c00|HUAWEI MT2-C00"

    aput-object v2, v0, v1

    const/16 v1, 0x2d4

    const-string v2, "Huawei|MediaPad Vogue|hws7601u|MediaPad 7 Lite II"

    aput-object v2, v0, v1

    const/16 v1, 0x2d5

    const-string v2, "Huawei|MediaPad Vogue|hws7601u|MediaPad 7 Vogue"

    aput-object v2, v0, v1

    const/16 v1, 0x2d6

    const-string v2, "Huawei|MediaPad Youth|hws7701w|MediaPad 7 Youth"

    aput-object v2, v0, v1

    const/16 v1, 0x2d7

    const-string v2, "Huawei|MediaPad7|hws7601us|MediaPad 7 Vogue"

    aput-object v2, v0, v1

    const/16 v1, 0x2d8

    const-string v2, "Huawei|MediaPad7|hws7601w|MediaPad 7 Vogue"

    aput-object v2, v0, v1

    const/16 v1, 0x2d9

    const-string v2, "Huawei|P2|hwp2-6070|HUAWEI P2-6070"

    aput-object v2, v0, v1

    const/16 v1, 0x2da

    const-string v2, "Huawei|P6|hwp6-c00|HUAWEI P6-C00"

    aput-object v2, v0, v1

    const/16 v1, 0x2db

    const-string v2, "Huawei|P6|hwp6-t00|HUAWEI P6-T00"

    aput-object v2, v0, v1

    const/16 v1, 0x2dc

    const-string v2, "Huawei|P6|hwp6-t00|HUAWEI P6-T00V"

    aput-object v2, v0, v1

    const/16 v1, 0x2dd

    const-string v2, "Huawei|P6S|hwP6s-l04|P6 S-L04"

    aput-object v2, v0, v1

    const/16 v1, 0x2de

    const-string v2, "Huawei|P6S-L04|hwp6s-l04|302HW"

    aput-object v2, v0, v1

    const/16 v1, 0x2df

    const-string v2, "Huawei|P6S-U06|hwp6s-u06|HUAWEI P6 S-U06"

    aput-object v2, v0, v1

    const/16 v1, 0x2e0

    const-string v2, "Huawei|P7 mini|hwP7Mini|HUAWEI P7 mini"

    aput-object v2, v0, v1

    const/16 v1, 0x2e1

    const-string v2, "Huawei|P7-L00|hwp7|HUAWEI P7-L00"

    aput-object v2, v0, v1

    const/16 v1, 0x2e2

    const-string v2, "Huawei|P7-L05|hwp7|HUAWEI P7-L05"

    aput-object v2, v0, v1

    const/16 v1, 0x2e3

    const-string v2, "Huawei|P7-L07|hwp7|HUAWEI P7-L07"

    aput-object v2, v0, v1

    const/16 v1, 0x2e4

    const-string v2, "Huawei|P7-L09|hwp7|HUAWEI P7-L09"

    aput-object v2, v0, v1

    const/16 v1, 0x2e5

    const-string v2, "Huawei|P7-L10|hwp7|HUAWEI P7-L10"

    aput-object v2, v0, v1

    const/16 v1, 0x2e6

    const-string v2, "Huawei|P7-L12|hwp7|HUAWEI P7-L12"

    aput-object v2, v0, v1

    const/16 v1, 0x2e7

    const-string v2, "Huawei|S10|hws10103l|MediaPad 10 FHD"

    aput-object v2, v0, v1

    const/16 v1, 0x2e8

    const-string v2, "Huawei|S10|hws10201l|MediaPad 10 LINK"

    aput-object v2, v0, v1

    const/16 v1, 0x2e9

    const-string v2, "Huawei|S7|hws7601c|MediaPad 7 Vogue"

    aput-object v2, v0, v1

    const/16 v1, 0x2ea

    const-string v2, "Huawei|S7|hws7601w|MediaPad 7 Vogue"

    aput-object v2, v0, v1

    const/16 v1, 0x2eb

    const-string v2, "Huawei|S7|hws7701u|MediaPad 7 Youth"

    aput-object v2, v0, v1

    const/16 v1, 0x2ec

    const-string v2, "Huawei|S7|hws7930u|Orinoquia Roraima S7-932u"

    aput-object v2, v0, v1

    const/16 v1, 0x2ed

    const-string v2, "Huawei|S7|hws7951w|MediaPad 7 Lite+"

    aput-object v2, v0, v1

    const/16 v1, 0x2ee

    const-string v2, "Huawei|S7|hws7951w|Telpad Dual S"

    aput-object v2, v0, v1

    const/16 v1, 0x2ef

    const-string v2, "Huawei|S7|hws7961w|Telpad QS"

    aput-object v2, v0, v1

    const/16 v1, 0x2f0

    const-string v2, "Huawei|S7|hws7961w|Telpad Quad S"

    aput-object v2, v0, v1

    const/16 v1, 0x2f1

    const-string v2, "Huawei|SC-CL00|HWSC-CL00|HUAWEI SC-CL00"

    aput-object v2, v0, v1

    const/16 v1, 0x2f2

    const-string v2, "Huawei|T-Mobile Pulse|U8100|Huawei_8100-9"

    aput-object v2, v0, v1

    const/16 v1, 0x2f3

    const-string v2, "Huawei|T-Mobile Pulse|U8100|Tactile internet"

    aput-object v2, v0, v1

    const/16 v1, 0x2f4

    const-string v2, "Huawei|T-Mobile Pulse|U8100|U8100"

    aput-object v2, v0, v1

    const/16 v1, 0x2f5

    const-string v2, "Huawei|T-Mobile Pulse|U8100|Videocon_V7400"

    aput-object v2, v0, v1

    const/16 v1, 0x2f6

    const-string v2, "Huawei|T101|hwt101|T-101"

    aput-object v2, v0, v1

    const/16 v1, 0x2f7

    const-string v2, "Huawei|T101|hwt101|T101 PAD"

    aput-object v2, v0, v1

    const/16 v1, 0x2f8

    const-string v2, "Huawei|T102|hwt102|QH-10"

    aput-object v2, v0, v1

    const/16 v1, 0x2f9

    const-string v2, "Huawei|T102|hwt102|T102 PAD"

    aput-object v2, v0, v1

    const/16 v1, 0x2fa

    const-string v2, "Huawei|T801|hwt801|T801 PAD"

    aput-object v2, v0, v1

    const/16 v1, 0x2fb

    const-string v2, "Huawei|T802|hwt802|MT-803G"

    aput-object v2, v0, v1

    const/16 v1, 0x2fc

    const-string v2, "Huawei|T802|hwt802|T802 PAD"

    aput-object v2, v0, v1

    const/16 v1, 0x2fd

    const-string v2, "Huawei|U8120|U8120|Vodafone 845"

    aput-object v2, v0, v1

    const/16 v1, 0x2fe

    const-string v2, "Huawei|U8220|U8220|Pulse"

    aput-object v2, v0, v1

    const/16 v1, 0x2ff

    const-string v2, "Huawei|U8220|U8220|U8220PLUS"

    aput-object v2, v0, v1

    const/16 v1, 0x300

    const-string v2, "Huawei|U8687|hwu8687|Huawei-U8687"

    aput-object v2, v0, v1

    const/16 v1, 0x301

    const-string v2, "Huawei|V858|hwu8160|Huawei 858"

    aput-object v2, v0, v1

    const/16 v1, 0x302

    const-string v2, "Huawei|V858|hwu8160|MTC 950"

    aput-object v2, v0, v1

    const/16 v1, 0x303

    const-string v2, "Huawei|V858|hwu8160|MTC Mini"

    aput-object v2, v0, v1

    const/16 v1, 0x304

    const-string v2, "Huawei|V858|hwu8160|Vodafone 858"

    aput-object v2, v0, v1

    const/16 v1, 0x305

    const-string v2, "Huawei|Vogue7|hws7601u|MediaPad 7 Classic"

    aput-object v2, v0, v1

    const/16 v1, 0x306

    const-string v2, "Huawei|Vogue7|hws7601u|MediaPad 7 Lite II"

    aput-object v2, v0, v1

    const/16 v1, 0x307

    const-string v2, "Huawei|Vogue7|hws7601u|MediaPad 7 Vogue"

    aput-object v2, v0, v1

    const/16 v1, 0x308

    const-string v2, "Huawei|Y210|oay210|Orinoquia Auyantepui Y210"

    aput-object v2, v0, v1

    const/16 v1, 0x309

    const-string v2, "Huawei|Y220|HWY220-U|Y220-U00"

    aput-object v2, v0, v1

    const/16 v1, 0x30a

    const-string v2, "Huawei|Y220|HWY220-U|Y220-U05"

    aput-object v2, v0, v1

    const/16 v1, 0x30b

    const-string v2, "Huawei|Y220|HWY220-U|Y220-U17"

    aput-object v2, v0, v1

    const/16 v1, 0x30c

    const-string v2, "Huawei|Y220-T10|hwy220-t10|HUAWEI Y220-T10"

    aput-object v2, v0, v1

    const/16 v1, 0x30d

    const-string v2, "Huawei|Y221-U03|HWY221-U|HUAWEI Y221-U03"

    aput-object v2, v0, v1

    const/16 v1, 0x30e

    const-string v2, "Huawei|Y221-U03|QAY221-U|ORINOQUIA Auyantepui+Y221-U03"

    aput-object v2, v0, v1

    const/16 v1, 0x30f

    const-string v2, "Huawei|Y221-U12|HWY221-U|HUAWEI Y221-U12"

    aput-object v2, v0, v1

    const/16 v1, 0x310

    const-string v2, "Huawei|Y221-U22|HWY221-U|HUAWEI Y221-U22"

    aput-object v2, v0, v1

    const/16 v1, 0x311

    const-string v2, "Huawei|Y221-U33|HWY221-U|HUAWEI Y221-U33"

    aput-object v2, v0, v1

    const/16 v1, 0x312

    const-string v2, "Huawei|Y221-U43|HWY221-U|HUAWEI Y221-U43"

    aput-object v2, v0, v1

    const/16 v1, 0x313

    const-string v2, "Huawei|Y221-U53|HWY221-U|HUAWEI Y221-U53"

    aput-object v2, v0, v1

    const/16 v1, 0x314

    const-string v2, "Huawei|Y300|hwY300-0100|HUAWEI Ascend Y300"

    aput-object v2, v0, v1

    const/16 v1, 0x315

    const-string v2, "Huawei|Y300|hwY300-0100|HUAWEI Y300-0100"

    aput-object v2, v0, v1

    const/16 v1, 0x316

    const-string v2, "Huawei|Y300|hwY300-0151|HUAWEI Y300-0151"

    aput-object v2, v0, v1

    const/16 v1, 0x317

    const-string v2, "Huawei|Y300|hwY300-0151|Pelephone-Y300-"

    aput-object v2, v0, v1

    const/16 v1, 0x318

    const-string v2, "Huawei|Y300-0000|hwY300-0000|HUAWEI Y300-0000"

    aput-object v2, v0, v1

    const/16 v1, 0x319

    const-string v2, "Huawei|Y301A1|hwY301A1|Huawei Y301A1"

    aput-object v2, v0, v1

    const/16 v1, 0x31a

    const-string v2, "Huawei|Y301A2|hwY301A2|Huawei Y301A2"

    aput-object v2, v0, v1

    const/16 v1, 0x31b

    const-string v2, "Huawei|Y320|hwy320-c00|HUAWEI Y320-C00"

    aput-object v2, v0, v1

    const/16 v1, 0x31c

    const-string v2, "Huawei|Y320-T00|HWY320-T00|HUAWEI Y320-T00"

    aput-object v2, v0, v1

    const/16 v1, 0x31d

    const-string v2, "Huawei|Y320-U01|HWY320|HUAWEI Y320-U01"

    aput-object v2, v0, v1

    const/16 v1, 0x31e

    const-string v2, "Huawei|Y320-U10|HWY320-U|HUAWEI Y320-U10"

    aput-object v2, v0, v1

    const/16 v1, 0x31f

    const-string v2, "Huawei|Y320-U151|HWY320-U|HUAWEI Y320-U151"

    aput-object v2, v0, v1

    const/16 v1, 0x320

    const-string v2, "Huawei|Y320-U30|HWY320-U|HUAWEI Y320-U30"

    aput-object v2, v0, v1

    const/16 v1, 0x321

    const-string v2, "Huawei|Y320-U351|HWY320-U|HUAWEI Y320-U351"

    aput-object v2, v0, v1

    const/16 v1, 0x322

    const-string v2, "Huawei|Y321|HWY321-U|HUAWEI Y321-U051"

    aput-object v2, v0, v1

    const/16 v1, 0x323

    const-string v2, "Huawei|Y321|hwy321-c00|HUAWEI Y321-C00"

    aput-object v2, v0, v1

    const/16 v1, 0x324

    const-string v2, "Huawei|Y325-T00|HWY325-T|HUAWEI Y325-T00"

    aput-object v2, v0, v1

    const/16 v1, 0x325

    const-string v2, "Huawei|Y330|hwY330-U05|Bucare Y330-U05"

    aput-object v2, v0, v1

    const/16 v1, 0x326

    const-string v2, "Huawei|Y330|hwY330-U05|HUAWEI Y330-U05"

    aput-object v2, v0, v1

    const/16 v1, 0x327

    const-string v2, "Huawei|Y330|hwY330-U21|HUAWEI Y330-U21"

    aput-object v2, v0, v1

    const/16 v1, 0x328

    const-string v2, "Huawei|Y330-C00|hwY330-C00|HUAWEI Y330-C00"

    aput-object v2, v0, v1

    const/16 v1, 0x329

    const-string v2, "Huawei|Y330-U01|hwY330-U01|HUAWEI Y330-U01"

    aput-object v2, v0, v1

    const/16 v1, 0x32a

    const-string v2, "Huawei|Y330-U01|hwY330-U01|Luno"

    aput-object v2, v0, v1

    const/16 v1, 0x32b

    const-string v2, "Huawei|Y330-U07|hwY330-U07|HUAWEI Y330-U07"

    aput-object v2, v0, v1

    const/16 v1, 0x32c

    const-string v2, "Huawei|Y330-U08|hwY330-U08|HUAWEI Y330-U08"

    aput-object v2, v0, v1

    const/16 v1, 0x32d

    const-string v2, "Huawei|Y330-U11|hwY330-U11|HUAWEI Y330-U11"

    aput-object v2, v0, v1

    const/16 v1, 0x32e

    const-string v2, "Huawei|Y330-U11|hwY330-U11|V8510"

    aput-object v2, v0, v1

    const/16 v1, 0x32f

    const-string v2, "Huawei|Y330-U15|hwY330-U15|HUAWEI Y330-U15"

    aput-object v2, v0, v1

    const/16 v1, 0x330

    const-string v2, "Huawei|Y330-U17|hwY330-U17|HUAWEI Y330-U17"

    aput-object v2, v0, v1

    const/16 v1, 0x331

    const-string v2, "Huawei|Y336-A1|hwY336-A1|HUAWEI Y336-A1"

    aput-object v2, v0, v1

    const/16 v1, 0x332

    const-string v2, "Huawei|Y360-U03|HWY360-U|HUAWEI Y360-U03"

    aput-object v2, v0, v1

    const/16 v1, 0x333

    const-string v2, "Huawei|Y360-U12|HWY360-U|HUAWEI Y360-U12"

    aput-object v2, v0, v1

    const/16 v1, 0x334

    const-string v2, "Huawei|Y360-U23|HWY360-U|HUAWEI Y360-U23"

    aput-object v2, v0, v1

    const/16 v1, 0x335

    const-string v2, "Huawei|Y511-T00|HWY511-T|HUAWEI Y511-T00"

    aput-object v2, v0, v1

    const/16 v1, 0x336

    const-string v2, "Huawei|Y511-U10|HWY511-U|HUAWEI Y511-U10"

    aput-object v2, v0, v1

    const/16 v1, 0x337

    const-string v2, "Huawei|Y511-U251|HWY511-U|HUAWEI Y511-U251"

    aput-object v2, v0, v1

    const/16 v1, 0x338

    const-string v2, "Huawei|Y511-U30|HWY511-U|HUAWEI Y511-U30"

    aput-object v2, v0, v1

    const/16 v1, 0x339

    const-string v2, "Huawei|Y511-U30|HWY511-U|VIETTEL V8506"

    aput-object v2, v0, v1

    const/16 v1, 0x33a

    const-string v2, "Huawei|Y516-|HWY516-T|HUAWEI Y516-T00"

    aput-object v2, v0, v1

    const/16 v1, 0x33b

    const-string v2, "Huawei|Y518-T00|HWY518-T|HUAWEI Y518-T00"

    aput-object v2, v0, v1

    const/16 v1, 0x33c

    const-string v2, "Huawei|Y520-U03|HWY520-U|HUAWEI Y520-U03"

    aput-object v2, v0, v1

    const/16 v1, 0x33d

    const-string v2, "Huawei|Y520-U12|HWY520-U|HUAWEI Y520-U12"

    aput-object v2, v0, v1

    const/16 v1, 0x33e

    const-string v2, "Huawei|Y520-U22|HWY520-U|HUAWEI Y520-U22"

    aput-object v2, v0, v1

    const/16 v1, 0x33f

    const-string v2, "Huawei|Y520-U33|HWY520-U|HUAWEI Y520-U33"

    aput-object v2, v0, v1

    const/16 v1, 0x340

    const-string v2, "Huawei|Y523-L076|HWY523|HUAWEI Y523-L076"

    aput-object v2, v0, v1

    const/16 v1, 0x341

    const-string v2, "Huawei|Y523-L176|HWY523|HUAWEI Y523-L176"

    aput-object v2, v0, v1

    const/16 v1, 0x342

    const-string v2, "Huawei|Y530|hwY530-U00|HUAWEI Y530-U00"

    aput-object v2, v0, v1

    const/16 v1, 0x343

    const-string v2, "Huawei|Y530-U051|hwY530-U051|HUAWEI Y530"

    aput-object v2, v0, v1

    const/16 v1, 0x344

    const-string v2, "Huawei|Y530-U051|hwY530-U051|HUAWEI Y530-U051"

    aput-object v2, v0, v1

    const/16 v1, 0x345

    const-string v2, "Huawei|Y535|HWY535-C00|HUAWEI Y535-C00"

    aput-object v2, v0, v1

    const/16 v1, 0x346

    const-string v2, "Huawei|Y535D-C00|HWY535D-C00|HUAWEI Y535D-C00"

    aput-object v2, v0, v1

    const/16 v1, 0x347

    const-string v2, "Huawei|Y540-U01|HWY540-U|HUAWEI Y540-U01"

    aput-object v2, v0, v1

    const/16 v1, 0x348

    const-string v2, "Huawei|Y550-L01|hwY550-L01|HUAWEI Y550-L01"

    aput-object v2, v0, v1

    const/16 v1, 0x349

    const-string v2, "Huawei|Y550-L02|hwY550-L02|HUAWEI Y550-L02"

    aput-object v2, v0, v1

    const/16 v1, 0x34a

    const-string v2, "Huawei|Y550-L03|hwY550-L03|HUAWEI Y550"

    aput-object v2, v0, v1

    const/16 v1, 0x34b

    const-string v2, "Huawei|Y550-L03|hwY550-L03|HUAWEI Y550-L03"

    aput-object v2, v0, v1

    const/16 v1, 0x34c

    const-string v2, "Huawei|Y550-L03|hwY550-L03|Personal Huawei Y550"

    aput-object v2, v0, v1

    const/16 v1, 0x34d

    const-string v2, "Huawei|Y600|HWY600-U|HUAWEI Y600-U00"

    aput-object v2, v0, v1

    const/16 v1, 0x34e

    const-string v2, "Huawei|Y600|HWY600-U|HUAWEI Y600-U151"

    aput-object v2, v0, v1

    const/16 v1, 0x34f

    const-string v2, "Huawei|Y600|HWY600-U|HUAWEI Y600-U20"

    aput-object v2, v0, v1

    const/16 v1, 0x350

    const-string v2, "Huawei|Y600-U351|HWY600-U|HUAWEI Y600-U351"

    aput-object v2, v0, v1

    const/16 v1, 0x351

    const-string v2, "Huawei|Y600-U40|HWY600-U|HUAWEI Y600-U40"

    aput-object v2, v0, v1

    const/16 v1, 0x352

    const-string v2, "Huawei|Y600D-C00|HWY600D-C00|HUAWEI Y600D-C00"

    aput-object v2, v0, v1

    const/16 v1, 0x353

    const-string v2, "Huawei|Y625-U03|KVY625-U|Kavak Y625-U03"

    aput-object v2, v0, v1

    const/16 v1, 0x354

    const-string v2, "Huawei|Y625-U13|HWY625-U|HUAWEI Y625-U13"

    aput-object v2, v0, v1

    const/16 v1, 0x355

    const-string v2, "Huawei|Y625-U21|HWY625-U|HUAWEI Y625-U21"

    aput-object v2, v0, v1

    const/16 v1, 0x356

    const-string v2, "Huawei|Y625-U32|HWY625-U|HUAWEI Y625-U32"

    aput-object v2, v0, v1

    const/16 v1, 0x357

    const-string v2, "Huawei|Y625-U43|HWY625-U|HUAWEI Y625-U43"

    aput-object v2, v0, v1

    const/16 v1, 0x358

    const-string v2, "Huawei|Y625-U51|HWY625-U|HUAWEI Y625-U51"

    aput-object v2, v0, v1

    const/16 v1, 0x359

    const-string v2, "Huawei|Y635-CL00|hwY635|HUAWEI Y635-CL00"

    aput-object v2, v0, v1

    const/16 v1, 0x35a

    const-string v2, "Huawei|Y635-L03|hwY635|HUAWEI Y635-L03"

    aput-object v2, v0, v1

    const/16 v1, 0x35b

    const-string v2, "Huawei|Youth|hws7701u|Orinoquia Gran Roraima S7-702u"

    aput-object v2, v0, v1

    const/16 v1, 0x35c

    const-string v2, "Huawei|hw204HW|hw204HW|204HW"

    aput-object v2, v0, v1

    const/16 v1, 0x35d

    const-string v2, "Huawei|m881|hwm881|HUAWEI M881"

    aput-object v2, v0, v1

    const/16 v1, 0x35e

    const-string v2, "Huawei|t1_8p0|hws8701|MediaPad T1 8.0"

    aput-object v2, v0, v1

    const/16 v1, 0x35f

    const-string v2, "Huawei|t1_8p0|hws8701|S8-701u"

    aput-object v2, v0, v1

    const/16 v1, 0x360

    const-string v2, "Huawei|t1_8p0|hws8701|S8-701w"

    aput-object v2, v0, v1

    const/16 v1, 0x361

    const-string v2, "Intel|Etisalat E-20|zeeyabeach|BT230"

    aput-object v2, v0, v1

    const/16 v1, 0x362

    const-string v2, "Intel|Orange San Diego|AZ210A|AZ210A"

    aput-object v2, v0, v1

    const/16 v1, 0x363

    const-string v2, "Intel|Orange avec Intel Inside|AZ210B|AZ210B"

    aput-object v2, v0, v1

    const/16 v1, 0x364

    const-string v2, "Intel|TR10CD1(PVT2)|TR10CD1_4|TR10CD1"

    aput-object v2, v0, v1

    const/16 v1, 0x365

    const-string v2, "Intel|TR10CD1(PVT2)|TR10CD1_6|TR10CD1"

    aput-object v2, v0, v1

    const/16 v1, 0x366

    const-string v2, "Intel|TR10CS1 (PVT2)|TR10CS1_4|TR10CS1"

    aput-object v2, v0, v1

    const/16 v1, 0x367

    const-string v2, "Intel|Xolo X500|zeeyabeach|Xolo_X500"

    aput-object v2, v0, v1

    const/16 v1, 0x368

    const-string v2, "Intel|Yolo|zeeyabeach|BT210"

    aput-object v2, v0, v1

    const/16 v1, 0x369

    const-string v2, "Kobo|Kobo Arc|zeus|Arc"

    aput-object v2, v0, v1

    const/16 v1, 0x36a

    const-string v2, "LGE|070 touch|w3voip|LG-FL40L"

    aput-object v2, v0, v1

    const/16 v1, 0x36b

    const-string v2, "LGE|AKA|aka|LG-F520L"

    aput-object v2, v0, v1

    const/16 v1, 0x36c

    const-string v2, "LGE|AKA|aka|LG-F520S"

    aput-object v2, v0, v1

    const/16 v1, 0x36d

    const-string v2, "LGE|AKA|aka|LG-H788"

    aput-object v2, v0, v1

    const/16 v1, 0x36e

    const-string v2, "LGE|Ally|aloha|AS740"

    aput-object v2, v0, v1

    const/16 v1, 0x36f

    const-string v2, "LGE|Ally|aloha|Aloha"

    aput-object v2, v0, v1

    const/16 v1, 0x370

    const-string v2, "LGE|Ally|aloha|US740"

    aput-object v2, v0, v1

    const/16 v1, 0x371

    const-string v2, "LGE|Android TV|cosmo|LG Google TV"

    aput-object v2, v0, v1

    const/16 v1, 0x372

    const-string v2, "LGE|Android TV|eden|LG Android TV V4"

    aput-object v2, v0, v1

    const/16 v1, 0x373

    const-string v2, "LGE|Android TV|eden|LG Google TV G3 KR"

    aput-object v2, v0, v1

    const/16 v1, 0x374

    const-string v2, "LGE|Android TV G3|eden|LG Google TV G3"

    aput-object v2, v0, v1

    const/16 v1, 0x375

    const-string v2, "LGE|Enact|fx3q|VS890 4G"

    aput-object v2, v0, v1

    const/16 v1, 0x376

    const-string v2, "LGE|Escape|l1a|LG-P870"

    aput-object v2, v0, v1

    const/16 v1, 0x377

    const-string v2, "LGE|Eve|EVE|GW620"

    aput-object v2, v0, v1

    const/16 v1, 0x378

    const-string v2, "LGE|Eve|EVE|LG GW620"

    aput-object v2, v0, v1

    const/16 v1, 0x379

    const-string v2, "LGE|Eve|EVE|LG GW620F"

    aput-object v2, v0, v1

    const/16 v1, 0x37a

    const-string v2, "LGE|Eve|EVE|LG GW620R"

    aput-object v2, v0, v1

    const/16 v1, 0x37b

    const-string v2, "LGE|Eve|EVE|LG GW620g"

    aput-object v2, v0, v1

    const/16 v1, 0x37c

    const-string v2, "LGE|Eve|EVE|LG KH5200"

    aput-object v2, v0, v1

    const/16 v1, 0x37d

    const-string v2, "LGE|Eve|EVE|LG-GW620"

    aput-object v2, v0, v1

    const/16 v1, 0x37e

    const-string v2, "LGE|Eve|EVE|LG-KH5200"

    aput-object v2, v0, v1

    const/16 v1, 0x37f

    const-string v2, "LGE|F60|e2|LG-D390"

    aput-object v2, v0, v1

    const/16 v1, 0x380

    const-string v2, "LGE|F60|e2|LG-D390AR"

    aput-object v2, v0, v1

    const/16 v1, 0x381

    const-string v2, "LGE|F60|e2ds|LG-D392"

    aput-object v2, v0, v1

    const/16 v1, 0x382

    const-string v2, "LGE|F60|e2n|LG-D390n"

    aput-object v2, v0, v1

    const/16 v1, 0x383

    const-string v2, "LGE|F60|e2nac|LG-D393"

    aput-object v2, v0, v1

    const/16 v1, 0x384

    const-string v2, "LGE|F60|e2nam|LGMS395"

    aput-object v2, v0, v1

    const/16 v1, 0x385

    const-string v2, "LGE|F60|e2nas|LGLS660"

    aput-object v2, v0, v1

    const/16 v1, 0x386

    const-string v2, "LGE|F60|e2nav|VS810PP"

    aput-object v2, v0, v1

    const/16 v1, 0x387

    const-string v2, "LGE|G Pad 10.1|e9wifi|LG-V700"

    aput-object v2, v0, v1

    const/16 v1, 0x388

    const-string v2, "LGE|G Pad 10.1|e9wifin|LG-V700n"

    aput-object v2, v0, v1

    const/16 v1, 0x389

    const-string v2, "LGE|G Pad 10.1 LTE|e9lte|LG-VK700"

    aput-object v2, v0, v1

    const/16 v1, 0x38a

    const-string v2, "LGE|G Pad 10.1 LTE|e9lte|VK700"

    aput-object v2, v0, v1

    const/16 v1, 0x38b

    const-string v2, "LGE|G Pad 7.0|e7wifi|LG-V400"

    aput-object v2, v0, v1

    const/16 v1, 0x38c

    const-string v2, "LGE|G Pad 7.0|e7wifi|LG-V400Y1"

    aput-object v2, v0, v1

    const/16 v1, 0x38d

    const-string v2, "LGE|G Pad 7.0 LTE|e7lte|LG-V410"

    aput-object v2, v0, v1

    const/16 v1, 0x38e

    const-string v2, "LGE|G Pad 7.0 LTE|e7lte|LGUK410"

    aput-object v2, v0, v1

    const/16 v1, 0x38f

    const-string v2, "LGE|G Pad 8.0|e8wifi|LG-V480"

    aput-object v2, v0, v1

    const/16 v1, 0x390

    const-string v2, "LGE|G Pro Lite|luv90ds|LG-D685"

    aput-object v2, v0, v1

    const/16 v1, 0x391

    const-string v2, "LGE|G Pro Lite|luv90ds|LG-D686"

    aput-object v2, v0, v1

    const/16 v1, 0x392

    const-string v2, "LGE|G Pro Lite|luv90nfc|LG-D683"

    aput-object v2, v0, v1

    const/16 v1, 0x393

    const-string v2, "LGE|G Pro Lite|luv90nfc|LG-D684"

    aput-object v2, v0, v1

    const/16 v1, 0x394

    const-string v2, "LGE|G Pro Lite|luv90ss|LG-D680"

    aput-object v2, v0, v1

    const/16 v1, 0x395

    const-string v2, "LGE|G Pro Lite|luv90ss|LG-D681"

    aput-object v2, v0, v1

    const/16 v1, 0x396

    const-string v2, "LGE|G Pro Lite|luv90ss|LG-D682"

    aput-object v2, v0, v1

    const/16 v1, 0x397

    const-string v2, "LGE|G Pro Lite|luv90ss|LG-D682TR"

    aput-object v2, v0, v1

    const/16 v1, 0x398

    const-string v2, "LGE|G Pro2|b1|LG-F350K"

    aput-object v2, v0, v1

    const/16 v1, 0x399

    const-string v2, "LGE|G Pro2|b1|LG-F350L"

    aput-object v2, v0, v1

    const/16 v1, 0x39a

    const-string v2, "LGE|G Pro2|b1|LG-F350S"

    aput-object v2, v0, v1

    const/16 v1, 0x39b

    const-string v2, "LGE|G Pro2|b1w|LG-D838"

    aput-object v2, v0, v1

    const/16 v1, 0x39c

    const-string v2, "LGE|G Vista|b2l|LG-D631"

    aput-object v2, v0, v1

    const/16 v1, 0x39d

    const-string v2, "LGE|G Vista|b2lds|LG-D690"

    aput-object v2, v0, v1

    const/16 v1, 0x39e

    const-string v2, "LGE|G Vista|x10|VS880"

    aput-object v2, v0, v1

    const/16 v1, 0x39f

    const-string v2, "LGE|G pad 8.0|e8wifi|LG-V480"

    aput-object v2, v0, v1

    const/16 v1, 0x3a0

    const-string v2, "LGE|G pad 8.0 LTE|e8lte|LG-V490"

    aput-object v2, v0, v1

    const/16 v1, 0x3a1

    const-string v2, "LGE|G2 MINI|g2m|LG-D620"

    aput-object v2, v0, v1

    const/16 v1, 0x3a2

    const-string v2, "LGE|G2 MINI|g2mds|LG-D618"

    aput-object v2, v0, v1

    const/16 v1, 0x3a3

    const-string v2, "LGE|G2 MINI|g2mss|LG-D610"

    aput-object v2, v0, v1

    const/16 v1, 0x3a4

    const-string v2, "LGE|G2 MINI|g2mss|LG-D610AR"

    aput-object v2, v0, v1

    const/16 v1, 0x3a5

    const-string v2, "LGE|G2 MINI|g2mss|LG-D610TR"

    aput-object v2, v0, v1

    const/16 v1, 0x3a6

    const-string v2, "LGE|G2 MINI|g2mv|LG-D625"

    aput-object v2, v0, v1

    const/16 v1, 0x3a7

    const-string v2, "LGE|G2 mini 4G LTE|g2mv|LG-D625"

    aput-object v2, v0, v1

    const/16 v1, 0x3a8

    const-string v2, "LGE|G3 Beat|jagdsnm|LG-D726"

    aput-object v2, v0, v1

    const/16 v1, 0x3a9

    const-string v2, "LGE|G3 Beat|jagdsnm|LG-D728"

    aput-object v2, v0, v1

    const/16 v1, 0x3aa

    const-string v2, "LGE|G3 Beat|jagdsnm|LG-D729"

    aput-object v2, v0, v1

    const/16 v1, 0x3ab

    const-string v2, "LGE|G3 Beat|jagn|LG-F470K"

    aput-object v2, v0, v1

    const/16 v1, 0x3ac

    const-string v2, "LGE|G3 Beat|jagn|LG-F470L"

    aput-object v2, v0, v1

    const/16 v1, 0x3ad

    const-string v2, "LGE|G3 Beat|jagn|LG-F470S"

    aput-object v2, v0, v1

    const/16 v1, 0x3ae

    const-string v2, "LGE|G3 Beat|jagnm|LG-D722J"

    aput-object v2, v0, v1

    const/16 v1, 0x3af

    const-string v2, "LGE|G3 Beat|jagnm|LG-D727"

    aput-object v2, v0, v1

    const/16 v1, 0x3b0

    const-string v2, "LGE|G3 S|jag3gds|LG-D724"

    aput-object v2, v0, v1

    const/16 v1, 0x3b1

    const-string v2, "LGE|G3 S|jag3gss|LG-D723"

    aput-object v2, v0, v1

    const/16 v1, 0x3b2

    const-string v2, "LGE|G3 S|jagnm|LG-D722"

    aput-object v2, v0, v1

    const/16 v1, 0x3b3

    const-string v2, "LGE|G3 S|jagnm|LG-D722AR"

    aput-object v2, v0, v1

    const/16 v1, 0x3b4

    const-string v2, "LGE|G3 S|jagnm|LG-D725PR"

    aput-object v2, v0, v1

    const/16 v1, 0x3b5

    const-string v2, "LGE|G3 Screen|liger|LG-F490L"

    aput-object v2, v0, v1

    const/16 v1, 0x3b6

    const-string v2, "LGE|G3 Stylus|b2ldsn|LG-D690n"

    aput-object v2, v0, v1

    const/16 v1, 0x3b7

    const-string v2, "LGE|G3 Stylus|b2lss|LG-D693"

    aput-object v2, v0, v1

    const/16 v1, 0x3b8

    const-string v2, "LGE|G3 Stylus|b2lss|LG-D693AR"

    aput-object v2, v0, v1

    const/16 v1, 0x3b9

    const-string v2, "LGE|G3 Stylus|b2lss|LG-D693TR"

    aput-object v2, v0, v1

    const/16 v1, 0x3ba

    const-string v2, "LGE|G3 Stylus|b2lssn|LG-D693n"

    aput-object v2, v0, v1

    const/16 v1, 0x3bb

    const-string v2, "LGE|G3 Vigor|jagc|LGLS885"

    aput-object v2, v0, v1

    const/16 v1, 0x3bc

    const-string v2, "LGE|G3 Vigor|jagnm|LG-D725"

    aput-object v2, v0, v1

    const/16 v1, 0x3bd

    const-string v2, "LGE|GA7800|eden|LG Android TV V4"

    aput-object v2, v0, v1

    const/16 v1, 0x3be

    const-string v2, "LGE|GPAD 7.0 LTE|e7lte|VK410"

    aput-object v2, v0, v1

    const/16 v1, 0x3bf

    const-string v2, "LGE|Gpad 7.0|e7wifi|LG-V400"

    aput-object v2, v0, v1

    const/16 v1, 0x3c0

    const-string v2, "LGE|Gx2|b2ln|LG-F430L"

    aput-object v2, v0, v1

    const/16 v1, 0x3c1

    const-string v2, "LGE|Ice cream Smart|vfpv|LG-F440L"

    aput-object v2, v0, v1

    const/16 v1, 0x3c2

    const-string v2, "LGE|Intuition|batman_vzw|VS950 4G"

    aput-object v2, v0, v1

    const/16 v1, 0x3c3

    const-string v2, "LGE|L Bello|luv80ds|LG-D335"

    aput-object v2, v0, v1

    const/16 v1, 0x3c4

    const-string v2, "LGE|L Bello|luv80ds|LG-D335E"

    aput-object v2, v0, v1

    const/16 v1, 0x3c5

    const-string v2, "LGE|L Bello|luv80ds|LG-D337"

    aput-object v2, v0, v1

    const/16 v1, 0x3c6

    const-string v2, "LGE|L Fino|l70p|LG-D290"

    aput-object v2, v0, v1

    const/16 v1, 0x3c7

    const-string v2, "LGE|L Fino|l70p|LG-D290AR"

    aput-object v2, v0, v1

    const/16 v1, 0x3c8

    const-string v2, "LGE|L Fino|l70pds|LG-D295"

    aput-object v2, v0, v1

    const/16 v1, 0x3c9

    const-string v2, "LGE|L Fino|l70pn|LG-D290"

    aput-object v2, v0, v1

    const/16 v1, 0x3ca

    const-string v2, "LGE|L20|luv20ds|LG-D105"

    aput-object v2, v0, v1

    const/16 v1, 0x3cb

    const-string v2, "LGE|L20|luv20ss|LG-D100"

    aput-object v2, v0, v1

    const/16 v1, 0x3cc

    const-string v2, "LGE|L20|luv20ss|LG-D100AR"

    aput-object v2, v0, v1

    const/16 v1, 0x3cd

    const-string v2, "LGE|L20|luv20ts|LG-D107"

    aput-object v2, v0, v1

    const/16 v1, 0x3ce

    const-string v2, "LGE|L30 Sporty|luv30ds|LG-D125"

    aput-object v2, v0, v1

    const/16 v1, 0x3cf

    const-string v2, "LGE|L30 Sporty|luv30ss|LG-D120"

    aput-object v2, v0, v1

    const/16 v1, 0x3d0

    const-string v2, "LGE|L30 Sporty|luv30ss|LG-D120AR"

    aput-object v2, v0, v1

    const/16 v1, 0x3d1

    const-string v2, "LGE|L45|lo_2|LG-X130g"

    aput-object v2, v0, v1

    const/16 v1, 0x3d2

    const-string v2, "LGE|L45|lo_2_ds|LG-X132"

    aput-object v2, v0, v1

    const/16 v1, 0x3d3

    const-string v2, "LGE|L50 Sporty|luv50ds|LG-D221"

    aput-object v2, v0, v1

    const/16 v1, 0x3d4

    const-string v2, "LGE|L50 Sporty|luv50ds|LG-D227"

    aput-object v2, v0, v1

    const/16 v1, 0x3d5

    const-string v2, "LGE|L50 Sporty|luv50ss|LG-D213"

    aput-object v2, v0, v1

    const/16 v1, 0x3d6

    const-string v2, "LGE|L50 Sporty|luv50ss|LG-D213AR"

    aput-object v2, v0, v1

    const/16 v1, 0x3d7

    const-string v2, "LGE|L50 Sporty|luv50ssn|LG-D213"

    aput-object v2, v0, v1

    const/16 v1, 0x3d8

    const-string v2, "LGE|L60|lo_1|LG-X135"

    aput-object v2, v0, v1

    const/16 v1, 0x3d9

    const-string v2, "LGE|L60|lo_1|LG-X137"

    aput-object v2, v0, v1

    const/16 v1, 0x3da

    const-string v2, "LGE|L60|lo_1|LG-X140"

    aput-object v2, v0, v1

    const/16 v1, 0x3db

    const-string v2, "LGE|L60|lo_1|LG-X145"

    aput-object v2, v0, v1

    const/16 v1, 0x3dc

    const-string v2, "LGE|L60|lo_1|LG-X147"

    aput-object v2, v0, v1

    const/16 v1, 0x3dd

    const-string v2, "LGE|L65|w55|LG-D280"

    aput-object v2, v0, v1

    const/16 v1, 0x3de

    const-string v2, "LGE|L65|w55ds|LG-D285"

    aput-object v2, v0, v1

    const/16 v1, 0x3df

    const-string v2, "LGE|L65|w55n|LG-D280"

    aput-object v2, v0, v1

    const/16 v1, 0x3e0

    const-string v2, "LGE|L7 II|vee7e|LG-P712"

    aput-object v2, v0, v1

    const/16 v1, 0x3e1

    const-string v2, "LGE|L7 II|vee7e|LG-P714"

    aput-object v2, v0, v1

    const/16 v1, 0x3e2

    const-string v2, "LGE|L7 II Dual|vee7ds|LG-P716"

    aput-object v2, v0, v1

    const/16 v1, 0x3e3

    const-string v2, "LGE|L70|w5|LG-D320"

    aput-object v2, v0, v1

    const/16 v1, 0x3e4

    const-string v2, "LGE|L70|w5|LG-D320AR"

    aput-object v2, v0, v1

    const/16 v1, 0x3e5

    const-string v2, "LGE|L70|w5|LGAS323"

    aput-object v2, v0, v1

    const/16 v1, 0x3e6

    const-string v2, "LGE|L70|w5c|LGLS620"

    aput-object v2, v0, v1

    const/16 v1, 0x3e7

    const-string v2, "LGE|L70|w5ds|LG-D325"

    aput-object v2, v0, v1

    const/16 v1, 0x3e8

    const-string v2, "LGE|L70|w5n|LG-D320"

    aput-object v2, v0, v1

    const/16 v1, 0x3e9

    const-string v2, "LGE|L70|w5n|LG-D329"

    aput-object v2, v0, v1

    const/16 v1, 0x3ea

    const-string v2, "LGE|L70|w5ts|LG-D340f8"

    aput-object v2, v0, v1

    const/16 v1, 0x3eb

    const-string v2, "LGE|L70 CDMA|w5c|LGL41C"

    aput-object v2, v0, v1

    const/16 v1, 0x3ec

    const-string v2, "LGE|L90|w7|LG-D400"

    aput-object v2, v0, v1

    const/16 v1, 0x3ed

    const-string v2, "LGE|L90|w7|LG-D405"

    aput-object v2, v0, v1

    const/16 v1, 0x3ee

    const-string v2, "LGE|L90|w7|LG-D415"

    aput-object v2, v0, v1

    const/16 v1, 0x3ef

    const-string v2, "LGE|L90|w7ds|LG-D410"

    aput-object v2, v0, v1

    const/16 v1, 0x3f0

    const-string v2, "LGE|L90|w7n|LG-D400"

    aput-object v2, v0, v1

    const/16 v1, 0x3f1

    const-string v2, "LGE|L90|w7n|LG-D405"

    aput-object v2, v0, v1

    const/16 v1, 0x3f2

    const-string v2, "LGE|L90 Dual|w7dsn|LG-D410"

    aput-object v2, v0, v1

    const/16 v1, 0x3f3

    const-string v2, "LGE|LBello|luv80ss|LG-D331"

    aput-object v2, v0, v1

    const/16 v1, 0x3f4

    const-string v2, "LGE|LBello|luv80ss|LG-D331AR"

    aput-object v2, v0, v1

    const/16 v1, 0x3f5

    const-string v2, "LGE|LG AKA|aka|LG-H788"

    aput-object v2, v0, v1

    const/16 v1, 0x3f6

    const-string v2, "LGE|LG Connect 4G|cayman|LG-MS840"

    aput-object v2, v0, v1

    const/16 v1, 0x3f7

    const-string v2, "LGE|LG DOUBLEPLAY|lgc729|LG-C729"

    aput-object v2, v0, v1

    const/16 v1, 0x3f8

    const-string v2, "LGE|LG Enlighten|VS700|LG-VS700"

    aput-object v2, v0, v1

    const/16 v1, 0x3f9

    const-string v2, "LGE|LG Enlighten|VS700|LG-VS700PP"

    aput-object v2, v0, v1

    const/16 v1, 0x3fa

    const-string v2, "LGE|LG Escape2|c70n|LG-H443"

    aput-object v2, v0, v1

    const/16 v1, 0x3fb

    const-string v2, "LGE|LG Esteem|MS910|LG-MS910"

    aput-object v2, v0, v1

    const/16 v1, 0x3fc

    const-string v2, "LGE|LG F70|f70|LGL31L"

    aput-object v2, v0, v1

    const/16 v1, 0x3fd

    const-string v2, "LGE|LG F70|f70n|LG-D315"

    aput-object v2, v0, v1

    const/16 v1, 0x3fe

    const-string v2, "LGE|LG F70|f70n|LG-D315l"

    aput-object v2, v0, v1

    const/16 v1, 0x3ff

    const-string v2, "LGE|LG F70|f70n|LG-F370K"

    aput-object v2, v0, v1

    const/16 v1, 0x400

    const-string v2, "LGE|LG F70|f70n|LG-F370L"

    aput-object v2, v0, v1

    const/16 v1, 0x401

    const-string v2, "LGE|LG F70|f70n|LG-F370S"

    aput-object v2, v0, v1

    const/16 v1, 0x402

    const-string v2, "LGE|LG G Flex|zee|LG-D950"

    aput-object v2, v0, v1

    const/16 v1, 0x403

    const-string v2, "LGE|LG G Flex|zee|LG-D950G"

    aput-object v2, v0, v1

    const/16 v1, 0x404

    const-string v2, "LGE|LG G Flex|zee|LG-D951"

    aput-object v2, v0, v1

    const/16 v1, 0x405

    const-string v2, "LGE|LG G Flex|zee|LG-D955"

    aput-object v2, v0, v1

    const/16 v1, 0x406

    const-string v2, "LGE|LG G Flex|zee|LG-D956"

    aput-object v2, v0, v1

    const/16 v1, 0x407

    const-string v2, "LGE|LG G Flex|zee|LG-D958"

    aput-object v2, v0, v1

    const/16 v1, 0x408

    const-string v2, "LGE|LG G Flex|zee|LG-D959"

    aput-object v2, v0, v1

    const/16 v1, 0x409

    const-string v2, "LGE|LG G Flex|zee|LG-F340K"

    aput-object v2, v0, v1

    const/16 v1, 0x40a

    const-string v2, "LGE|LG G Flex|zee|LG-F340L"

    aput-object v2, v0, v1

    const/16 v1, 0x40b

    const-string v2, "LGE|LG G Flex|zee|LG-F340S"

    aput-object v2, v0, v1

    const/16 v1, 0x40c

    const-string v2, "LGE|LG G Flex|zee|LG-LS995"

    aput-object v2, v0, v1

    const/16 v1, 0x40d

    const-string v2, "LGE|LG G Flex|zee|LGL23"

    aput-object v2, v0, v1

    const/16 v1, 0x40e

    const-string v2, "LGE|LG G Flex2|z2|LG-F510K"

    aput-object v2, v0, v1

    const/16 v1, 0x40f

    const-string v2, "LGE|LG G Flex2|z2|LG-F510L"

    aput-object v2, v0, v1

    const/16 v1, 0x410

    const-string v2, "LGE|LG G Flex2|z2|LG-F510S"

    aput-object v2, v0, v1

    const/16 v1, 0x411

    const-string v2, "LGE|LG G Flex2|z2|LG-H950"

    aput-object v2, v0, v1

    const/16 v1, 0x412

    const-string v2, "LGE|LG G Flex2|z2|LG-H955"

    aput-object v2, v0, v1

    const/16 v1, 0x413

    const-string v2, "LGE|LG G Flex2|z2|LG-H959"

    aput-object v2, v0, v1

    const/16 v1, 0x414

    const-string v2, "LGE|LG G Flex2|z2|LGLS996"

    aput-object v2, v0, v1

    const/16 v1, 0x415

    const-string v2, "LGE|LG G Flex2|z2|LGUS995"

    aput-object v2, v0, v1

    const/16 v1, 0x416

    const-string v2, "LGE|LG G Pad 8.0 LTE|e8lte|LG-P490L"

    aput-object v2, v0, v1

    const/16 v1, 0x417

    const-string v2, "LGE|LG G Pad 8.3|awifi|LG-V500"

    aput-object v2, v0, v1

    const/16 v1, 0x418

    const-string v2, "LGE|LG G Pad 8.3 LTE|altev|VK810 4G"

    aput-object v2, v0, v1

    const/16 v1, 0x419

    const-string v2, "LGE|LG G Pad 8.3 homeBoy|awifi070u|LG-V507L"

    aput-object v2, v0, v1

    const/16 v1, 0x41a

    const-string v2, "LGE|LG G Pad F7.0|e7iilte|LGLK430"

    aput-object v2, v0, v1

    const/16 v1, 0x41b

    const-string v2, "LGE|LG G2|g2|LG-D800"

    aput-object v2, v0, v1

    const/16 v1, 0x41c

    const-string v2, "LGE|LG G2|g2|LG-D801"

    aput-object v2, v0, v1

    const/16 v1, 0x41d

    const-string v2, "LGE|LG G2|g2|LG-D802"

    aput-object v2, v0, v1

    const/16 v1, 0x41e

    const-string v2, "LGE|LG G2|g2|LG-D802T"

    aput-object v2, v0, v1

    const/16 v1, 0x41f

    const-string v2, "LGE|LG G2|g2|LG-D802TR"

    aput-object v2, v0, v1

    const/16 v1, 0x420

    const-string v2, "LGE|LG G2|g2|LG-D803"

    aput-object v2, v0, v1

    const/16 v1, 0x421

    const-string v2, "LGE|LG G2|g2|LG-D805"

    aput-object v2, v0, v1

    const/16 v1, 0x422

    const-string v2, "LGE|LG G2|g2|LG-D806"

    aput-object v2, v0, v1

    const/16 v1, 0x423

    const-string v2, "LGE|LG G2|g2|LG-F320K"

    aput-object v2, v0, v1

    const/16 v1, 0x424

    const-string v2, "LGE|LG G2|g2|LG-F320L"

    aput-object v2, v0, v1

    const/16 v1, 0x425

    const-string v2, "LGE|LG G2|g2|LG-F320S"

    aput-object v2, v0, v1

    const/16 v1, 0x426

    const-string v2, "LGE|LG G2|g2|LG-LS980"

    aput-object v2, v0, v1

    const/16 v1, 0x427

    const-string v2, "LGE|LG G2|g2|VS980 4G"

    aput-object v2, v0, v1

    const/16 v1, 0x428

    const-string v2, "LGE|LG G3|g3|AS985"

    aput-object v2, v0, v1

    const/16 v1, 0x429

    const-string v2, "LGE|LG G3|g3|LG-AS990"

    aput-object v2, v0, v1

    const/16 v1, 0x42a

    const-string v2, "LGE|LG G3|g3|LG-D850"

    aput-object v2, v0, v1

    const/16 v1, 0x42b

    const-string v2, "LGE|LG G3|g3|LG-D851"

    aput-object v2, v0, v1

    const/16 v1, 0x42c

    const-string v2, "LGE|LG G3|g3|LG-D852"

    aput-object v2, v0, v1

    const/16 v1, 0x42d

    const-string v2, "LGE|LG G3|g3|LG-D852G"

    aput-object v2, v0, v1

    const/16 v1, 0x42e

    const-string v2, "LGE|LG G3|g3|LG-D855"

    aput-object v2, v0, v1

    const/16 v1, 0x42f

    const-string v2, "LGE|LG G3|g3|LG-D856"

    aput-object v2, v0, v1

    const/16 v1, 0x430

    const-string v2, "LGE|LG G3|g3|LG-D857"

    aput-object v2, v0, v1

    const/16 v1, 0x431

    const-string v2, "LGE|LG G3|g3|LG-D858"

    aput-object v2, v0, v1

    const/16 v1, 0x432

    const-string v2, "LGE|LG G3|g3|LG-D858HK"

    aput-object v2, v0, v1

    const/16 v1, 0x433

    const-string v2, "LGE|LG G3|g3|LG-D859"

    aput-object v2, v0, v1

    const/16 v1, 0x434

    const-string v2, "LGE|LG G3|g3|LG-F400K"

    aput-object v2, v0, v1

    const/16 v1, 0x435

    const-string v2, "LGE|LG G3|g3|LG-F400L"

    aput-object v2, v0, v1

    const/16 v1, 0x436

    const-string v2, "LGE|LG G3|g3|LG-F400S"

    aput-object v2, v0, v1

    const/16 v1, 0x437

    const-string v2, "LGE|LG G3|g3|LGL24"

    aput-object v2, v0, v1

    const/16 v1, 0x438

    const-string v2, "LGE|LG G3|g3|LGLS990"

    aput-object v2, v0, v1

    const/16 v1, 0x439

    const-string v2, "LGE|LG G3|g3|LGUS990"

    aput-object v2, v0, v1

    const/16 v1, 0x43a

    const-string v2, "LGE|LG G3|g3|LGV31"

    aput-object v2, v0, v1

    const/16 v1, 0x43b

    const-string v2, "LGE|LG G3|g3|VS985 4G"

    aput-object v2, v0, v1

    const/16 v1, 0x43c

    const-string v2, "LGE|LG G3 A|tigers|LG-F410S"

    aput-object v2, v0, v1

    const/16 v1, 0x43d

    const-string v2, "LGE|LG G3 Cat.6|tiger6|LG-F460K"

    aput-object v2, v0, v1

    const/16 v1, 0x43e

    const-string v2, "LGE|LG G3 Cat.6|tiger6|LG-F460L"

    aput-object v2, v0, v1

    const/16 v1, 0x43f

    const-string v2, "LGE|LG G3 Cat.6|tiger6|LG-F460S"

    aput-object v2, v0, v1

    const/16 v1, 0x440

    const-string v2, "LGE|LG Gx|omega|LG-F310L"

    aput-object v2, v0, v1

    const/16 v1, 0x441

    const-string v2, "LGE|LG Gx|omegar|LG-F310LR"

    aput-object v2, v0, v1

    const/16 v1, 0x442

    const-string v2, "LGE|LG L39C|l4ii_cdma|LGL39C"

    aput-object v2, v0, v1

    const/16 v1, 0x443

    const-string v2, "LGE|LG L80 Dual|w6ds|LG-D380"

    aput-object v2, v0, v1

    const/16 v1, 0x444

    const-string v2, "LGE|LG L80 Dual|w6ds|LG-D385"

    aput-object v2, v0, v1

    const/16 v1, 0x445

    const-string v2, "LGE|LG L80 Single|w6|LG-D370"

    aput-object v2, v0, v1

    const/16 v1, 0x446

    const-string v2, "LGE|LG L80 Single|w6|LG-D373"

    aput-object v2, v0, v1

    const/16 v1, 0x447

    const-string v2, "LGE|LG L80 Single|w6|LG-D375"

    aput-object v2, v0, v1

    const/16 v1, 0x448

    const-string v2, "LGE|LG L80 Single|w6|LG-D375AR"

    aput-object v2, v0, v1

    const/16 v1, 0x449

    const-string v2, "LGE|LG Leon|my50|LG-H320"

    aput-object v2, v0, v1

    const/16 v1, 0x44a

    const-string v2, "LGE|LG Leon|my50ds|LG-H324"

    aput-object v2, v0, v1

    const/16 v1, 0x44b

    const-string v2, "LGE|LG Leon TV|my50ds|LG-H326"

    aput-object v2, v0, v1

    const/16 v1, 0x44c

    const-string v2, "LGE|LG Lucid|cayman|VS840 4G"

    aput-object v2, v0, v1

    const/16 v1, 0x44d

    const-string v2, "LGE|LG Lucid|cayman|VS840PP"

    aput-object v2, v0, v1

    const/16 v1, 0x44e

    const-string v2, "LGE|LG Lucid 2|l1v|VS870 4G"

    aput-object v2, v0, v1

    const/16 v1, 0x44f

    const-string v2, "LGE|LG Lucid 3|x5|VS876"

    aput-object v2, v0, v1

    const/16 v1, 0x450

    const-string v2, "LGE|LG Magna|my90ds|LG-H502"

    aput-object v2, v0, v1

    const/16 v1, 0x451

    const-string v2, "LGE|LG Motion 4G|l0|LG-MS770"

    aput-object v2, v0, v1

    const/16 v1, 0x452

    const-string v2, "LGE|LG OPTIMUS M+|m3_mpcs_us|LG-MS695"

    aput-object v2, v0, v1

    const/16 v1, 0x453

    const-string v2, "LGE|LG OPTIMUS ZIP|lgl75c|LGL75C"

    aput-object v2, v0, v1

    const/16 v1, 0x454

    const-string v2, "LGE|LG Optimus 3D|cosmopolitan|LG-P920"

    aput-object v2, v0, v1

    const/16 v1, 0x455

    const-string v2, "LGE|LG Optimus 3D|cosmopolitan|LG-P925g"

    aput-object v2, v0, v1

    const/16 v1, 0x456

    const-string v2, "LGE|LG Optimus 3D|cosmopolitan|LG-SU760"

    aput-object v2, v0, v1

    const/16 v1, 0x457

    const-string v2, "LGE|LG Optimus Elite|m3s|LG-LS696"

    aput-object v2, v0, v1

    const/16 v1, 0x458

    const-string v2, "LGE|LG Optimus F3Q|fx3q|LG-D520"

    aput-object v2, v0, v1

    const/16 v1, 0x459

    const-string v2, "LGE|LG Optimus F7|fx1|LG-AS780"

    aput-object v2, v0, v1

    const/16 v1, 0x45a

    const-string v2, "LGE|LG Optimus F7|fx1|LG-LG870"

    aput-object v2, v0, v1

    const/16 v1, 0x45b

    const-string v2, "LGE|LG Optimus F7|fx1|LG-US780"

    aput-object v2, v0, v1

    const/16 v1, 0x45c

    const-string v2, "LGE|LG Optimus G|geeb|LG-E970"

    aput-object v2, v0, v1

    const/16 v1, 0x45d

    const-string v2, "LGE|LG Optimus G|geeb|LG-E971"

    aput-object v2, v0, v1

    const/16 v1, 0x45e

    const-string v2, "LGE|LG Optimus G|geeb|LG-E973"

    aput-object v2, v0, v1

    const/16 v1, 0x45f

    const-string v2, "LGE|LG Optimus G|geehdc|L-01E"

    aput-object v2, v0, v1

    const/16 v1, 0x460

    const-string v2, "LGE|LG Optimus G|geehdc|LGL21"

    aput-object v2, v0, v1

    const/16 v1, 0x461

    const-string v2, "LGE|LG Optimus G|geehrc|LG-E975"

    aput-object v2, v0, v1

    const/16 v1, 0x462

    const-string v2, "LGE|LG Optimus G|geehrc|LG-E975K"

    aput-object v2, v0, v1

    const/16 v1, 0x463

    const-string v2, "LGE|LG Optimus G|geehrc|LG-E975T"

    aput-object v2, v0, v1

    const/16 v1, 0x464

    const-string v2, "LGE|LG Optimus G|geehrc|LG-E976"

    aput-object v2, v0, v1

    const/16 v1, 0x465

    const-string v2, "LGE|LG Optimus G|geehrc|LG-E977"

    aput-object v2, v0, v1

    const/16 v1, 0x466

    const-string v2, "LGE|LG Optimus G|geehrc|LG-E987"

    aput-object v2, v0, v1

    const/16 v1, 0x467

    const-string v2, "LGE|LG Optimus G|geehrc|LG-F180K"

    aput-object v2, v0, v1

    const/16 v1, 0x468

    const-string v2, "LGE|LG Optimus G|geehrc|LG-F180S"

    aput-object v2, v0, v1

    const/16 v1, 0x469

    const-string v2, "LGE|LG Optimus G|geehrc4g|LG-F180L"

    aput-object v2, v0, v1

    const/16 v1, 0x46a

    const-string v2, "LGE|LG Optimus G|geehrc4g|LG-LS970"

    aput-object v2, v0, v1

    const/16 v1, 0x46b

    const-string v2, "LGE|LG Optimus G Pro|geefhd|LG-E980"

    aput-object v2, v0, v1

    const/16 v1, 0x46c

    const-string v2, "LGE|LG Optimus G Pro|geefhd|LG-E980h"

    aput-object v2, v0, v1

    const/16 v1, 0x46d

    const-string v2, "LGE|LG Optimus G Pro|geefhd|LG-E981h"

    aput-object v2, v0, v1

    const/16 v1, 0x46e

    const-string v2, "LGE|LG Optimus G Pro|geefhd|LG-E986"

    aput-object v2, v0, v1

    const/16 v1, 0x46f

    const-string v2, "LGE|LG Optimus G Pro|geefhd|LG-E988"

    aput-object v2, v0, v1

    const/16 v1, 0x470

    const-string v2, "LGE|LG Optimus G Pro|geefhd|LG-E989"

    aput-object v2, v0, v1

    const/16 v1, 0x471

    const-string v2, "LGE|LG Optimus G Pro|geefhd|LG-F240K"

    aput-object v2, v0, v1

    const/16 v1, 0x472

    const-string v2, "LGE|LG Optimus G Pro|geefhd|LG-F240S"

    aput-object v2, v0, v1

    const/16 v1, 0x473

    const-string v2, "LGE|LG Optimus G Pro|geefhd4g|LG-F240L"

    aput-object v2, v0, v1

    const/16 v1, 0x474

    const-string v2, "LGE|LG Optimus HUB|univa_222-01|LG-E510"

    aput-object v2, v0, v1

    const/16 v1, 0x475

    const-string v2, "LGE|LG Optimus HUB|univa_arb-xx|LG-E510"

    aput-object v2, v0, v1

    const/16 v1, 0x476

    const-string v2, "LGE|LG Optimus HUB|univa_cis-xxx|LG-E510"

    aput-object v2, v0, v1

    const/16 v1, 0x477

    const-string v2, "LGE|LG Optimus HUB|univa_esa-xx|LG-E510"

    aput-object v2, v0, v1

    const/16 v1, 0x478

    const-string v2, "LGE|LG Optimus HUB|univa_eur-xx|LG-E510"

    aput-object v2, v0, v1

    const/16 v1, 0x479

    const-string v2, "LGE|LG Optimus HUB|univa_open-eu|LG-E510"

    aput-object v2, v0, v1

    const/16 v1, 0x47a

    const-string v2, "LGE|LG Optimus HUB|univa_tur-xx|LG-E510"

    aput-object v2, v0, v1

    const/16 v1, 0x47b

    const-string v2, "LGE|LG Optimus L1II|v1|LG-E410"

    aput-object v2, v0, v1

    const/16 v1, 0x47c

    const-string v2, "LGE|LG Optimus L1II|v1|LG-E410B"

    aput-object v2, v0, v1

    const/16 v1, 0x47d

    const-string v2, "LGE|LG Optimus L1II|v1|LG-E410c"

    aput-object v2, v0, v1

    const/16 v1, 0x47e

    const-string v2, "LGE|LG Optimus L1II|v1|LG-E410f"

    aput-object v2, v0, v1

    const/16 v1, 0x47f

    const-string v2, "LGE|LG Optimus L1II|v1|LG-E410g"

    aput-object v2, v0, v1

    const/16 v1, 0x480

    const-string v2, "LGE|LG Optimus L1II|v1|LG-E410i"

    aput-object v2, v0, v1

    const/16 v1, 0x481

    const-string v2, "LGE|LG Optimus L1II|v1|LG-E411f"

    aput-object v2, v0, v1

    const/16 v1, 0x482

    const-string v2, "LGE|LG Optimus L1II|v1|LG-E411g"

    aput-object v2, v0, v1

    const/16 v1, 0x483

    const-string v2, "LGE|LG Optimus L1II|v1ds|LG-E415f"

    aput-object v2, v0, v1

    const/16 v1, 0x484

    const-string v2, "LGE|LG Optimus L1II|v1ds|LG-E415g"

    aput-object v2, v0, v1

    const/16 v1, 0x485

    const-string v2, "LGE|LG Optimus L1II|v1ds|LG-E420"

    aput-object v2, v0, v1

    const/16 v1, 0x486

    const-string v2, "LGE|LG Optimus L1II|v1ds|LG-E420f"

    aput-object v2, v0, v1

    const/16 v1, 0x487

    const-string v2, "LGE|LG Optimus L1II|v1ts|LG-E475f"

    aput-object v2, v0, v1

    const/16 v1, 0x488

    const-string v2, "LGE|LG Optimus L3|e0|LG-E400"

    aput-object v2, v0, v1

    const/16 v1, 0x489

    const-string v2, "LGE|LG Optimus L3|e0|LG-E400R"

    aput-object v2, v0, v1

    const/16 v1, 0x48a

    const-string v2, "LGE|LG Optimus L3|e0|LG-E400b"

    aput-object v2, v0, v1

    const/16 v1, 0x48b

    const-string v2, "LGE|LG Optimus L3|e0|LG-E400f"

    aput-object v2, v0, v1

    const/16 v1, 0x48c

    const-string v2, "LGE|LG Optimus L3|e0|LG-E400g"

    aput-object v2, v0, v1

    const/16 v1, 0x48d

    const-string v2, "LGE|LG Optimus L3|e0|LG-L38C"

    aput-object v2, v0, v1

    const/16 v1, 0x48e

    const-string v2, "LGE|LG Optimus L3|e0|LGL35G"

    aput-object v2, v0, v1

    const/16 v1, 0x48f

    const-string v2, "LGE|LG Optimus L3|e0_open_eur|LG-E400"

    aput-object v2, v0, v1

    const/16 v1, 0x490

    const-string v2, "LGE|LG Optimus L3 Dual|e1|LG-E405"

    aput-object v2, v0, v1

    const/16 v1, 0x491

    const-string v2, "LGE|LG Optimus L3 Dual|e1|LG-E405f"

    aput-object v2, v0, v1

    const/16 v1, 0x492

    const-string v2, "LGE|LG Optimus L3 II|vee3ds|LG-E435"

    aput-object v2, v0, v1

    const/16 v1, 0x493

    const-string v2, "LGE|LG Optimus L3 II|vee3ds|LG-E435f"

    aput-object v2, v0, v1

    const/16 v1, 0x494

    const-string v2, "LGE|LG Optimus L3 II|vee3ds|LG-E435g"

    aput-object v2, v0, v1

    const/16 v1, 0x495

    const-string v2, "LGE|LG Optimus L3 II|vee3ds|LG-E435k"

    aput-object v2, v0, v1

    const/16 v1, 0x496

    const-string v2, "LGE|LG Optimus L3 II|vee3e|LG-E425"

    aput-object v2, v0, v1

    const/16 v1, 0x497

    const-string v2, "LGE|LG Optimus L3 II|vee3e|LG-E425c"

    aput-object v2, v0, v1

    const/16 v1, 0x498

    const-string v2, "LGE|LG Optimus L3 II|vee3e|LG-E425f"

    aput-object v2, v0, v1

    const/16 v1, 0x499

    const-string v2, "LGE|LG Optimus L3 II|vee3e|LG-E425g"

    aput-object v2, v0, v1

    const/16 v1, 0x49a

    const-string v2, "LGE|LG Optimus L3 II|vee3e|LG-E425j"

    aput-object v2, v0, v1

    const/16 v1, 0x49b

    const-string v2, "LGE|LG Optimus L3 II|vee3e|LG-E430"

    aput-object v2, v0, v1

    const/16 v1, 0x49c

    const-string v2, "LGE|LG Optimus L3 II|vee3e|LG-E431g"

    aput-object v2, v0, v1

    const/16 v1, 0x49d

    const-string v2, "LGE|LG Optimus L4 II|vee4ss|LG-E440"

    aput-object v2, v0, v1

    const/16 v1, 0x49e

    const-string v2, "LGE|LG Optimus L4 II|vee4ss|LG-E440f"

    aput-object v2, v0, v1

    const/16 v1, 0x49f

    const-string v2, "LGE|LG Optimus L4 II|vee4ss|LG-E440g"

    aput-object v2, v0, v1

    const/16 v1, 0x4a0

    const-string v2, "LGE|LG Optimus L4 II|vee4ss|LG-E465f"

    aput-object v2, v0, v1

    const/16 v1, 0x4a1

    const-string v2, "LGE|LG Optimus L4 II|vee4ss|LG-E465g"

    aput-object v2, v0, v1

    const/16 v1, 0x4a2

    const-string v2, "LGE|LG Optimus L4 II Dual|vee4ds|LG-E445"

    aput-object v2, v0, v1

    const/16 v1, 0x4a3

    const-string v2, "LGE|LG Optimus L4 II Dual|vee4ds|LG-E467f"

    aput-object v2, v0, v1

    const/16 v1, 0x4a4

    const-string v2, "LGE|LG Optimus L4 II Tri|vee4ts|LG-E470f"

    aput-object v2, v0, v1

    const/16 v1, 0x4a5

    const-string v2, "LGE|LG Optimus L5 Dual|m4ds|LG-E615"

    aput-object v2, v0, v1

    const/16 v1, 0x4a6

    const-string v2, "LGE|LG Optimus L5 Dual|m4ds|LG-E615f"

    aput-object v2, v0, v1

    const/16 v1, 0x4a7

    const-string v2, "LGE|LG Optimus L5 II|vee5ds|LG-E455"

    aput-object v2, v0, v1

    const/16 v1, 0x4a8

    const-string v2, "LGE|LG Optimus L5 II|vee5ds|LG-E455f"

    aput-object v2, v0, v1

    const/16 v1, 0x4a9

    const-string v2, "LGE|LG Optimus L5 II|vee5ds|LG-E455g"

    aput-object v2, v0, v1

    const/16 v1, 0x4aa

    const-string v2, "LGE|LG Optimus L5 II|vee5nfc|LG-E460"

    aput-object v2, v0, v1

    const/16 v1, 0x4ab

    const-string v2, "LGE|LG Optimus L5 II|vee5nfc|LG-E460f"

    aput-object v2, v0, v1

    const/16 v1, 0x4ac

    const-string v2, "LGE|LG Optimus L5 II|vee5ss|LG-E450"

    aput-object v2, v0, v1

    const/16 v1, 0x4ad

    const-string v2, "LGE|LG Optimus L5 II|vee5ss|LG-E450B"

    aput-object v2, v0, v1

    const/16 v1, 0x4ae

    const-string v2, "LGE|LG Optimus L5 II|vee5ss|LG-E450f"

    aput-object v2, v0, v1

    const/16 v1, 0x4af

    const-string v2, "LGE|LG Optimus L5 II|vee5ss|LG-E450g"

    aput-object v2, v0, v1

    const/16 v1, 0x4b0

    const-string v2, "LGE|LG Optimus L5 II|vee5ss|LG-E450j"

    aput-object v2, v0, v1

    const/16 v1, 0x4b1

    const-string v2, "LGE|LG Optimus L5 II|vee5ss|LG-E451g"

    aput-object v2, v0, v1

    const/16 v1, 0x4b2

    const-string v2, "LGE|LG Optimus L5 II|vee5ss|LG-E460"

    aput-object v2, v0, v1

    const/16 v1, 0x4b3

    const-string v2, "LGE|LG Optimus L7|u0|LG-P700"

    aput-object v2, v0, v1

    const/16 v1, 0x4b4

    const-string v2, "LGE|LG Optimus L7|u0|LG-P705"

    aput-object v2, v0, v1

    const/16 v1, 0x4b5

    const-string v2, "LGE|LG Optimus L7|u0|LG-P705f"

    aput-object v2, v0, v1

    const/16 v1, 0x4b6

    const-string v2, "LGE|LG Optimus L7|u0|LG-P705g"

    aput-object v2, v0, v1

    const/16 v1, 0x4b7

    const-string v2, "LGE|LG Optimus L7|u0|LG-P708g"

    aput-object v2, v0, v1

    const/16 v1, 0x4b8

    const-string v2, "LGE|LG Optimus L7|u0|LG-T280"

    aput-object v2, v0, v1

    const/16 v1, 0x4b9

    const-string v2, "LGE|LG Optimus L7|u0|LGL96G"

    aput-object v2, v0, v1

    const/16 v1, 0x4ba

    const-string v2, "LGE|LG Optimus L7|vee7ds|LG-P715"

    aput-object v2, v0, v1

    const/16 v1, 0x4bb

    const-string v2, "LGE|LG Optimus L7 II|vee7e|LG-P710"

    aput-object v2, v0, v1

    const/16 v1, 0x4bc

    const-string v2, "LGE|LG Optimus L7 II|vee7e|LG-P712"

    aput-object v2, v0, v1

    const/16 v1, 0x4bd

    const-string v2, "LGE|LG Optimus L7 II|vee7e|LG-P713"

    aput-object v2, v0, v1

    const/16 v1, 0x4be

    const-string v2, "LGE|LG Optimus L7 II|vee7e|LG-P713GO"

    aput-object v2, v0, v1

    const/16 v1, 0x4bf

    const-string v2, "LGE|LG Optimus L7 II|vee7e|LG-P713TR"

    aput-object v2, v0, v1

    const/16 v1, 0x4c0

    const-string v2, "LGE|LG Optimus L7 II|vee7e|LG-P714"

    aput-object v2, v0, v1

    const/16 v1, 0x4c1

    const-string v2, "LGE|LG Optimus L70|w5|LG-D321"

    aput-object v2, v0, v1

    const/16 v1, 0x4c2

    const-string v2, "LGE|LG Optimus L70|w5|LGMS323"

    aput-object v2, v0, v1

    const/16 v1, 0x4c3

    const-string v2, "LGE|LG Optimus L7II|vee7ds|LG-P715"

    aput-object v2, v0, v1

    const/16 v1, 0x4c4

    const-string v2, "LGE|LG Optimus L7II|vee7ds|LG-P716"

    aput-object v2, v0, v1

    const/16 v1, 0x4c5

    const-string v2, "LGE|LG Optimus L9|u2|LG-D700"

    aput-object v2, v0, v1

    const/16 v1, 0x4c6

    const-string v2, "LGE|LG Optimus L9|u2|LG-P760"

    aput-object v2, v0, v1

    const/16 v1, 0x4c7

    const-string v2, "LGE|LG Optimus L9|u2|LG-P765"

    aput-object v2, v0, v1

    const/16 v1, 0x4c8

    const-string v2, "LGE|LG Optimus L9|u2|LG-P768"

    aput-object v2, v0, v1

    const/16 v1, 0x4c9

    const-string v2, "LGE|LG Optimus L9|u2|LG-P769"

    aput-object v2, v0, v1

    const/16 v1, 0x4ca

    const-string v2, "LGE|LG Optimus L9|u2|LG-P778"

    aput-object v2, v0, v1

    const/16 v1, 0x4cb

    const-string v2, "LGE|LG Optimus L9|u2|LGMS769"

    aput-object v2, v0, v1

    const/16 v1, 0x4cc

    const-string v2, "LGE|LG Optimus L9 (NFC)|u2|LG-P760"

    aput-object v2, v0, v1

    const/16 v1, 0x4cd

    const-string v2, "LGE|LG Optimus L9 II|l9ii|LG-D605"

    aput-object v2, v0, v1

    const/16 v1, 0x4ce

    const-string v2, "LGE|LG Optimus LTE Tag|cayman|LG-AS840"

    aput-object v2, v0, v1

    const/16 v1, 0x4cf

    const-string v2, "LGE|LG Optimus LTE Tag|cayman|LG-F120K"

    aput-object v2, v0, v1

    const/16 v1, 0x4d0

    const-string v2, "LGE|LG Optimus LTE Tag|cayman|LG-F120L"

    aput-object v2, v0, v1

    const/16 v1, 0x4d1

    const-string v2, "LGE|LG Optimus LTE Tag|cayman|LG-F120S"

    aput-object v2, v0, v1

    const/16 v1, 0x4d2

    const-string v2, "LGE|LG Optimus LTE Tag|lge_120_kt|LG-F120K"

    aput-object v2, v0, v1

    const/16 v1, 0x4d3

    const-string v2, "LGE|LG Optimus LTE Tag|lge_120_skt|LG-F120S"

    aput-object v2, v0, v1

    const/16 v1, 0x4d4

    const-string v2, "LGE|LG Optimus LTE3|fx1sk|LG-F260S"

    aput-object v2, v0, v1

    const/16 v1, 0x4d5

    const-string v2, "LGE|LG Optimus One|thunderg|LG-P500"

    aput-object v2, v0, v1

    const/16 v1, 0x4d6

    const-string v2, "LGE|LG Optimus One|thunderg|LG-P500h"

    aput-object v2, v0, v1

    const/16 v1, 0x4d7

    const-string v2, "LGE|LG Optimus One|thunderg|LG-P503"

    aput-object v2, v0, v1

    const/16 v1, 0x4d8

    const-string v2, "LGE|LG Optimus One|thunderg|LG-P504"

    aput-object v2, v0, v1

    const/16 v1, 0x4d9

    const-string v2, "LGE|LG Optimus One|thunderg|LG-P505"

    aput-object v2, v0, v1

    const/16 v1, 0x4da

    const-string v2, "LGE|LG Optimus One|thunderg|LG-P505CH"

    aput-object v2, v0, v1

    const/16 v1, 0x4db

    const-string v2, "LGE|LG Optimus One|thunderg|LG-P505R"

    aput-object v2, v0, v1

    const/16 v1, 0x4dc

    const-string v2, "LGE|LG Optimus One|thunderg|LG-P506"

    aput-object v2, v0, v1

    const/16 v1, 0x4dd

    const-string v2, "LGE|LG Optimus One|thunderg|LG-P509"

    aput-object v2, v0, v1

    const/16 v1, 0x4de

    const-string v2, "LGE|LG Optimus Regard|l0|LG-LW770"

    aput-object v2, v0, v1

    const/16 v1, 0x4df

    const-string v2, "LGE|LG Optimus Select|u0_cdma|LG-AS730"

    aput-object v2, v0, v1

    const/16 v1, 0x4e0

    const-string v2, "LGE|LG Optimus Zone 2|w3c|VS415PP"

    aput-object v2, v0, v1

    const/16 v1, 0x4e1

    const-string v2, "LGE|LG Pecan|pecan|LG-P350"

    aput-object v2, v0, v1

    const/16 v1, 0x4e2

    const-string v2, "LGE|LG Pecan|pecan|LG-P350f"

    aput-object v2, v0, v1

    const/16 v1, 0x4e3

    const-string v2, "LGE|LG Pecan|pecan|LG-P350g"

    aput-object v2, v0, v1

    const/16 v1, 0x4e4

    const-string v2, "LGE|LG Revolution|bryce|VS910 4G"

    aput-object v2, v0, v1

    const/16 v1, 0x4e5

    const-string v2, "LGE|LG SUNSET|c50|LGL33L"

    aput-object v2, v0, v1

    const/16 v1, 0x4e6

    const-string v2, "LGE|LG Spectrum|VS920|VS920 4G"

    aput-object v2, v0, v1

    const/16 v1, 0x4e7

    const-string v2, "LGE|LG Spirit|my70|LG-H420"

    aput-object v2, v0, v1

    const/16 v1, 0x4e8

    const-string v2, "LGE|LG Spirit 4G LTE|c70n|LG-H440n"

    aput-object v2, v0, v1

    const/16 v1, 0x4e9

    const-string v2, "LGE|LG Spirit LTE|c70|LG-H440"

    aput-object v2, v0, v1

    const/16 v1, 0x4ea

    const-string v2, "LGE|LG Spirit LTE|c70|LG-H440AR"

    aput-object v2, v0, v1

    const/16 v1, 0x4eb

    const-string v2, "LGE|LG Thrill 4G|cosmopolitan|LG-P925"

    aput-object v2, v0, v1

    const/16 v1, 0x4ec

    const-string v2, "LGE|LG Venice|u0_cdma|LG-LG730"

    aput-object v2, v0, v1

    const/16 v1, 0x4ed

    const-string v2, "LGE|LG Viper 4G LTE|cayman|LG-LS840"

    aput-object v2, v0, v1

    const/16 v1, 0x4ee

    const-string v2, "LGE|LG Volt|my70ds|LG-H422"

    aput-object v2, v0, v1

    const/16 v1, 0x4ef

    const-string v2, "LGE|LG Volt|x5|LGLS740"

    aput-object v2, v0, v1

    const/16 v1, 0x4f0

    const-string v2, "LGE|LG optimus LTE2|d1lkt|LG-F160K"

    aput-object v2, v0, v1

    const/16 v1, 0x4f1

    const-string v2, "LGE|LG optimus LTE2|d1lsk|LG-F160S"

    aput-object v2, v0, v1

    const/16 v1, 0x4f2

    const-string v2, "LGE|LG optimus LTE2|d1lu|LG-F160L"

    aput-object v2, v0, v1

    const/16 v1, 0x4f3

    const-string v2, "LGE|LG optimus LTE2|d1lu|LG-F160LV"

    aput-object v2, v0, v1

    const/16 v1, 0x4f4

    const-string v2, "LGE|LG optimus it L-05D|l_dcm|L-05D"

    aput-object v2, v0, v1

    const/16 v1, 0x4f5

    const-string v2, "LGE|LG optimus it L-05E|L05E|L-05E"

    aput-object v2, v0, v1

    const/16 v1, 0x4f6

    const-string v2, "LGE|LG-AS876|x5|AS876"

    aput-object v2, v0, v1

    const/16 v1, 0x4f7

    const-string v2, "LGE|LG-E985T|gvarfhd|LG-E985"

    aput-object v2, v0, v1

    const/16 v1, 0x4f8

    const-string v2, "LGE|Marquee|L-07C|L-07C"

    aput-object v2, v0, v1

    const/16 v1, 0x4f9

    const-string v2, "LGE|Marquee|LG855|LG-LG855"

    aput-object v2, v0, v1

    const/16 v1, 0x4fa

    const-string v2, "LGE|Marquee|LS855|LG-LS855"

    aput-object v2, v0, v1

    const/16 v1, 0x4fb

    const-string v2, "LGE|Marquee|bproj_CIS-xxx|LG-P970"

    aput-object v2, v0, v1

    const/16 v1, 0x4fc

    const-string v2, "LGE|My touch 4G|e739|LG-E739"

    aput-object v2, v0, v1

    const/16 v1, 0x4fd

    const-string v2, "LGE|Nexus 4|mako|Nexus 4"

    aput-object v2, v0, v1

    const/16 v1, 0x4fe

    const-string v2, "LGE|Nexus 5|hammerhead|Nexus 5"

    aput-object v2, v0, v1

    const/16 v1, 0x4ff

    const-string v2, "LGE|Optiimus Black|bproj_208-01|LG-P970"

    aput-object v2, v0, v1

    const/16 v1, 0x500

    const-string v2, "LGE|Optimus  EX|x2|LG-SU880"

    aput-object v2, v0, v1

    const/16 v1, 0x501

    const-string v2, "LGE|Optimus  LTE|l1a|LG-P870"

    aput-object v2, v0, v1

    const/16 v1, 0x502

    const-string v2, "LGE|Optimus 2|as680|LG-AS680"

    aput-object v2, v0, v1

    const/16 v1, 0x503

    const-string v2, "LGE|Optimus 2X|p990|LG-P990"

    aput-object v2, v0, v1

    const/16 v1, 0x504

    const-string v2, "LGE|Optimus 2X|p990|LG-P990H"

    aput-object v2, v0, v1

    const/16 v1, 0x505

    const-string v2, "LGE|Optimus 2X|p990|LG-P990h"

    aput-object v2, v0, v1

    const/16 v1, 0x506

    const-string v2, "LGE|Optimus 2X|p990_262-xx|LG-P990"

    aput-object v2, v0, v1

    const/16 v1, 0x507

    const-string v2, "LGE|Optimus 2X|p990_CIS-xxx|LG-P990"

    aput-object v2, v0, v1

    const/16 v1, 0x508

    const-string v2, "LGE|Optimus 2X|p990_EUR-xx|LG-P990"

    aput-object v2, v0, v1

    const/16 v1, 0x509

    const-string v2, "LGE|Optimus 2X|p990hN|LG-P990hN"

    aput-object v2, v0, v1

    const/16 v1, 0x50a

    const-string v2, "LGE|Optimus 2X|p999|LG-P999"

    aput-object v2, v0, v1

    const/16 v1, 0x50b

    const-string v2, "LGE|Optimus 2X|star|LG-P990"

    aput-object v2, v0, v1

    const/16 v1, 0x50c

    const-string v2, "LGE|Optimus 2X|star|LG-SU660"

    aput-object v2, v0, v1

    const/16 v1, 0x50d

    const-string v2, "LGE|Optimus 2X|star_450-05|LG-SU660"

    aput-object v2, v0, v1

    const/16 v1, 0x50e

    const-string v2, "LGE|Optimus 2X|su660|LG-SU660"

    aput-object v2, v0, v1

    const/16 v1, 0x50f

    const-string v2, "LGE|Optimus 3D|cosmo_450-05|LG-SU760"

    aput-object v2, v0, v1

    const/16 v1, 0x510

    const-string v2, "LGE|Optimus 3D|cosmo_EUR-XXX|LG-P920"

    aput-object v2, v0, v1

    const/16 v1, 0x511

    const-string v2, "LGE|Optimus 3D|cosmo_MEA-XXX|LG-P920"

    aput-object v2, v0, v1

    const/16 v1, 0x512

    const-string v2, "LGE|Optimus 3D|p920|LG-P920"

    aput-object v2, v0, v1

    const/16 v1, 0x513

    const-string v2, "LGE|Optimus 3D|p920|LG-P920h"

    aput-object v2, v0, v1

    const/16 v1, 0x514

    const-string v2, "LGE|Optimus 3D|su760|LG-SU760"

    aput-object v2, v0, v1

    const/16 v1, 0x515

    const-string v2, "LGE|Optimus 3D Cube|cx2|LG-SU870"

    aput-object v2, v0, v1

    const/16 v1, 0x516

    const-string v2, "LGE|Optimus 3D MAX|cx2|LG-P720"

    aput-object v2, v0, v1

    const/16 v1, 0x517

    const-string v2, "LGE|Optimus 3D MAX|cx2|LG-P720h"

    aput-object v2, v0, v1

    const/16 v1, 0x518

    const-string v2, "LGE|Optimus 3D MAX|cx2|LG-P725"

    aput-object v2, v0, v1

    const/16 v1, 0x519

    const-string v2, "LGE|Optimus 3D MAX|cx2|LG-SU870"

    aput-object v2, v0, v1

    const/16 v1, 0x51a

    const-string v2, "LGE|Optimus 4X HD|x3|LG-P880"

    aput-object v2, v0, v1

    const/16 v1, 0x51b

    const-string v2, "LGE|Optimus 4X HD|x3|LG-P880g"

    aput-object v2, v0, v1

    const/16 v1, 0x51c

    const-string v2, "LGE|Optimus Big|justin|LG-LU6800"

    aput-object v2, v0, v1

    const/16 v1, 0x51d

    const-string v2, "LGE|Optimus Big|lu6800|LG-LU6800"

    aput-object v2, v0, v1

    const/16 v1, 0x51e

    const-string v2, "LGE|Optimus Black|LGL85C|LGL85C"

    aput-object v2, v0, v1

    const/16 v1, 0x51f

    const-string v2, "LGE|Optimus Black|black|LG-KU5900"

    aput-object v2, v0, v1

    const/16 v1, 0x520

    const-string v2, "LGE|Optimus Black|blackg|LG-P970"

    aput-object v2, v0, v1

    const/16 v1, 0x521

    const-string v2, "LGE|Optimus Black|blackg|LG-P970h"

    aput-object v2, v0, v1

    const/16 v1, 0x522

    const-string v2, "LGE|Optimus Black|bproj_214-03|LG-P970"

    aput-object v2, v0, v1

    const/16 v1, 0x523

    const-string v2, "LGE|Optimus Black|bproj_262-XXX|LG-P970"

    aput-object v2, v0, v1

    const/16 v1, 0x524

    const-string v2, "LGE|Optimus Black|bproj_302-220|LG-P970g"

    aput-object v2, v0, v1

    const/16 v1, 0x525

    const-string v2, "LGE|Optimus Black|bproj_334-020|LG-P970h"

    aput-object v2, v0, v1

    const/16 v1, 0x526

    const-string v2, "LGE|Optimus Black|bproj_724-xxx|LG-P970h"

    aput-object v2, v0, v1

    const/16 v1, 0x527

    const-string v2, "LGE|Optimus Black|bproj_ARE-XXX|LG-P970"

    aput-object v2, v0, v1

    const/16 v1, 0x528

    const-string v2, "LGE|Optimus Black|bproj_EUR-XXX|LG-P970"

    aput-object v2, v0, v1

    const/16 v1, 0x529

    const-string v2, "LGE|Optimus Black|bproj_sea-xxx|LG-P970"

    aput-object v2, v0, v1

    const/16 v1, 0x52a

    const-string v2, "LGE|Optimus Black|ku5900|LG-KU5900"

    aput-object v2, v0, v1

    const/16 v1, 0x52b

    const-string v2, "LGE|Optimus Black|lgp970|LG-P970"

    aput-object v2, v0, v1

    const/16 v1, 0x52c

    const-string v2, "LGE|Optimus Black|lgp970|LG-P970g"

    aput-object v2, v0, v1

    const/16 v1, 0x52d

    const-string v2, "LGE|Optimus Black|lgp970|LG-P970h"

    aput-object v2, v0, v1

    const/16 v1, 0x52e

    const-string v2, "LGE|Optimus Chat|hazel|LG-C550"

    aput-object v2, v0, v1

    const/16 v1, 0x52f

    const-string v2, "LGE|Optimus Chat|hazel|LG-C555"

    aput-object v2, v0, v1

    const/16 v1, 0x530

    const-string v2, "LGE|Optimus Core|u0_cdma|LGL86C"

    aput-object v2, v0, v1

    const/16 v1, 0x531

    const-string v2, "LGE|Optimus EX|x2|IS11LG"

    aput-object v2, v0, v1

    const/16 v1, 0x532

    const-string v2, "LGE|Optimus EX|x2_450-05|LG-SU880"

    aput-object v2, v0, v1

    const/16 v1, 0x533

    const-string v2, "LGE|Optimus Exceed 2|w5c|LG-VS450PP"

    aput-object v2, v0, v1

    const/16 v1, 0x534

    const-string v2, "LGE|Optimus F3|fx3|LG-LS720"

    aput-object v2, v0, v1

    const/16 v1, 0x535

    const-string v2, "LGE|Optimus F3|fx3|LG-P655H"

    aput-object v2, v0, v1

    const/16 v1, 0x536

    const-string v2, "LGE|Optimus F3|fx3|LG-P655K"

    aput-object v2, v0, v1

    const/16 v1, 0x537

    const-string v2, "LGE|Optimus F3|fx3|LG-P659"

    aput-object v2, v0, v1

    const/16 v1, 0x538

    const-string v2, "LGE|Optimus F3|fx3|LG-P659H"

    aput-object v2, v0, v1

    const/16 v1, 0x539

    const-string v2, "LGE|Optimus F3|fx3|LGL25L"

    aput-object v2, v0, v1

    const/16 v1, 0x53a

    const-string v2, "LGE|Optimus F3|fx3|LGMS659"

    aput-object v2, v0, v1

    const/16 v1, 0x53b

    const-string v2, "LGE|Optimus F5|l1e|LG-P870h"

    aput-object v2, v0, v1

    const/16 v1, 0x53c

    const-string v2, "LGE|Optimus F5|l1e|LG-P875"

    aput-object v2, v0, v1

    const/16 v1, 0x53d

    const-string v2, "LGE|Optimus F5|l1e|LG-P875h"

    aput-object v2, v0, v1

    const/16 v1, 0x53e

    const-string v2, "LGE|Optimus F5|l1v|AS870 4G"

    aput-object v2, v0, v1

    const/16 v1, 0x53f

    const-string v2, "LGE|Optimus F6|f6|LG-D500"

    aput-object v2, v0, v1

    const/16 v1, 0x540

    const-string v2, "LGE|Optimus F6|f6|LG-D505"

    aput-object v2, v0, v1

    const/16 v1, 0x541

    const-string v2, "LGE|Optimus F6|f6|LGMS500"

    aput-object v2, v0, v1

    const/16 v1, 0x542

    const-string v2, "LGE|Optimus Fuel|w3c|LGL34C"

    aput-object v2, v0, v1

    const/16 v1, 0x543

    const-string v2, "LGE|Optimus G Pro|geevl04e|L-04E"

    aput-object v2, v0, v1

    const/16 v1, 0x544

    const-string v2, "LGE|Optimus GJ|geehdc|LG-E975w"

    aput-object v2, v0, v1

    const/16 v1, 0x545

    const-string v2, "LGE|Optimus GK|gvfhd|LG-F220K"

    aput-object v2, v0, v1

    const/16 v1, 0x546

    const-string v2, "LGE|Optimus Hub|lgc800|LG-C800"

    aput-object v2, v0, v1

    const/16 v1, 0x547

    const-string v2, "LGE|Optimus Hub|lgc800g|LG-C800G"

    aput-object v2, v0, v1

    const/16 v1, 0x548

    const-string v2, "LGE|Optimus Hub|univa_214-04|LG-E510"

    aput-object v2, v0, v1

    const/16 v1, 0x549

    const-string v2, "LGE|Optimus Hub|univa_724-05|LG-E510f"

    aput-object v2, v0, v1

    const/16 v1, 0x54a

    const-string v2, "LGE|Optimus Hub|univa_730-01|LG-E510g"

    aput-object v2, v0, v1

    const/16 v1, 0x54b

    const-string v2, "LGE|Optimus Hub|univa_730-03|LG-E510g"

    aput-object v2, v0, v1

    const/16 v1, 0x54c

    const-string v2, "LGE|Optimus Hub|univa_740-01|LG-E510g"

    aput-object v2, v0, v1

    const/16 v1, 0x54d

    const-string v2, "LGE|Optimus Hub|univa_clr-br|LG-E510f"

    aput-object v2, v0, v1

    const/16 v1, 0x54e

    const-string v2, "LGE|Optimus Hub|univa_ctm-xxx|LG-E510g"

    aput-object v2, v0, v1

    const/16 v1, 0x54f

    const-string v2, "LGE|Optimus Hub|univa_ent-cl|LG-E510g"

    aput-object v2, v0, v1

    const/16 v1, 0x550

    const-string v2, "LGE|Optimus Hub|univa_open-br|LG-E510f"

    aput-object v2, v0, v1

    const/16 v1, 0x551

    const-string v2, "LGE|Optimus Hub|univa_open-de|LG-E510"

    aput-object v2, v0, v1

    const/16 v1, 0x552

    const-string v2, "LGE|Optimus Hub|univa_ssv-xxx|LG-E510g"

    aput-object v2, v0, v1

    const/16 v1, 0x553

    const-string v2, "LGE|Optimus Hub|univa_tcl-mx|LG-E510f"

    aput-object v2, v0, v1

    const/16 v1, 0x554

    const-string v2, "LGE|Optimus Hub|univa_tlf-es|LG-E510"

    aput-object v2, v0, v1

    const/16 v1, 0x555

    const-string v2, "LGE|Optimus Hub|univa_ufn-mx|LG-E510g"

    aput-object v2, v0, v1

    const/16 v1, 0x556

    const-string v2, "LGE|Optimus Hub|univa_usc-mx|LG-E510g"

    aput-object v2, v0, v1

    const/16 v1, 0x557

    const-string v2, "LGE|Optimus Hub|univa_viv-br|LG-E510f"

    aput-object v2, v0, v1

    const/16 v1, 0x558

    const-string v2, "LGE|Optimus L40|w3|LG-D160"

    aput-object v2, v0, v1

    const/16 v1, 0x559

    const-string v2, "LGE|Optimus L40|w3|LG-D165"

    aput-object v2, v0, v1

    const/16 v1, 0x55a

    const-string v2, "LGE|Optimus L40|w3|LG-D165AR"

    aput-object v2, v0, v1

    const/16 v1, 0x55b

    const-string v2, "LGE|Optimus L40|w3ds|LG-D170"

    aput-object v2, v0, v1

    const/16 v1, 0x55c

    const-string v2, "LGE|Optimus L40|w3ds|LG-D175f"

    aput-object v2, v0, v1

    const/16 v1, 0x55d

    const-string v2, "LGE|Optimus L40|w3ts|LG-D180f"

    aput-object v2, v0, v1

    const/16 v1, 0x55e

    const-string v2, "LGE|Optimus L5|m4|LG-E610"

    aput-object v2, v0, v1

    const/16 v1, 0x55f

    const-string v2, "LGE|Optimus L5|m4|LG-E610v"

    aput-object v2, v0, v1

    const/16 v1, 0x560

    const-string v2, "LGE|Optimus L5|m4|LG-E612"

    aput-object v2, v0, v1

    const/16 v1, 0x561

    const-string v2, "LGE|Optimus L5|m4|LG-E612f"

    aput-object v2, v0, v1

    const/16 v1, 0x562

    const-string v2, "LGE|Optimus L5|m4|LG-E612g"

    aput-object v2, v0, v1

    const/16 v1, 0x563

    const-string v2, "LGE|Optimus L5|m4|LG-E617G"

    aput-object v2, v0, v1

    const/16 v1, 0x564

    const-string v2, "LGE|Optimus L5|m4|LG-L40G"

    aput-object v2, v0, v1

    const/16 v1, 0x565

    const-string v2, "LGE|Optimus L7II|vee7ds|LG-P716"

    aput-object v2, v0, v1

    const/16 v1, 0x566

    const-string v2, "LGE|Optimus LIFE|l1_dcm|L-02E"

    aput-object v2, v0, v1

    const/16 v1, 0x567

    const-string v2, "LGE|Optimus LTE|i_dcm|L-01D"

    aput-object v2, v0, v1

    const/16 v1, 0x568

    const-string v2, "LGE|Optimus LTE|i_skt|LG-SU640"

    aput-object v2, v0, v1

    const/16 v1, 0x569

    const-string v2, "LGE|Optimus LTE|i_u|LG-LU6200"

    aput-object v2, v0, v1

    const/16 v1, 0x56a

    const-string v2, "LGE|Optimus LTE|iproj|LG-P936"

    aput-object v2, v0, v1

    const/16 v1, 0x56b

    const-string v2, "LGE|Optimus LTE|lgp930|LG-P930"

    aput-object v2, v0, v1

    const/16 v1, 0x56c

    const-string v2, "LGE|Optimus LTE|lgp935|LG-P935"

    aput-object v2, v0, v1

    const/16 v1, 0x56d

    const-string v2, "LGE|Optimus Mach|LU3000|LG-LU3000"

    aput-object v2, v0, v1

    const/16 v1, 0x56e

    const-string v2, "LGE|Optimus Mach|hub|LG-LU3000"

    aput-object v2, v0, v1

    const/16 v1, 0x56f

    const-string v2, "LGE|Optimus Mach|lu3000|LG-LU3000"

    aput-object v2, v0, v1

    const/16 v1, 0x570

    const-string v2, "LGE|Optimus Net|gelato_302-610|LG-P690b"

    aput-object v2, v0, v1

    const/16 v1, 0x571

    const-string v2, "LGE|Optimus Net|gelato_cis-xx|LG-P690"

    aput-object v2, v0, v1

    const/16 v1, 0x572

    const-string v2, "LGE|Optimus Net|gelato_sea-xx|LG-P690"

    aput-object v2, v0, v1

    const/16 v1, 0x573

    const-string v2, "LGE|Optimus Net|lgl45c|LGL45C"

    aput-object v2, v0, v1

    const/16 v1, 0x574

    const-string v2, "LGE|Optimus Net Dual|gelatods_are-xxx|LG-P698"

    aput-object v2, v0, v1

    const/16 v1, 0x575

    const-string v2, "LGE|Optimus Net Dual|gelatods_cis-xxx|LG-P698"

    aput-object v2, v0, v1

    const/16 v1, 0x576

    const-string v2, "LGE|Optimus Net Dual|gelatods_ind-xxx|LG-P698"

    aput-object v2, v0, v1

    const/16 v1, 0x577

    const-string v2, "LGE|Optimus Net Dual|gelatods_open-br|LG-P698f"

    aput-object v2, v0, v1

    const/16 v1, 0x578

    const-string v2, "LGE|Optimus Net Dual|gelatods_sea-xxx|LG-P698"

    aput-object v2, v0, v1

    const/16 v1, 0x579

    const-string v2, "LGE|Optimus One|ku3700|LG-KU3700"

    aput-object v2, v0, v1

    const/16 v1, 0x57a

    const-string v2, "LGE|Optimus One|lu3700|LG-LU3700"

    aput-object v2, v0, v1

    const/16 v1, 0x57b

    const-string v2, "LGE|Optimus One|su370|LG-SU370"

    aput-object v2, v0, v1

    const/16 v1, 0x57c

    const-string v2, "LGE|Optimus One|thunder_kor-05|LG-SU370"

    aput-object v2, v0, v1

    const/16 v1, 0x57d

    const-string v2, "LGE|Optimus One|thunder_kor-08|LG-KU3700"

    aput-object v2, v0, v1

    const/16 v1, 0x57e

    const-string v2, "LGE|Optimus One|thunder_kor-08|LG-LU3700"

    aput-object v2, v0, v1

    const/16 v1, 0x57f

    const-string v2, "LGE|Optimus One|thunderc|LG-CX670"

    aput-object v2, v0, v1

    const/16 v1, 0x580

    const-string v2, "LGE|Optimus One|thunderc|LG-LW690"

    aput-object v2, v0, v1

    const/16 v1, 0x581

    const-string v2, "LGE|Optimus One|thunderc|LG-MS690"

    aput-object v2, v0, v1

    const/16 v1, 0x582

    const-string v2, "LGE|Optimus One|thunderc|LG-US670"

    aput-object v2, v0, v1

    const/16 v1, 0x583

    const-string v2, "LGE|Optimus One|thunderc|LS670"

    aput-object v2, v0, v1

    const/16 v1, 0x584

    const-string v2, "LGE|Optimus One|thunderc|VM670"

    aput-object v2, v0, v1

    const/16 v1, 0x585

    const-string v2, "LGE|Optimus One|thunderc|Vortex"

    aput-object v2, v0, v1

    const/16 v1, 0x586

    const-string v2, "LGE|Optimus One|thunderc|thunderc"

    aput-object v2, v0, v1

    const/16 v1, 0x587

    const-string v2, "LGE|Optimus PAD LTE|express|LG-LU8300"

    aput-object v2, v0, v1

    const/16 v1, 0x588

    const-string v2, "LGE|Optimus Pad|l06c|L-06C"

    aput-object v2, v0, v1

    const/16 v1, 0x589

    const-string v2, "LGE|Optimus Pad|v900|LG-V900"

    aput-object v2, v0, v1

    const/16 v1, 0x58a

    const-string v2, "LGE|Optimus Pad|v900asia|LG-V900"

    aput-object v2, v0, v1

    const/16 v1, 0x58b

    const-string v2, "LGE|Optimus Pad|v901ar|LG-V901"

    aput-object v2, v0, v1

    const/16 v1, 0x58c

    const-string v2, "LGE|Optimus Pad|v901kr|LG-V901"

    aput-object v2, v0, v1

    const/16 v1, 0x58d

    const-string v2, "LGE|Optimus Pad|v901tr|LG-V901"

    aput-object v2, v0, v1

    const/16 v1, 0x58e

    const-string v2, "LGE|Optimus Pad|v905r|LG-V905R"

    aput-object v2, v0, v1

    const/16 v1, 0x58f

    const-string v2, "LGE|Optimus Pad|v909|LG-V909"

    aput-object v2, v0, v1

    const/16 v1, 0x590

    const-string v2, "LGE|Optimus Pad|v909mkt|LG-V909"

    aput-object v2, v0, v1

    const/16 v1, 0x591

    const-string v2, "LGE|Optimus Plus|m3_acg_us|LG-AS695"

    aput-object v2, v0, v1

    const/16 v1, 0x592

    const-string v2, "LGE|Optimus Pro|muscat|LG-C660"

    aput-object v2, v0, v1

    const/16 v1, 0x593    # 2.0E-42f

    const-string v2, "LGE|Optimus Pro|muscat|LG-C660R"

    aput-object v2, v0, v1

    const/16 v1, 0x594

    const-string v2, "LGE|Optimus Pro|muscat|LG-C660h"

    aput-object v2, v0, v1

    const/16 v1, 0x595

    const-string v2, "LGE|Optimus Q|lgl55c|LGL55C"

    aput-object v2, v0, v1

    const/16 v1, 0x596

    const-string v2, "LGE|Optimus Q2|bssq|LG-LU6500"

    aput-object v2, v0, v1

    const/16 v1, 0x597

    const-string v2, "LGE|Optimus Q2|bssq_450-06|LG-LU6500"

    aput-object v2, v0, v1

    const/16 v1, 0x598

    const-string v2, "LGE|Optimus Slider|VM701|LG-VM701"

    aput-object v2, v0, v1

    const/16 v1, 0x599

    const-string v2, "LGE|Optimus Sol|victor|LG-E730"

    aput-object v2, v0, v1

    const/16 v1, 0x59a

    const-string v2, "LGE|Optimus Sol|victor|LG-E730f"

    aput-object v2, v0, v1

    const/16 v1, 0x59b

    const-string v2, "LGE|Optimus Spirit|gelato_505-01|LG-P690f"

    aput-object v2, v0, v1

    const/16 v1, 0x59c

    const-string v2, "LGE|Optimus Spirit|gelato_eur-xx|LG-P690"

    aput-object v2, v0, v1

    const/16 v1, 0x59d

    const-string v2, "LGE|Optimus Vu|325.0|LG-F100L"

    aput-object v2, v0, v1

    const/16 v1, 0x59e

    const-string v2, "LGE|Optimus Vu|batman|LG-F100L"

    aput-object v2, v0, v1

    const/16 v1, 0x59f

    const-string v2, "LGE|Optimus Vu|batman|LG-F100S"

    aput-object v2, v0, v1

    const/16 v1, 0x5a0

    const-string v2, "LGE|Optimus Vu|batman_dcm|L-06DJOJO"

    aput-object v2, v0, v1

    const/16 v1, 0x5a1

    const-string v2, "LGE|Optimus Vu|batman_lgu|LG-F100L"

    aput-object v2, v0, v1

    const/16 v1, 0x5a2

    const-string v2, "LGE|Optimus Vu|batman_skt|LG-F100S"

    aput-object v2, v0, v1

    const/16 v1, 0x5a3

    const-string v2, "LGE|Optimus Vu|lge_325_skt|LG-F100S"

    aput-object v2, v0, v1

    const/16 v1, 0x5a4

    const-string v2, "LGE|Optimus Vu|vu10|LG-P895"

    aput-object v2, v0, v1

    const/16 v1, 0x5a5

    const-string v2, "LGE|Optimus Vu|vu10|LG-P895qb"

    aput-object v2, v0, v1

    const/16 v1, 0x5a6

    const-string v2, "LGE|Optimus Vu2|vu2kt|LG-F200K"

    aput-object v2, v0, v1

    const/16 v1, 0x5a7

    const-string v2, "LGE|Optimus Vu2|vu2sk|LG-F200S"

    aput-object v2, v0, v1

    const/16 v1, 0x5a8

    const-string v2, "LGE|Optimus Vu2|vu2u|LG-F200L"

    aput-object v2, v0, v1

    const/16 v1, 0x5a9

    const-string v2, "LGE|Optimus Vu2|vu2u|LG-F200LS"

    aput-object v2, v0, v1

    const/16 v1, 0x5aa

    const-string v2, "LGE|Optimus Vu:|batman_dcm|L-06D"

    aput-object v2, v0, v1

    const/16 v1, 0x5ab

    const-string v2, "LGE|Optimus Z|su950|SU950"

    aput-object v2, v0, v1

    const/16 v1, 0x5ac

    const-string v2, "LGE|Optimus Zone|e0v|LG-VS410PP"

    aput-object v2, v0, v1

    const/16 v1, 0x5ad

    const-string v2, "LGE|Optimus chat|elini|L-04C"

    aput-object v2, v0, v1

    const/16 v1, 0x5ae

    const-string v2, "LGE|PRADA 3.0|p2|L-02D"

    aput-object v2, v0, v1

    const/16 v1, 0x5af

    const-string v2, "LGE|PRADA 3.0|p2|LG-KU5400"

    aput-object v2, v0, v1

    const/16 v1, 0x5b0

    const-string v2, "LGE|PRADA 3.0|p2|LG-LU5400"

    aput-object v2, v0, v1

    const/16 v1, 0x5b1

    const-string v2, "LGE|PRADA 3.0|p2|LG-P940"

    aput-object v2, v0, v1

    const/16 v1, 0x5b2

    const-string v2, "LGE|PRADA 3.0|p2|LG-P940h"

    aput-object v2, v0, v1

    const/16 v1, 0x5b3

    const-string v2, "LGE|PRADA 3.0|p2|LG-SU540"

    aput-object v2, v0, v1

    const/16 v1, 0x5b4

    const-string v2, "LGE|PecanV|pecanV|LG-P355"

    aput-object v2, v0, v1

    const/16 v1, 0x5b5

    const-string v2, "LGE|Shine Plus with Google|alohag|LG-C710h"

    aput-object v2, v0, v1

    const/16 v1, 0x5b6

    const-string v2, "LGE|Smart Dios V8700|SE_TF|ref_SCTF"

    aput-object v2, v0, v1

    const/16 v1, 0x5b7

    const-string v2, "LGE|Spectrum|i_vzw|VS920 4G"

    aput-object v2, v0, v1

    const/16 v1, 0x5b8

    const-string v2, "LGE|Spectrum 2|d1lv|VS930 4G"

    aput-object v2, v0, v1

    const/16 v1, 0x5b9

    const-string v2, "LGE|Spirit 4G|l1m|LG-MS870"

    aput-object v2, v0, v1

    const/16 v1, 0x5ba

    const-string v2, "LGE|Splendor|u0_cdma|LG-US730"

    aput-object v2, v0, v1

    const/16 v1, 0x5bb

    const-string v2, "LGE|Spray|e2jps|402LG"

    aput-object v2, v0, v1

    const/16 v1, 0x5bc

    const-string v2, "LGE|Swift|swift|GT540"

    aput-object v2, v0, v1

    const/16 v1, 0x5bd

    const-string v2, "LGE|Swift|swift|GT540GO"

    aput-object v2, v0, v1

    const/16 v1, 0x5be

    const-string v2, "LGE|Swift|swift|GT540R"

    aput-object v2, v0, v1

    const/16 v1, 0x5bf

    const-string v2, "LGE|Swift|swift|GT540f"

    aput-object v2, v0, v1

    const/16 v1, 0x5c0

    const-string v2, "LGE|TBD|aka|LG-F520K"

    aput-object v2, v0, v1

    const/16 v1, 0x5c1

    const-string v2, "LGE|Thrill 4G|cosmo_310-410|LG-P925"

    aput-object v2, v0, v1

    const/16 v1, 0x5c2

    const-string v2, "LGE|Thrill 4G|p925|LG-P925"

    aput-object v2, v0, v1

    const/16 v1, 0x5c3

    const-string v2, "LGE|VU3|vu3|LG-F300K"

    aput-object v2, v0, v1

    const/16 v1, 0x5c4

    const-string v2, "LGE|VU3|vu3|LG-F300L"

    aput-object v2, v0, v1

    const/16 v1, 0x5c5

    const-string v2, "LGE|VU3|vu3|LG-F300S"

    aput-object v2, v0, v1

    const/16 v1, 0x5c6

    const-string v2, "LGE|Wine Smart|vfp|LG-D486"

    aput-object v2, v0, v1

    const/16 v1, 0x5c7

    const-string v2, "LGE|Wine Smart|vfp|LG-F480K"

    aput-object v2, v0, v1

    const/16 v1, 0x5c8

    const-string v2, "LGE|Wine Smart|vfp|LG-F480L"

    aput-object v2, v0, v1

    const/16 v1, 0x5c9

    const-string v2, "LGE|Wine Smart|vfp|LG-F480S"

    aput-object v2, v0, v1

    const/16 v1, 0x5ca

    const-string v2, "LGE|Y25|y25|LGL15G"

    aput-object v2, v0, v1

    const/16 v1, 0x5cb

    const-string v2, "LGE|Y25|y25c|LGL16C"

    aput-object v2, v0, v1

    const/16 v1, 0x5cc

    const-string v2, "Lenovo|60K72|ideatv_K72|ideatv K72"

    aput-object v2, v0, v1

    const/16 v1, 0x5cd

    const-string v2, "Lenovo|A10|A10|IdeaPadA10"

    aput-object v2, v0, v1

    const/16 v1, 0x5ce

    const-string v2, "Lenovo|A1000|A1000F|IdeaTabA1000-F"

    aput-object v2, v0, v1

    const/16 v1, 0x5cf

    const-string v2, "Lenovo|A1000-G|A1000G|IdeaTabA1000-G"

    aput-object v2, v0, v1

    const/16 v1, 0x5d0

    const-string v2, "Lenovo|A1000L|A1000LF|IdeaTabA1000L-F"

    aput-object v2, v0, v1

    const/16 v1, 0x5d1

    const-string v2, "Lenovo|A208t|A208t|Lenovo A208t"

    aput-object v2, v0, v1

    const/16 v1, 0x5d2

    const-string v2, "Lenovo|A2107A|A2107A-H|A2107A-H"

    aput-object v2, v0, v1

    const/16 v1, 0x5d3

    const-string v2, "Lenovo|A218t|A218t|Lenovo A218t"

    aput-object v2, v0, v1

    const/16 v1, 0x5d4

    const-string v2, "Lenovo|A269|A269|Lenovo A269"

    aput-object v2, v0, v1

    const/16 v1, 0x5d5

    const-string v2, "Lenovo|A269i|A269i|Lenovo A269i"

    aput-object v2, v0, v1

    const/16 v1, 0x5d6

    const-string v2, "Lenovo|A278t|A278t|Lenovo A278t"

    aput-object v2, v0, v1

    const/16 v1, 0x5d7

    const-string v2, "Lenovo|A3000|A3000|Lenovo A3000-H"

    aput-object v2, v0, v1

    const/16 v1, 0x5d8

    const-string v2, "Lenovo|A305E|A305e|LNV-Lenovo A305e"

    aput-object v2, v0, v1

    const/16 v1, 0x5d9

    const-string v2, "Lenovo|A305E|A305e|Lenovo A305e"

    aput-object v2, v0, v1

    const/16 v1, 0x5da

    const-string v2, "Lenovo|A308t|A308t|Lenovo A308t"

    aput-object v2, v0, v1

    const/16 v1, 0x5db

    const-string v2, "Lenovo|A318t|A318t|Lenovo A318t"

    aput-object v2, v0, v1

    const/16 v1, 0x5dc

    const-string v2, "Lenovo|A369|A369|Lenovo A369"

    aput-object v2, v0, v1

    const/16 v1, 0x5dd

    const-string v2, "Lenovo|A369i|A369i|Lenovo A369i"

    aput-object v2, v0, v1

    const/16 v1, 0x5de

    const-string v2, "Lenovo|A370e|A370e|LNV-Lenovo A370e"

    aput-object v2, v0, v1

    const/16 v1, 0x5df

    const-string v2, "Lenovo|A375e|A375e|LNV-Lenovo A375e"

    aput-object v2, v0, v1

    const/16 v1, 0x5e0

    const-string v2, "Lenovo|A376|A376|Lenovo A376"

    aput-object v2, v0, v1

    const/16 v1, 0x5e1

    const-string v2, "Lenovo|A378t|A378t|Lenovo A378t"

    aput-object v2, v0, v1

    const/16 v1, 0x5e2

    const-string v2, "Lenovo|A390|A390|Lenovo A390_ROW"

    aput-object v2, v0, v1

    const/16 v1, 0x5e3

    const-string v2, "Lenovo|A390t|A390t|Lenovo A390t"

    aput-object v2, v0, v1

    const/16 v1, 0x5e4

    const-string v2, "Lenovo|A398t|A398t|Lenovo A398t"

    aput-object v2, v0, v1

    const/16 v1, 0x5e5

    const-string v2, "Lenovo|A516|A516|Lenovo A516"

    aput-object v2, v0, v1

    const/16 v1, 0x5e6

    const-string v2, "Lenovo|A516|A516_ROW|Lenovo A516"

    aput-object v2, v0, v1

    const/16 v1, 0x5e7

    const-string v2, "Lenovo|A630|A630e|LNV-Lenovo A630e"

    aput-object v2, v0, v1

    const/16 v1, 0x5e8

    const-string v2, "Lenovo|A656|A656|Lenovo A656"

    aput-object v2, v0, v1

    const/16 v1, 0x5e9

    const-string v2, "Lenovo|A658T|A658t|Lenovo A658t"

    aput-object v2, v0, v1

    const/16 v1, 0x5ea

    const-string v2, "Lenovo|A670t|A670t|Lenovo A670t"

    aput-object v2, v0, v1

    const/16 v1, 0x5eb

    const-string v2, "Lenovo|A678t|A678t|Lenovo A678t"

    aput-object v2, v0, v1

    const/16 v1, 0x5ec

    const-string v2, "Lenovo|A706|armani|Lenovo A706"

    aput-object v2, v0, v1

    const/16 v1, 0x5ed

    const-string v2, "Lenovo|A706_ROW|armani_row|Lenovo A706_ROW"

    aput-object v2, v0, v1

    const/16 v1, 0x5ee

    const-string v2, "Lenovo|A720e|andorrap|Lenovo A720e"

    aput-object v2, v0, v1

    const/16 v1, 0x5ef

    const-string v2, "Lenovo|A750e|athenae|Lenovo A750e"

    aput-object v2, v0, v1

    const/16 v1, 0x5f0

    const-string v2, "Lenovo|A760|audi|Lenovo A760"

    aput-object v2, v0, v1

    const/16 v1, 0x5f1

    const-string v2, "Lenovo|A766|A766|Lenovo A766"

    aput-object v2, v0, v1

    const/16 v1, 0x5f2

    const-string v2, "Lenovo|A770e|athenaep|Lenovo A770e"

    aput-object v2, v0, v1

    const/16 v1, 0x5f3

    const-string v2, "Lenovo|A820|A820|Lenovo A820"

    aput-object v2, v0, v1

    const/16 v1, 0x5f4

    const-string v2, "Lenovo|A820e|andorra|Lenovo A820e"

    aput-object v2, v0, v1

    const/16 v1, 0x5f5

    const-string v2, "Lenovo|A830|A830|Lenovo A830"

    aput-object v2, v0, v1

    const/16 v1, 0x5f6

    const-string v2, "Lenovo|A850|A850|Lenovo A850"

    aput-object v2, v0, v1

    const/16 v1, 0x5f7

    const-string v2, "Lenovo|A850|A850_ROW|Lenovo A850"

    aput-object v2, v0, v1

    const/16 v1, 0x5f8

    const-string v2, "Lenovo|A860e|artini|Lenovo A860e"

    aput-object v2, v0, v1

    const/16 v1, 0x5f9

    const-string v2, "Lenovo|B6000-F|B6000|Lenovo B6000-F"

    aput-object v2, v0, v1

    const/16 v1, 0x5fa

    const-string v2, "Lenovo|B6000-H|B6000|Lenovo B6000-H"

    aput-object v2, v0, v1

    const/16 v1, 0x5fb

    const-string v2, "Lenovo|B6000-HV|B6000|Lenovo B6000-HV"

    aput-object v2, v0, v1

    const/16 v1, 0x5fc

    const-string v2, "Lenovo|B8000-F|B8000|Lenovo B8000-F"

    aput-object v2, v0, v1

    const/16 v1, 0x5fd

    const-string v2, "Lenovo|B8000-H|B8000|Lenovo B8000-H"

    aput-object v2, v0, v1

    const/16 v1, 0x5fe

    const-string v2, "Lenovo|E4002|E4002|MEDION E4002"

    aput-object v2, v0, v1

    const/16 v1, 0x5ff

    const-string v2, "Lenovo|EveryPad|A3000|IdeaTab A3000-F"

    aput-object v2, v0, v1

    const/16 v1, 0x600

    const-string v2, "Lenovo|IdeaTV|msm8660_surf|ideatv K91"

    aput-object v2, v0, v1

    const/16 v1, 0x601

    const-string v2, "Lenovo|IdeaTab A1000|A1000LF|LenovoA1000L-F"

    aput-object v2, v0, v1

    const/16 v1, 0x602

    const-string v2, "Lenovo|IdeaTab A1010|A1010T|IdeaTabA1010-T"

    aput-object v2, v0, v1

    const/16 v1, 0x603

    const-string v2, "Lenovo|IdeaTab A1020|A1020T|IdeaTabA1020-T"

    aput-object v2, v0, v1

    const/16 v1, 0x604

    const-string v2, "Lenovo|IdeaTab A3000|A3000|IdeaTab A3000-H"

    aput-object v2, v0, v1

    const/16 v1, 0x605

    const-string v2, "Lenovo|IdeaTab A3000|A3000|Vodafone Smart Tab III 7"

    aput-object v2, v0, v1

    const/16 v1, 0x606

    const-string v2, "Lenovo|IdeaTab A5000|A5000E|IdeaTabA5000-E"

    aput-object v2, v0, v1

    const/16 v1, 0x607

    const-string v2, "Lenovo|IdeaTab S6000|S6000|IdeaTab S6000-F"

    aput-object v2, v0, v1

    const/16 v1, 0x608

    const-string v2, "Lenovo|IdeaTab S6000|S6000|IdeaTab S6000-H"

    aput-object v2, v0, v1

    const/16 v1, 0x609

    const-string v2, "Lenovo|IdeaTab S6000|S6000|Vodafone Smart Tab III 10"

    aput-object v2, v0, v1

    const/16 v1, 0x60a

    const-string v2, "Lenovo|Indigo|Indigo|ThinkPad Tablet"

    aput-object v2, v0, v1

    const/16 v1, 0x60b

    const-string v2, "Lenovo|K800|K800|Lenovo K800"

    aput-object v2, v0, v1

    const/16 v1, 0x60c

    const-string v2, "Lenovo|K900|K900|Lenovo K900"

    aput-object v2, v0, v1

    const/16 v1, 0x60d

    const-string v2, "Lenovo|K900|K900_ROW|Lenovo K900_ROW"

    aput-object v2, v0, v1

    const/16 v1, 0x60e

    const-string v2, "Lenovo|LIFETAB E10310|LIFETAB_E10310|LIFETAB_E10310"

    aput-object v2, v0, v1

    const/16 v1, 0x60f

    const-string v2, "Lenovo|LIFETAB E7310|LIFETAB_E7310|LIFETAB_E7310"

    aput-object v2, v0, v1

    const/16 v1, 0x610

    const-string v2, "Lenovo|LIFETAB E7310|LIFETAB_E7310|LIFETAB_E7312"

    aput-object v2, v0, v1

    const/16 v1, 0x611

    const-string v2, "Lenovo|Lenovo|A708t|Lenovo A708t"

    aput-object v2, v0, v1

    const/16 v1, 0x612

    const-string v2, "Lenovo|Lenovo|A880|Lenovo A880"

    aput-object v2, v0, v1

    const/16 v1, 0x613

    const-string v2, "Lenovo|Lenovo  TAB 2 A7-30HC|A7-30HC|Lenovo TAB 2 A7-30HC"

    aput-object v2, v0, v1

    const/16 v1, 0x614

    const-string v2, "Lenovo|Lenovo  X2|X2-AP|Lenovo X2-AP"

    aput-object v2, v0, v1

    const/16 v1, 0x615

    const-string v2, "Lenovo|Lenovo A2105|Lenovo_A2105|Lenovo_A2105"

    aput-object v2, v0, v1

    const/16 v1, 0x616

    const-string v2, "Lenovo|Lenovo A2800|A2800-d|Lenovo A2800-d"

    aput-object v2, v0, v1

    const/16 v1, 0x617

    const-string v2, "Lenovo|Lenovo A3300|A3300-GV|LenovoA3300-GV"

    aput-object v2, v0, v1

    const/16 v1, 0x618

    const-string v2, "Lenovo|Lenovo A3300|A3300-H|LenovoA3300-H"

    aput-object v2, v0, v1

    const/16 v1, 0x619

    const-string v2, "Lenovo|Lenovo A3300|A3300-HV|LenovoA3300-HV"

    aput-object v2, v0, v1

    const/16 v1, 0x61a

    const-string v2, "Lenovo|Lenovo A3300|A3300-T|Lenovo A3300-T"

    aput-object v2, v0, v1

    const/16 v1, 0x61b

    const-string v2, "Lenovo|Lenovo A3300-GV|A3300-GV|LenovoA3300-GV"

    aput-object v2, v0, v1

    const/16 v1, 0x61c

    const-string v2, "Lenovo|Lenovo A3500|A3500HV|Lenovo A3500-HV"

    aput-object v2, v0, v1

    const/16 v1, 0x61d

    const-string v2, "Lenovo|Lenovo A3500-F|A3500F|EveryPad2"

    aput-object v2, v0, v1

    const/16 v1, 0x61e

    const-string v2, "Lenovo|Lenovo A380e|A380e|LNV-Lenovo A380e"

    aput-object v2, v0, v1

    const/16 v1, 0x61f

    const-string v2, "Lenovo|Lenovo A385e|A385e|LNV-Lenovo A385e"

    aput-object v2, v0, v1

    const/16 v1, 0x620

    const-string v2, "Lenovo|Lenovo A395e|A395e|LNV-Lenovo A395e"

    aput-object v2, v0, v1

    const/16 v1, 0x621

    const-string v2, "Lenovo|Lenovo A396|A396_TY|Lenovo A396_TY"

    aput-object v2, v0, v1

    const/16 v1, 0x622

    const-string v2, "Lenovo|Lenovo A505e|A505e|LNV-Lenovo A505e"

    aput-object v2, v0, v1

    const/16 v1, 0x623

    const-string v2, "Lenovo|Lenovo A560|A560_msm8610|LNV-Lenovo A560"

    aput-object v2, v0, v1

    const/16 v1, 0x624

    const-string v2, "Lenovo|Lenovo A588t|LenovoA588t|LenovoA588t"

    aput-object v2, v0, v1

    const/16 v1, 0x625

    const-string v2, "Lenovo|Lenovo A680|A680|Lenovo A680_ROW"

    aput-object v2, v0, v1

    const/16 v1, 0x626

    const-string v2, "Lenovo|Lenovo A690e|A690e|LNV-Lenovo A690e"

    aput-object v2, v0, v1

    const/16 v1, 0x627

    const-string v2, "Lenovo|Lenovo A7-30GC|A7-30GC|Lenovo TAB 2 A7-30GC"

    aput-object v2, v0, v1

    const/16 v1, 0x628

    const-string v2, "Lenovo|Lenovo A7-30H|A7-30H|Lenovo TAB 2 A7-30H"

    aput-object v2, v0, v1

    const/16 v1, 0x629

    const-string v2, "Lenovo|Lenovo A7000|A7000-a|Lenovo A7000-a"

    aput-object v2, v0, v1

    const/16 v1, 0x62a

    const-string v2, "Lenovo|Lenovo A780e|A780e|LNV-Lenovo A780e"

    aput-object v2, v0, v1

    const/16 v1, 0x62b

    const-string v2, "Lenovo|Lenovo A785e|A785e|LNV-Lenovo A785e"

    aput-object v2, v0, v1

    const/16 v1, 0x62c

    const-string v2, "Lenovo|Lenovo A828|A858|Lenovo A858"

    aput-object v2, v0, v1

    const/16 v1, 0x62d

    const-string v2, "Lenovo|Lenovo B8080|B8080|Lenovo B8080-F"

    aput-object v2, v0, v1

    const/16 v1, 0x62e

    const-string v2, "Lenovo|Lenovo K50|aio_otfp|Lenovo K50-T5"

    aput-object v2, v0, v1

    const/16 v1, 0x62f

    const-string v2, "Lenovo|Lenovo K50|aio_otfp|Lenovo K50-t5"

    aput-object v2, v0, v1

    const/16 v1, 0x630

    const-string v2, "Lenovo|Lenovo K910e|kitone|LNV-Lenovo K910e"

    aput-object v2, v0, v1

    const/16 v1, 0x631

    const-string v2, "Lenovo|Lenovo P70|P70-A|Lenovo P70-A"

    aput-object v2, v0, v1

    const/16 v1, 0x632

    const-string v2, "Lenovo|Lenovo P70|P70-t|Lenovo P70-t"

    aput-object v2, v0, v1

    const/16 v1, 0x633

    const-string v2, "Lenovo|Lenovo S60|sisleylt|Lenovo S60-t"

    aput-object v2, v0, v1

    const/16 v1, 0x634

    const-string v2, "Lenovo|Lenovo S60|sisleylw|Lenovo S60-w"

    aput-object v2, v0, v1

    const/16 v1, 0x635

    const-string v2, "Lenovo|Lenovo S650_ROW|S650_ROW|Lenovo S650"

    aput-object v2, v0, v1

    const/16 v1, 0x636

    const-string v2, "Lenovo|Lenovo S90|sisleye|Lenovo S90-e"

    aput-object v2, v0, v1

    const/16 v1, 0x637

    const-string v2, "Lenovo|Lenovo S930_ROW|S930_ROW|Lenovo S930"

    aput-object v2, v0, v1

    const/16 v1, 0x638

    const-string v2, "Lenovo|Lenovo TAB 2 A10|A10-70F|Lenovo TAB 2 A10-70F"

    aput-object v2, v0, v1

    const/16 v1, 0x639

    const-string v2, "Lenovo|Lenovo TAB 2 A10|A10-70L|Lenovo TAB 2 A10-70L"

    aput-object v2, v0, v1

    const/16 v1, 0x63a

    const-string v2, "Lenovo|Lenovo TAB 2 A10|A10-70LC|Lenovo TAB 2 A10-70LC"

    aput-object v2, v0, v1

    const/16 v1, 0x63b

    const-string v2, "Lenovo|Lenovo TAB 2 A7-10F|Tab2A7-10F|Tab2A7-10F"

    aput-object v2, v0, v1

    const/16 v1, 0x63c

    const-string v2, "Lenovo|Lenovo TAB 2 A7-30HC|A7-30HC|Lenovo 2 A7-30HC"

    aput-object v2, v0, v1

    const/16 v1, 0x63d

    const-string v2, "Lenovo|Lenovo TAB 2 A7-30TC|A7-30TC|Lenovo 2 A7-30TC"

    aput-object v2, v0, v1

    const/16 v1, 0x63e

    const-string v2, "Lenovo|Lenovo TAB A10-80HC|A10_80HC|TAB A10-80HC"

    aput-object v2, v0, v1

    const/16 v1, 0x63f

    const-string v2, "Lenovo|Lenovo TAB S8-50LC|S8-50LC|Lenovo S8-50LC"

    aput-object v2, v0, v1

    const/16 v1, 0x640

    const-string v2, "Lenovo|Lenovo X2|X2-EU|Lenovo X2-EU"

    aput-object v2, v0, v1

    const/16 v1, 0x641

    const-string v2, "Lenovo|Lenovo YogaTbalet2-830F|YT2|YOGA Tablet 2-830F"

    aput-object v2, v0, v1

    const/16 v1, 0x642

    const-string v2, "Lenovo|Lenvo S960|S960_ROW|Lenovo S960"

    aput-object v2, v0, v1

    const/16 v1, 0x643

    const-string v2, "Lenovo|P780|P780|Lenovo P780"

    aput-object v2, v0, v1

    const/16 v1, 0x644

    const-string v2, "Lenovo|P780|P780_ROW|Lenovo P780"

    aput-object v2, v0, v1

    const/16 v1, 0x645

    const-string v2, "Lenovo|P780|P780_ROW|Lenovo P780_ROW"

    aput-object v2, v0, v1

    const/16 v1, 0x646

    const-string v2, "Lenovo|S5000|S5000|Lenovo S5000-F"

    aput-object v2, v0, v1

    const/16 v1, 0x647

    const-string v2, "Lenovo|S5000|S5000|Lenovo S5000-H"

    aput-object v2, v0, v1

    const/16 v1, 0x648

    const-string v2, "Lenovo|S6000L|S6000L|Lenovo S6000L-F"

    aput-object v2, v0, v1

    const/16 v1, 0x649

    const-string v2, "Lenovo|S61|ideatv_S61|ideatv S61"

    aput-object v2, v0, v1

    const/16 v1, 0x64a

    const-string v2, "Lenovo|S680|seoul|Lenovo S680"

    aput-object v2, v0, v1

    const/16 v1, 0x64b

    const-string v2, "Lenovo|S686|Alaska|Lenovo S686"

    aput-object v2, v0, v1

    const/16 v1, 0x64c

    const-string v2, "Lenovo|S720|S720|Lenovo S720"

    aput-object v2, v0, v1

    const/16 v1, 0x64d

    const-string v2, "Lenovo|S750|S750|Lenovo S750"

    aput-object v2, v0, v1

    const/16 v1, 0x64e

    const-string v2, "Lenovo|S820|S820|Lenovo S820"

    aput-object v2, v0, v1

    const/16 v1, 0x64f

    const-string v2, "Lenovo|S820|S820_ROW|Lenovo S820"

    aput-object v2, v0, v1

    const/16 v1, 0x650

    const-string v2, "Lenovo|S820|S820_ROW|Lenovo S820_ROW"

    aput-object v2, v0, v1

    const/16 v1, 0x651

    const-string v2, "Lenovo|S820e|applee|Lenovo S820e"

    aput-object v2, v0, v1

    const/16 v1, 0x652

    const-string v2, "Lenovo|S850e|sichuan|Lenovo S850e"

    aput-object v2, v0, v1

    const/16 v1, 0x653

    const-string v2, "Lenovo|S868|S868t|Lenovo S868t"

    aput-object v2, v0, v1

    const/16 v1, 0x654

    const-string v2, "Lenovo|S870e|S870e|LNV-Lenovo S870e"

    aput-object v2, v0, v1

    const/16 v1, 0x655

    const-string v2, "Lenovo|S870e|S870e|Lenovo S870e"

    aput-object v2, v0, v1

    const/16 v1, 0x656

    const-string v2, "Lenovo|S898t|S898t|Lenovo S898t"

    aput-object v2, v0, v1

    const/16 v1, 0x657

    const-string v2, "Lenovo|S90-L|sisleyr_amx|Lenovo S90-L"

    aput-object v2, v0, v1

    const/16 v1, 0x658

    const-string v2, "Lenovo|S920|S920|Lenovo S920"

    aput-object v2, v0, v1

    const/16 v1, 0x659

    const-string v2, "Lenovo|S960|S960|Lenovo S960"

    aput-object v2, v0, v1

    const/16 v1, 0x65a

    const-string v2, "Motorola|Atrix|olympus|MB860"

    aput-object v2, v0, v1

    const/16 v1, 0x65b

    const-string v2, "Motorola|Atrix|olympus|MB861"

    aput-object v2, v0, v1

    const/16 v1, 0x65c

    const-string v2, "Motorola|Atrix|olympus|ME860"

    aput-object v2, v0, v1

    const/16 v1, 0x65d

    const-string v2, "Motorola|Atrix HD|qinara|MB886"

    aput-object v2, v0, v1

    const/16 v1, 0x65e

    const-string v2, "Motorola|Backflip|motus|MB300"

    aput-object v2, v0, v1

    const/16 v1, 0x65f

    const-string v2, "Motorola|Backflip|motus|ME600"

    aput-object v2, v0, v1

    const/16 v1, 0x660

    const-string v2, "Motorola|CLIQ|morrison|MB200"

    aput-object v2, v0, v1

    const/16 v1, 0x661

    const-string v2, "Motorola|CLIQ|morrison|morrison"

    aput-object v2, v0, v1

    const/16 v1, 0x662

    const-string v2, "Motorola|Charm|umts_basil|MB502"

    aput-object v2, v0, v1

    const/16 v1, 0x663

    const-string v2, "Motorola|Citrus|cdma_ciena|WX442"

    aput-object v2, v0, v1

    const/16 v1, 0x664

    const-string v2, "Motorola|Citrus|cdma_ciena|WX445"

    aput-object v2, v0, v1

    const/16 v1, 0x665

    const-string v2, "Motorola|Citrus|cdma_ciena|XT301"

    aput-object v2, v0, v1

    const/16 v1, 0x666

    const-string v2, "Motorola|Cliq-XT|zeppelin|MB501"

    aput-object v2, v0, v1

    const/16 v1, 0x667

    const-string v2, "Motorola|Cliq-XT|zeppelin|ME501"

    aput-object v2, v0, v1

    const/16 v1, 0x668

    const-string v2, "Motorola|DROID RAZR HD|vanquish_u|RAZR HD"

    aput-object v2, v0, v1

    const/16 v1, 0x669

    const-string v2, "Motorola|DROID RAZR HD|vanquish_u|XT925"

    aput-object v2, v0, v1

    const/16 v1, 0x66a

    const-string v2, "Motorola|DROID RAZR M|scorpion_mini|XT907"

    aput-object v2, v0, v1

    const/16 v1, 0x66b

    const-string v2, "Motorola|DROID RAZR i|smi|XT890"

    aput-object v2, v0, v1

    const/16 v1, 0x66c

    const-string v2, "Motorola|DROID Turbo|quark|XT1254"

    aput-object v2, v0, v1

    const/16 v1, 0x66d

    const-string v2, "Motorola|Defy|umts_jordan|MB525"

    aput-object v2, v0, v1

    const/16 v1, 0x66e

    const-string v2, "Motorola|Defy|umts_jordan|MB526"

    aput-object v2, v0, v1

    const/16 v1, 0x66f

    const-string v2, "Motorola|Defy|umts_jordan|ME525"

    aput-object v2, v0, v1

    const/16 v1, 0x670

    const-string v2, "Motorola|Defy|umts_jordan|ME525+"

    aput-object v2, v0, v1

    const/16 v1, 0x671

    const-string v2, "Motorola|Defy|umts_jordan|unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x672

    const-string v2, "Motorola|Defy Mini|TinBoost|XT320"

    aput-object v2, v0, v1

    const/16 v1, 0x673

    const-string v2, "Motorola|Defy Mini|TinBoost|XT321"

    aput-object v2, v0, v1

    const/16 v1, 0x674

    const-string v2, "Motorola|Defy Mini|tinboost_umts|XT320"

    aput-object v2, v0, v1

    const/16 v1, 0x675

    const-string v2, "Motorola|Defy Mini|tinboost_umts|XT321"

    aput-object v2, v0, v1

    const/16 v1, 0x676

    const-string v2, "Motorola|Defy Pro|XT560|XT560"

    aput-object v2, v0, v1

    const/16 v1, 0x677

    const-string v2, "Motorola|Devour|calgary|calgary"

    aput-object v2, v0, v1

    const/16 v1, 0x678

    const-string v2, "Motorola|Droid|miler|A854"

    aput-object v2, v0, v1

    const/16 v1, 0x679

    const-string v2, "Motorola|Droid|sholes|Droid"

    aput-object v2, v0, v1

    const/16 v1, 0x67a

    const-string v2, "Motorola|Droid|umts_sholes|A853"

    aput-object v2, v0, v1

    const/16 v1, 0x67b

    const-string v2, "Motorola|Droid|umts_sholes|Milestone"

    aput-object v2, v0, v1

    const/16 v1, 0x67c

    const-string v2, "Motorola|Droid|umts_sholes|XT701"

    aput-object v2, v0, v1

    const/16 v1, 0x67d

    const-string v2, "Motorola|Droid|umts_sholes|XT702"

    aput-object v2, v0, v1

    const/16 v1, 0x67e

    const-string v2, "Motorola|Droid|umts_sholes|XT720"

    aput-object v2, v0, v1

    const/16 v1, 0x67f

    const-string v2, "Motorola|Droid|umts_sholes|umts"

    aput-object v2, v0, v1

    const/16 v1, 0x680

    const-string v2, "Motorola|Droid 3|cdma_solana|DROID3"

    aput-object v2, v0, v1

    const/16 v1, 0x681

    const-string v2, "Motorola|Droid 4|cdma_maserati|DROID4"

    aput-object v2, v0, v1

    const/16 v1, 0x682

    const-string v2, "Motorola|Droid II|cdma_droid2|A955"

    aput-object v2, v0, v1

    const/16 v1, 0x683

    const-string v2, "Motorola|Droid II|cdma_droid2|DROID2"

    aput-object v2, v0, v1

    const/16 v1, 0x684

    const-string v2, "Motorola|Droid II|cdma_droid2we|DROID2 GLOBAL"

    aput-object v2, v0, v1

    const/16 v1, 0x685

    const-string v2, "Motorola|Droid MAXX|obake-maxx|XT1080"

    aput-object v2, v0, v1

    const/16 v1, 0x686

    const-string v2, "Motorola|Droid Mini|obakem|XT1030"

    aput-object v2, v0, v1

    const/16 v1, 0x687

    const-string v2, "Motorola|Droid Pro|cdma_venus2|Milestone PLUS"

    aput-object v2, v0, v1

    const/16 v1, 0x688

    const-string v2, "Motorola|Droid Pro|cdma_venus2|XT610"

    aput-object v2, v0, v1

    const/16 v1, 0x689

    const-string v2, "Motorola|Droid RAZR|umts_spyder|XT910"

    aput-object v2, v0, v1

    const/16 v1, 0x68a

    const-string v2, "Motorola|Droid Razr M|scorpion_mini_t|201M"

    aput-object v2, v0, v1

    const/16 v1, 0x68b

    const-string v2, "Motorola|Droid Ultra|obake|XT1080"

    aput-object v2, v0, v1

    const/16 v1, 0x68c

    const-string v2, "Motorola|Droid X|cdma_shadow|DROIDX"

    aput-object v2, v0, v1

    const/16 v1, 0x68d

    const-string v2, "Motorola|Droid X|cdma_shadow|MB810"

    aput-object v2, v0, v1

    const/16 v1, 0x68e

    const-string v2, "Motorola|Droid X|cdma_shadow|ME811"

    aput-object v2, v0, v1

    const/16 v1, 0x68f

    const-string v2, "Motorola|Droid X|cdma_shadow|Milestone X"

    aput-object v2, v0, v1

    const/16 v1, 0x690

    const-string v2, "Motorola|Droid X|cdma_shadow|MotoroiX"

    aput-object v2, v0, v1

    const/16 v1, 0x691

    const-string v2, "Motorola|Droid X2|daytona|Milestone X2"

    aput-object v2, v0, v1

    const/16 v1, 0x692

    const-string v2, "Motorola|Electrify M|solstice|XT901"

    aput-object v2, v0, v1

    const/16 v1, 0x693

    const-string v2, "Motorola|Flipout|umts_ruth|MB511"

    aput-object v2, v0, v1

    const/16 v1, 0x694

    const-string v2, "Motorola|Flipout|umts_ruth|ME511"

    aput-object v2, v0, v1

    const/16 v1, 0x695

    const-string v2, "Motorola|Flipout|umts_ruth|MotoMB511"

    aput-object v2, v0, v1

    const/16 v1, 0x696

    const-string v2, "Motorola|Glam XT800|titanium|XT800"

    aput-object v2, v0, v1

    const/16 v1, 0x697

    const-string v2, "Motorola|Iron Rock|umts_irock|XT627"

    aput-object v2, v0, v1

    const/16 v1, 0x698

    const-string v2, "Motorola|MOTO E|condor_cdma|XT1019"

    aput-object v2, v0, v1

    const/16 v1, 0x699

    const-string v2, "Motorola|MOTO E|condor_cdma|XT830C"

    aput-object v2, v0, v1

    const/16 v1, 0x69a

    const-string v2, "Motorola|MOTO E|condor_umts|XT1021"

    aput-object v2, v0, v1

    const/16 v1, 0x69b

    const-string v2, "Motorola|MOTO E|condor_umts|XT1023"

    aput-object v2, v0, v1

    const/16 v1, 0x69c

    const-string v2, "Motorola|MOTO E|condor_umtsds|XT1022"

    aput-object v2, v0, v1

    const/16 v1, 0x69d

    const-string v2, "Motorola|MOTO G|falcon_umts|XT1002"

    aput-object v2, v0, v1

    const/16 v1, 0x69e

    const-string v2, "Motorola|MOTO G|falcon_umts|XT1003"

    aput-object v2, v0, v1

    const/16 v1, 0x69f

    const-string v2, "Motorola|MOTO G|falcon_umts|XT1032"

    aput-object v2, v0, v1

    const/16 v1, 0x6a0

    const-string v2, "Motorola|MOTO G|peregrine|XT1039"

    aput-object v2, v0, v1

    const/16 v1, 0x6a1

    const-string v2, "Motorola|MOTO G|peregrine|XT1042"

    aput-object v2, v0, v1

    const/16 v1, 0x6a2

    const-string v2, "Motorola|MOTO G|peregrine|XT1045"

    aput-object v2, v0, v1

    const/16 v1, 0x6a3

    const-string v2, "Motorola|MOTO G|titan_umts|XT1063"

    aput-object v2, v0, v1

    const/16 v1, 0x6a4

    const-string v2, "Motorola|MOTO G|titan_umts|XT1064"

    aput-object v2, v0, v1

    const/16 v1, 0x6a5

    const-string v2, "Motorola|MOTO G|titan_umtsds|XT1068"

    aput-object v2, v0, v1

    const/16 v1, 0x6a6

    const-string v2, "Motorola|MOTO G|titan_umtsds|titan_niibr_ds"

    aput-object v2, v0, v1

    const/16 v1, 0x6a7

    const-string v2, "Motorola|MOTO G LTE|peregrine|XT1039"

    aput-object v2, v0, v1

    const/16 v1, 0x6a8

    const-string v2, "Motorola|MOTO G LTE|peregrine|XT1040"

    aput-object v2, v0, v1

    const/16 v1, 0x6a9

    const-string v2, "Motorola|MOTO G LTE|peregrine|XT1045"

    aput-object v2, v0, v1

    const/16 v1, 0x6aa

    const-string v2, "Motorola|MOTO G w|peregrine|XT1039"

    aput-object v2, v0, v1

    const/16 v1, 0x6ab

    const-string v2, "Motorola|MOTO G w|peregrine|XT1040"

    aput-object v2, v0, v1

    const/16 v1, 0x6ac

    const-string v2, "Motorola|MOTO X|ghost|XT1053"

    aput-object v2, v0, v1

    const/16 v1, 0x6ad

    const-string v2, "Motorola|MOTO X|ghost|XT1058"

    aput-object v2, v0, v1

    const/16 v1, 0x6ae

    const-string v2, "Motorola|MOTO X|victara|XT1092"

    aput-object v2, v0, v1

    const/16 v1, 0x6af

    const-string v2, "Motorola|MOTO X|victara|XT1093"

    aput-object v2, v0, v1

    const/16 v1, 0x6b0

    const-string v2, "Motorola|MOTO X|victara|XT1094"

    aput-object v2, v0, v1

    const/16 v1, 0x6b1

    const-string v2, "Motorola|MOTO X|victara|XT1095"

    aput-object v2, v0, v1

    const/16 v1, 0x6b2

    const-string v2, "Motorola|MOTO X|victara|XT1096"

    aput-object v2, v0, v1

    const/16 v1, 0x6b3

    const-string v2, "Motorola|MOTO X|victara|XT1097"

    aput-object v2, v0, v1

    const/16 v1, 0x6b4

    const-string v2, "Motorola|MOTOROLA ELECTRIFY 2|cdma_yangtze|XT881"

    aput-object v2, v0, v1

    const/16 v1, 0x6b5

    const-string v2, "Motorola|MOTOROLA RAZR HD|vanquish_u|RAZR HD"

    aput-object v2, v0, v1

    const/16 v1, 0x6b6

    const-string v2, "Motorola|MOTOROLA RAZR M|smq_t|201M"

    aput-object v2, v0, v1

    const/16 v1, 0x6b7

    const-string v2, "Motorola|MOTOROLA RAZR i|smi|XT890"

    aput-object v2, v0, v1

    const/16 v1, 0x6b8

    const-string v2, "Motorola|Master Touch|umts_primus|XT621"

    aput-object v2, v0, v1

    const/16 v1, 0x6b9

    const-string v2, "Motorola|Milestone2|umts_milestone2|A953"

    aput-object v2, v0, v1

    const/16 v1, 0x6ba

    const-string v2, "Motorola|Milestone2|umts_milestone2|ME722"

    aput-object v2, v0, v1

    const/16 v1, 0x6bb

    const-string v2, "Motorola|Milestone2|umts_milestone2|MotoA953"

    aput-object v2, v0, v1

    const/16 v1, 0x6bc

    const-string v2, "Motorola|Moto Defy XT|XT535|XT535"

    aput-object v2, v0, v1

    const/16 v1, 0x6bd

    const-string v2, "Motorola|Moto Defy XT|tinboostplus_cdma|XT555C"

    aput-object v2, v0, v1

    const/16 v1, 0x6be

    const-string v2, "Motorola|Moto Defy XT|tinboostplus_cdma|XT556"

    aput-object v2, v0, v1

    const/16 v1, 0x6bf

    const-string v2, "Motorola|Moto Defy XT|tinboostplus_cdma|XT557"

    aput-object v2, v0, v1

    const/16 v1, 0x6c0

    const-string v2, "Motorola|Moto Defy XT|tinboostplus_umts|XT535"

    aput-object v2, v0, v1

    const/16 v1, 0x6c1

    const-string v2, "Motorola|Moto E|condor_cdma|XT1019"

    aput-object v2, v0, v1

    const/16 v1, 0x6c2

    const-string v2, "Motorola|Moto E|condor_udstv|XT1025"

    aput-object v2, v0, v1

    const/16 v1, 0x6c3

    const-string v2, "Motorola|Moto E|condor_umts|XT1021"

    aput-object v2, v0, v1

    const/16 v1, 0x6c4

    const-string v2, "Motorola|Moto E|condor_umts|XT1023"

    aput-object v2, v0, v1

    const/16 v1, 0x6c5

    const-string v2, "Motorola|Moto E|condor_umtsds|XT1022"

    aput-object v2, v0, v1

    const/16 v1, 0x6c6

    const-string v2, "Motorola|Moto G|falcon_cdma|XT1028"

    aput-object v2, v0, v1

    const/16 v1, 0x6c7

    const-string v2, "Motorola|Moto G|falcon_cdma|XT1031"

    aput-object v2, v0, v1

    const/16 v1, 0x6c8

    const-string v2, "Motorola|Moto G|falcon_cdma|XT937C"

    aput-object v2, v0, v1

    const/16 v1, 0x6c9

    const-string v2, "Motorola|Moto G|falcon_umts|XT1008"

    aput-object v2, v0, v1

    const/16 v1, 0x6ca

    const-string v2, "Motorola|Moto G|falcon_umts|XT1032"

    aput-object v2, v0, v1

    const/16 v1, 0x6cb

    const-string v2, "Motorola|Moto G|falcon_umts|XT1034"

    aput-object v2, v0, v1

    const/16 v1, 0x6cc

    const-string v2, "Motorola|Moto G|falcon_umts|XT939G"

    aput-object v2, v0, v1

    const/16 v1, 0x6cd

    const-string v2, "Motorola|Moto G|falcon_umtsds|XT1033"

    aput-object v2, v0, v1

    const/16 v1, 0x6ce

    const-string v2, "Motorola|Moto G|titan_udstv|XT1069"

    aput-object v2, v0, v1

    const/16 v1, 0x6cf

    const-string v2, "Motorola|Moto G|titan_udstv|titan_retbr_dstv"

    aput-object v2, v0, v1

    const/16 v1, 0x6d0

    const-string v2, "Motorola|Moto G|titan_umts|XT1063"

    aput-object v2, v0, v1

    const/16 v1, 0x6d1

    const-string v2, "Motorola|Moto G|titan_umts|XT1064"

    aput-object v2, v0, v1

    const/16 v1, 0x6d2

    const-string v2, "Motorola|Moto G|titan_umtsds|XT1068"

    aput-object v2, v0, v1

    const/16 v1, 0x6d3

    const-string v2, "Motorola|Moto G w|peregrine|XT1045"

    aput-object v2, v0, v1

    const/16 v1, 0x6d4

    const-string v2, "Motorola|Moto G w|peregrine|XT1040"

    aput-object v2, v0, v1

    const/16 v1, 0x6d5

    const-string v2, "Motorola|Moto MAXX|quark_umts|XT1225"

    aput-object v2, v0, v1

    const/16 v1, 0x6d6

    const-string v2, "Motorola|Moto X|ghost|XT1049"

    aput-object v2, v0, v1

    const/16 v1, 0x6d7

    const-string v2, "Motorola|Moto X|ghost|XT1050"

    aput-object v2, v0, v1

    const/16 v1, 0x6d8

    const-string v2, "Motorola|Moto X|ghost|XT1052"

    aput-object v2, v0, v1

    const/16 v1, 0x6d9

    const-string v2, "Motorola|Moto X|ghost|XT1053"

    aput-object v2, v0, v1

    const/16 v1, 0x6da

    const-string v2, "Motorola|Moto X|ghost|XT1055"

    aput-object v2, v0, v1

    const/16 v1, 0x6db

    const-string v2, "Motorola|Moto X|ghost|XT1056"

    aput-object v2, v0, v1

    const/16 v1, 0x6dc

    const-string v2, "Motorola|Moto X|ghost|XT1058"

    aput-object v2, v0, v1

    const/16 v1, 0x6dd

    const-string v2, "Motorola|Moto X|ghost|XT1060"

    aput-object v2, v0, v1

    const/16 v1, 0x6de

    const-string v2, "Motorola|Moto X|victara|XT1097"

    aput-object v2, v0, v1

    const/16 v1, 0x6df

    const-string v2, "Motorola|Moto X|victara|XT1098"

    aput-object v2, v0, v1

    const/16 v1, 0x6e0

    const-string v2, "Motorola|Motoluxe|XT611|XT611"

    aput-object v2, v0, v1

    const/16 v1, 0x6e1

    const-string v2, "Motorola|Motoluxe|XT615|XT615"

    aput-object v2, v0, v1

    const/16 v1, 0x6e2

    const-string v2, "Motorola|Motoluxe|XT682|XT682"

    aput-object v2, v0, v1

    const/16 v1, 0x6e3

    const-string v2, "Motorola|Motoluxe|ironmax_umts|XT615"

    aput-object v2, v0, v1

    const/16 v1, 0x6e4

    const-string v2, "Motorola|Motoluxe|ironmax_umts|XT685"

    aput-object v2, v0, v1

    const/16 v1, 0x6e5

    const-string v2, "Motorola|Motoluxe|ironmaxct_cdma|Motorola MOT-XT681"

    aput-object v2, v0, v1

    const/16 v1, 0x6e6

    const-string v2, "Motorola|Motoluxe|ironmaxtv_umts|XT687"

    aput-object v2, v0, v1

    const/16 v1, 0x6e7

    const-string v2, "Motorola|Motoluxe|umts_irock|XT626"

    aput-object v2, v0, v1

    const/16 v1, 0x6e8

    const-string v2, "Motorola|Motoluxe|umts_irock|XT627"

    aput-object v2, v0, v1

    const/16 v1, 0x6e9

    const-string v2, "Motorola|Motoroi|sholest|Milestone XT720"

    aput-object v2, v0, v1

    const/16 v1, 0x6ea

    const-string v2, "Motorola|Motoroi|sholest|Motorola XT720"

    aput-object v2, v0, v1

    const/16 v1, 0x6eb

    const-string v2, "Motorola|Motoroi|sholest|XT720"

    aput-object v2, v0, v1

    const/16 v1, 0x6ec

    const-string v2, "Motorola|Motorola Atrix HD|qinara|MB886"

    aput-object v2, v0, v1

    const/16 v1, 0x6ed

    const-string v2, "Motorola|Motorola Master Touch|umts_primus|XT621"

    aput-object v2, v0, v1

    const/16 v1, 0x6ee

    const-string v2, "Motorola|Motorola Photon|asanti_c|XT897"

    aput-object v2, v0, v1

    const/16 v1, 0x6ef

    const-string v2, "Motorola|Motorola Photon|asanti_c|XT897S"

    aput-object v2, v0, v1

    const/16 v1, 0x6f0

    const-string v2, "Motorola|Motorola RAZR HD|vanquish|DROID RAZR HD"

    aput-object v2, v0, v1

    const/16 v1, 0x6f1

    const-string v2, "Motorola|Motorola RAZR M|smq|XT907"

    aput-object v2, v0, v1

    const/16 v1, 0x6f2

    const-string v2, "Motorola|Motorola Razr V|umts_yangtze|XT885"

    aput-object v2, v0, v1

    const/16 v1, 0x6f3

    const-string v2, "Motorola|Motorola Razr V|umts_yangtze|XT886"

    aput-object v2, v0, v1

    const/16 v1, 0x6f4

    const-string v2, "Motorola|Motorola XOOM 2|fleming|MZ609"

    aput-object v2, v0, v1

    const/16 v1, 0x6f5

    const-string v2, "Motorola|Motorola XOOM 2|pasteur|MZ617"

    aput-object v2, v0, v1

    const/16 v1, 0x6f6

    const-string v2, "Motorola|Motosmart|XT389|XT389"

    aput-object v2, v0, v1

    const/16 v1, 0x6f7

    const-string v2, "Motorola|Motosmart|XT390|XT390"

    aput-object v2, v0, v1

    const/16 v1, 0x6f8

    const-string v2, "Motorola|Motosmart|argonmini_umts|XT389"

    aput-object v2, v0, v1

    const/16 v1, 0x6f9

    const-string v2, "Motorola|Motosmart|argonmini_umts|XT390"

    aput-object v2, v0, v1

    const/16 v1, 0x6fa

    const-string v2, "Motorola|Motosmart|silversmart_umts|XT303"

    aput-object v2, v0, v1

    const/16 v1, 0x6fb

    const-string v2, "Motorola|Motosmart|silversmart_umts|XT305"

    aput-object v2, v0, v1

    const/16 v1, 0x6fc

    const-string v2, "Motorola|Nexus 6|shamu|Nexus 6"

    aput-object v2, v0, v1

    const/16 v1, 0x6fd

    const-string v2, "Motorola|Opus One|rubicon|Motorola Titanium"

    aput-object v2, v0, v1

    const/16 v1, 0x6fe

    const-string v2, "Motorola|Opus One|rubicon|Titanium"

    aput-object v2, v0, v1

    const/16 v1, 0x6ff

    const-string v2, "Motorola|Photon 4G|sunfire|ISW11M"

    aput-object v2, v0, v1

    const/16 v1, 0x700

    const-string v2, "Motorola|Photon 4G|sunfire|MB855"

    aput-object v2, v0, v1

    const/16 v1, 0x701

    const-string v2, "Motorola|Photon 4G|sunfire|Motorola Electrify"

    aput-object v2, v0, v1

    const/16 v1, 0x702

    const-string v2, "Motorola|Quench XT3|XT502|Motorola-XT502"

    aput-object v2, v0, v1

    const/16 v1, 0x703

    const-string v2, "Motorola|RAZR D1|hawk35_umts|XT914"

    aput-object v2, v0, v1

    const/16 v1, 0x704

    const-string v2, "Motorola|RAZR D1|hawk35_umts|XT915"

    aput-object v2, v0, v1

    const/16 v1, 0x705

    const-string v2, "Motorola|RAZR D1|hawk35_umts|XT916"

    aput-object v2, v0, v1

    const/16 v1, 0x706

    const-string v2, "Motorola|RAZR D1|hawk35_umts|XT918"

    aput-object v2, v0, v1

    const/16 v1, 0x707

    const-string v2, "Motorola|RAZR D3|hawk40_umts|XT919"

    aput-object v2, v0, v1

    const/16 v1, 0x708

    const-string v2, "Motorola|RAZR D3|hawk40_umts|XT920"

    aput-object v2, v0, v1

    const/16 v1, 0x709

    const-string v2, "Motorola|Spice|sesame|XT300"

    aput-object v2, v0, v1

    const/16 v1, 0x70a

    const-string v2, "Motorola|XOOM|stingray|Xoom"

    aput-object v2, v0, v1

    const/16 v1, 0x70b

    const-string v2, "Motorola|XOOM|umts_everest|MZ601"

    aput-object v2, v0, v1

    const/16 v1, 0x70c

    const-string v2, "Motorola|XOOM|umts_hubble|MZ601"

    aput-object v2, v0, v1

    const/16 v1, 0x70d

    const-string v2, "Motorola|XOOM|umts_hubble|MZ605"

    aput-object v2, v0, v1

    const/16 v1, 0x70e

    const-string v2, "Motorola|XOOM|wifi_hubble|MZ604"

    aput-object v2, v0, v1

    const/16 v1, 0x70f

    const-string v2, "Motorola|XOOM|wifi_hubble|MZ606"

    aput-object v2, v0, v1

    const/16 v1, 0x710

    const-string v2, "Motorola|XOOM|wingray|Xoom"

    aput-object v2, v0, v1

    const/16 v1, 0x711

    const-string v2, "Nikon|COOLPIX|S800c|COOLPIX S800c"

    aput-object v2, v0, v1

    const/16 v1, 0x712

    const-string v2, "OnePlus|OnePlus One|A0001|A0001"

    aput-object v2, v0, v1

    const/16 v1, 0x713

    const-string v2, "OnePlus|OnePlus One|A0001|One"

    aput-object v2, v0, v1

    const/16 v1, 0x714

    const-string v2, "Panasonic|Boukenkun-reciever|VW_RCBKK1|VW_RCBKK1"

    aput-object v2, v0, v1

    const/16 v1, 0x715

    const-string v2, "Panasonic|ELUGA|pana2_4o|dL1"

    aput-object v2, v0, v1

    const/16 v1, 0x716

    const-string v2, "Panasonic|ELUGA P|P-03E|P-03E"

    aput-object v2, v0, v1

    const/16 v1, 0x717

    const-string v2, "Panasonic|ELUGA Power|P-07D|P-07D"

    aput-object v2, v0, v1

    const/16 v1, 0x718

    const-string v2, "Panasonic|ELUGA U|ELUGA_U|Panasonic ELUGA U"

    aput-object v2, v0, v1

    const/16 v1, 0x719

    const-string v2, "Panasonic|ELUGA U2|ELUGA_U2|Panasonic ELUGA U2"

    aput-object v2, v0, v1

    const/16 v1, 0x71a

    const-string v2, "Panasonic|ELUGA V|P-06D|P-06D"

    aput-object v2, v0, v1

    const/16 v1, 0x71b

    const-string v2, "Panasonic|ELUGA X|P-02E|P-02E"

    aput-object v2, v0, v1

    const/16 v1, 0x71c

    const-string v2, "Panasonic|ELUGA dL1|pana2_4v|Panasonic_dL1"

    aput-object v2, v0, v1

    const/16 v1, 0x71d

    const-string v2, "Panasonic|Elite 11|Elite11|Elite"

    aput-object v2, v0, v1

    const/16 v1, 0x71e

    const-string v2, "Panasonic|Elite 12|Elite12|Elite"

    aput-object v2, v0, v1

    const/16 v1, 0x71f

    const-string v2, "Panasonic|Elite 16|Elite16|Elite"

    aput-object v2, v0, v1

    const/16 v1, 0x720

    const-string v2, "Panasonic|Elite 18|Elite18|Elite"

    aput-object v2, v0, v1

    const/16 v1, 0x721

    const-string v2, "Panasonic|FZ-A1|toughpad|FZ-A1B"

    aput-object v2, v0, v1

    const/16 v1, 0x722

    const-string v2, "Panasonic|FZ-B2|fz_b2bb|FZ-B2B"

    aput-object v2, v0, v1

    const/16 v1, 0x723

    const-string v2, "Panasonic|HDPSEB v2|HDPSEBv2|HD PSEB v2"

    aput-object v2, v0, v1

    const/16 v1, 0x724

    const-string v2, "Panasonic|KX-PRXA10|KX-PRXA10|Panasonic KX-PRXA10"

    aput-object v2, v0, v1

    const/16 v1, 0x725

    const-string v2, "Panasonic|KX-PRXA15|KX-PRXA15|Panasonic KX-PRXA15"

    aput-object v2, v0, v1

    const/16 v1, 0x726

    const-string v2, "Panasonic|LUMIX CM1|DMC-CM1|DMC-CM1"

    aput-object v2, v0, v1

    const/16 v1, 0x727

    const-string v2, "Panasonic|Panasonic P41 HD|P41HD|Panasonic P41HD"

    aput-object v2, v0, v1

    const/16 v1, 0x728

    const-string v2, "Panasonic|Panasonic P61|P61|Panasonic_P61"

    aput-object v2, v0, v1

    const/16 v1, 0x729

    const-string v2, "Panasonic|SM17|SM17|Smart Monitor 17"

    aput-object v2, v0, v1

    const/16 v1, 0x72a

    const-string v2, "Panasonic|SV-ME1000|K1|Panasonic SV-ME1000"

    aput-object v2, v0, v1

    const/16 v1, 0x72b

    const-string v2, "Panasonic|UN-MT300|A1|Panasonic UN-MT300"

    aput-object v2, v0, v1

    const/16 v1, 0x72c

    const-string v2, "Panasonic|UN-W700|F1|Panasonic UN-W700"

    aput-object v2, v0, v1

    const/16 v1, 0x72d

    const-string v2, "Panasonic|VHS v2|VHS|Video Handset"

    aput-object v2, v0, v1

    const/16 v1, 0x72e

    const-string v2, "Polaroid|Infinite|MID1324|MID 1324"

    aput-object v2, v0, v1

    const/16 v1, 0x72f

    const-string v2, "Polaroid|POLAROID A7_PTAB735|A7_PTAB735|HS-7DTB39"

    aput-object v2, v0, v1

    const/16 v1, 0x730

    const-string v2, "Polaroid|PTAB1051-PTAB1055|RCT6203W46|PTAB1051_PTAB1055"

    aput-object v2, v0, v1

    const/16 v1, 0x731

    const-string v2, "Polaroid|Polaroid A7X_PTAB735X|PTAB735X|A7X_PTAB735X"

    aput-object v2, v0, v1

    const/16 v1, 0x732

    const-string v2, "Polaroid|Polaroid MID1028|MID1028|MID1028"

    aput-object v2, v0, v1

    const/16 v1, 0x733

    const-string v2, "Polaroid|Polaroid PTAB751|STJR76|PTAB751"

    aput-object v2, v0, v1

    const/16 v1, 0x734

    const-string v2, "Polaroid|Polaroid V7|nuclear-M7021|V7"

    aput-object v2, v0, v1

    const/16 v1, 0x735

    const-string v2, "Samsung|Absolute|GT-B9120|GT-B9120"

    aput-object v2, v0, v1

    const/16 v1, 0x736

    const-string v2, "Samsung|Acclaim|SCH-R880|SCH-R880"

    aput-object v2, v0, v1

    const/16 v1, 0x737

    const-string v2, "Samsung|Admire|SCH-R720|SCH-R720"

    aput-object v2, v0, v1

    const/16 v1, 0x738

    const-string v2, "Samsung|Amazing|amazingtrf|SGH-S730M"

    aput-object v2, v0, v1

    const/16 v1, 0x739

    const-string v2, "Samsung|Baffin|baffinltelgt|SHV-E270L"

    aput-object v2, v0, v1

    const/16 v1, 0x73a

    const-string v2, "Samsung|Captivate Glide|SGH-I927|SAMSUNG-SGH-I927"

    aput-object v2, v0, v1

    const/16 v1, 0x73b

    const-string v2, "Samsung|Captivate Glide|SGH-I927|SGH-I927"

    aput-object v2, v0, v1

    const/16 v1, 0x73c

    const-string v2, "Samsung|China Telecom|kylevectc|SCH-I699I"

    aput-object v2, v0, v1

    const/16 v1, 0x73d

    const-string v2, "Samsung|Conquer|SPH-D600|SPH-D600"

    aput-object v2, v0, v1

    const/16 v1, 0x73e

    const-string v2, "Samsung|DoubleTime|SGH-I857|SAMSUNG-SGH-I857"

    aput-object v2, v0, v1

    const/16 v1, 0x73f

    const-string v2, "Samsung|Droid Charge|SCH-I510|SCH-I510"

    aput-object v2, v0, v1

    const/16 v1, 0x740

    const-string v2, "Samsung|Europa|GT-I5500B|GT-I5500B"

    aput-object v2, v0, v1

    const/16 v1, 0x741

    const-string v2, "Samsung|Europa|GT-I5500L|GT-I5500L"

    aput-object v2, v0, v1

    const/16 v1, 0x742

    const-string v2, "Samsung|Europa|GT-I5500M|GT-I5500M"

    aput-object v2, v0, v1

    const/16 v1, 0x743

    const-string v2, "Samsung|Europa|GT-I5503T|GT-I5503T"

    aput-object v2, v0, v1

    const/16 v1, 0x744

    const-string v2, "Samsung|Europa|GT-I5510L|GT-I5510L"

    aput-object v2, v0, v1

    const/16 v1, 0x745

    const-string v2, "Samsung|Exhibit|SGH-T759|SGH-T759"

    aput-object v2, v0, v1

    const/16 v1, 0x746

    const-string v2, "Samsung|GALAXY Camera|gd1|EK-GC100"

    aput-object v2, v0, v1

    const/16 v1, 0x747

    const-string v2, "Samsung|Galaxy (China)|GT-B9062|GT-B9062"

    aput-object v2, v0, v1

    const/16 v1, 0x748

    const-string v2, "Samsung|Galaxy 070|hendrix|YP-GI2"

    aput-object v2, v0, v1

    const/16 v1, 0x749

    const-string v2, "Samsung|Galaxy A|archer|SHW-M100S"

    aput-object v2, v0, v1

    const/16 v1, 0x74a

    const-string v2, "Samsung|Galaxy A|archer|archer"

    aput-object v2, v0, v1

    const/16 v1, 0x74b

    const-string v2, "Samsung|Galaxy A3|a33g|SM-A300H"

    aput-object v2, v0, v1

    const/16 v1, 0x74c

    const-string v2, "Samsung|Galaxy A3|a3lte|SM-A300F"

    aput-object v2, v0, v1

    const/16 v1, 0x74d

    const-string v2, "Samsung|Galaxy A3|a3lte|SM-A300M"

    aput-object v2, v0, v1

    const/16 v1, 0x74e

    const-string v2, "Samsung|Galaxy A3|a3lte|SM-A300XZ"

    aput-object v2, v0, v1

    const/16 v1, 0x74f

    const-string v2, "Samsung|Galaxy A3|a3lte|SM-A300YZ"

    aput-object v2, v0, v1

    const/16 v1, 0x750

    const-string v2, "Samsung|Galaxy A3|a3ltechn|SM-A3000"

    aput-object v2, v0, v1

    const/16 v1, 0x751

    const-string v2, "Samsung|Galaxy A3|a3ltechn|SM-A300X"

    aput-object v2, v0, v1

    const/16 v1, 0x752

    const-string v2, "Samsung|Galaxy A3|a3ltectc|SM-A3009"

    aput-object v2, v0, v1

    const/16 v1, 0x753

    const-string v2, "Samsung|Galaxy A3|a3ltedd|SM-A300G"

    aput-object v2, v0, v1

    const/16 v1, 0x754

    const-string v2, "Samsung|Galaxy A3|a3lteslk|SM-A300F"

    aput-object v2, v0, v1

    const/16 v1, 0x755

    const-string v2, "Samsung|Galaxy A3|a3ltezh|SM-A3000"

    aput-object v2, v0, v1

    const/16 v1, 0x756

    const-string v2, "Samsung|Galaxy A3|a3ltezt|SM-A300YZ"

    aput-object v2, v0, v1

    const/16 v1, 0x757

    const-string v2, "Samsung|Galaxy A3|a3ulte|SM-A300FU"

    aput-object v2, v0, v1

    const/16 v1, 0x758

    const-string v2, "Samsung|Galaxy A3|a3ulte|SM-A300XU"

    aput-object v2, v0, v1

    const/16 v1, 0x759

    const-string v2, "Samsung|Galaxy A3|a3ulte|SM-A300Y"

    aput-object v2, v0, v1

    const/16 v1, 0x75a

    const-string v2, "Samsung|Galaxy A5|a53g|SM-A500H"

    aput-object v2, v0, v1

    const/16 v1, 0x75b

    const-string v2, "Samsung|Galaxy A5|a5lte|SM-A500F"

    aput-object v2, v0, v1

    const/16 v1, 0x75c

    const-string v2, "Samsung|Galaxy A5|a5lte|SM-A500G"

    aput-object v2, v0, v1

    const/16 v1, 0x75d

    const-string v2, "Samsung|Galaxy A5|a5lte|SM-A500M"

    aput-object v2, v0, v1

    const/16 v1, 0x75e

    const-string v2, "Samsung|Galaxy A5|a5lte|SM-A500XZ"

    aput-object v2, v0, v1

    const/16 v1, 0x75f

    const-string v2, "Samsung|Galaxy A5|a5ltechn|SM-A5000"

    aput-object v2, v0, v1

    const/16 v1, 0x760

    const-string v2, "Samsung|Galaxy A5|a5ltechn|SM-A500X"

    aput-object v2, v0, v1

    const/16 v1, 0x761

    const-string v2, "Samsung|Galaxy A5|a5ltectc|SM-A5009"

    aput-object v2, v0, v1

    const/16 v1, 0x762

    const-string v2, "Samsung|Galaxy A5|a5ltezh|SM-A5000"

    aput-object v2, v0, v1

    const/16 v1, 0x763

    const-string v2, "Samsung|Galaxy A5|a5ltezt|SM-A500YZ"

    aput-object v2, v0, v1

    const/16 v1, 0x764

    const-string v2, "Samsung|Galaxy A5|a5ulte|SM-A500FU"

    aput-object v2, v0, v1

    const/16 v1, 0x765

    const-string v2, "Samsung|Galaxy A5|a5ulte|SM-A500Y"

    aput-object v2, v0, v1

    const/16 v1, 0x766

    const-string v2, "Samsung|Galaxy A5|a5ultektt|SM-A500K"

    aput-object v2, v0, v1

    const/16 v1, 0x767

    const-string v2, "Samsung|Galaxy A5|a5ultelgt|SM-A500L"

    aput-object v2, v0, v1

    const/16 v1, 0x768

    const-string v2, "Samsung|Galaxy A5|a5ulteskt|SM-A500F1"

    aput-object v2, v0, v1

    const/16 v1, 0x769

    const-string v2, "Samsung|Galaxy A5|a5ulteskt|SM-A500S"

    aput-object v2, v0, v1

    const/16 v1, 0x76a

    const-string v2, "Samsung|Galaxy A7|a73g|SM-A700H"

    aput-object v2, v0, v1

    const/16 v1, 0x76b

    const-string v2, "Samsung|Galaxy A7|a7alte|SM-A700F"

    aput-object v2, v0, v1

    const/16 v1, 0x76c

    const-string v2, "Samsung|Galaxy A7|a7lte|SM-A700FD"

    aput-object v2, v0, v1

    const/16 v1, 0x76d

    const-string v2, "Samsung|Galaxy A7|a7lte|SM-A700X"

    aput-object v2, v0, v1

    const/16 v1, 0x76e

    const-string v2, "Samsung|Galaxy A7|a7ltechn|SM-A7000"

    aput-object v2, v0, v1

    const/16 v1, 0x76f

    const-string v2, "Samsung|Galaxy A7|a7ltechn|SM-A700YD"

    aput-object v2, v0, v1

    const/16 v1, 0x770

    const-string v2, "Samsung|Galaxy A7|a7ltectc|SM-A7009"

    aput-object v2, v0, v1

    const/16 v1, 0x771

    const-string v2, "Samsung|Galaxy A7|a7ltektt|SM-A700K"

    aput-object v2, v0, v1

    const/16 v1, 0x772

    const-string v2, "Samsung|Galaxy A7|a7ltelgt|SM-A700L"

    aput-object v2, v0, v1

    const/16 v1, 0x773

    const-string v2, "Samsung|Galaxy A7|a7lteskt|SM-A700S"

    aput-object v2, v0, v1

    const/16 v1, 0x774

    const-string v2, "Samsung|Galaxy Ace|GT-S5830|GT-S5830"

    aput-object v2, v0, v1

    const/16 v1, 0x775

    const-string v2, "Samsung|Galaxy Ace|GT-S5830B|GT-S5830B"

    aput-object v2, v0, v1

    const/16 v1, 0x776

    const-string v2, "Samsung|Galaxy Ace|GT-S5830C|GT-S5830C"

    aput-object v2, v0, v1

    const/16 v1, 0x777

    const-string v2, "Samsung|Galaxy Ace|GT-S5830D|GT-S5830D"

    aput-object v2, v0, v1

    const/16 v1, 0x778

    const-string v2, "Samsung|Galaxy Ace|GT-S5830F|GT-S5830F"

    aput-object v2, v0, v1

    const/16 v1, 0x779

    const-string v2, "Samsung|Galaxy Ace|GT-S5830G|GT-S5830G"

    aput-object v2, v0, v1

    const/16 v1, 0x77a

    const-string v2, "Samsung|Galaxy Ace|GT-S5830L|GT-S5830L"

    aput-object v2, v0, v1

    const/16 v1, 0x77b

    const-string v2, "Samsung|Galaxy Ace|GT-S5830M|GT-S5830M"

    aput-object v2, v0, v1

    const/16 v1, 0x77c

    const-string v2, "Samsung|Galaxy Ace|GT-S5830T|GT-S5830T"

    aput-object v2, v0, v1

    const/16 v1, 0x77d

    const-string v2, "Samsung|Galaxy Ace|GT-S5830i|GT-S5830i"

    aput-object v2, v0, v1

    const/16 v1, 0x77e

    const-string v2, "Samsung|Galaxy Ace|GT-S5831i|GT-S5831i"

    aput-object v2, v0, v1

    const/16 v1, 0x77f

    const-string v2, "Samsung|Galaxy Ace|GT-S5838|GT-S5838"

    aput-object v2, v0, v1

    const/16 v1, 0x780

    const-string v2, "Samsung|Galaxy Ace|GT-S5839i|GT-S5839i"

    aput-object v2, v0, v1

    const/16 v1, 0x781

    const-string v2, "Samsung|Galaxy Ace|GT-S6358|GT-S6358"

    aput-object v2, v0, v1

    const/16 v1, 0x782

    const-string v2, "Samsung|Galaxy Ace|SCH-I619|SCH-I619"

    aput-object v2, v0, v1

    const/16 v1, 0x783

    const-string v2, "Samsung|Galaxy Ace|SHW-M240S|SHW-M240S"

    aput-object v2, v0, v1

    const/16 v1, 0x784

    const-string v2, "Samsung|Galaxy Ace|heat3gou|SM-G310R5"

    aput-object v2, v0, v1

    const/16 v1, 0x785

    const-string v2, "Samsung|Galaxy Ace|heatlte|SM-G357M"

    aput-object v2, v0, v1

    const/16 v1, 0x786

    const-string v2, "Samsung|Galaxy Ace 4|vivaltods5m|SM-G313HU"

    aput-object v2, v0, v1

    const/16 v1, 0x787

    const-string v2, "Samsung|Galaxy Ace 4|vivaltods5m|SM-G313HY"

    aput-object v2, v0, v1

    const/16 v1, 0x788

    const-string v2, "Samsung|Galaxy Ace 4|vivaltods5m|SM-G313M"

    aput-object v2, v0, v1

    const/16 v1, 0x789

    const-string v2, "Samsung|Galaxy Ace 4|vivaltods5m|SM-G313MY"

    aput-object v2, v0, v1

    const/16 v1, 0x78a

    const-string v2, "Samsung|Galaxy Ace 4 Lite|vivalto3g|SM-G313U"

    aput-object v2, v0, v1

    const/16 v1, 0x78b

    const-string v2, "Samsung|Galaxy Ace Advance|GT-S6800|GT-S6800"

    aput-object v2, v0, v1

    const/16 v1, 0x78c

    const-string v2, "Samsung|Galaxy Ace Duos|GT-S6352|GT-S6352"

    aput-object v2, v0, v1

    const/16 v1, 0x78d

    const-string v2, "Samsung|Galaxy Ace Duos|GT-S6802|GT-S6802"

    aput-object v2, v0, v1

    const/16 v1, 0x78e

    const-string v2, "Samsung|Galaxy Ace Duos|GT-S6802B|GT-S6802B"

    aput-object v2, v0, v1

    const/16 v1, 0x78f

    const-string v2, "Samsung|Galaxy Ace Duos|SCH-I579|SCH-i579"

    aput-object v2, v0, v1

    const/16 v1, 0x790

    const-string v2, "Samsung|Galaxy Ace Duos|SCH-I589|SCH-I589"

    aput-object v2, v0, v1

    const/16 v1, 0x791

    const-string v2, "Samsung|Galaxy Ace Duos|SCH-I589|SCH-i589"

    aput-object v2, v0, v1

    const/16 v1, 0x792

    const-string v2, "Samsung|Galaxy Ace Duos|SCH-i579|SCH-i579"

    aput-object v2, v0, v1

    const/16 v1, 0x793

    const-string v2, "Samsung|Galaxy Ace Duos|SCH-i589|SCH-i589"

    aput-object v2, v0, v1

    const/16 v1, 0x794

    const-string v2, "Samsung|Galaxy Ace Plus|GT-S7500|GT-S7500"

    aput-object v2, v0, v1

    const/16 v1, 0x795

    const-string v2, "Samsung|Galaxy Ace Plus|GT-S7500L|GT-S7500L"

    aput-object v2, v0, v1

    const/16 v1, 0x796

    const-string v2, "Samsung|Galaxy Ace Plus|GT-S7500T|GT-S7500T"

    aput-object v2, v0, v1

    const/16 v1, 0x797

    const-string v2, "Samsung|Galaxy Ace Plus|GT-S7500W|GT-S7500W"

    aput-object v2, v0, v1

    const/16 v1, 0x798

    const-string v2, "Samsung|Galaxy Ace Plus|GT-S7508|GT-S7508"

    aput-object v2, v0, v1

    const/16 v1, 0x799

    const-string v2, "Samsung|Galaxy Ace Q|SGH-I827D|SGH-I827D"

    aput-object v2, v0, v1

    const/16 v1, 0x79a

    const-string v2, "Samsung|Galaxy Ace Style|heat3gtfnvzw|SM-S765C"

    aput-object v2, v0, v1

    const/16 v1, 0x79b

    const-string v2, "Samsung|Galaxy Ace Style|heat3gtfnvzw|SM-S766C"

    aput-object v2, v0, v1

    const/16 v1, 0x79c

    const-string v2, "Samsung|Galaxy Ace Style|heatnfc3g|SM-G310HN"

    aput-object v2, v0, v1

    const/16 v1, 0x79d

    const-string v2, "Samsung|Galaxy Ace Style|heatqlte|SM-G357FZ"

    aput-object v2, v0, v1

    const/16 v1, 0x79e

    const-string v2, "Samsung|Galaxy Ace2|GT-I8160|GT-I8160"

    aput-object v2, v0, v1

    const/16 v1, 0x79f

    const-string v2, "Samsung|Galaxy Ace2|GT-I8160L|GT-I8160L"

    aput-object v2, v0, v1

    const/16 v1, 0x7a0

    const-string v2, "Samsung|Galaxy Ace2|GT-I8160P|GT-I8160P"

    aput-object v2, v0, v1

    const/16 v1, 0x7a1

    const-string v2, "Samsung|Galaxy Ace2 X|kylessopen|GT-S7560"

    aput-object v2, v0, v1

    const/16 v1, 0x7a2

    const-string v2, "Samsung|Galaxy Ace2 X|kylessopen|GT-S7560M"

    aput-object v2, v0, v1

    const/16 v1, 0x7a3

    const-string v2, "Samsung|Galaxy Ace3|logan|GT-S7270"

    aput-object v2, v0, v1

    const/16 v1, 0x7a4

    const-string v2, "Samsung|Galaxy Ace3|logan|GT-S7270L"

    aput-object v2, v0, v1

    const/16 v1, 0x7a5

    const-string v2, "Samsung|Galaxy Ace3|logan|SCH-I679"

    aput-object v2, v0, v1

    const/16 v1, 0x7a6

    const-string v2, "Samsung|Galaxy Ace3|logan3gcmcc|GT-S7278"

    aput-object v2, v0, v1

    const/16 v1, 0x7a7

    const-string v2, "Samsung|Galaxy Ace3|logands|GT-S7272"

    aput-object v2, v0, v1

    const/16 v1, 0x7a8

    const-string v2, "Samsung|Galaxy Ace3|loganlte|GT-S7275"

    aput-object v2, v0, v1

    const/16 v1, 0x7a9

    const-string v2, "Samsung|Galaxy Ace3|loganrelte|GT-S7275B"

    aput-object v2, v0, v1

    const/16 v1, 0x7aa

    const-string v2, "Samsung|Galaxy Ace3|loganrelte|GT-S7275R"

    aput-object v2, v0, v1

    const/16 v1, 0x7ab

    const-string v2, "Samsung|Galaxy Ace3|loganrelte|GT-S7275T"

    aput-object v2, v0, v1

    const/16 v1, 0x7ac

    const-string v2, "Samsung|Galaxy Ace3|loganrelte|GT-S7275Y"

    aput-object v2, v0, v1

    const/16 v1, 0x7ad

    const-string v2, "Samsung|Galaxy Ace3 Duos|loganlite3g|GT-S7272C"

    aput-object v2, v0, v1

    const/16 v1, 0x7ae

    const-string v2, "Samsung|Galaxy Ace3 Duos|loganu3gcmcc|GT-S7278U"

    aput-object v2, v0, v1

    const/16 v1, 0x7af

    const-string v2, "Samsung|Galaxy Ace3 Duos TV|logandsdtv|GT-S7273T"

    aput-object v2, v0, v1

    const/16 v1, 0x7b0

    const-string v2, "Samsung|Galaxy Ace4|vivalto3g|SM-G313ML"

    aput-object v2, v0, v1

    const/16 v1, 0x7b1

    const-string v2, "Samsung|Galaxy Ace4|vivalto3mve3g|SM-G316H"

    aput-object v2, v0, v1

    const/16 v1, 0x7b2

    const-string v2, "Samsung|Galaxy Ace4|vivalto5mve3g|SM-G316HU"

    aput-object v2, v0, v1

    const/16 v1, 0x7b3

    const-string v2, "Samsung|Galaxy Ace4|vivalto5mve3g|SM-G316M"

    aput-object v2, v0, v1

    const/16 v1, 0x7b4

    const-string v2, "Samsung|Galaxy Ace4|vivalto5mve3g|SM-G316MY"

    aput-object v2, v0, v1

    const/16 v1, 0x7b5

    const-string v2, "Samsung|Galaxy Ace4|vivaltolte|SM-G313F"

    aput-object v2, v0, v1

    const/16 v1, 0x7b6

    const-string v2, "Samsung|Galaxy Ace4|vivaltolte|SM-G313MU"

    aput-object v2, v0, v1

    const/16 v1, 0x7b7

    const-string v2, "Samsung|Galaxy Ace4|vivaltonfc3g|SM-G313HN"

    aput-object v2, v0, v1

    const/16 v1, 0x7b8

    const-string v2, "Samsung|Galaxy Ace4 Lite|vivalto|SM-G3139D"

    aput-object v2, v0, v1

    const/16 v1, 0x7b9

    const-string v2, "Samsung|Galaxy Ace4 Lite|vivalto3g|SM-G313H"

    aput-object v2, v0, v1

    const/16 v1, 0x7ba

    const-string v2, "Samsung|Galaxy Ace4 Lite|vivalto3mve3gltn|SM-G316U"

    aput-object v2, v0, v1

    const/16 v1, 0x7bb

    const-string v2, "Samsung|Galaxy Ace4 Neo|vivalto3mve3gltn|SM-G316ML"

    aput-object v2, v0, v1

    const/16 v1, 0x7bc

    const-string v2, "Samsung|Galaxy Admire|SCH-R820|SCH-R820"

    aput-object v2, v0, v1

    const/16 v1, 0x7bd

    const-string v2, "Samsung|Galaxy Admire 2|goghcri|SCH-R830C"

    aput-object v2, v0, v1

    const/16 v1, 0x7be

    const-string v2, "Samsung|Galaxy Alpha|slte|SM-G850F"

    aput-object v2, v0, v1

    const/16 v1, 0x7bf

    const-string v2, "Samsung|Galaxy Alpha|slte|SM-G850FQ"

    aput-object v2, v0, v1

    const/16 v1, 0x7c0

    const-string v2, "Samsung|Galaxy Alpha|slte|SM-G850M"

    aput-object v2, v0, v1

    const/16 v1, 0x7c1

    const-string v2, "Samsung|Galaxy Alpha|slte|SM-G850X"

    aput-object v2, v0, v1

    const/16 v1, 0x7c2

    const-string v2, "Samsung|Galaxy Alpha|slte|SM-G850Y"

    aput-object v2, v0, v1

    const/16 v1, 0x7c3

    const-string v2, "Samsung|Galaxy Alpha|slteatt|SAMSUNG-SM-G850A"

    aput-object v2, v0, v1

    const/16 v1, 0x7c4

    const-string v2, "Samsung|Galaxy Alpha|sltecan|SM-G850W"

    aput-object v2, v0, v1

    const/16 v1, 0x7c5

    const-string v2, "Samsung|Galaxy Alpha|sltechn|SM-G8508S"

    aput-object v2, v0, v1

    const/16 v1, 0x7c6

    const-string v2, "Samsung|Galaxy Alpha|sltektt|SM-G850K"

    aput-object v2, v0, v1

    const/16 v1, 0x7c7

    const-string v2, "Samsung|Galaxy Alpha|sltelgt|SM-G850L"

    aput-object v2, v0, v1

    const/16 v1, 0x7c8

    const-string v2, "Samsung|Galaxy Alpha|slteskt|SM-G850S"

    aput-object v2, v0, v1

    const/16 v1, 0x7c9

    const-string v2, "Samsung|Galaxy Amp|kyleatt|SAMSUNG-SGH-I407"

    aput-object v2, v0, v1

    const/16 v1, 0x7ca

    const-string v2, "Samsung|Galaxy Apollo|GT-I5800|GT-I5800"

    aput-object v2, v0, v1

    const/16 v1, 0x7cb

    const-string v2, "Samsung|Galaxy Apollo|GT-I5800|GT-I5800L"

    aput-object v2, v0, v1

    const/16 v1, 0x7cc

    const-string v2, "Samsung|Galaxy Apollo|GT-I5800D|GT-I5800D"

    aput-object v2, v0, v1

    const/16 v1, 0x7cd

    const-string v2, "Samsung|Galaxy Apollo|GT-I5801|GT-I5801"

    aput-object v2, v0, v1

    const/16 v1, 0x7ce

    const-string v2, "Samsung|Galaxy Appeal|SGH-I827|SAMSUNG-SGH-I827"

    aput-object v2, v0, v1

    const/16 v1, 0x7cf

    const-string v2, "Samsung|Galaxy Attain|SCH-R920|SCH-R920"

    aput-object v2, v0, v1

    const/16 v1, 0x7d0

    const-string v2, "Samsung|Galaxy Avant|afyonltetmo|SM-G386T"

    aput-object v2, v0, v1

    const/16 v1, 0x7d1

    const-string v2, "Samsung|Galaxy Axiom|infiniteusc|SCH-R830"

    aput-object v2, v0, v1

    const/16 v1, 0x7d2

    const-string v2, "Samsung|Galaxy Beam|GT-I8250|GT-I8250"

    aput-object v2, v0, v1

    const/16 v1, 0x7d3

    const-string v2, "Samsung|Galaxy Beam|GT-I8530|GT-I8530"

    aput-object v2, v0, v1

    const/16 v1, 0x7d4

    const-string v2, "Samsung|Galaxy Camera|gd1|EK-GC100"

    aput-object v2, v0, v1

    const/16 v1, 0x7d5

    const-string v2, "Samsung|Galaxy Camera|gd1att|SAMSUNG-EK-GC100"

    aput-object v2, v0, v1

    const/16 v1, 0x7d6

    const-string v2, "Samsung|Galaxy Camera|gd1can|EK-GC100"

    aput-object v2, v0, v1

    const/16 v1, 0x7d7

    const-string v2, "Samsung|Galaxy Camera|gd1ktt|EK-KC100K"

    aput-object v2, v0, v1

    const/16 v1, 0x7d8

    const-string v2, "Samsung|Galaxy Camera|gd1ltelgt|EK-KC120L"

    aput-object v2, v0, v1

    const/16 v1, 0x7d9

    const-string v2, "Samsung|Galaxy Camera|gd1lteskt|EK-KC120S"

    aput-object v2, v0, v1

    const/16 v1, 0x7da

    const-string v2, "Samsung|Galaxy Camera|gd1ltevzw|EK-GC120"

    aput-object v2, v0, v1

    const/16 v1, 0x7db

    const-string v2, "Samsung|Galaxy Camera|gd1skt|EK-KC100S"

    aput-object v2, v0, v1

    const/16 v1, 0x7dc

    const-string v2, "Samsung|Galaxy Camera|gd1wifi|EK-GC110"

    aput-object v2, v0, v1

    const/16 v1, 0x7dd

    const-string v2, "Samsung|Galaxy Camera|gd1wifiany|EK-GC110"

    aput-object v2, v0, v1

    const/16 v1, 0x7de

    const-string v2, "Samsung|Galaxy Camera|u0lte|EK-GN100"

    aput-object v2, v0, v1

    const/16 v1, 0x7df

    const-string v2, "Samsung|Galaxy Camera|u0lte|EK-GN120"

    aput-object v2, v0, v1

    const/16 v1, 0x7e0

    const-string v2, "Samsung|Galaxy Camera 2|sf2wifi|EK-GC200"

    aput-object v2, v0, v1

    const/16 v1, 0x7e1

    const-string v2, "Samsung|Galaxy Centura|amazing3gtrf|SCH-S738C"

    aput-object v2, v0, v1

    const/16 v1, 0x7e2

    const-string v2, "Samsung|Galaxy Chat|zanin|GT-B5330"

    aput-object v2, v0, v1

    const/16 v1, 0x7e3

    const-string v2, "Samsung|Galaxy Chat|zanin|GT-B5330B"

    aput-object v2, v0, v1

    const/16 v1, 0x7e4

    const-string v2, "Samsung|Galaxy Chat|zanin|GT-B5330L"

    aput-object v2, v0, v1

    const/16 v1, 0x7e5

    const-string v2, "Samsung|Galaxy Core|afyonlteMetroPCS|SM-G386T1"

    aput-object v2, v0, v1

    const/16 v1, 0x7e6

    const-string v2, "Samsung|Galaxy Core|afyonltecan|SM-G386W"

    aput-object v2, v0, v1

    const/16 v1, 0x7e7

    const-string v2, "Samsung|Galaxy Core|arubaslim|GT-I8262"

    aput-object v2, v0, v1

    const/16 v1, 0x7e8

    const-string v2, "Samsung|Galaxy Core|arubaslimss|GT-I8260"

    aput-object v2, v0, v1

    const/16 v1, 0x7e9

    const-string v2, "Samsung|Galaxy Core|arubaslimss|GT-I8260L"

    aput-object v2, v0, v1

    const/16 v1, 0x7ea

    const-string v2, "Samsung|Galaxy Core 2|kanas|SM-G355H"

    aput-object v2, v0, v1

    const/16 v1, 0x7eb

    const-string v2, "Samsung|Galaxy Core Advance|cane3g|GT-I8580"

    aput-object v2, v0, v1

    const/16 v1, 0x7ec

    const-string v2, "Samsung|Galaxy Core Advance|cane3gskt|SHW-M570S"

    aput-object v2, v0, v1

    const/16 v1, 0x7ed

    const-string v2, "Samsung|Galaxy Core LTE|afyonlte|SM-G386F"

    aput-object v2, v0, v1

    const/16 v1, 0x7ee

    const-string v2, "Samsung|Galaxy Core LTE|cs03lte|SM-G3518"

    aput-object v2, v0, v1

    const/16 v1, 0x7ef

    const-string v2, "Samsung|Galaxy Core Lite|victorlte|SM-G3586V"

    aput-object v2, v0, v1

    const/16 v1, 0x7f0

    const-string v2, "Samsung|Galaxy Core Lite|victorlte|SM-G3589W"

    aput-object v2, v0, v1

    const/16 v1, 0x7f1

    const-string v2, "Samsung|Galaxy Core Max|kleoslte|SM-G5108"

    aput-object v2, v0, v1

    const/16 v1, 0x7f2

    const-string v2, "Samsung|Galaxy Core Max Duos|kleoslte|SM-G5108Q"

    aput-object v2, v0, v1

    const/16 v1, 0x7f3

    const-string v2, "Samsung|Galaxy Core Plus|cs02|SM-G350"

    aput-object v2, v0, v1

    const/16 v1, 0x7f4

    const-string v2, "Samsung|Galaxy Core Plus|cs023g|SM-G3502"

    aput-object v2, v0, v1

    const/16 v1, 0x7f5

    const-string v2, "Samsung|Galaxy Core Plus|cs02ve3g|SM-G3502L"

    aput-object v2, v0, v1

    const/16 v1, 0x7f6

    const-string v2, "Samsung|Galaxy Core Plus|cs02ve3gdtv|SM-G3502T"

    aput-object v2, v0, v1

    const/16 v1, 0x7f7

    const-string v2, "Samsung|Galaxy Core Plus|cs02ve3gss|SM-G350L"

    aput-object v2, v0, v1

    const/16 v1, 0x7f8

    const-string v2, "Samsung|Galaxy Core Plus|cs02ve3gss|SM-G350M"

    aput-object v2, v0, v1

    const/16 v1, 0x7f9

    const-string v2, "Samsung|Galaxy Core Prime|core33g|SM-G360H"

    aput-object v2, v0, v1

    const/16 v1, 0x7fa

    const-string v2, "Samsung|Galaxy Core Prime|core33g|SM-G360HU"

    aput-object v2, v0, v1

    const/16 v1, 0x7fb

    const-string v2, "Samsung|Galaxy Core Prime|coreprimelte|SM-G360F"

    aput-object v2, v0, v1

    const/16 v1, 0x7fc

    const-string v2, "Samsung|Galaxy Core Prime|coreprimelte|SM-G360FY"

    aput-object v2, v0, v1

    const/16 v1, 0x7fd

    const-string v2, "Samsung|Galaxy Core Prime|coreprimelte|SM-G360M"

    aput-object v2, v0, v1

    const/16 v1, 0x7fe

    const-string v2, "Samsung|Galaxy Core Prime|coreprimelteaio|SAMSUNG-SM-G360AZ"

    aput-object v2, v0, v1

    const/16 v1, 0x7ff

    const-string v2, "Samsung|Galaxy Core Prime|coreprimeltespr|SM-G360P"

    aput-object v2, v0, v1

    const/16 v1, 0x800

    const-string v2, "Samsung|Galaxy Core Prime|coreprimeltetfnvzw|SM-S820L"

    aput-object v2, v0, v1

    const/16 v1, 0x801

    const-string v2, "Samsung|Galaxy Core Prime|coreprimeltevzw|SM-G360V"

    aput-object v2, v0, v1

    const/16 v1, 0x802

    const-string v2, "Samsung|Galaxy Core Prime|rossalte|SM-G3606"

    aput-object v2, v0, v1

    const/16 v1, 0x803

    const-string v2, "Samsung|Galaxy Core Prime|rossalte|SM-G3608"

    aput-object v2, v0, v1

    const/16 v1, 0x804

    const-string v2, "Samsung|Galaxy Core Prime|rossaltectc|SM-G3609"

    aput-object v2, v0, v1

    const/16 v1, 0x805

    const-string v2, "Samsung|Galaxy Core Prime|rossaltexsa|SM-G360GY"

    aput-object v2, v0, v1

    const/16 v1, 0x806

    const-string v2, "Samsung|Galaxy Core Safe|arubaslimss|GT-I8260E"

    aput-object v2, v0, v1

    const/16 v1, 0x807

    const-string v2, "Samsung|Galaxy Core Safe|arubaslimss|SHW-M580D"

    aput-object v2, v0, v1

    const/16 v1, 0x808

    const-string v2, "Samsung|Galaxy Core Safe|arubaslimss|SHW-M585D"

    aput-object v2, v0, v1

    const/16 v1, 0x809

    const-string v2, "Samsung|Galaxy Core2|kanas|SM-G355H"

    aput-object v2, v0, v1

    const/16 v1, 0x80a

    const-string v2, "Samsung|Galaxy Core2|kanas|SM-G355HQ"

    aput-object v2, v0, v1

    const/16 v1, 0x80b

    const-string v2, "Samsung|Galaxy Core2|kanas|SM-G355M"

    aput-object v2, v0, v1

    const/16 v1, 0x80c

    const-string v2, "Samsung|Galaxy Core2|kanas3g|SM-G3556D"

    aput-object v2, v0, v1

    const/16 v1, 0x80d

    const-string v2, "Samsung|Galaxy Core2|kanas3gcmcc|SM-G3558"

    aput-object v2, v0, v1

    const/16 v1, 0x80e

    const-string v2, "Samsung|Galaxy Core2|kanas3gctc|SM-G3559"

    aput-object v2, v0, v1

    const/16 v1, 0x80f

    const-string v2, "Samsung|Galaxy Core2|kanas3gnfc|SM-G355HN"

    aput-object v2, v0, v1

    const/16 v1, 0x810

    const-string v2, "Samsung|Galaxy Discover|amazing3gcri|SCH-R740C"

    aput-object v2, v0, v1

    const/16 v1, 0x811

    const-string v2, "Samsung|Galaxy Discover|amazingtrfcd|SCH-S735C"

    aput-object v2, v0, v1

    const/16 v1, 0x812

    const-string v2, "Samsung|Galaxy Duos|aruba3gcmcc|GT-I8268"

    aput-object v2, v0, v1

    const/16 v1, 0x813

    const-string v2, "Samsung|Galaxy E5|e53g|SM-E500H"

    aput-object v2, v0, v1

    const/16 v1, 0x814

    const-string v2, "Samsung|Galaxy E5|e5lte|SM-E500F"

    aput-object v2, v0, v1

    const/16 v1, 0x815

    const-string v2, "Samsung|Galaxy E5|e5lte|SM-E500M"

    aput-object v2, v0, v1

    const/16 v1, 0x816

    const-string v2, "Samsung|Galaxy E5|e5ltetw|SM-E500YZ"

    aput-object v2, v0, v1

    const/16 v1, 0x817

    const-string v2, "Samsung|Galaxy E7|e73g|SM-E700H"

    aput-object v2, v0, v1

    const/16 v1, 0x818

    const-string v2, "Samsung|Galaxy E7|e7lte|SM-E700F"

    aput-object v2, v0, v1

    const/16 v1, 0x819

    const-string v2, "Samsung|Galaxy E7|e7lte|SM-E700M"

    aput-object v2, v0, v1

    const/16 v1, 0x81a

    const-string v2, "Samsung|Galaxy E7|e7ltechn|SM-E7000"

    aput-object v2, v0, v1

    const/16 v1, 0x81b

    const-string v2, "Samsung|Galaxy E7|e7ltectc|SM-E7009"

    aput-object v2, v0, v1

    const/16 v1, 0x81c

    const-string v2, "Samsung|Galaxy E7|e7ltehktw|SM-E7000"

    aput-object v2, v0, v1

    const/16 v1, 0x81d

    const-string v2, "Samsung|Galaxy Europa|GT-I5500|GT-I5500"

    aput-object v2, v0, v1

    const/16 v1, 0x81e

    const-string v2, "Samsung|Galaxy Europa|GT-I5503|GT-I5503"

    aput-object v2, v0, v1

    const/16 v1, 0x81f

    const-string v2, "Samsung|Galaxy Europa|GT-I5508|GT-I5508"

    aput-object v2, v0, v1

    const/16 v1, 0x820

    const-string v2, "Samsung|Galaxy Europa|GT-I5510|GT-I5510"

    aput-object v2, v0, v1

    const/16 v1, 0x821

    const-string v2, "Samsung|Galaxy Exhibit|codinaMetroPCS|SGH-T599N"

    aput-object v2, v0, v1

    const/16 v1, 0x822

    const-string v2, "Samsung|Galaxy Exhibit|codinatmo|SGH-T599"

    aput-object v2, v0, v1

    const/16 v1, 0x823

    const-string v2, "Samsung|Galaxy Exhibit|codinavid|SGH-T599V"

    aput-object v2, v0, v1

    const/16 v1, 0x824

    const-string v2, "Samsung|Galaxy Exhibit2|SGH-T679|SGH-T679"

    aput-object v2, v0, v1

    const/16 v1, 0x825

    const-string v2, "Samsung|Galaxy Exhilarate|SGH-I577|SAMSUNG-SGH-I577"

    aput-object v2, v0, v1

    const/16 v1, 0x826

    const-string v2, "Samsung|Galaxy Express|expressatt|SAMSUNG-SGH-I437"

    aput-object v2, v0, v1

    const/16 v1, 0x827

    const-string v2, "Samsung|Galaxy Express|expressatt|SAMSUNG-SGH-I437P"

    aput-object v2, v0, v1

    const/16 v1, 0x828

    const-string v2, "Samsung|Galaxy Express|expresslte|GT-I8730"

    aput-object v2, v0, v1

    const/16 v1, 0x829

    const-string v2, "Samsung|Galaxy Express|expresslte|GT-I8730T"

    aput-object v2, v0, v1

    const/16 v1, 0x82a

    const-string v2, "Samsung|Galaxy Express|expressziglteatt|SAMSUNG-SGH-I437Z"

    aput-object v2, v0, v1

    const/16 v1, 0x82b

    const-string v2, "Samsung|Galaxy Express2|wilcoxlte|SM-G3815"

    aput-object v2, v0, v1

    const/16 v1, 0x82c

    const-string v2, "Samsung|Galaxy Fame|SCH-I629|SCH-I629"

    aput-object v2, v0, v1

    const/16 v1, 0x82d

    const-string v2, "Samsung|Galaxy Fame|nevis|GT-S6810"

    aput-object v2, v0, v1

    const/16 v1, 0x82e

    const-string v2, "Samsung|Galaxy Fame|nevis|GT-S6810B"

    aput-object v2, v0, v1

    const/16 v1, 0x82f

    const-string v2, "Samsung|Galaxy Fame|nevis|GT-S6810E"

    aput-object v2, v0, v1

    const/16 v1, 0x830

    const-string v2, "Samsung|Galaxy Fame|nevis|GT-S6810L"

    aput-object v2, v0, v1

    const/16 v1, 0x831

    const-string v2, "Samsung|Galaxy Fame|nevis3g|GT-S6812i"

    aput-object v2, v0, v1

    const/16 v1, 0x832

    const-string v2, "Samsung|Galaxy Fame|nevis3gcmcc|GT-S6818"

    aput-object v2, v0, v1

    const/16 v1, 0x833

    const-string v2, "Samsung|Galaxy Fame|nevis3gcmcc|GT-S6818V"

    aput-object v2, v0, v1

    const/16 v1, 0x834

    const-string v2, "Samsung|Galaxy Fame|nevisds|GT-S6812"

    aput-object v2, v0, v1

    const/16 v1, 0x835

    const-string v2, "Samsung|Galaxy Fame|nevisds|GT-S6812B"

    aput-object v2, v0, v1

    const/16 v1, 0x836

    const-string v2, "Samsung|Galaxy Fame|nevisnvess|GT-S6790N"

    aput-object v2, v0, v1

    const/16 v1, 0x837

    const-string v2, "Samsung|Galaxy Fame|nevisp|GT-S6810M"

    aput-object v2, v0, v1

    const/16 v1, 0x838

    const-string v2, "Samsung|Galaxy Fame|nevisp|GT-S6810P"

    aput-object v2, v0, v1

    const/16 v1, 0x839

    const-string v2, "Samsung|Galaxy Fame|nevisvess|GT-S6790"

    aput-object v2, v0, v1

    const/16 v1, 0x83a

    const-string v2, "Samsung|Galaxy Fame|nevisvess|GT-S6790E"

    aput-object v2, v0, v1

    const/16 v1, 0x83b

    const-string v2, "Samsung|Galaxy Fame|nevisvess|GT-S6790L"

    aput-object v2, v0, v1

    const/16 v1, 0x83c

    const-string v2, "Samsung|Galaxy Fame|nevisw|GT-S6812C"

    aput-object v2, v0, v1

    const/16 v1, 0x83d

    const-string v2, "Samsung|Galaxy Fame Lite Duos|nevisw|GT-S6792L"

    aput-object v2, v0, v1

    const/16 v1, 0x83e

    const-string v2, "Samsung|Galaxy Fit|GT-S5670|GT-S5670"

    aput-object v2, v0, v1

    const/16 v1, 0x83f

    const-string v2, "Samsung|Galaxy Fit|GT-S5670B|GT-S5670B"

    aput-object v2, v0, v1

    const/16 v1, 0x840

    const-string v2, "Samsung|Galaxy Fit|GT-S5670L|GT-S5670L"

    aput-object v2, v0, v1

    const/16 v1, 0x841

    const-string v2, "Samsung|Galaxy Fresh|kylevess|GT-S7390"

    aput-object v2, v0, v1

    const/16 v1, 0x842

    const-string v2, "Samsung|Galaxy Fresh|kylevess|GT-S7390E"

    aput-object v2, v0, v1

    const/16 v1, 0x843

    const-string v2, "Samsung|Galaxy Fresh|kylevess|GT-S7390G"

    aput-object v2, v0, v1

    const/16 v1, 0x844

    const-string v2, "Samsung|Galaxy Gio|GT-S5660|GT-S5660"

    aput-object v2, v0, v1

    const/16 v1, 0x845

    const-string v2, "Samsung|Galaxy Gio|GT-S5660B|GT-S5660B"

    aput-object v2, v0, v1

    const/16 v1, 0x846

    const-string v2, "Samsung|Galaxy Gio|GT-S5660L|GT-S5660L"

    aput-object v2, v0, v1

    const/16 v1, 0x847

    const-string v2, "Samsung|Galaxy Gio|GT-S5660M|GT-S5660M"

    aput-object v2, v0, v1

    const/16 v1, 0x848

    const-string v2, "Samsung|Galaxy Gio|GT-S5660V|GT-S5660V"

    aput-object v2, v0, v1

    const/16 v1, 0x849

    const-string v2, "Samsung|Galaxy Gio|SCH-i569|SCH-i569"

    aput-object v2, v0, v1

    const/16 v1, 0x84a

    const-string v2, "Samsung|Galaxy Gio|SHW-M290K|SHW-M290K"

    aput-object v2, v0, v1

    const/16 v1, 0x84b

    const-string v2, "Samsung|Galaxy Gio|SHW-M290S|SHW-M290S"

    aput-object v2, v0, v1

    const/16 v1, 0x84c

    const-string v2, "Samsung|Galaxy Golden|ks02lte|GT-I9230"

    aput-object v2, v0, v1

    const/16 v1, 0x84d

    const-string v2, "Samsung|Galaxy Golden|ks02lte|GT-I9235"

    aput-object v2, v0, v1

    const/16 v1, 0x84e

    const-string v2, "Samsung|Galaxy Golden|ks02ltektt|SHV-E400K"

    aput-object v2, v0, v1

    const/16 v1, 0x84f

    const-string v2, "Samsung|Galaxy Golden|ks02lteskt|SHV-E400S"

    aput-object v2, v0, v1

    const/16 v1, 0x850

    const-string v2, "Samsung|Galaxy Golden 2|pateklte|SM-W2015"

    aput-object v2, v0, v1

    const/16 v1, 0x851

    const-string v2, "Samsung|Galaxy Grand|baffin3gduosctc|SCH-I879"

    aput-object v2, v0, v1

    const/16 v1, 0x852

    const-string v2, "Samsung|Galaxy Grand|baffincmcc|GT-I9128"

    aput-object v2, v0, v1

    const/16 v1, 0x853

    const-string v2, "Samsung|Galaxy Grand|baffincmcc|GT-I9128V"

    aput-object v2, v0, v1

    const/16 v1, 0x854

    const-string v2, "Samsung|Galaxy Grand|baffinltektt|SHV-E270K"

    aput-object v2, v0, v1

    const/16 v1, 0x855

    const-string v2, "Samsung|Galaxy Grand|baffinlteskt|SHV-E270S"

    aput-object v2, v0, v1

    const/16 v1, 0x856

    const-string v2, "Samsung|Galaxy Grand|baffinrd|GT-I9118"

    aput-object v2, v0, v1

    const/16 v1, 0x857

    const-string v2, "Samsung|Galaxy Grand|baffinss|GT-I9080E"

    aput-object v2, v0, v1

    const/16 v1, 0x858

    const-string v2, "Samsung|Galaxy Grand|baffinss|GT-I9080L"

    aput-object v2, v0, v1

    const/16 v1, 0x859

    const-string v2, "Samsung|Galaxy Grand|baffinvektt|SHV-E275K"

    aput-object v2, v0, v1

    const/16 v1, 0x85a

    const-string v2, "Samsung|Galaxy Grand|baffinveskt|SHV-E275S"

    aput-object v2, v0, v1

    const/16 v1, 0x85b

    const-string v2, "Samsung|Galaxy Grand|baffinvetd3g|GT-I9128E"

    aput-object v2, v0, v1

    const/16 v1, 0x85c

    const-string v2, "Samsung|Galaxy Grand|baffinvetd3g|GT-I9128I"

    aput-object v2, v0, v1

    const/16 v1, 0x85d    # 3.0E-42f

    const-string v2, "Samsung|Galaxy Grand Duos|baffin|GT-I9082"

    aput-object v2, v0, v1

    const/16 v1, 0x85e

    const-string v2, "Samsung|Galaxy Grand Duos|baffin|GT-I9082L"

    aput-object v2, v0, v1

    const/16 v1, 0x85f

    const-string v2, "Samsung|Galaxy Grand Max|grandmaxltechn|SM-G7200"

    aput-object v2, v0, v1

    const/16 v1, 0x860

    const-string v2, "Samsung|Galaxy Grand Max|grandmaxltechn|SM-G720AX"

    aput-object v2, v0, v1

    const/16 v1, 0x861

    const-string v2, "Samsung|Galaxy Grand Neo|baffinlite|GT-I9060"

    aput-object v2, v0, v1

    const/16 v1, 0x862

    const-string v2, "Samsung|Galaxy Grand Neo|baffinlite|GT-I9060L"

    aput-object v2, v0, v1

    const/16 v1, 0x863

    const-string v2, "Samsung|Galaxy Grand Neo|baffinlite|GT-I9082C"

    aput-object v2, v0, v1

    const/16 v1, 0x864

    const-string v2, "Samsung|Galaxy Grand Neo|baffinlitedtv|GT-I9063T"

    aput-object v2, v0, v1

    const/16 v1, 0x865

    const-string v2, "Samsung|Galaxy Grand Neo|baffinq3g|GT-I9168"

    aput-object v2, v0, v1

    const/16 v1, 0x866

    const-string v2, "Samsung|Galaxy Grand Neo|baffinq3g|GT-I9168I"

    aput-object v2, v0, v1

    const/16 v1, 0x867

    const-string v2, "Samsung|Galaxy Grand Neo Plus|grandneove3g|GT-I9060C"

    aput-object v2, v0, v1

    const/16 v1, 0x868

    const-string v2, "Samsung|Galaxy Grand Neo Plus|grandneove3g|GT-I9060I"

    aput-object v2, v0, v1

    const/16 v1, 0x869

    const-string v2, "Samsung|Galaxy Grand Neo Plus|grandneove3g|GT-I9060M"

    aput-object v2, v0, v1

    const/16 v1, 0x86a

    const-string v2, "Samsung|Galaxy Grand Neo+|baffinq3gduosctc|SCH-I879E"

    aput-object v2, v0, v1

    const/16 v1, 0x86b

    const-string v2, "Samsung|Galaxy Grand Prime|fortuna3g|SM-G530H"

    aput-object v2, v0, v1

    const/16 v1, 0x86c

    const-string v2, "Samsung|Galaxy Grand Prime|fortuna3gdtv|SM-G530BT"

    aput-object v2, v0, v1

    const/16 v1, 0x86d

    const-string v2, "Samsung|Galaxy Grand Prime|fortunalte|SM-G5306W"

    aput-object v2, v0, v1

    const/16 v1, 0x86e

    const-string v2, "Samsung|Galaxy Grand Prime|fortunalte|SM-G5308W"

    aput-object v2, v0, v1

    const/16 v1, 0x86f

    const-string v2, "Samsung|Galaxy Grand Prime|fortunalte|SM-G530F"

    aput-object v2, v0, v1

    const/16 v1, 0x870

    const-string v2, "Samsung|Galaxy Grand Prime|fortunalte|SM-G530M"

    aput-object v2, v0, v1

    const/16 v1, 0x871

    const-string v2, "Samsung|Galaxy Grand Prime|fortunaltectc|SM-G5309W"

    aput-object v2, v0, v1

    const/16 v1, 0x872

    const-string v2, "Samsung|Galaxy Grand Prime|fortunaltezh|SM-G5308W"

    aput-object v2, v0, v1

    const/16 v1, 0x873

    const-string v2, "Samsung|Galaxy Grand Prime|fortunaltezt|SM-G530MU"

    aput-object v2, v0, v1

    const/16 v1, 0x874

    const-string v2, "Samsung|Galaxy Grand Prime|fortunaltezt|SM-G530Y"

    aput-object v2, v0, v1

    const/16 v1, 0x875

    const-string v2, "Samsung|Galaxy Grand Prime|grandprimelte|SM-G530FZ"

    aput-object v2, v0, v1

    const/16 v1, 0x876

    const-string v2, "Samsung|Galaxy Grand Prime|grandprimelteaio|SAMSUNG-SM-G530AZ"

    aput-object v2, v0, v1

    const/16 v1, 0x877

    const-string v2, "Samsung|Galaxy Grand duos|baffin|GT-I9082i"

    aput-object v2, v0, v1

    const/16 v1, 0x878

    const-string v2, "Samsung|Galaxy Grand-Max|grandmaxltekx|SM-G720N0"

    aput-object v2, v0, v1

    const/16 v1, 0x879

    const-string v2, "Samsung|Galaxy Grand2|ms013g|SM-G7102"

    aput-object v2, v0, v1

    const/16 v1, 0x87a

    const-string v2, "Samsung|Galaxy Grand2|ms013g|SM-G7106"

    aput-object v2, v0, v1

    const/16 v1, 0x87b

    const-string v2, "Samsung|Galaxy Grand2|ms013g|SM-G7108"

    aput-object v2, v0, v1

    const/16 v1, 0x87c

    const-string v2, "Samsung|Galaxy Grand2|ms013g|SM-G7109"

    aput-object v2, v0, v1

    const/16 v1, 0x87d

    const-string v2, "Samsung|Galaxy Grand2|ms013gdtv|SM-G7102T"

    aput-object v2, v0, v1

    const/16 v1, 0x87e

    const-string v2, "Samsung|Galaxy Grand2|ms013gss|SM-G710"

    aput-object v2, v0, v1

    const/16 v1, 0x87f

    const-string v2, "Samsung|Galaxy Grand2|ms01lte|SM-G7105"

    aput-object v2, v0, v1

    const/16 v1, 0x880

    const-string v2, "Samsung|Galaxy Grand2|ms01lte|SM-G7105H"

    aput-object v2, v0, v1

    const/16 v1, 0x881

    const-string v2, "Samsung|Galaxy Grand2|ms01lte|SM-G7105L"

    aput-object v2, v0, v1

    const/16 v1, 0x882

    const-string v2, "Samsung|Galaxy Grand2|ms01ltektt|SM-G710K"

    aput-object v2, v0, v1

    const/16 v1, 0x883

    const-string v2, "Samsung|Galaxy Grand2|ms01ltelgt|SM-G710L"

    aput-object v2, v0, v1

    const/16 v1, 0x884

    const-string v2, "Samsung|Galaxy Grand2|ms01lteskt|SM-G710S"

    aput-object v2, v0, v1

    const/16 v1, 0x885

    const-string v2, "Samsung|Galaxy Indulge|SCH-R910|SCH-R910"

    aput-object v2, v0, v1

    const/16 v1, 0x886

    const-string v2, "Samsung|Galaxy Indulge|SCH-R915|SCH-R915"

    aput-object v2, v0, v1

    const/16 v1, 0x887

    const-string v2, "Samsung|Galaxy Infinite|infinite3gduosctc|SCH-I759"

    aput-object v2, v0, v1

    const/16 v1, 0x888

    const-string v2, "Samsung|Galaxy J|hltejs01tw|SGH-N075T"

    aput-object v2, v0, v1

    const/16 v1, 0x889

    const-string v2, "Samsung|Galaxy J1|j13g|SM-J100H"

    aput-object v2, v0, v1

    const/16 v1, 0x88a

    const-string v2, "Samsung|Galaxy J1|j13g|SM-J100ML"

    aput-object v2, v0, v1

    const/16 v1, 0x88b

    const-string v2, "Samsung|Galaxy J1|j1lte|SM-J100F"

    aput-object v2, v0, v1

    const/16 v1, 0x88c

    const-string v2, "Samsung|Galaxy J1|j1lte|SM-J100G"

    aput-object v2, v0, v1

    const/16 v1, 0x88d

    const-string v2, "Samsung|Galaxy J1|j1lte|SM-J100M"

    aput-object v2, v0, v1

    const/16 v1, 0x88e

    const-string v2, "Samsung|Galaxy J1|j1nlte|SM-J100FN"

    aput-object v2, v0, v1

    const/16 v1, 0x88f

    const-string v2, "Samsung|Galaxy J1|j1nlte|SM-J100MU"

    aput-object v2, v0, v1

    const/16 v1, 0x890

    const-string v2, "Samsung|Galaxy J1|j1nlte|SM-J100Y"

    aput-object v2, v0, v1

    const/16 v1, 0x891

    const-string v2, "Samsung|Galaxy K|SHW-M130K|SHW-M130K"

    aput-object v2, v0, v1

    const/16 v1, 0x892

    const-string v2, "Samsung|Galaxy K Zoom|m2a3g|SM-C111"

    aput-object v2, v0, v1

    const/16 v1, 0x893

    const-string v2, "Samsung|Galaxy K Zoom|m2a3g|SM-C111M"

    aput-object v2, v0, v1

    const/16 v1, 0x894

    const-string v2, "Samsung|Galaxy K Zoom|m2alte|SM-C115"

    aput-object v2, v0, v1

    const/16 v1, 0x895

    const-string v2, "Samsung|Galaxy K Zoom|m2alte|SM-C115M"

    aput-object v2, v0, v1

    const/16 v1, 0x896

    const-string v2, "Samsung|Galaxy K Zoom|m2altecan|SM-C115W"

    aput-object v2, v0, v1

    const/16 v1, 0x897

    const-string v2, "Samsung|Galaxy K Zoom|m2altelgt|SM-C115L"

    aput-object v2, v0, v1

    const/16 v1, 0x898

    const-string v2, "Samsung|Galaxy M Pro2|lucas|GT-B7810"

    aput-object v2, v0, v1

    const/16 v1, 0x899

    const-string v2, "Samsung|Galaxy M Style|SHW-M340L|SHW-M340L"

    aput-object v2, v0, v1

    const/16 v1, 0x89a

    const-string v2, "Samsung|Galaxy M Style|SHW-M340S|SHW-M340S"

    aput-object v2, v0, v1

    const/16 v1, 0x89b

    const-string v2, "Samsung|Galaxy M Style|vastoicmcc|GT-I8258"

    aput-object v2, v0, v1

    const/16 v1, 0x89c

    const-string v2, "Samsung|Galaxy Mega 2|mega23g|SM-G750H"

    aput-object v2, v0, v1

    const/16 v1, 0x89d

    const-string v2, "Samsung|Galaxy Mega 5.8|crater|GT-I9152"

    aput-object v2, v0, v1

    const/16 v1, 0x89e

    const-string v2, "Samsung|Galaxy Mega 5.8|crater3gctc|SCH-P709"

    aput-object v2, v0, v1

    const/16 v1, 0x89f

    const-string v2, "Samsung|Galaxy Mega 5.8|craterss|GT-I9150"

    aput-object v2, v0, v1

    const/16 v1, 0x8a0

    const-string v2, "Samsung|Galaxy Mega 5.8|cratertd3g|GT-I9158"

    aput-object v2, v0, v1

    const/16 v1, 0x8a1

    const-string v2, "Samsung|Galaxy Mega 6.3|melius3g|GT-I9200"

    aput-object v2, v0, v1

    const/16 v1, 0x8a2

    const-string v2, "Samsung|Galaxy Mega 6.3|melius3g|GT-I9208"

    aput-object v2, v0, v1

    const/16 v1, 0x8a3

    const-string v2, "Samsung|Galaxy Mega 6.3|melius3gduosctc|SCH-P729"

    aput-object v2, v0, v1

    const/16 v1, 0x8a4

    const-string v2, "Samsung|Galaxy Mega 6.3|meliuslte|GT-I9205"

    aput-object v2, v0, v1

    const/16 v1, 0x8a5

    const-string v2, "Samsung|Galaxy Mega 6.3|meliuslteMetroPCS|SGH-M819N"

    aput-object v2, v0, v1

    const/16 v1, 0x8a6

    const-string v2, "Samsung|Galaxy Mega 6.3|meliuslteatt|SAMSUNG-SGH-I527"

    aput-object v2, v0, v1

    const/16 v1, 0x8a7

    const-string v2, "Samsung|Galaxy Mega 6.3|meliusltecan|SGH-I527M"

    aput-object v2, v0, v1

    const/16 v1, 0x8a8

    const-string v2, "Samsung|Galaxy Mega 6.3|meliusltektt|SHV-E310K"

    aput-object v2, v0, v1

    const/16 v1, 0x8a9

    const-string v2, "Samsung|Galaxy Mega 6.3|meliusltelgt|SHV-E310L"

    aput-object v2, v0, v1

    const/16 v1, 0x8aa

    const-string v2, "Samsung|Galaxy Mega 6.3|meliuslteskt|SHV-E310S"

    aput-object v2, v0, v1

    const/16 v1, 0x8ab

    const-string v2, "Samsung|Galaxy Mega 6.3|meliusltespr|SPH-L600"

    aput-object v2, v0, v1

    const/16 v1, 0x8ac

    const-string v2, "Samsung|Galaxy Mega 6.3|meliuslteusc|SCH-R960"

    aput-object v2, v0, v1

    const/16 v1, 0x8ad

    const-string v2, "Samsung|Galaxy Mega Plus|craterq3g|GT-I9152P"

    aput-object v2, v0, v1

    const/16 v1, 0x8ae

    const-string v2, "Samsung|Galaxy Mega Plus|craterq3g|GT-I9158P"

    aput-object v2, v0, v1

    const/16 v1, 0x8af

    const-string v2, "Samsung|Galaxy Mega Plus|megapluslte|GT-I9158V"

    aput-object v2, v0, v1

    const/16 v1, 0x8b0

    const-string v2, "Samsung|Galaxy Mega2|mega2lte|SM-G750F"

    aput-object v2, v0, v1

    const/16 v1, 0x8b1

    const-string v2, "Samsung|Galaxy Mega2|mega2lteatt|SAMSUNG-SM-G750A"

    aput-object v2, v0, v1

    const/16 v1, 0x8b2

    const-string v2, "Samsung|Galaxy Mega2|vasta3g|SM-G750H"

    aput-object v2, v0, v1

    const/16 v1, 0x8b3

    const-string v2, "Samsung|Galaxy Mega2|vastalte|SM-G7508Q"

    aput-object v2, v0, v1

    const/16 v1, 0x8b4

    const-string v2, "Samsung|Galaxy Mega2|vastaltezh|SM-G7508Q"

    aput-object v2, v0, v1

    const/16 v1, 0x8b5

    const-string v2, "Samsung|Galaxy Mini|GT-S5570|GT-S5570"

    aput-object v2, v0, v1

    const/16 v1, 0x8b6

    const-string v2, "Samsung|Galaxy Mini|GT-S5570B|GT-S5570B"

    aput-object v2, v0, v1

    const/16 v1, 0x8b7

    const-string v2, "Samsung|Galaxy Mini|GT-S5570I|GT-S5570I"

    aput-object v2, v0, v1

    const/16 v1, 0x8b8

    const-string v2, "Samsung|Galaxy Mini|GT-S5570L|GT-S5570L"

    aput-object v2, v0, v1

    const/16 v1, 0x8b9

    const-string v2, "Samsung|Galaxy Mini|GT-S5578|GT-S5578"

    aput-object v2, v0, v1

    const/16 v1, 0x8ba

    const-string v2, "Samsung|Galaxy Mini|SGH-T499|SGH-T499"

    aput-object v2, v0, v1

    const/16 v1, 0x8bb

    const-string v2, "Samsung|Galaxy Mini|SGH-T499V|SGH-T499V"

    aput-object v2, v0, v1

    const/16 v1, 0x8bc

    const-string v2, "Samsung|Galaxy Mini|SGH-T499Y|SGH-T499Y"

    aput-object v2, v0, v1

    const/16 v1, 0x8bd

    const-string v2, "Samsung|Galaxy Mini2|GT-S6500|GT-S6500"

    aput-object v2, v0, v1

    const/16 v1, 0x8be

    const-string v2, "Samsung|Galaxy Mini2|GT-S6500D|GT-S6500D"

    aput-object v2, v0, v1

    const/16 v1, 0x8bf

    const-string v2, "Samsung|Galaxy Mini2|GT-S6500L|GT-S6500L"

    aput-object v2, v0, v1

    const/16 v1, 0x8c0

    const-string v2, "Samsung|Galaxy Mini2|GT-S6500T|GT-S6500T"

    aput-object v2, v0, v1

    const/16 v1, 0x8c1

    const-string v2, "Samsung|Galaxy Music|ivoryss|GT-S6010"

    aput-object v2, v0, v1

    const/16 v1, 0x8c2

    const-string v2, "Samsung|Galaxy Music|ivoryss|GT-S6010L"

    aput-object v2, v0, v1

    const/16 v1, 0x8c3

    const-string v2, "Samsung|Galaxy Music Duos|ivory|GT-S6012"

    aput-object v2, v0, v1

    const/16 v1, 0x8c4

    const-string v2, "Samsung|Galaxy Music Duos|ivory|GT-S6012B"

    aput-object v2, v0, v1

    const/16 v1, 0x8c5

    const-string v2, "Samsung|Galaxy NX|u0lte|EK-GN120"

    aput-object v2, v0, v1

    const/16 v1, 0x8c6

    const-string v2, "Samsung|Galaxy NX|u0lte|EK-GN120A"

    aput-object v2, v0, v1

    const/16 v1, 0x8c7

    const-string v2, "Samsung|Galaxy NX|u0lteue|EK-GN120A"

    aput-object v2, v0, v1

    const/16 v1, 0x8c8

    const-string v2, "Samsung|Galaxy Neo|SHW-M220L|SHW-M220L"

    aput-object v2, v0, v1

    const/16 v1, 0x8c9

    const-string v2, "Samsung|Galaxy Nexus|maguro|Galaxy Nexus"

    aput-object v2, v0, v1

    const/16 v1, 0x8ca

    const-string v2, "Samsung|Galaxy Nexus|maguro|Galaxy X"

    aput-object v2, v0, v1

    const/16 v1, 0x8cb

    const-string v2, "Samsung|Galaxy Nexus|toro|Galaxy Nexus"

    aput-object v2, v0, v1

    const/16 v1, 0x8cc

    const-string v2, "Samsung|Galaxy Nexus|toroplus|Galaxy Nexus"

    aput-object v2, v0, v1

    const/16 v1, 0x8cd

    const-string v2, "Samsung|Galaxy Note|GT-I9220|GT-I9220"

    aput-object v2, v0, v1

    const/16 v1, 0x8ce

    const-string v2, "Samsung|Galaxy Note|GT-I9228|GT-I9228"

    aput-object v2, v0, v1

    const/16 v1, 0x8cf

    const-string v2, "Samsung|Galaxy Note|GT-N7000|GT-N7000"

    aput-object v2, v0, v1

    const/16 v1, 0x8d0

    const-string v2, "Samsung|Galaxy Note|GT-N7005|GT-N7005"

    aput-object v2, v0, v1

    const/16 v1, 0x8d1

    const-string v2, "Samsung|Galaxy Note|SC-05D|SC-05D"

    aput-object v2, v0, v1

    const/16 v1, 0x8d2

    const-string v2, "Samsung|Galaxy Note|SCH-i889|SCH-i889"

    aput-object v2, v0, v1

    const/16 v1, 0x8d3

    const-string v2, "Samsung|Galaxy Note|SGH-I717|SAMSUNG-SGH-I717"

    aput-object v2, v0, v1

    const/16 v1, 0x8d4

    const-string v2, "Samsung|Galaxy Note|SGH-I717|SGH-I717"

    aput-object v2, v0, v1

    const/16 v1, 0x8d5

    const-string v2, "Samsung|Galaxy Note|SGH-I717D|SGH-I717D"

    aput-object v2, v0, v1

    const/16 v1, 0x8d6

    const-string v2, "Samsung|Galaxy Note|SGH-I717M|SGH-I717M"

    aput-object v2, v0, v1

    const/16 v1, 0x8d7

    const-string v2, "Samsung|Galaxy Note|SGH-I717R|SGH-I717R"

    aput-object v2, v0, v1

    const/16 v1, 0x8d8

    const-string v2, "Samsung|Galaxy Note|SGH-T879|SGH-T879"

    aput-object v2, v0, v1

    const/16 v1, 0x8d9

    const-string v2, "Samsung|Galaxy Note|SHV-E160K|SHV-E160K"

    aput-object v2, v0, v1

    const/16 v1, 0x8da

    const-string v2, "Samsung|Galaxy Note|SHV-E160L|SHV-E160L"

    aput-object v2, v0, v1

    const/16 v1, 0x8db

    const-string v2, "Samsung|Galaxy Note|SHV-E160S|SHV-E160S"

    aput-object v2, v0, v1

    const/16 v1, 0x8dc

    const-string v2, "Samsung|Galaxy Note 10.1|lt033g|SM-P601"

    aput-object v2, v0, v1

    const/16 v1, 0x8dd

    const-string v2, "Samsung|Galaxy Note 10.1|lt033g|SM-P602"

    aput-object v2, v0, v1

    const/16 v1, 0x8de

    const-string v2, "Samsung|Galaxy Note 10.1|lt03ltektt|SM-P605K"

    aput-object v2, v0, v1

    const/16 v1, 0x8df

    const-string v2, "Samsung|Galaxy Note 10.1|lt03ltelgt|SM-P605L"

    aput-object v2, v0, v1

    const/16 v1, 0x8e0

    const-string v2, "Samsung|Galaxy Note 10.1|lt03lteskt|SM-P605S"

    aput-object v2, v0, v1

    const/16 v1, 0x8e1

    const-string v2, "Samsung|Galaxy Note 10.1|p4notelte|GT-N8020"

    aput-object v2, v0, v1

    const/16 v1, 0x8e2

    const-string v2, "Samsung|Galaxy Note 10.1|p4noteltektt|SHV-E230K"

    aput-object v2, v0, v1

    const/16 v1, 0x8e3

    const-string v2, "Samsung|Galaxy Note 10.1|p4noteltelgt|SHV-E230L"

    aput-object v2, v0, v1

    const/16 v1, 0x8e4

    const-string v2, "Samsung|Galaxy Note 10.1|p4notelteskt|SHV-E230S"

    aput-object v2, v0, v1

    const/16 v1, 0x8e5

    const-string v2, "Samsung|Galaxy Note 10.1|p4noteltespr|SPH-P600"

    aput-object v2, v0, v1

    const/16 v1, 0x8e6

    const-string v2, "Samsung|Galaxy Note 10.1|p4notelteusc|SCH-I925U"

    aput-object v2, v0, v1

    const/16 v1, 0x8e7

    const-string v2, "Samsung|Galaxy Note 10.1|p4noteltevzw|SCH-I925"

    aput-object v2, v0, v1

    const/16 v1, 0x8e8

    const-string v2, "Samsung|Galaxy Note 10.1|p4noterf|GT-N8000"

    aput-object v2, v0, v1

    const/16 v1, 0x8e9

    const-string v2, "Samsung|Galaxy Note 10.1|p4noterf|GT-N8005"

    aput-object v2, v0, v1

    const/16 v1, 0x8ea

    const-string v2, "Samsung|Galaxy Note 10.1|p4noterfktt|SHW-M480K"

    aput-object v2, v0, v1

    const/16 v1, 0x8eb

    const-string v2, "Samsung|Galaxy Note 10.1|p4notewifi|GT-N8013"

    aput-object v2, v0, v1

    const/16 v1, 0x8ec

    const-string v2, "Samsung|Galaxy Note 10.1|p4notewifi43241any|SHW-M486W"

    aput-object v2, v0, v1

    const/16 v1, 0x8ed

    const-string v2, "Samsung|Galaxy Note 10.1|p4notewifiany|SHW-M480W"

    aput-object v2, v0, v1

    const/16 v1, 0x8ee

    const-string v2, "Samsung|Galaxy Note 10.1|p4notewifiktt|SHW-M485W"

    aput-object v2, v0, v1

    const/16 v1, 0x8ef

    const-string v2, "Samsung|Galaxy Note 10.1|p4notewifiww|GT-N8010"

    aput-object v2, v0, v1

    const/16 v1, 0x8f0

    const-string v2, "Samsung|Galaxy Note 8|konalteatt|SAMSUNG-SGH-I467"

    aput-object v2, v0, v1

    const/16 v1, 0x8f1

    const-string v2, "Samsung|Galaxy Note 8.0|kona3g|GT-N5100"

    aput-object v2, v0, v1

    const/16 v1, 0x8f2

    const-string v2, "Samsung|Galaxy Note 8.0|kona3g|GT-N5105"

    aput-object v2, v0, v1

    const/16 v1, 0x8f3

    const-string v2, "Samsung|Galaxy Note 8.0|konalte|GT-N5120"

    aput-object v2, v0, v1

    const/16 v1, 0x8f4

    const-string v2, "Samsung|Galaxy Note 8.0|konaltecan|SGH-I467M"

    aput-object v2, v0, v1

    const/16 v1, 0x8f5

    const-string v2, "Samsung|Galaxy Note 8.0|konawifi|GT-N5110"

    aput-object v2, v0, v1

    const/16 v1, 0x8f6

    const-string v2, "Samsung|Galaxy Note 8.0|konawifiany|SHW-M500W"

    aput-object v2, v0, v1

    const/16 v1, 0x8f7

    const-string v2, "Samsung|Galaxy Note Edge|SCL24|SCL24"

    aput-object v2, v0, v1

    const/16 v1, 0x8f8

    const-string v2, "Samsung|Galaxy Note Edge|tbeltektt|SM-N915K"

    aput-object v2, v0, v1

    const/16 v1, 0x8f9

    const-string v2, "Samsung|Galaxy Note Edge|tbeltelgt|SM-N915L"

    aput-object v2, v0, v1

    const/16 v1, 0x8fa

    const-string v2, "Samsung|Galaxy Note Edge|tbelteskt|SM-N915S"

    aput-object v2, v0, v1

    const/16 v1, 0x8fb

    const-string v2, "Samsung|Galaxy Note Edge|tblte|SM-N9150"

    aput-object v2, v0, v1

    const/16 v1, 0x8fc

    const-string v2, "Samsung|Galaxy Note Edge|tblte|SM-N915F"

    aput-object v2, v0, v1

    const/16 v1, 0x8fd

    const-string v2, "Samsung|Galaxy Note Edge|tblte|SM-N915FY"

    aput-object v2, v0, v1

    const/16 v1, 0x8fe

    const-string v2, "Samsung|Galaxy Note Edge|tblte|SM-N915G"

    aput-object v2, v0, v1

    const/16 v1, 0x8ff

    const-string v2, "Samsung|Galaxy Note Edge|tblte|SM-N915X"

    aput-object v2, v0, v1

    const/16 v1, 0x900

    const-string v2, "Samsung|Galaxy Note Edge|tblteatt|SAMSUNG-SM-N915A"

    aput-object v2, v0, v1

    const/16 v1, 0x901

    const-string v2, "Samsung|Galaxy Note Edge|tbltecan|SM-N915W8"

    aput-object v2, v0, v1

    const/16 v1, 0x902

    const-string v2, "Samsung|Galaxy Note Edge|tbltechn|SM-N9150"

    aput-object v2, v0, v1

    const/16 v1, 0x903

    const-string v2, "Samsung|Galaxy Note Edge|tbltespr|SM-N915P"

    aput-object v2, v0, v1

    const/16 v1, 0x904

    const-string v2, "Samsung|Galaxy Note Edge|tbltetmo|SM-N915T"

    aput-object v2, v0, v1

    const/16 v1, 0x905

    const-string v2, "Samsung|Galaxy Note Edge|tblteusc|SM-N915R4"

    aput-object v2, v0, v1

    const/16 v1, 0x906

    const-string v2, "Samsung|Galaxy Note Edge|tbltevzw|SM-N915V"

    aput-object v2, v0, v1

    const/16 v1, 0x907

    const-string v2, "Samsung|Galaxy Note II|t0lteatt|SAMSUNG-SGH-I317"

    aput-object v2, v0, v1

    const/16 v1, 0x908

    const-string v2, "Samsung|Galaxy Note Pro 12.2|v1a3g|SM-P901"

    aput-object v2, v0, v1

    const/16 v1, 0x909

    const-string v2, "Samsung|Galaxy Note Pro 12.2|v1awifi|SM-P900"

    aput-object v2, v0, v1

    const/16 v1, 0x90a

    const-string v2, "Samsung|Galaxy Note Pro 12.2|v1awifikx|SM-P900"

    aput-object v2, v0, v1

    const/16 v1, 0x90b

    const-string v2, "Samsung|Galaxy Note Pro 12.2|viennalte|SM-P905"

    aput-object v2, v0, v1

    const/16 v1, 0x90c

    const-string v2, "Samsung|Galaxy Note Pro 12.2|viennalte|SM-P905M"

    aput-object v2, v0, v1

    const/16 v1, 0x90d

    const-string v2, "Samsung|Galaxy Note Pro 12.2|viennalteatt|SAMSUNG-SM-P907A"

    aput-object v2, v0, v1

    const/16 v1, 0x90e

    const-string v2, "Samsung|Galaxy Note Pro 12.2|viennaltekx|SM-P905F0"

    aput-object v2, v0, v1

    const/16 v1, 0x90f

    const-string v2, "Samsung|Galaxy Note Pro 12.2|viennaltevzw|SM-P905V"

    aput-object v2, v0, v1

    const/16 v1, 0x910

    const-string v2, "Samsung|Galaxy Note2|SC-02E|SC-02E"

    aput-object v2, v0, v1

    const/16 v1, 0x911

    const-string v2, "Samsung|Galaxy Note2|t03g|GT-N7100"

    aput-object v2, v0, v1

    const/16 v1, 0x912

    const-string v2, "Samsung|Galaxy Note2|t03g|GT-N7100T"

    aput-object v2, v0, v1

    const/16 v1, 0x913

    const-string v2, "Samsung|Galaxy Note2|t03gchn|GT-N7100"

    aput-object v2, v0, v1

    const/16 v1, 0x914

    const-string v2, "Samsung|Galaxy Note2|t03gchnduos|GT-N7102"

    aput-object v2, v0, v1

    const/16 v1, 0x915

    const-string v2, "Samsung|Galaxy Note2|t03gchnduos|GT-N7102i"

    aput-object v2, v0, v1

    const/16 v1, 0x916

    const-string v2, "Samsung|Galaxy Note2|t03gcmcc|GT-N7108"

    aput-object v2, v0, v1

    const/16 v1, 0x917

    const-string v2, "Samsung|Galaxy Note2|t03gctc|SCH-N719"

    aput-object v2, v0, v1

    const/16 v1, 0x918

    const-string v2, "Samsung|Galaxy Note2|t03gcuduos|GT-N7102"

    aput-object v2, v0, v1

    const/16 v1, 0x919

    const-string v2, "Samsung|Galaxy Note2|t03gcuduos|GT-N7102i"

    aput-object v2, v0, v1

    const/16 v1, 0x91a

    const-string v2, "Samsung|Galaxy Note2|t0lte|GT-N7105"

    aput-object v2, v0, v1

    const/16 v1, 0x91b

    const-string v2, "Samsung|Galaxy Note2|t0lte|GT-N7105T"

    aput-object v2, v0, v1

    const/16 v1, 0x91c

    const-string v2, "Samsung|Galaxy Note2|t0lteatt|SAMSUNG-SGH-I317"

    aput-object v2, v0, v1

    const/16 v1, 0x91d

    const-string v2, "Samsung|Galaxy Note2|t0ltecan|SGH-I317M"

    aput-object v2, v0, v1

    const/16 v1, 0x91e

    const-string v2, "Samsung|Galaxy Note2|t0ltecan|SGH-T889V"

    aput-object v2, v0, v1

    const/16 v1, 0x91f

    const-string v2, "Samsung|Galaxy Note2|t0ltecmcc|GT-N7108D"

    aput-object v2, v0, v1

    const/16 v1, 0x920

    const-string v2, "Samsung|Galaxy Note2|t0ltedcm|SC-02E"

    aput-object v2, v0, v1

    const/16 v1, 0x921

    const-string v2, "Samsung|Galaxy Note2|t0ltektt|SHV-E250K"

    aput-object v2, v0, v1

    const/16 v1, 0x922

    const-string v2, "Samsung|Galaxy Note2|t0ltelgt|SHV-E250L"

    aput-object v2, v0, v1

    const/16 v1, 0x923

    const-string v2, "Samsung|Galaxy Note2|t0lteskt|SHV-E250S"

    aput-object v2, v0, v1

    const/16 v1, 0x924

    const-string v2, "Samsung|Galaxy Note2|t0ltespr|SPH-L900"

    aput-object v2, v0, v1

    const/16 v1, 0x925

    const-string v2, "Samsung|Galaxy Note2|t0ltetmo|SGH-T889"

    aput-object v2, v0, v1

    const/16 v1, 0x926

    const-string v2, "Samsung|Galaxy Note2|t0lteusc|SCH-R950"

    aput-object v2, v0, v1

    const/16 v1, 0x927

    const-string v2, "Samsung|Galaxy Note2|t0ltevzw|SCH-I605"

    aput-object v2, v0, v1

    const/16 v1, 0x928

    const-string v2, "Samsung|Galaxy Note3|SC-02F|SC-02F"

    aput-object v2, v0, v1

    const/16 v1, 0x929

    const-string v2, "Samsung|Galaxy Note3|SCL22|SCL22"

    aput-object v2, v0, v1

    const/16 v1, 0x92a

    const-string v2, "Samsung|Galaxy Note3|ha3g|SM-N900"

    aput-object v2, v0, v1

    const/16 v1, 0x92b

    const-string v2, "Samsung|Galaxy Note3|ha3g|SM-N9000Q"

    aput-object v2, v0, v1

    const/16 v1, 0x92c

    const-string v2, "Samsung|Galaxy Note3|hlte|SM-N9005"

    aput-object v2, v0, v1

    const/16 v1, 0x92d

    const-string v2, "Samsung|Galaxy Note3|hlte|SM-N9006"

    aput-object v2, v0, v1

    const/16 v1, 0x92e

    const-string v2, "Samsung|Galaxy Note3|hlte|SM-N9007"

    aput-object v2, v0, v1

    const/16 v1, 0x92f

    const-string v2, "Samsung|Galaxy Note3|hlte|SM-N9008V"

    aput-object v2, v0, v1

    const/16 v1, 0x930

    const-string v2, "Samsung|Galaxy Note3|hlte|SM-N9009"

    aput-object v2, v0, v1

    const/16 v1, 0x931

    const-string v2, "Samsung|Galaxy Note3|hlte|SM-N900U"

    aput-object v2, v0, v1

    const/16 v1, 0x932

    const-string v2, "Samsung|Galaxy Note3|hlteatt|SAMSUNG-SM-N900A"

    aput-object v2, v0, v1

    const/16 v1, 0x933

    const-string v2, "Samsung|Galaxy Note3|hltecan|SM-N900W8"

    aput-object v2, v0, v1

    const/16 v1, 0x934

    const-string v2, "Samsung|Galaxy Note3|hltektt|SM-N900K"

    aput-object v2, v0, v1

    const/16 v1, 0x935

    const-string v2, "Samsung|Galaxy Note3|hltelgt|SM-N900L"

    aput-object v2, v0, v1

    const/16 v1, 0x936

    const-string v2, "Samsung|Galaxy Note3|hlteskt|SM-N900S"

    aput-object v2, v0, v1

    const/16 v1, 0x937

    const-string v2, "Samsung|Galaxy Note3|hltespr|SM-N900P"

    aput-object v2, v0, v1

    const/16 v1, 0x938

    const-string v2, "Samsung|Galaxy Note3|hltetmo|SM-N900T"

    aput-object v2, v0, v1

    const/16 v1, 0x939

    const-string v2, "Samsung|Galaxy Note3|hlteusc|SM-N900R4"

    aput-object v2, v0, v1

    const/16 v1, 0x93a

    const-string v2, "Samsung|Galaxy Note3|hltevzw|SM-N900V"

    aput-object v2, v0, v1

    const/16 v1, 0x93b

    const-string v2, "Samsung|Galaxy Note3|htdlte|SM-N9007"

    aput-object v2, v0, v1

    const/16 v1, 0x93c

    const-string v2, "Samsung|Galaxy Note3 Duos|hlte|SM-N9002"

    aput-object v2, v0, v1

    const/16 v1, 0x93d

    const-string v2, "Samsung|Galaxy Note3 Duos|hlte|SM-N9008"

    aput-object v2, v0, v1

    const/16 v1, 0x93e

    const-string v2, "Samsung|Galaxy Note3 Neo|frescoltektt|SM-N750K"

    aput-object v2, v0, v1

    const/16 v1, 0x93f

    const-string v2, "Samsung|Galaxy Note3 Neo|frescoltelgt|SM-N750L"

    aput-object v2, v0, v1

    const/16 v1, 0x940

    const-string v2, "Samsung|Galaxy Note3 Neo|frescolteskt|SM-N750S"

    aput-object v2, v0, v1

    const/16 v1, 0x941

    const-string v2, "Samsung|Galaxy Note3 Neo|hl3g|SM-N750"

    aput-object v2, v0, v1

    const/16 v1, 0x942

    const-string v2, "Samsung|Galaxy Note3 Neo|hl3g|SM-N7500Q"

    aput-object v2, v0, v1

    const/16 v1, 0x943

    const-string v2, "Samsung|Galaxy Note3 Neo|hl3gds|SM-N7502"

    aput-object v2, v0, v1

    const/16 v1, 0x944

    const-string v2, "Samsung|Galaxy Note3 Neo|hllte|SM-N7505"

    aput-object v2, v0, v1

    const/16 v1, 0x945

    const-string v2, "Samsung|Galaxy Note3 Neo|hllte|SM-N7505L"

    aput-object v2, v0, v1

    const/16 v1, 0x946

    const-string v2, "Samsung|Galaxy Note3 Neo|hllte|SM-N7507"

    aput-object v2, v0, v1

    const/16 v1, 0x947

    const-string v2, "Samsung|Galaxy Note4|tre3caltektt|SM-N916K"

    aput-object v2, v0, v1

    const/16 v1, 0x948

    const-string v2, "Samsung|Galaxy Note4|tre3caltelgt|SM-N916L"

    aput-object v2, v0, v1

    const/16 v1, 0x949

    const-string v2, "Samsung|Galaxy Note4|tre3calteskt|SM-N916S"

    aput-object v2, v0, v1

    const/16 v1, 0x94a

    const-string v2, "Samsung|Galaxy Note4|tre3g|SM-N910H"

    aput-object v2, v0, v1

    const/16 v1, 0x94b

    const-string v2, "Samsung|Galaxy Note4|trelte|SM-N910C"

    aput-object v2, v0, v1

    const/16 v1, 0x94c

    const-string v2, "Samsung|Galaxy Note4|treltektt|SM-N910K"

    aput-object v2, v0, v1

    const/16 v1, 0x94d

    const-string v2, "Samsung|Galaxy Note4|treltelgt|SM-N910L"

    aput-object v2, v0, v1

    const/16 v1, 0x94e

    const-string v2, "Samsung|Galaxy Note4|trelteskt|SM-N910S"

    aput-object v2, v0, v1

    const/16 v1, 0x94f

    const-string v2, "Samsung|Galaxy Note4|trhplte|SM-N910U"

    aput-object v2, v0, v1

    const/16 v1, 0x950

    const-string v2, "Samsung|Galaxy Note4|trlte|SM-N910F"

    aput-object v2, v0, v1

    const/16 v1, 0x951

    const-string v2, "Samsung|Galaxy Note4|trlte|SM-N910G"

    aput-object v2, v0, v1

    const/16 v1, 0x952

    const-string v2, "Samsung|Galaxy Note4|trlte|SM-N910X"

    aput-object v2, v0, v1

    const/16 v1, 0x953

    const-string v2, "Samsung|Galaxy Note4|trlteatt|SAMSUNG-SM-N910A"

    aput-object v2, v0, v1

    const/16 v1, 0x954

    const-string v2, "Samsung|Galaxy Note4|trlteatt|SM-N910F"

    aput-object v2, v0, v1

    const/16 v1, 0x955

    const-string v2, "Samsung|Galaxy Note4|trltecan|SM-N910W8"

    aput-object v2, v0, v1

    const/16 v1, 0x956

    const-string v2, "Samsung|Galaxy Note4|trltechn|SM-N9100"

    aput-object v2, v0, v1

    const/16 v1, 0x957

    const-string v2, "Samsung|Galaxy Note4|trltechn|SM-N9106W"

    aput-object v2, v0, v1

    const/16 v1, 0x958

    const-string v2, "Samsung|Galaxy Note4|trltechn|SM-N9108V"

    aput-object v2, v0, v1

    const/16 v1, 0x959

    const-string v2, "Samsung|Galaxy Note4|trltechn|SM-N9109W"

    aput-object v2, v0, v1

    const/16 v1, 0x95a

    const-string v2, "Samsung|Galaxy Note4|trltechnzh|SM-N9100"

    aput-object v2, v0, v1

    const/16 v1, 0x95b

    const-string v2, "Samsung|Galaxy Note4|trltespr|SM-N910P"

    aput-object v2, v0, v1

    const/16 v1, 0x95c

    const-string v2, "Samsung|Galaxy Note4|trltetmo|SM-N910T"

    aput-object v2, v0, v1

    const/16 v1, 0x95d

    const-string v2, "Samsung|Galaxy Note4|trltetmo|SM-N910T2"

    aput-object v2, v0, v1

    const/16 v1, 0x95e

    const-string v2, "Samsung|Galaxy Note4|trlteusc|SM-N910R4"

    aput-object v2, v0, v1

    const/16 v1, 0x95f

    const-string v2, "Samsung|Galaxy Note4|trltevzw|SM-N910V"

    aput-object v2, v0, v1

    const/16 v1, 0x960

    const-string v2, "Samsung|Galaxy Player|YP-GB70|YP-GB70"

    aput-object v2, v0, v1

    const/16 v1, 0x961

    const-string v2, "Samsung|Galaxy Player 3.6|YP-GS1|YP-GS1"

    aput-object v2, v0, v1

    const/16 v1, 0x962

    const-string v2, "Samsung|Galaxy Player 4|YP-GB1|YP-GB1"

    aput-object v2, v0, v1

    const/16 v1, 0x963

    const-string v2, "Samsung|Galaxy Player 4.0|YP-G1|YP-G1"

    aput-object v2, v0, v1

    const/16 v1, 0x964

    const-string v2, "Samsung|Galaxy Player 4.2|YP-GI1|YP-GI1"

    aput-object v2, v0, v1

    const/16 v1, 0x965

    const-string v2, "Samsung|Galaxy Player 5|YP-G70|YP-G70"

    aput-object v2, v0, v1

    const/16 v1, 0x966

    const-string v2, "Samsung|Galaxy Player 5.8|harrison|YP-GP1"

    aput-object v2, v0, v1

    const/16 v1, 0x967

    const-string v2, "Samsung|Galaxy Player 5.8|harrisonkrktt|YP-GP1"

    aput-object v2, v0, v1

    const/16 v1, 0x968

    const-string v2, "Samsung|Galaxy Player 5.8|harrisonkrlgt|YP-GP1"

    aput-object v2, v0, v1

    const/16 v1, 0x969

    const-string v2, "Samsung|Galaxy Player 50|YP-G50|YP-G50"

    aput-object v2, v0, v1

    const/16 v1, 0x96a

    const-string v2, "Samsung|Galaxy Pocket|GT-S5300|GT-S5300"

    aput-object v2, v0, v1

    const/16 v1, 0x96b

    const-string v2, "Samsung|Galaxy Pocket|GT-S5300B|GT-S5300B"

    aput-object v2, v0, v1

    const/16 v1, 0x96c

    const-string v2, "Samsung|Galaxy Pocket|GT-S5300L|GT-S5300L"

    aput-object v2, v0, v1

    const/16 v1, 0x96d

    const-string v2, "Samsung|Galaxy Pocket|GT-S5302|GT-S5302"

    aput-object v2, v0, v1

    const/16 v1, 0x96e

    const-string v2, "Samsung|Galaxy Pocket|GT-S5302B|GT-S5302B"

    aput-object v2, v0, v1

    const/16 v1, 0x96f

    const-string v2, "Samsung|Galaxy Pocket|coriplus|GT-S5301"

    aput-object v2, v0, v1

    const/16 v1, 0x970

    const-string v2, "Samsung|Galaxy Pocket|coriplusds|GT-S5303"

    aput-object v2, v0, v1

    const/16 v1, 0x971

    const-string v2, "Samsung|Galaxy Pocket Neo|corsica|GT-S5312"

    aput-object v2, v0, v1

    const/16 v1, 0x972

    const-string v2, "Samsung|Galaxy Pocket Neo|corsica|GT-S5312B"

    aput-object v2, v0, v1

    const/16 v1, 0x973

    const-string v2, "Samsung|Galaxy Pocket Neo|corsica|GT-S5312L"

    aput-object v2, v0, v1

    const/16 v1, 0x974

    const-string v2, "Samsung|Galaxy Pocket Neo|corsicass|GT-S5310"

    aput-object v2, v0, v1

    const/16 v1, 0x975

    const-string v2, "Samsung|Galaxy Pocket Neo|corsicass|GT-S5310B"

    aput-object v2, v0, v1

    const/16 v1, 0x976

    const-string v2, "Samsung|Galaxy Pocket Neo|corsicass|GT-S5310E"

    aput-object v2, v0, v1

    const/16 v1, 0x977

    const-string v2, "Samsung|Galaxy Pocket Neo|corsicass|GT-S5310G"

    aput-object v2, v0, v1

    const/16 v1, 0x978

    const-string v2, "Samsung|Galaxy Pocket Neo|corsicass|GT-S5310L"

    aput-object v2, v0, v1

    const/16 v1, 0x979

    const-string v2, "Samsung|Galaxy Pocket Neo|corsicass|GT-S5310T"

    aput-object v2, v0, v1

    const/16 v1, 0x97a

    const-string v2, "Samsung|Galaxy Pocket Neo|corsicave3g|GT-S5310I"

    aput-object v2, v0, v1

    const/16 v1, 0x97b

    const-string v2, "Samsung|Galaxy Pocket Neo|corsicave3g|GT-S5310N"

    aput-object v2, v0, v1

    const/16 v1, 0x97c

    const-string v2, "Samsung|Galaxy Pocket Neo|corsicaveds3gvj|GT-S5312C"

    aput-object v2, v0, v1

    const/16 v1, 0x97d

    const-string v2, "Samsung|Galaxy Pocket Neo|corsicaveds3gvj|GT-S5312M"

    aput-object v2, v0, v1

    const/16 v1, 0x97e

    const-string v2, "Samsung|Galaxy Pocket Neo|d2aio|SAMSUNG-SGH-I747Z"

    aput-object v2, v0, v1

    const/16 v1, 0x97f

    const-string v2, "Samsung|Galaxy Pocket Plus|coriplus|GT-S5301"

    aput-object v2, v0, v1

    const/16 v1, 0x980

    const-string v2, "Samsung|Galaxy Pocket Plus|coriplus|GT-S5301B"

    aput-object v2, v0, v1

    const/16 v1, 0x981

    const-string v2, "Samsung|Galaxy Pocket Plus|coriplus|GT-S5301L"

    aput-object v2, v0, v1

    const/16 v1, 0x982

    const-string v2, "Samsung|Galaxy Pocket SS|corsicave3g|GT-S5310C"

    aput-object v2, v0, v1

    const/16 v1, 0x983

    const-string v2, "Samsung|Galaxy Pocket SS|corsicave3g|GT-S5310M"

    aput-object v2, v0, v1

    const/16 v1, 0x984

    const-string v2, "Samsung|Galaxy Pocket2|pocket23g|SM-G110B"

    aput-object v2, v0, v1

    const/16 v1, 0x985

    const-string v2, "Samsung|Galaxy Pocket2|pocket23g|SM-G110M"

    aput-object v2, v0, v1

    const/16 v1, 0x986

    const-string v2, "Samsung|Galaxy Pocket2|pocket2ss3g|SM-G110H"

    aput-object v2, v0, v1

    const/16 v1, 0x987

    const-string v2, "Samsung|Galaxy Pop|superiorlteskt|SHV-E220S"

    aput-object v2, v0, v1

    const/16 v1, 0x988

    const-string v2, "Samsung|Galaxy Pop (CDMA)|SCH-i559|SCH-i559"

    aput-object v2, v0, v1

    const/16 v1, 0x989

    const-string v2, "Samsung|Galaxy Precedent|SCH-M828C|SCH-M828C"

    aput-object v2, v0, v1

    const/16 v1, 0x98a

    const-string v2, "Samsung|Galaxy Premier|superior|GT-I9260"

    aput-object v2, v0, v1

    const/16 v1, 0x98b

    const-string v2, "Samsung|Galaxy Premier|superiorcmcc|GT-I9268"

    aput-object v2, v0, v1

    const/16 v1, 0x98c

    const-string v2, "Samsung|Galaxy Prevail|SPH-M820|SPH-M820-BST"

    aput-object v2, v0, v1

    const/16 v1, 0x98d

    const-string v2, "Samsung|Galaxy Prevail2|raybst|SPH-M840"

    aput-object v2, v0, v1

    const/16 v1, 0x98e

    const-string v2, "Samsung|Galaxy Pro|GT-B7510|GT-B7510"

    aput-object v2, v0, v1

    const/16 v1, 0x98f

    const-string v2, "Samsung|Galaxy Pro|GT-B7510B|GT-B7510B"

    aput-object v2, v0, v1

    const/16 v1, 0x990

    const-string v2, "Samsung|Galaxy Pro|GT-B7510L|GT-B7510L"

    aput-object v2, v0, v1

    const/16 v1, 0x991

    const-string v2, "Samsung|Galaxy Proclaim|SCH-S720C|SCH-S720C"

    aput-object v2, v0, v1

    const/16 v1, 0x992

    const-string v2, "Samsung|Galaxy Q|SGH-T589|SGH-T589"

    aput-object v2, v0, v1

    const/16 v1, 0x993

    const-string v2, "Samsung|Galaxy Q|SGH-T589R|SGH-T589R"

    aput-object v2, v0, v1

    const/16 v1, 0x994

    const-string v2, "Samsung|Galaxy Q|SGH-T589W|SGH-T589W"

    aput-object v2, v0, v1

    const/16 v1, 0x995

    const-string v2, "Samsung|Galaxy R-Style|jaguark|SHV-E170K"

    aput-object v2, v0, v1

    const/16 v1, 0x996

    const-string v2, "Samsung|Galaxy R-Style|jaguarl|SHV-E170L"

    aput-object v2, v0, v1

    const/16 v1, 0x997

    const-string v2, "Samsung|Galaxy R-Style|jaguars|SHV-E170S"

    aput-object v2, v0, v1

    const/16 v1, 0x998

    const-string v2, "Samsung|Galaxy Reverb|iconvmu|SPH-M950"

    aput-object v2, v0, v1

    const/16 v1, 0x999

    const-string v2, "Samsung|Galaxy Round|flteskt|SM-G910S"

    aput-object v2, v0, v1

    const/16 v1, 0x99a

    const-string v2, "Samsung|Galaxy Rugby|comanchecan|SGH-I547C"

    aput-object v2, v0, v1

    const/16 v1, 0x99b

    const-string v2, "Samsung|Galaxy Rugby Pro|comancheatt|SAMSUNG-SGH-I547"

    aput-object v2, v0, v1

    const/16 v1, 0x99c

    const-string v2, "Samsung|Galaxy Rush|prevail2spr|SPH-M830"

    aput-object v2, v0, v1

    const/16 v1, 0x99d

    const-string v2, "Samsung|Galaxy S|GT-I9000|GT-I9000"

    aput-object v2, v0, v1

    const/16 v1, 0x99e

    const-string v2, "Samsung|Galaxy S|GT-I9000B|GT-I9000B"

    aput-object v2, v0, v1

    const/16 v1, 0x99f

    const-string v2, "Samsung|Galaxy S|GT-I9000M|GT-I9000M"

    aput-object v2, v0, v1

    const/16 v1, 0x9a0

    const-string v2, "Samsung|Galaxy S|GT-I9000T|GT-I9000T"

    aput-object v2, v0, v1

    const/16 v1, 0x9a1

    const-string v2, "Samsung|Galaxy S|GT-I9003|GT-I9003"

    aput-object v2, v0, v1

    const/16 v1, 0x9a2

    const-string v2, "Samsung|Galaxy S|GT-I9003L|GT-I9003L"

    aput-object v2, v0, v1

    const/16 v1, 0x9a3

    const-string v2, "Samsung|Galaxy S|GT-I9008L|GT-I9008L"

    aput-object v2, v0, v1

    const/16 v1, 0x9a4

    const-string v2, "Samsung|Galaxy S|GT-I9010|GT-I9010"

    aput-object v2, v0, v1

    const/16 v1, 0x9a5

    const-string v2, "Samsung|Galaxy S|GT-I9018|GT-I9018"

    aput-object v2, v0, v1

    const/16 v1, 0x9a6

    const-string v2, "Samsung|Galaxy S|GT-I9050|GT-I9050"

    aput-object v2, v0, v1

    const/16 v1, 0x9a7

    const-string v2, "Samsung|Galaxy S|SC-02B|SC-02B"

    aput-object v2, v0, v1

    const/16 v1, 0x9a8

    const-string v2, "Samsung|Galaxy S|SCH-I500|SCH-I500"

    aput-object v2, v0, v1

    const/16 v1, 0x9a9

    const-string v2, "Samsung|Galaxy S|SCH-S950C|SCH-S950C"

    aput-object v2, v0, v1

    const/16 v1, 0x9aa

    const-string v2, "Samsung|Galaxy S|SCH-i909|SCH-i909"

    aput-object v2, v0, v1

    const/16 v1, 0x9ab

    const-string v2, "Samsung|Galaxy S|SGH-I897|SAMSUNG-SGH-I897"

    aput-object v2, v0, v1

    const/16 v1, 0x9ac

    const-string v2, "Samsung|Galaxy S|SGH-T959V|SGH-T959V"

    aput-object v2, v0, v1

    const/16 v1, 0x9ad

    const-string v2, "Samsung|Galaxy S|SGH-T959W|SGH-T959W"

    aput-object v2, v0, v1

    const/16 v1, 0x9ae

    const-string v2, "Samsung|Galaxy S|SHW-M110S|SHW-M110S"

    aput-object v2, v0, v1

    const/16 v1, 0x9af

    const-string v2, "Samsung|Galaxy S|SHW-M190S|SHW-M190S"

    aput-object v2, v0, v1

    const/16 v1, 0x9b0

    const-string v2, "Samsung|Galaxy S|SPH-D700|SPH-D700"

    aput-object v2, v0, v1

    const/16 v1, 0x9b1

    const-string v2, "Samsung|Galaxy S|loganlte|GT-S7275"

    aput-object v2, v0, v1

    const/16 v1, 0x9b2

    const-string v2, "Samsung|Galaxy S Advance|GT-I9070|GT-I9070"

    aput-object v2, v0, v1

    const/16 v1, 0x9b3

    const-string v2, "Samsung|Galaxy S Advance|GT-I9070P|GT-I9070P"

    aput-object v2, v0, v1

    const/16 v1, 0x9b4

    const-string v2, "Samsung|Galaxy S Aviator|SCH-R930|SCH-R930"

    aput-object v2, v0, v1

    const/16 v1, 0x9b5

    const-string v2, "Samsung|Galaxy S Blaze|SGH-T769|SGH-T769"

    aput-object v2, v0, v1

    const/16 v1, 0x9b6

    const-string v2, "Samsung|Galaxy S BlazeQ|apexqtmo|SGH-T699"

    aput-object v2, v0, v1

    const/16 v1, 0x9b7

    const-string v2, "Samsung|Galaxy S Captivate|SGH-I896|SAMSUNG-SGH-I896"

    aput-object v2, v0, v1

    const/16 v1, 0x9b8

    const-string v2, "Samsung|Galaxy S Captivate|SGH-I896|SGH-I896"

    aput-object v2, v0, v1

    const/16 v1, 0x9b9

    const-string v2, "Samsung|Galaxy S Continuum|SCH-I400|SCH-I400"

    aput-object v2, v0, v1

    const/16 v1, 0x9ba

    const-string v2, "Samsung|Galaxy S DUOS|kyleopen|GT-S7562"

    aput-object v2, v0, v1

    const/16 v1, 0x9bb

    const-string v2, "Samsung|Galaxy S DUOS|kyleopen|GT-S7562L"

    aput-object v2, v0, v1

    const/16 v1, 0x9bc

    const-string v2, "Samsung|Galaxy S Duos|kylechn|GT-S7562"

    aput-object v2, v0, v1

    const/16 v1, 0x9bd

    const-string v2, "Samsung|Galaxy S Duos|kyleopen|GT-S7562"

    aput-object v2, v0, v1

    const/16 v1, 0x9be

    const-string v2, "Samsung|Galaxy S Duos|kyletdcmcc|GT-S7568"

    aput-object v2, v0, v1

    const/16 v1, 0x9bf

    const-string v2, "Samsung|Galaxy S Duos2|kyleprods|GT-S7582"

    aput-object v2, v0, v1

    const/16 v1, 0x9c0

    const-string v2, "Samsung|Galaxy S Duos2|kyleprods|GT-S7582L"

    aput-object v2, v0, v1

    const/16 v1, 0x9c1

    const-string v2, "Samsung|Galaxy S Duos3|vivalto3gvn|SM-G313HZ"

    aput-object v2, v0, v1

    const/16 v1, 0x9c2

    const-string v2, "Samsung|Galaxy S Epic|SPH-D700|SPH-D700"

    aput-object v2, v0, v1

    const/16 v1, 0x9c3

    const-string v2, "Samsung|Galaxy S Fascinate|SGH-T959P|SGH-T959P"

    aput-object v2, v0, v1

    const/16 v1, 0x9c4

    const-string v2, "Samsung|Galaxy S Glide|SGH-I927R|SAMSUNG-SGH-I927R"

    aput-object v2, v0, v1

    const/16 v1, 0x9c5

    const-string v2, "Samsung|Galaxy S Lightray|SCH-R940|SCH-R940"

    aput-object v2, v0, v1

    const/16 v1, 0x9c6

    const-string v2, "Samsung|Galaxy S Plus|GT-I9001|GT-I9001"

    aput-object v2, v0, v1

    const/16 v1, 0x9c7

    const-string v2, "Samsung|Galaxy S Stratosphere|SCH-I405|SCH-I405"

    aput-object v2, v0, v1

    const/16 v1, 0x9c8

    const-string v2, "Samsung|Galaxy S Vibrant|SGH-T959|SGH-T959"

    aput-object v2, v0, v1

    const/16 v1, 0x9c9

    const-string v2, "Samsung|Galaxy S Vibrant|SGH-T959D|SGH-T959D"

    aput-object v2, v0, v1

    const/16 v1, 0x9ca

    const-string v2, "Samsung|Galaxy S duos|kyleichn|GT-S7566"

    aput-object v2, v0, v1

    const/16 v1, 0x9cb

    const-string v2, "Samsung|Galaxy S2|GT-I9100|GT-I9100"

    aput-object v2, v0, v1

    const/16 v1, 0x9cc

    const-string v2, "Samsung|Galaxy S2|GT-I9100M|GT-I9100M"

    aput-object v2, v0, v1

    const/16 v1, 0x9cd

    const-string v2, "Samsung|Galaxy S2|GT-I9100P|GT-I9100P"

    aput-object v2, v0, v1

    const/16 v1, 0x9ce

    const-string v2, "Samsung|Galaxy S2|GT-I9100T|GT-I9100T"

    aput-object v2, v0, v1

    const/16 v1, 0x9cf

    const-string v2, "Samsung|Galaxy S2|GT-I9103|GT-I9103"

    aput-object v2, v0, v1

    const/16 v1, 0x9d0

    const-string v2, "Samsung|Galaxy S2|GT-I9108|GT-I9108"

    aput-object v2, v0, v1

    const/16 v1, 0x9d1

    const-string v2, "Samsung|Galaxy S2|GT-I9210T|GT-I9210T"

    aput-object v2, v0, v1

    const/16 v1, 0x9d2

    const-string v2, "Samsung|Galaxy S2|SC-02C|SC-02C"

    aput-object v2, v0, v1

    const/16 v1, 0x9d3

    const-string v2, "Samsung|Galaxy S2|SCH-R760X|SCH-R760X"

    aput-object v2, v0, v1

    const/16 v1, 0x9d4

    const-string v2, "Samsung|Galaxy S2|SGH-I777|SAMSUNG-SGH-I777"

    aput-object v2, v0, v1

    const/16 v1, 0x9d5

    const-string v2, "Samsung|Galaxy S2|SGH-S959G|SGH-S959G"

    aput-object v2, v0, v1

    const/16 v1, 0x9d6

    const-string v2, "Samsung|Galaxy S2|SGH-T989|SGH-T989"

    aput-object v2, v0, v1

    const/16 v1, 0x9d7

    const-string v2, "Samsung|Galaxy S2|SHV-E110S|SHV-E110S"

    aput-object v2, v0, v1

    const/16 v1, 0x9d8

    const-string v2, "Samsung|Galaxy S2|SHW-M250K|SHW-M250K"

    aput-object v2, v0, v1

    const/16 v1, 0x9d9

    const-string v2, "Samsung|Galaxy S2|SHW-M250L|SHW-M250L"

    aput-object v2, v0, v1

    const/16 v1, 0x9da

    const-string v2, "Samsung|Galaxy S2|SHW-M250S|SHW-M250S"

    aput-object v2, v0, v1

    const/16 v1, 0x9db

    const-string v2, "Samsung|Galaxy S2|t1cmcc|GT-I9108"

    aput-object v2, v0, v1

    const/16 v1, 0x9dc

    const-string v2, "Samsung|Galaxy S2 Duos|SCH-i929|SCH-i929"

    aput-object v2, v0, v1

    const/16 v1, 0x9dd

    const-string v2, "Samsung|Galaxy S2 Duos TV|logandsdtv|GT-S7273T"

    aput-object v2, v0, v1

    const/16 v1, 0x9de

    const-string v2, "Samsung|Galaxy S2 Epic|SCH-R760|SCH-R760"

    aput-object v2, v0, v1

    const/16 v1, 0x9df

    const-string v2, "Samsung|Galaxy S2 Epic|SPH-D710|SPH-D710"

    aput-object v2, v0, v1

    const/16 v1, 0x9e0

    const-string v2, "Samsung|Galaxy S2 Epic|SPH-D710BST|SPH-D710BST"

    aput-object v2, v0, v1

    const/16 v1, 0x9e1

    const-string v2, "Samsung|Galaxy S2 Epic|SPH-D710VMUB|SPH-D710VMUB"

    aput-object v2, v0, v1

    const/16 v1, 0x9e2

    const-string v2, "Samsung|Galaxy S2 HD LTE|SGH-I757M|SGH-I757M"

    aput-object v2, v0, v1

    const/16 v1, 0x9e3

    const-string v2, "Samsung|Galaxy S2 HD LTE|SHV-E120K|SHV-E120K"

    aput-object v2, v0, v1

    const/16 v1, 0x9e4

    const-string v2, "Samsung|Galaxy S2 HD LTE|SHV-E120L|SHV-E120L"

    aput-object v2, v0, v1

    const/16 v1, 0x9e5

    const-string v2, "Samsung|Galaxy S2 HD LTE|SHV-E120S|SHV-E120S"

    aput-object v2, v0, v1

    const/16 v1, 0x9e6

    const-string v2, "Samsung|Galaxy S2 LTE|GT-I9210|GT-I9210"

    aput-object v2, v0, v1

    const/16 v1, 0x9e7

    const-string v2, "Samsung|Galaxy S2 LTE|SC-03D|SC-03D"

    aput-object v2, v0, v1

    const/16 v1, 0x9e8

    const-string v2, "Samsung|Galaxy S2 LTE|SGH-I727R|SGH-I727R"

    aput-object v2, v0, v1

    const/16 v1, 0x9e9

    const-string v2, "Samsung|Galaxy S2 Plus|GT-I9100G|GT-I9100G"

    aput-object v2, v0, v1

    const/16 v1, 0x9ea

    const-string v2, "Samsung|Galaxy S2 Plus|s2ve|GT-I9105"

    aput-object v2, v0, v1

    const/16 v1, 0x9eb

    const-string v2, "Samsung|Galaxy S2 Plus|s2vep|GT-I9105P"

    aput-object v2, v0, v1

    const/16 v1, 0x9ec

    const-string v2, "Samsung|Galaxy S2 Skyrocket|SGH-I727|SAMSUNG-SGH-I727"

    aput-object v2, v0, v1

    const/16 v1, 0x9ed

    const-string v2, "Samsung|Galaxy S2 Skyrocket|SGH-I727|SGH-I727"

    aput-object v2, v0, v1

    const/16 v1, 0x9ee

    const-string v2, "Samsung|Galaxy S2 Wimax|ISW11SC|ISW11SC"

    aput-object v2, v0, v1

    const/16 v1, 0x9ef

    const-string v2, "Samsung|Galaxy S2 X|SGH-T989D|SGH-T989D"

    aput-object v2, v0, v1

    const/16 v1, 0x9f0

    const-string v2, "Samsung|Galaxy S3|SC-03E|SC-03E"

    aput-object v2, v0, v1

    const/16 v1, 0x9f1

    const-string v2, "Samsung|Galaxy S3|c1att|SGH-I748"

    aput-object v2, v0, v1

    const/16 v1, 0x9f2

    const-string v2, "Samsung|Galaxy S3|c1ktt|SHV-E210K"

    aput-object v2, v0, v1

    const/16 v1, 0x9f3

    const-string v2, "Samsung|Galaxy S3|c1lgt|SHV-E210L"

    aput-object v2, v0, v1

    const/16 v1, 0x9f4

    const-string v2, "Samsung|Galaxy S3|c1skt|SHV-E210S"

    aput-object v2, v0, v1

    const/16 v1, 0x9f5

    const-string v2, "Samsung|Galaxy S3|d2att|SAMSUNG-SGH-I747"

    aput-object v2, v0, v1

    const/16 v1, 0x9f6

    const-string v2, "Samsung|Galaxy S3|d2can|SGH-I747M"

    aput-object v2, v0, v1

    const/16 v1, 0x9f7

    const-string v2, "Samsung|Galaxy S3|d2can|SGH-T999V"

    aput-object v2, v0, v1

    const/16 v1, 0x9f8

    const-string v2, "Samsung|Galaxy S3|d2cri|SCH-R530C"

    aput-object v2, v0, v1

    const/16 v1, 0x9f9

    const-string v2, "Samsung|Galaxy S3|d2dcm|Gravity"

    aput-object v2, v0, v1

    const/16 v1, 0x9fa

    const-string v2, "Samsung|Galaxy S3|d2dcm|SC-06D"

    aput-object v2, v0, v1

    const/16 v1, 0x9fb

    const-string v2, "Samsung|Galaxy S3|d2lteMetroPCS|SGH-T999N"

    aput-object v2, v0, v1

    const/16 v1, 0x9fc

    const-string v2, "Samsung|Galaxy S3|d2lterefreshspr|SPH-L710T"

    aput-object v2, v0, v1

    const/16 v1, 0x9fd

    const-string v2, "Samsung|Galaxy S3|d2ltetmo|SGH-T999L"

    aput-object v2, v0, v1

    const/16 v1, 0x9fe

    const-string v2, "Samsung|Galaxy S3|d2mtr|SCH-R530M"

    aput-object v2, v0, v1

    const/16 v1, 0x9ff

    const-string v2, "Samsung|Galaxy S3|d2spi|SCH-L710"

    aput-object v2, v0, v1

    const/16 v1, 0xa00

    const-string v2, "Samsung|Galaxy S3|d2spr|SPH-L710"

    aput-object v2, v0, v1

    const/16 v1, 0xa01

    const-string v2, "Samsung|Galaxy S3|d2tfnspr|SCH-S960L"

    aput-object v2, v0, v1

    const/16 v1, 0xa02

    const-string v2, "Samsung|Galaxy S3|d2tfnvzw|SCH-S968C"

    aput-object v2, v0, v1

    const/16 v1, 0xa03

    const-string v2, "Samsung|Galaxy S3|d2tmo|SGH-T999"

    aput-object v2, v0, v1

    const/16 v1, 0xa04

    const-string v2, "Samsung|Galaxy S3|d2usc|SCH-R530U"

    aput-object v2, v0, v1

    const/16 v1, 0xa05

    const-string v2, "Samsung|Galaxy S3|d2vmu|SPH-L710"

    aput-object v2, v0, v1

    const/16 v1, 0xa06

    const-string v2, "Samsung|Galaxy S3|d2vzw|SCH-I535"

    aput-object v2, v0, v1

    const/16 v1, 0xa07

    const-string v2, "Samsung|Galaxy S3|d2vzw|SCH-I535PP"

    aput-object v2, v0, v1

    const/16 v1, 0xa08

    const-string v2, "Samsung|Galaxy S3|d2xar|SCH-R530X"

    aput-object v2, v0, v1

    const/16 v1, 0xa09

    const-string v2, "Samsung|Galaxy S3|m0|GT-I9300"

    aput-object v2, v0, v1

    const/16 v1, 0xa0a

    const-string v2, "Samsung|Galaxy S3|m0|GT-I9300T"

    aput-object v2, v0, v1

    const/16 v1, 0xa0b

    const-string v2, "Samsung|Galaxy S3|m0apt|SCH-I939"

    aput-object v2, v0, v1

    const/16 v1, 0xa0c

    const-string v2, "Samsung|Galaxy S3|m0chn|GT-I9300"

    aput-object v2, v0, v1

    const/16 v1, 0xa0d

    const-string v2, "Samsung|Galaxy S3|m0cmcc|GT-I9308"

    aput-object v2, v0, v1

    const/16 v1, 0xa0e

    const-string v2, "Samsung|Galaxy S3|m0ctc|SCH-I939"

    aput-object v2, v0, v1

    const/16 v1, 0xa0f

    const-string v2, "Samsung|Galaxy S3|m0ctcduos|SCH-I939D"

    aput-object v2, v0, v1

    const/16 v1, 0xa10

    const-string v2, "Samsung|Galaxy S3|m0skt|SHW-M440S"

    aput-object v2, v0, v1

    const/16 v1, 0xa11

    const-string v2, "Samsung|Galaxy S3|m3|GT-I9305"

    aput-object v2, v0, v1

    const/16 v1, 0xa12

    const-string v2, "Samsung|Galaxy S3|m3|GT-I9305N"

    aput-object v2, v0, v1

    const/16 v1, 0xa13

    const-string v2, "Samsung|Galaxy S3|m3|GT-I9305T"

    aput-object v2, v0, v1

    const/16 v1, 0xa14

    const-string v2, "Samsung|Galaxy S3|m3dcm|GravityQuad"

    aput-object v2, v0, v1

    const/16 v1, 0xa15

    const-string v2, "Samsung|Galaxy S3|m3dcm|SC-03E"

    aput-object v2, v0, v1

    const/16 v1, 0xa16

    const-string v2, "Samsung|Galaxy S3 Duos|arubaslim|GT-I8262B"

    aput-object v2, v0, v1

    const/16 v1, 0xa17

    const-string v2, "Samsung|Galaxy S3 Mini|golden|GT-I8190"

    aput-object v2, v0, v1

    const/16 v1, 0xa18

    const-string v2, "Samsung|Galaxy S3 Mini|golden|GT-I8190L"

    aput-object v2, v0, v1

    const/16 v1, 0xa19

    const-string v2, "Samsung|Galaxy S3 Mini|golden|GT-I8190N"

    aput-object v2, v0, v1

    const/16 v1, 0xa1a

    const-string v2, "Samsung|Galaxy S3 Mini|golden|GT-I8190T"

    aput-object v2, v0, v1

    const/16 v1, 0xa1b

    const-string v2, "Samsung|Galaxy S3 Mini|goldenlteatt|SAMSUNG-SM-G730A"

    aput-object v2, v0, v1

    const/16 v1, 0xa1c

    const-string v2, "Samsung|Galaxy S3 Mini|goldenltebmc|SM-G730W8"

    aput-object v2, v0, v1

    const/16 v1, 0xa1d

    const-string v2, "Samsung|Galaxy S3 Mini|goldenltevzw|SM-G730V"

    aput-object v2, v0, v1

    const/16 v1, 0xa1e

    const-string v2, "Samsung|Galaxy S3 Mini|goldenve3g|GT-I8200L"

    aput-object v2, v0, v1

    const/16 v1, 0xa1f

    const-string v2, "Samsung|Galaxy S3 Neo|s3ve3g|GT-I9300I"

    aput-object v2, v0, v1

    const/16 v1, 0xa20

    const-string v2, "Samsung|Galaxy S3 Neo|s3ve3g|GT-I9301I"

    aput-object v2, v0, v1

    const/16 v1, 0xa21

    const-string v2, "Samsung|Galaxy S3 Neo|s3ve3g|GT-I9301Q"

    aput-object v2, v0, v1

    const/16 v1, 0xa22

    const-string v2, "Samsung|Galaxy S3 Neo|s3ve3gdd|GT-I9300I"

    aput-object v2, v0, v1

    const/16 v1, 0xa23

    const-string v2, "Samsung|Galaxy S3 Neo|s3ve3gds|GT-I9300I"

    aput-object v2, v0, v1

    const/16 v1, 0xa24

    const-string v2, "Samsung|Galaxy S3 Neo|s3ve3gdsdd|GT-I9300I"

    aput-object v2, v0, v1

    const/16 v1, 0xa25

    const-string v2, "Samsung|Galaxy S3 Neo Plus|s3ve3g|GT-I9300I"

    aput-object v2, v0, v1

    const/16 v1, 0xa26

    const-string v2, "Samsung|Galaxy S3 Neo Plus|s3ve3g|GT-I9308I"

    aput-object v2, v0, v1

    const/16 v1, 0xa27

    const-string v2, "Samsung|Galaxy S3 Progre|SCL21|SCL21"

    aput-object v2, v0, v1

    const/16 v1, 0xa28

    const-string v2, "Samsung|Galaxy S3 Slim|wilcoxds|SM-G3812B"

    aput-object v2, v0, v1

    const/16 v1, 0xa29

    const-string v2, "Samsung|Galaxy S4|SC-04E|SC-04E"

    aput-object v2, v0, v1

    const/16 v1, 0xa2a

    const-string v2, "Samsung|Galaxy S4|ja3g|GT-I9500"

    aput-object v2, v0, v1

    const/16 v1, 0xa2b

    const-string v2, "Samsung|Galaxy S4|ja3gduosctc|SCH-I959"

    aput-object v2, v0, v1

    const/16 v1, 0xa2c

    const-string v2, "Samsung|Galaxy S4|jaltektt|SHV-E300K"

    aput-object v2, v0, v1

    const/16 v1, 0xa2d

    const-string v2, "Samsung|Galaxy S4|jaltelgt|SHV-E300L"

    aput-object v2, v0, v1

    const/16 v1, 0xa2e

    const-string v2, "Samsung|Galaxy S4|jalteskt|SHV-E300S"

    aput-object v2, v0, v1

    const/16 v1, 0xa2f

    const-string v2, "Samsung|Galaxy S4|jflte|GT-I9505"

    aput-object v2, v0, v1

    const/16 v1, 0xa30

    const-string v2, "Samsung|Galaxy S4|jflte|GT-I9508"

    aput-object v2, v0, v1

    const/16 v1, 0xa31

    const-string v2, "Samsung|Galaxy S4|jflte|GT-I9508C"

    aput-object v2, v0, v1

    const/16 v1, 0xa32

    const-string v2, "Samsung|Galaxy S4|jflteaio|SAMSUNG-SGH-I337Z"

    aput-object v2, v0, v1

    const/16 v1, 0xa33

    const-string v2, "Samsung|Galaxy S4|jflteatt|SAMSUNG-SGH-I337"

    aput-object v2, v0, v1

    const/16 v1, 0xa34

    const-string v2, "Samsung|Galaxy S4|jfltecan|SGH-I337M"

    aput-object v2, v0, v1

    const/16 v1, 0xa35

    const-string v2, "Samsung|Galaxy S4|jfltecan|SGH-M919V"

    aput-object v2, v0, v1

    const/16 v1, 0xa36

    const-string v2, "Samsung|Galaxy S4|jfltecri|SCH-R970C"

    aput-object v2, v0, v1

    const/16 v1, 0xa37

    const-string v2, "Samsung|Galaxy S4|jfltecsp|SCH-R970X"

    aput-object v2, v0, v1

    const/16 v1, 0xa38

    const-string v2, "Samsung|Galaxy S4|jfltelra|SCH-I545L"

    aput-object v2, v0, v1

    const/16 v1, 0xa39

    const-string v2, "Samsung|Galaxy S4|jflterefreshspr|SPH-L720T"

    aput-object v2, v0, v1

    const/16 v1, 0xa3a

    const-string v2, "Samsung|Galaxy S4|jfltespr|SPH-L720"

    aput-object v2, v0, v1

    const/16 v1, 0xa3b

    const-string v2, "Samsung|Galaxy S4|jfltetfnatt|SM-S975L"

    aput-object v2, v0, v1

    const/16 v1, 0xa3c

    const-string v2, "Samsung|Galaxy S4|jfltetfntmo|SGH-S970G"

    aput-object v2, v0, v1

    const/16 v1, 0xa3d

    const-string v2, "Samsung|Galaxy S4|jfltetmo|SGH-M919"

    aput-object v2, v0, v1

    const/16 v1, 0xa3e

    const-string v2, "Samsung|Galaxy S4|jflteusc|SCH-R970"

    aput-object v2, v0, v1

    const/16 v1, 0xa3f

    const-string v2, "Samsung|Galaxy S4|jfltevzw|SCH-I545"

    aput-object v2, v0, v1

    const/16 v1, 0xa40

    const-string v2, "Samsung|Galaxy S4|jftdd|GT-I9507"

    aput-object v2, v0, v1

    const/16 v1, 0xa41

    const-string v2, "Samsung|Galaxy S4|jftdd|GT-I9507V"

    aput-object v2, v0, v1

    const/16 v1, 0xa42

    const-string v2, "Samsung|Galaxy S4|jfvelte|GT-I9515"

    aput-object v2, v0, v1

    const/16 v1, 0xa43

    const-string v2, "Samsung|Galaxy S4|jfvelte|GT-I9515L"

    aput-object v2, v0, v1

    const/16 v1, 0xa44

    const-string v2, "Samsung|Galaxy S4|jfwifi|GT-I9505X"

    aput-object v2, v0, v1

    const/16 v1, 0xa45

    const-string v2, "Samsung|Galaxy S4|ks01lte|GT-I9506"

    aput-object v2, v0, v1

    const/16 v1, 0xa46

    const-string v2, "Samsung|Galaxy S4|ks01ltektt|SHV-E330K"

    aput-object v2, v0, v1

    const/16 v1, 0xa47

    const-string v2, "Samsung|Galaxy S4|ks01ltelgt|SHV-E330L"

    aput-object v2, v0, v1

    const/16 v1, 0xa48

    const-string v2, "Samsung|Galaxy S4 Active|jactivelte|GT-I9295"

    aput-object v2, v0, v1

    const/16 v1, 0xa49

    const-string v2, "Samsung|Galaxy S4 Active|jactivelteatt|SAMSUNG-SGH-I537"

    aput-object v2, v0, v1

    const/16 v1, 0xa4a

    const-string v2, "Samsung|Galaxy S4 Active|jactivelteatt|SGH-I537"

    aput-object v2, v0, v1

    const/16 v1, 0xa4b

    const-string v2, "Samsung|Galaxy S4 Active|jactivelteskt|SHV-E470S"

    aput-object v2, v0, v1

    const/16 v1, 0xa4c

    const-string v2, "Samsung|Galaxy S4 Duos|ja3gchnduos|GT-I9502"

    aput-object v2, v0, v1

    const/16 v1, 0xa4d

    const-string v2, "Samsung|Galaxy S4 LTE-A|ks01lteskt|SHV-E330S"

    aput-object v2, v0, v1

    const/16 v1, 0xa4e

    const-string v2, "Samsung|Galaxy S4 Mini|serrano3g|GT-I9190"

    aput-object v2, v0, v1

    const/16 v1, 0xa4f

    const-string v2, "Samsung|Galaxy S4 Mini|serranods|GT-I9192"

    aput-object v2, v0, v1

    const/16 v1, 0xa50

    const-string v2, "Samsung|Galaxy S4 Mini|serranolte|GT-I9195"

    aput-object v2, v0, v1

    const/16 v1, 0xa51

    const-string v2, "Samsung|Galaxy S4 Mini|serranolte|GT-I9195L"

    aput-object v2, v0, v1

    const/16 v1, 0xa52

    const-string v2, "Samsung|Galaxy S4 Mini|serranolte|GT-I9195T"

    aput-object v2, v0, v1

    const/16 v1, 0xa53

    const-string v2, "Samsung|Galaxy S4 Mini|serranolte|GT-I9195X"

    aput-object v2, v0, v1

    const/16 v1, 0xa54

    const-string v2, "Samsung|Galaxy S4 Mini|serranolte|GT-I9197"

    aput-object v2, v0, v1

    const/16 v1, 0xa55

    const-string v2, "Samsung|Galaxy S4 Mini|serranoltebmc|SGH-I257M"

    aput-object v2, v0, v1

    const/16 v1, 0xa56

    const-string v2, "Samsung|Galaxy S4 Mini|serranoltektt|SHV-E370K"

    aput-object v2, v0, v1

    const/16 v1, 0xa57

    const-string v2, "Samsung|Galaxy S4 Mini|serranoltekx|SHV-E370D"

    aput-object v2, v0, v1

    const/16 v1, 0xa58

    const-string v2, "Samsung|Galaxy S4 Mini|serranoltelra|SCH-I435L"

    aput-object v2, v0, v1

    const/16 v1, 0xa59

    const-string v2, "Samsung|Galaxy S4 Mini|serranoltespr|SPH-L520"

    aput-object v2, v0, v1

    const/16 v1, 0xa5a

    const-string v2, "Samsung|Galaxy S4 Mini|serranolteusc|SCH-R890"

    aput-object v2, v0, v1

    const/16 v1, 0xa5b

    const-string v2, "Samsung|Galaxy S4 Mini|serranoltevzw|SCH-I435"

    aput-object v2, v0, v1

    const/16 v1, 0xa5c

    const-string v2, "Samsung|Galaxy S4 Mini|serranove3g|GT-I9192I"

    aput-object v2, v0, v1

    const/16 v1, 0xa5d

    const-string v2, "Samsung|Galaxy S4 Mini|serranovelte|GT-I9195I"

    aput-object v2, v0, v1

    const/16 v1, 0xa5e

    const-string v2, "Samsung|Galaxy S4 Mini|serranovolteatt|SAMSUNG-SGH-I257"

    aput-object v2, v0, v1

    const/16 v1, 0xa5f

    const-string v2, "Samsung|Galaxy S4 Zoom|mproject3g|SM-C101"

    aput-object v2, v0, v1

    const/16 v1, 0xa60

    const-string v2, "Samsung|Galaxy S4 Zoom|mprojectlteatt|SAMSUNG-SM-C105A"

    aput-object v2, v0, v1

    const/16 v1, 0xa61

    const-string v2, "Samsung|Galaxy S4 Zoom|mprojectltelgt|SM-C105L"

    aput-object v2, v0, v1

    const/16 v1, 0xa62

    const-string v2, "Samsung|Galaxy S4 Zoom|mprojectlteskt|SM-C105S"

    aput-object v2, v0, v1

    const/16 v1, 0xa63

    const-string v2, "Samsung|Galaxy S4 Zoom|mprojectqlte|SM-C105"

    aput-object v2, v0, v1

    const/16 v1, 0xa64

    const-string v2, "Samsung|Galaxy S5|SCL23|SCL23"

    aput-object v2, v0, v1

    const/16 v1, 0xa65

    const-string v2, "Samsung|Galaxy S5|k3g|SM-G900H"

    aput-object v2, v0, v1

    const/16 v1, 0xa66

    const-string v2, "Samsung|Galaxy S5|klte|SM-G9008W"

    aput-object v2, v0, v1

    const/16 v1, 0xa67

    const-string v2, "Samsung|Galaxy S5|klte|SM-G9009W"

    aput-object v2, v0, v1

    const/16 v1, 0xa68

    const-string v2, "Samsung|Galaxy S5|klte|SM-G900F"

    aput-object v2, v0, v1

    const/16 v1, 0xa69

    const-string v2, "Samsung|Galaxy S5|klte|SM-G900FQ"

    aput-object v2, v0, v1

    const/16 v1, 0xa6a

    const-string v2, "Samsung|Galaxy S5|klte|SM-G900I"

    aput-object v2, v0, v1

    const/16 v1, 0xa6b

    const-string v2, "Samsung|Galaxy S5|klte|SM-G900M"

    aput-object v2, v0, v1

    const/16 v1, 0xa6c

    const-string v2, "Samsung|Galaxy S5|klte|SM-G900MD"

    aput-object v2, v0, v1

    const/16 v1, 0xa6d

    const-string v2, "Samsung|Galaxy S5|klteMetroPCS|SM-G900T1"

    aput-object v2, v0, v1

    const/16 v1, 0xa6e

    const-string v2, "Samsung|Galaxy S5|klteacg|SM-G900R7"

    aput-object v2, v0, v1

    const/16 v1, 0xa6f

    const-string v2, "Samsung|Galaxy S5|klteaio|SAMSUNG-SM-G900AZ"

    aput-object v2, v0, v1

    const/16 v1, 0xa70

    const-string v2, "Samsung|Galaxy S5|klteatt|SAMSUNG-SM-G900A"

    aput-object v2, v0, v1

    const/16 v1, 0xa71

    const-string v2, "Samsung|Galaxy S5|kltecan|SM-G900W8"

    aput-object v2, v0, v1

    const/16 v1, 0xa72

    const-string v2, "Samsung|Galaxy S5|klteduoszn|SM-G9006W"

    aput-object v2, v0, v1

    const/16 v1, 0xa73

    const-string v2, "Samsung|Galaxy S5|kltektt|SM-G900K"

    aput-object v2, v0, v1

    const/16 v1, 0xa74

    const-string v2, "Samsung|Galaxy S5|kltelgt|SM-G900L"

    aput-object v2, v0, v1

    const/16 v1, 0xa75

    const-string v2, "Samsung|Galaxy S5|kltelra|SM-G900R6"

    aput-object v2, v0, v1

    const/16 v1, 0xa76

    const-string v2, "Samsung|Galaxy S5|klteskt|SM-G900S"

    aput-object v2, v0, v1

    const/16 v1, 0xa77

    const-string v2, "Samsung|Galaxy S5|kltespr|SM-G900P"

    aput-object v2, v0, v1

    const/16 v1, 0xa78

    const-string v2, "Samsung|Galaxy S5|kltetmo|SM-G900T"

    aput-object v2, v0, v1

    const/16 v1, 0xa79

    const-string v2, "Samsung|Galaxy S5|klteusc|SM-G900R4"

    aput-object v2, v0, v1

    const/16 v1, 0xa7a

    const-string v2, "Samsung|Galaxy S5|kltevzw|SM-G900V"

    aput-object v2, v0, v1

    const/16 v1, 0xa7b

    const-string v2, "Samsung|Galaxy S5|kwifi|SM-G900X"

    aput-object v2, v0, v1

    const/16 v1, 0xa7c

    const-string v2, "Samsung|Galaxy S5|lentisltektt|SM-G906K"

    aput-object v2, v0, v1

    const/16 v1, 0xa7d

    const-string v2, "Samsung|Galaxy S5|lentisltelgt|SM-G906L"

    aput-object v2, v0, v1

    const/16 v1, 0xa7e

    const-string v2, "Samsung|Galaxy S5|lentislteskt|SM-G906S"

    aput-object v2, v0, v1

    const/16 v1, 0xa7f

    const-string v2, "Samsung|Galaxy S5 Active|klteactive|SM-G870F"

    aput-object v2, v0, v1

    const/16 v1, 0xa80

    const-string v2, "Samsung|Galaxy S5 Active|klteattactive|SAMSUNG-SM-G870A"

    aput-object v2, v0, v1

    const/16 v1, 0xa81

    const-string v2, "Samsung|Galaxy S5 Active|kltecanactive|SM-G870W"

    aput-object v2, v0, v1

    const/16 v1, 0xa82

    const-string v2, "Samsung|Galaxy S5 Dual SIM|klte|SM-G900FD"

    aput-object v2, v0, v1

    const/16 v1, 0xa83

    const-string v2, "Samsung|Galaxy S5 K Sport|kltesprsports|SM-G860P"

    aput-object v2, v0, v1

    const/16 v1, 0xa84

    const-string v2, "Samsung|Galaxy S5 LTE-A|kccat6|SM-G901F"

    aput-object v2, v0, v1

    const/16 v1, 0xa85

    const-string v2, "Samsung|Galaxy S5 Mini|kmini3g|SM-G800H"

    aput-object v2, v0, v1

    const/16 v1, 0xa86

    const-string v2, "Samsung|Galaxy S5 Mini|kminilte|SM-G800F"

    aput-object v2, v0, v1

    const/16 v1, 0xa87

    const-string v2, "Samsung|Galaxy S5 Mini|kminilte|SM-G800Y"

    aput-object v2, v0, v1

    const/16 v1, 0xa88

    const-string v2, "Samsung|Galaxy S5 Mini|kminilteusc|SM-G800R4"

    aput-object v2, v0, v1

    const/16 v1, 0xa89

    const-string v2, "Samsung|Galaxy S5 mini|kmini3g|SM-G800HQ"

    aput-object v2, v0, v1

    const/16 v1, 0xa8a

    const-string v2, "Samsung|Galaxy S5 mini|kminilte|SM-G800M"

    aput-object v2, v0, v1

    const/16 v1, 0xa8b

    const-string v2, "Samsung|Galaxy S5 mini|kminilteatt|SAMSUNG-SM-G800A"

    aput-object v2, v0, v1

    const/16 v1, 0xa8c

    const-string v2, "Samsung|Galaxy S5 mini|kminiwifi|SM-G800X"

    aput-object v2, v0, v1

    const/16 v1, 0xa8d

    const-string v2, "Samsung|Galaxy S5 mini LTE|kminilte|SM-G800Y"

    aput-object v2, v0, v1

    const/16 v1, 0xa8e

    const-string v2, "Samsung|Galaxy S6|zeroflte|SM-G920F"

    aput-object v2, v0, v1

    const/16 v1, 0xa8f

    const-string v2, "Samsung|Galaxy S6|zeroflte|SM-G920I"

    aput-object v2, v0, v1

    const/16 v1, 0xa90

    const-string v2, "Samsung|Galaxy S6|zeroflte|SM-G920X"

    aput-object v2, v0, v1

    const/16 v1, 0xa91

    const-string v2, "Samsung|Galaxy S6|zeroflteaio|SAMSUNG-SM-G920AZ"

    aput-object v2, v0, v1

    const/16 v1, 0xa92

    const-string v2, "Samsung|Galaxy S6|zeroflteatt|SAMSUNG-SM-G920A"

    aput-object v2, v0, v1

    const/16 v1, 0xa93

    const-string v2, "Samsung|Galaxy S6|zerofltebmc|SM-G920W8"

    aput-object v2, v0, v1

    const/16 v1, 0xa94

    const-string v2, "Samsung|Galaxy S6|zerofltechn|SM-G9200"

    aput-object v2, v0, v1

    const/16 v1, 0xa95

    const-string v2, "Samsung|Galaxy S6|zerofltechn|SM-G9208"

    aput-object v2, v0, v1

    const/16 v1, 0xa96

    const-string v2, "Samsung|Galaxy S6|zerofltectc|SM-G9209"

    aput-object v2, v0, v1

    const/16 v1, 0xa97

    const-string v2, "Samsung|Galaxy S6|zerofltektt|SM-G920K"

    aput-object v2, v0, v1

    const/16 v1, 0xa98

    const-string v2, "Samsung|Galaxy S6|zerofltelgt|SM-G920L"

    aput-object v2, v0, v1

    const/16 v1, 0xa99

    const-string v2, "Samsung|Galaxy S6|zerofltemtr|SM-G920T1"

    aput-object v2, v0, v1

    const/16 v1, 0xa9a

    const-string v2, "Samsung|Galaxy S6|zeroflteskt|SM-G920S"

    aput-object v2, v0, v1

    const/16 v1, 0xa9b

    const-string v2, "Samsung|Galaxy S6|zerofltespr|SM-G920P"

    aput-object v2, v0, v1

    const/16 v1, 0xa9c

    const-string v2, "Samsung|Galaxy S6|zerofltetmo|SM-G920T"

    aput-object v2, v0, v1

    const/16 v1, 0xa9d

    const-string v2, "Samsung|Galaxy S6|zeroflteusc|SM-G920R4"

    aput-object v2, v0, v1

    const/16 v1, 0xa9e

    const-string v2, "Samsung|Galaxy S6|zerofltevzw|SM-G920V"

    aput-object v2, v0, v1

    const/16 v1, 0xa9f

    const-string v2, "Samsung|Galaxy S6 Edge|SCV31|SCV31"

    aput-object v2, v0, v1

    const/16 v1, 0xaa0

    const-string v2, "Samsung|Galaxy S6 Edge|zerolte|SM-G925F"

    aput-object v2, v0, v1

    const/16 v1, 0xaa1

    const-string v2, "Samsung|Galaxy S6 Edge|zerolte|SM-G925I"

    aput-object v2, v0, v1

    const/16 v1, 0xaa2

    const-string v2, "Samsung|Galaxy S6 Edge|zerolte|SM-G925X"

    aput-object v2, v0, v1

    const/16 v1, 0xaa3

    const-string v2, "Samsung|Galaxy S6 Edge|zerolteatt|SAMSUNG-SM-G925A"

    aput-object v2, v0, v1

    const/16 v1, 0xaa4

    const-string v2, "Samsung|Galaxy S6 Edge|zeroltebmc|SM-G925W8"

    aput-object v2, v0, v1

    const/16 v1, 0xaa5

    const-string v2, "Samsung|Galaxy S6 Edge|zeroltechn|SM-G9250"

    aput-object v2, v0, v1

    const/16 v1, 0xaa6

    const-string v2, "Samsung|Galaxy S6 Edge|zeroltektt|SM-G925K"

    aput-object v2, v0, v1

    const/16 v1, 0xaa7

    const-string v2, "Samsung|Galaxy S6 Edge|zeroltelgt|SM-G925L"

    aput-object v2, v0, v1

    const/16 v1, 0xaa8

    const-string v2, "Samsung|Galaxy S6 Edge|zerolteskt|SM-G925S"

    aput-object v2, v0, v1

    const/16 v1, 0xaa9

    const-string v2, "Samsung|Galaxy S6 Edge|zeroltespr|SM-G925P"

    aput-object v2, v0, v1

    const/16 v1, 0xaaa

    const-string v2, "Samsung|Galaxy S6 Edge|zeroltetmo|SM-G925T"

    aput-object v2, v0, v1

    const/16 v1, 0xaab

    const-string v2, "Samsung|Galaxy S6 Edge|zerolteusc|SM-G925R4"

    aput-object v2, v0, v1

    const/16 v1, 0xaac

    const-string v2, "Samsung|Galaxy S6 Edge|zeroltevzw|SM-G925V"

    aput-object v2, v0, v1

    const/16 v1, 0xaad

    const-string v2, "Samsung|Galaxy Spica|GT-I5700|GT-I5700"

    aput-object v2, v0, v1

    const/16 v1, 0xaae

    const-string v2, "Samsung|Galaxy Spica|GT-I5700|GT-I5700L"

    aput-object v2, v0, v1

    const/16 v1, 0xaaf

    const-string v2, "Samsung|Galaxy Spica|GT-I5700|GT-I5700R"

    aput-object v2, v0, v1

    const/16 v1, 0xab0

    const-string v2, "Samsung|Galaxy Spica|GT-I5700L|GT-I5700L"

    aput-object v2, v0, v1

    const/16 v1, 0xab1

    const-string v2, "Samsung|Galaxy Spica|spica|GT-I5700"

    aput-object v2, v0, v1

    const/16 v1, 0xab2

    const-string v2, "Samsung|Galaxy Spica|spica|GT-I5700L"

    aput-object v2, v0, v1

    const/16 v1, 0xab3

    const-string v2, "Samsung|Galaxy Spica|spica|GT-I5700R"

    aput-object v2, v0, v1

    const/16 v1, 0xab4

    const-string v2, "Samsung|Galaxy Spica|spica|GT-i5700"

    aput-object v2, v0, v1

    const/16 v1, 0xab5

    const-string v2, "Samsung|Galaxy Star|mint|GT-S5282"

    aput-object v2, v0, v1

    const/16 v1, 0xab6

    const-string v2, "Samsung|Galaxy Star|mintss|GT-S5280"

    aput-object v2, v0, v1

    const/16 v1, 0xab7

    const-string v2, "Samsung|Galaxy Star Plus|logan2g|GT-S7262"

    aput-object v2, v0, v1

    const/16 v1, 0xab8

    const-string v2, "Samsung|Galaxy Star Trios|mintts|GT-S5283B"

    aput-object v2, v0, v1

    const/16 v1, 0xab9

    const-string v2, "Samsung|Galaxy Star2 Plus|higgs2g|SM-G350E"

    aput-object v2, v0, v1

    const/16 v1, 0xaba

    const-string v2, "Samsung|Galaxy Stellar|jaspervzw|SCH-I200"

    aput-object v2, v0, v1

    const/16 v1, 0xabb

    const-string v2, "Samsung|Galaxy Stellar|jaspervzw|SCH-I200PP"

    aput-object v2, v0, v1

    const/16 v1, 0xabc

    const-string v2, "Samsung|Galaxy Style Duos|aruba3gduosctc|SCH-I829"

    aput-object v2, v0, v1

    const/16 v1, 0xabd

    const-string v2, "Samsung|Galaxy Tab|GT-P1000|GT-P1000"

    aput-object v2, v0, v1

    const/16 v1, 0xabe

    const-string v2, "Samsung|Galaxy Tab|GT-P1000L|GT-P1000L"

    aput-object v2, v0, v1

    const/16 v1, 0xabf

    const-string v2, "Samsung|Galaxy Tab|GT-P1000M|GT-P1000M"

    aput-object v2, v0, v1

    const/16 v1, 0xac0

    const-string v2, "Samsung|Galaxy Tab|GT-P1000N|GT-P1000N"

    aput-object v2, v0, v1

    const/16 v1, 0xac1

    const-string v2, "Samsung|Galaxy Tab|GT-P1000R|GT-P1000R"

    aput-object v2, v0, v1

    const/16 v1, 0xac2

    const-string v2, "Samsung|Galaxy Tab|GT-P1000T|GT-P1000T"

    aput-object v2, v0, v1

    const/16 v1, 0xac3

    const-string v2, "Samsung|Galaxy Tab|GT-P1010|GT-P1010"

    aput-object v2, v0, v1

    const/16 v1, 0xac4

    const-string v2, "Samsung|Galaxy Tab|GT-P1013|GT-P1013"

    aput-object v2, v0, v1

    const/16 v1, 0xac5

    const-string v2, "Samsung|Galaxy Tab|SC-01C|SC-01C"

    aput-object v2, v0, v1

    const/16 v1, 0xac6

    const-string v2, "Samsung|Galaxy Tab|SCH-I800|SCH-I800"

    aput-object v2, v0, v1

    const/16 v1, 0xac7

    const-string v2, "Samsung|Galaxy Tab|SGH-T849|SGH-T849"

    aput-object v2, v0, v1

    const/16 v1, 0xac8

    const-string v2, "Samsung|Galaxy Tab|SHW-M180K|SHW-M180K"

    aput-object v2, v0, v1

    const/16 v1, 0xac9

    const-string v2, "Samsung|Galaxy Tab|SHW-M180L|SHW-M180L"

    aput-object v2, v0, v1

    const/16 v1, 0xaca

    const-string v2, "Samsung|Galaxy Tab|SHW-M180S|SHW-M180S"

    aput-object v2, v0, v1

    const/16 v1, 0xacb

    const-string v2, "Samsung|Galaxy Tab|SHW-M180W|SHW-M180W"

    aput-object v2, v0, v1

    const/16 v1, 0xacc

    const-string v2, "Samsung|Galaxy Tab|SMT-i9100|SMT-i9100"

    aput-object v2, v0, v1

    const/16 v1, 0xacd

    const-string v2, "Samsung|Galaxy Tab 10.1|GT-P7500|GT-P7500"

    aput-object v2, v0, v1

    const/16 v1, 0xace

    const-string v2, "Samsung|Galaxy Tab 10.1|GT-P7500D|GT-P7500D"

    aput-object v2, v0, v1

    const/16 v1, 0xacf

    const-string v2, "Samsung|Galaxy Tab 10.1|GT-P7503|GT-P7503"

    aput-object v2, v0, v1

    const/16 v1, 0xad0

    const-string v2, "Samsung|Galaxy Tab 10.1|GT-P7510|GT-P7510"

    aput-object v2, v0, v1

    const/16 v1, 0xad1

    const-string v2, "Samsung|Galaxy Tab 10.1|SC-01D|SC-01D"

    aput-object v2, v0, v1

    const/16 v1, 0xad2

    const-string v2, "Samsung|Galaxy Tab 10.1|SCH-I905|SCH-I905"

    aput-object v2, v0, v1

    const/16 v1, 0xad3

    const-string v2, "Samsung|Galaxy Tab 10.1|SGH-T859|SGH-T859"

    aput-object v2, v0, v1

    const/16 v1, 0xad4

    const-string v2, "Samsung|Galaxy Tab 10.1|SHW-M300W|SHW-M300W"

    aput-object v2, v0, v1

    const/16 v1, 0xad5

    const-string v2, "Samsung|Galaxy Tab 10.1|SHW-M380K|SHW-M380K"

    aput-object v2, v0, v1

    const/16 v1, 0xad6

    const-string v2, "Samsung|Galaxy Tab 10.1|SHW-M380S|SHW-M380S"

    aput-object v2, v0, v1

    const/16 v1, 0xad7

    const-string v2, "Samsung|Galaxy Tab 10.1|SHW-M380W|SHW-M380W"

    aput-object v2, v0, v1

    const/16 v1, 0xad8

    const-string v2, "Samsung|Galaxy Tab 10.1 N|GT-P7501|GT-P7501"

    aput-object v2, v0, v1

    const/16 v1, 0xad9

    const-string v2, "Samsung|Galaxy Tab 10.1 N|GT-P7511|GT-P7511"

    aput-object v2, v0, v1

    const/16 v1, 0xada

    const-string v2, "Samsung|Galaxy Tab 10.1 v|p3|GT-P7100"

    aput-object v2, v0, v1

    const/16 v1, 0xadb

    const-string v2, "Samsung|Galaxy Tab 3V 7.0|goyave3g5M|SM-T116NY"

    aput-object v2, v0, v1

    const/16 v1, 0xadc

    const-string v2, "Samsung|Galaxy Tab 4 8.0|milletwifi|SM-T330X"

    aput-object v2, v0, v1

    const/16 v1, 0xadd

    const-string v2, "Samsung|Galaxy Tab 4 8.0|milletwifikx|SM-T330"

    aput-object v2, v0, v1

    const/16 v1, 0xade

    const-string v2, "Samsung|Galaxy Tab 4 Active|rubenslte|SM-T365"

    aput-object v2, v0, v1

    const/16 v1, 0xadf

    const-string v2, "Samsung|Galaxy Tab 4 Active|rubenslte|SM-T365Y"

    aput-object v2, v0, v1

    const/16 v1, 0xae0

    const-string v2, "Samsung|Galaxy Tab 7.0|SPH-P100|SPH-P100"

    aput-object v2, v0, v1

    const/16 v1, 0xae1

    const-string v2, "Samsung|Galaxy Tab 7.0 Plus|GT-P6200|GT-P6200"

    aput-object v2, v0, v1

    const/16 v1, 0xae2

    const-string v2, "Samsung|Galaxy Tab 7.0 Plus|GT-P6200L|GT-P6200L"

    aput-object v2, v0, v1

    const/16 v1, 0xae3

    const-string v2, "Samsung|Galaxy Tab 7.0 Plus|GT-P6201|GT-P6201"

    aput-object v2, v0, v1

    const/16 v1, 0xae4

    const-string v2, "Samsung|Galaxy Tab 7.0 Plus|GT-P6210|GT-P6210"

    aput-object v2, v0, v1

    const/16 v1, 0xae5

    const-string v2, "Samsung|Galaxy Tab 7.0 Plus|GT-P6211|GT-P6211"

    aput-object v2, v0, v1

    const/16 v1, 0xae6

    const-string v2, "Samsung|Galaxy Tab 7.0 Plus|SC-02D|SC-02D"

    aput-object v2, v0, v1

    const/16 v1, 0xae7

    const-string v2, "Samsung|Galaxy Tab 7.0 Plus|SGH-T869|SGH-T869"

    aput-object v2, v0, v1

    const/16 v1, 0xae8

    const-string v2, "Samsung|Galaxy Tab 7.0 Plus|SHW-M430W|SHW-M430W"

    aput-object v2, v0, v1

    const/16 v1, 0xae9

    const-string v2, "Samsung|Galaxy Tab 7.7|GT-P6800|GT-P6800"

    aput-object v2, v0, v1

    const/16 v1, 0xaea

    const-string v2, "Samsung|Galaxy Tab 7.7|GT-P6810|GT-P6810"

    aput-object v2, v0, v1

    const/16 v1, 0xaeb

    const-string v2, "Samsung|Galaxy Tab 7.7|SCH-I815|SCH-I815"

    aput-object v2, v0, v1

    const/16 v1, 0xaec

    const-string v2, "Samsung|Galaxy Tab 7.7 Plus|SC-01E|SC-01E"

    aput-object v2, v0, v1

    const/16 v1, 0xaed

    const-string v2, "Samsung|Galaxy Tab 8.9|GT-P7300|GT-P7300"

    aput-object v2, v0, v1

    const/16 v1, 0xaee

    const-string v2, "Samsung|Galaxy Tab 8.9|GT-P7310|GT-P7310"

    aput-object v2, v0, v1

    const/16 v1, 0xaef

    const-string v2, "Samsung|Galaxy Tab 8.9|GT-P7320|GT-P7320"

    aput-object v2, v0, v1

    const/16 v1, 0xaf0

    const-string v2, "Samsung|Galaxy Tab 8.9|SCH-P739|SCH-P739"

    aput-object v2, v0, v1

    const/16 v1, 0xaf1

    const-string v2, "Samsung|Galaxy Tab 8.9|SGH-I957|SAMSUNG-SGH-I957"

    aput-object v2, v0, v1

    const/16 v1, 0xaf2

    const-string v2, "Samsung|Galaxy Tab 8.9|SGH-I957D|SAMSUNG-SGH-I957D"

    aput-object v2, v0, v1

    const/16 v1, 0xaf3

    const-string v2, "Samsung|Galaxy Tab 8.9|SGH-I957D|SGH-I957D"

    aput-object v2, v0, v1

    const/16 v1, 0xaf4

    const-string v2, "Samsung|Galaxy Tab 8.9|SGH-I957M|SAMSUNG-SGH-I957M"

    aput-object v2, v0, v1

    const/16 v1, 0xaf5

    const-string v2, "Samsung|Galaxy Tab 8.9|SGH-I957M|SGH-I957M"

    aput-object v2, v0, v1

    const/16 v1, 0xaf6

    const-string v2, "Samsung|Galaxy Tab 8.9|SGH-I957R|SAMSUNG-SGH-I957R"

    aput-object v2, v0, v1

    const/16 v1, 0xaf7

    const-string v2, "Samsung|Galaxy Tab 8.9|SGH-I957R|SGH-I957R"

    aput-object v2, v0, v1

    const/16 v1, 0xaf8

    const-string v2, "Samsung|Galaxy Tab 8.9|SHV-E140K|SHV-E140K"

    aput-object v2, v0, v1

    const/16 v1, 0xaf9

    const-string v2, "Samsung|Galaxy Tab 8.9|SHV-E140L|SHV-E140L"

    aput-object v2, v0, v1

    const/16 v1, 0xafa

    const-string v2, "Samsung|Galaxy Tab 8.9|SHV-E140S|SHV-E140S"

    aput-object v2, v0, v1

    const/16 v1, 0xafb

    const-string v2, "Samsung|Galaxy Tab 8.9|SHW-M305W|SHW-M305W"

    aput-object v2, v0, v1

    const/16 v1, 0xafc

    const-string v2, "Samsung|Galaxy Tab Plus 7.0|goyave3gsea|SM-T116BU"

    aput-object v2, v0, v1

    const/16 v1, 0xafd

    const-string v2, "Samsung|Galaxy Tab Pro 10.1|picassolte|SM-T525"

    aput-object v2, v0, v1

    const/16 v1, 0xafe

    const-string v2, "Samsung|Galaxy Tab Pro 10.1|picassowifi|SM-T520"

    aput-object v2, v0, v1

    const/16 v1, 0xaff

    const-string v2, "Samsung|Galaxy Tab Pro 12.2|v2lte|SM-T905"

    aput-object v2, v0, v1

    const/16 v1, 0xb00

    const-string v2, "Samsung|Galaxy Tab Pro 12.2|v2wifi|SM-T900"

    aput-object v2, v0, v1

    const/16 v1, 0xb01

    const-string v2, "Samsung|Galaxy Tab Pro 12.2|v2wifi|SM-T900X"

    aput-object v2, v0, v1

    const/16 v1, 0xb02

    const-string v2, "Samsung|Galaxy Tab Pro 8.4|mondrianlte|SM-T325"

    aput-object v2, v0, v1

    const/16 v1, 0xb03

    const-string v2, "Samsung|Galaxy Tab Pro 8.4|mondrianwifi|SM-T320"

    aput-object v2, v0, v1

    const/16 v1, 0xb04

    const-string v2, "Samsung|Galaxy Tab Pro 8.4|mondrianwifi|SM-T320X"

    aput-object v2, v0, v1

    const/16 v1, 0xb05

    const-string v2, "Samsung|Galaxy Tab Pro 8.4|mondrianwifikx|SM-T320"

    aput-object v2, v0, v1

    const/16 v1, 0xb06

    const-string v2, "Samsung|Galaxy Tab Pro 8.4|mondrianwifiue|SM-T320"

    aput-object v2, v0, v1

    const/16 v1, 0xb07

    const-string v2, "Samsung|Galaxy Tab Pro 8.4|mondrianwifiue|SM-T320NU"

    aput-object v2, v0, v1

    const/16 v1, 0xb08

    const-string v2, "Samsung|Galaxy Tab Q|q7|SM-T2519"

    aput-object v2, v0, v1

    const/16 v1, 0xb09

    const-string v2, "Samsung|Galaxy Tab S 10.5|chagallwifi|SM-T800"

    aput-object v2, v0, v1

    const/16 v1, 0xb0a

    const-string v2, "Samsung|Galaxy Tab S 8.4|SC-03G|SC-03G"

    aput-object v2, v0, v1

    const/16 v1, 0xb0b

    const-string v2, "Samsung|Galaxy Tab S 8.4|klimtlte|SM-T705"

    aput-object v2, v0, v1

    const/16 v1, 0xb0c

    const-string v2, "Samsung|Galaxy Tab S 8.4|klimtlte|SM-T705C"

    aput-object v2, v0, v1

    const/16 v1, 0xb0d

    const-string v2, "Samsung|Galaxy Tab S 8.4|klimtlte|SM-T705Y"

    aput-object v2, v0, v1

    const/16 v1, 0xb0e

    const-string v2, "Samsung|Galaxy Tab S 8.4|klimtltevzw|SM-T707V"

    aput-object v2, v0, v1

    const/16 v1, 0xb0f

    const-string v2, "Samsung|Galaxy Tab S 8.4|klimtwifi|SM-T700"

    aput-object v2, v0, v1

    const/16 v1, 0xb10

    const-string v2, "Samsung|Galaxy Tab2 10.1|espresso10att|SAMSUNG-SGH-I497"

    aput-object v2, v0, v1

    const/16 v1, 0xb11

    const-string v2, "Samsung|Galaxy Tab2 10.1|espresso10can|SGH-I497"

    aput-object v2, v0, v1

    const/16 v1, 0xb12

    const-string v2, "Samsung|Galaxy Tab2 10.1|espresso10rf|GT-P5100"

    aput-object v2, v0, v1

    const/16 v1, 0xb13

    const-string v2, "Samsung|Galaxy Tab2 10.1|espresso10spr|SPH-P500"

    aput-object v2, v0, v1

    const/16 v1, 0xb14

    const-string v2, "Samsung|Galaxy Tab2 10.1|espresso10tmo|SGH-T779"

    aput-object v2, v0, v1

    const/16 v1, 0xb15

    const-string v2, "Samsung|Galaxy Tab2 10.1|espresso10vzw|SCH-I915"

    aput-object v2, v0, v1

    const/16 v1, 0xb16

    const-string v2, "Samsung|Galaxy Tab2 10.1|espresso10wifi|GT-P5110"

    aput-object v2, v0, v1

    const/16 v1, 0xb17

    const-string v2, "Samsung|Galaxy Tab2 10.1|espresso10wifi|GT-P5113"

    aput-object v2, v0, v1

    const/16 v1, 0xb18

    const-string v2, "Samsung|Galaxy Tab2 7.0|espressorf|GT-P3100"

    aput-object v2, v0, v1

    const/16 v1, 0xb19

    const-string v2, "Samsung|Galaxy Tab2 7.0|espressorf|GT-P3100B"

    aput-object v2, v0, v1

    const/16 v1, 0xb1a

    const-string v2, "Samsung|Galaxy Tab2 7.0|espressorf|GT-P3105"

    aput-object v2, v0, v1

    const/16 v1, 0xb1b

    const-string v2, "Samsung|Galaxy Tab2 7.0|espressovzw|SCH-I705"

    aput-object v2, v0, v1

    const/16 v1, 0xb1c

    const-string v2, "Samsung|Galaxy Tab2 7.0|espressovzw|SCH-i705"

    aput-object v2, v0, v1

    const/16 v1, 0xb1d

    const-string v2, "Samsung|Galaxy Tab2 7.0|espressowifi|GT-P3110"

    aput-object v2, v0, v1

    const/16 v1, 0xb1e

    const-string v2, "Samsung|Galaxy Tab2 7.0|espressowifi|GT-P3113"

    aput-object v2, v0, v1

    const/16 v1, 0xb1f

    const-string v2, "Samsung|Galaxy Tab3|lt01wifikx|SM-T310"

    aput-object v2, v0, v1

    const/16 v1, 0xb20

    const-string v2, "Samsung|Galaxy Tab3 10.1|santos103g|GT-P5200"

    aput-object v2, v0, v1

    const/16 v1, 0xb21

    const-string v2, "Samsung|Galaxy Tab3 10.1|santos10lte|GT-P5220"

    aput-object v2, v0, v1

    const/16 v1, 0xb22

    const-string v2, "Samsung|Galaxy Tab3 10.1|santos10wifi|GT-P5210"

    aput-object v2, v0, v1

    const/16 v1, 0xb23

    const-string v2, "Samsung|Galaxy Tab3 10.1|santos10wifi|GT-P5210XD1"

    aput-object v2, v0, v1

    const/16 v1, 0xb24

    const-string v2, "Samsung|Galaxy Tab3 7.0|lt023g|SM-T211"

    aput-object v2, v0, v1

    const/16 v1, 0xb25

    const-string v2, "Samsung|Galaxy Tab3 7.0|lt023g|SM-T212"

    aput-object v2, v0, v1

    const/16 v1, 0xb26    # 4.0E-42f

    const-string v2, "Samsung|Galaxy Tab3 7.0|lt023gdtv|SM-T211M"

    aput-object v2, v0, v1

    const/16 v1, 0xb27    # 4.001E-42f

    const-string v2, "Samsung|Galaxy Tab3 7.0|lt02lte|SM-T215"

    aput-object v2, v0, v1

    const/16 v1, 0xb28

    const-string v2, "Samsung|Galaxy Tab3 7.0|lt02lteatt|SAMSUNG-SM-T217A"

    aput-object v2, v0, v1

    const/16 v1, 0xb29

    const-string v2, "Samsung|Galaxy Tab3 7.0|lt02ltespr|SM-T217S"

    aput-object v2, v0, v1

    const/16 v1, 0xb2a

    const-string v2, "Samsung|Galaxy Tab3 7.0|lt02ltetmo|SM-T217T"

    aput-object v2, v0, v1

    const/16 v1, 0xb2b

    const-string v2, "Samsung|Galaxy Tab3 7.0|lt02wifi|SM-T210"

    aput-object v2, v0, v1

    const/16 v1, 0xb2c

    const-string v2, "Samsung|Galaxy Tab3 7.0|lt02wifi|SM-T210R"

    aput-object v2, v0, v1

    const/16 v1, 0xb2d

    const-string v2, "Samsung|Galaxy Tab3 7.0|lt02wifilgt|SM-T210L"

    aput-object v2, v0, v1

    const/16 v1, 0xb2e

    const-string v2, "Samsung|Galaxy Tab3 8.0|lt013g|SM-T311"

    aput-object v2, v0, v1

    const/16 v1, 0xb2f

    const-string v2, "Samsung|Galaxy Tab3 8.0|lt013g|SM-T312"

    aput-object v2, v0, v1

    const/16 v1, 0xb30

    const-string v2, "Samsung|Galaxy Tab3 8.0|lt01lte|SM-T315"

    aput-object v2, v0, v1

    const/16 v1, 0xb31

    const-string v2, "Samsung|Galaxy Tab3 8.0|lt01lte|SM-T315T"

    aput-object v2, v0, v1

    const/16 v1, 0xb32

    const-string v2, "Samsung|Galaxy Tab3 8.0|lt01wifi|SM-T310"

    aput-object v2, v0, v1

    const/16 v1, 0xb33

    const-string v2, "Samsung|Galaxy Tab3 8.0|lt01wifi|SM-T310X"

    aput-object v2, v0, v1

    const/16 v1, 0xb34

    const-string v2, "Samsung|Galaxy Tab3 8.0|lt02lduwifi|SM-T210X"

    aput-object v2, v0, v1

    const/16 v1, 0xb35

    const-string v2, "Samsung|Galaxy Tab3 Kids|lt02kidswifi|SM-T2105"

    aput-object v2, v0, v1

    const/16 v1, 0xb36

    const-string v2, "Samsung|Galaxy Tab3 Lite|goya3g|SM-T111"

    aput-object v2, v0, v1

    const/16 v1, 0xb37

    const-string v2, "Samsung|Galaxy Tab3 Lite|goya3g|SM-T111M"

    aput-object v2, v0, v1

    const/16 v1, 0xb38

    const-string v2, "Samsung|Galaxy Tab3 Lite|goyawifi|SM-T110"

    aput-object v2, v0, v1

    const/16 v1, 0xb39

    const-string v2, "Samsung|Galaxy Tab3 Lite 7.0|fortunave3g|SM-G530H"

    aput-object v2, v0, v1

    const/16 v1, 0xb3a

    const-string v2, "Samsung|Galaxy Tab3 Lite 7.0|goyave3g|SM-T116NQ"

    aput-object v2, v0, v1

    const/16 v1, 0xb3b

    const-string v2, "Samsung|Galaxy Tab3 Lite 7.0|goyavewifi|SM-T113"

    aput-object v2, v0, v1

    const/16 v1, 0xb3c

    const-string v2, "Samsung|Galaxy Tab3 VE 7.0|goyave3g|SM-T116"

    aput-object v2, v0, v1

    const/16 v1, 0xb3d

    const-string v2, "Samsung|Galaxy Tab3V 7.0|goyave3gsea|SM-T116NU"

    aput-object v2, v0, v1

    const/16 v1, 0xb3e

    const-string v2, "Samsung|Galaxy Tab3V 7.0|goyavewifixtc|SM-T113NU"

    aput-object v2, v0, v1

    const/16 v1, 0xb3f

    const-string v2, "Samsung|Galaxy Tab4|matissewifigoogle|SM-T530NN"

    aput-object v2, v0, v1

    const/16 v1, 0xb40

    const-string v2, "Samsung|Galaxy Tab4 10.0|matisse3g|SM-T531"

    aput-object v2, v0, v1

    const/16 v1, 0xb41

    const-string v2, "Samsung|Galaxy Tab4 10.0|matisselte|SM-T535"

    aput-object v2, v0, v1

    const/16 v1, 0xb42

    const-string v2, "Samsung|Galaxy Tab4 10.0|matisselteatt|SAMSUNG-SM-T537A"

    aput-object v2, v0, v1

    const/16 v1, 0xb43

    const-string v2, "Samsung|Galaxy Tab4 10.0|matisselteusc|SM-T537R4"

    aput-object v2, v0, v1

    const/16 v1, 0xb44

    const-string v2, "Samsung|Galaxy Tab4 10.0|matisseltevzw|SM-T537V"

    aput-object v2, v0, v1

    const/16 v1, 0xb45

    const-string v2, "Samsung|Galaxy Tab4 10.1|matissevewifi|SM-T533"

    aput-object v2, v0, v1

    const/16 v1, 0xb46

    const-string v2, "Samsung|Galaxy Tab4 10.1|matissewifi|SM-T530"

    aput-object v2, v0, v1

    const/16 v1, 0xb47

    const-string v2, "Samsung|Galaxy Tab4 10.1|matissewifi|SM-T530X"

    aput-object v2, v0, v1

    const/16 v1, 0xb48

    const-string v2, "Samsung|Galaxy Tab4 10.1|matissewifikx|SM-T530"

    aput-object v2, v0, v1

    const/16 v1, 0xb49

    const-string v2, "Samsung|Galaxy Tab4 10.1|matissewifiue|SM-T530NU"

    aput-object v2, v0, v1

    const/16 v1, 0xb4a

    const-string v2, "Samsung|Galaxy Tab4 7.0|403SC|403SC"

    aput-object v2, v0, v1

    const/16 v1, 0xb4b

    const-string v2, "Samsung|Galaxy Tab4 7.0|degas3g|SM-T231"

    aput-object v2, v0, v1

    const/16 v1, 0xb4c

    const-string v2, "Samsung|Galaxy Tab4 7.0|degas3g|SM-T232"

    aput-object v2, v0, v1

    const/16 v1, 0xb4d

    const-string v2, "Samsung|Galaxy Tab4 7.0|degaslte|SM-T235"

    aput-object v2, v0, v1

    const/16 v1, 0xb4e

    const-string v2, "Samsung|Galaxy Tab4 7.0|degaslte|SM-T235Y"

    aput-object v2, v0, v1

    const/16 v1, 0xb4f

    const-string v2, "Samsung|Galaxy Tab4 7.0|degasltespr|SM-T237P"

    aput-object v2, v0, v1

    const/16 v1, 0xb50

    const-string v2, "Samsung|Galaxy Tab4 7.0|degasltevzw|SM-T237V"

    aput-object v2, v0, v1

    const/16 v1, 0xb51

    const-string v2, "Samsung|Galaxy Tab4 7.0|degasvelte|SM-T239"

    aput-object v2, v0, v1

    const/16 v1, 0xb52

    const-string v2, "Samsung|Galaxy Tab4 7.0|degasvelte|SM-T239M"

    aput-object v2, v0, v1

    const/16 v1, 0xb53

    const-string v2, "Samsung|Galaxy Tab4 7.0|degaswifi|SM-T230"

    aput-object v2, v0, v1

    const/16 v1, 0xb54

    const-string v2, "Samsung|Galaxy Tab4 7.0|degaswifi|SM-T230NY"

    aput-object v2, v0, v1

    const/16 v1, 0xb55

    const-string v2, "Samsung|Galaxy Tab4 7.0|degaswifi|SM-T230X"

    aput-object v2, v0, v1

    const/16 v1, 0xb56

    const-string v2, "Samsung|Galaxy Tab4 7.0|degaswifibmwzc|SM-T230NY"

    aput-object v2, v0, v1

    const/16 v1, 0xb57

    const-string v2, "Samsung|Galaxy Tab4 7.0|degaswifidtv|SM-T230NT"

    aput-object v2, v0, v1

    const/16 v1, 0xb58

    const-string v2, "Samsung|Galaxy Tab4 7.0|degaswifiopenbnn|SM-T230NU"

    aput-object v2, v0, v1

    const/16 v1, 0xb59

    const-string v2, "Samsung|Galaxy Tab4 7.0|degaswifiue|SM-T230NU"

    aput-object v2, v0, v1

    const/16 v1, 0xb5a

    const-string v2, "Samsung|Galaxy Tab4 8.0|millet3g|SM-T331"

    aput-object v2, v0, v1

    const/16 v1, 0xb5b

    const-string v2, "Samsung|Galaxy Tab4 8.0|milletlte|SM-T335"

    aput-object v2, v0, v1

    const/16 v1, 0xb5c

    const-string v2, "Samsung|Galaxy Tab4 8.0|milletlteatt|SAMSUNG-SM-T337A"

    aput-object v2, v0, v1

    const/16 v1, 0xb5d

    const-string v2, "Samsung|Galaxy Tab4 8.0|milletltektt|SM-T335K"

    aput-object v2, v0, v1

    const/16 v1, 0xb5e

    const-string v2, "Samsung|Galaxy Tab4 8.0|milletltelgt|SM-T335L"

    aput-object v2, v0, v1

    const/16 v1, 0xb5f

    const-string v2, "Samsung|Galaxy Tab4 8.0|milletltetmo|SM-T337T"

    aput-object v2, v0, v1

    const/16 v1, 0xb60

    const-string v2, "Samsung|Galaxy Tab4 8.0|milletltevzw|SM-T337V"

    aput-object v2, v0, v1

    const/16 v1, 0xb61

    const-string v2, "Samsung|Galaxy Tab4 8.0|milletwifi|SM-T330"

    aput-object v2, v0, v1

    const/16 v1, 0xb62

    const-string v2, "Samsung|Galaxy Tab4 8.0|milletwifiue|SM-T330NU"

    aput-object v2, v0, v1

    const/16 v1, 0xb63

    const-string v2, "Samsung|Galaxy Tab4 Active|rubenslte|SM-T365"

    aput-object v2, v0, v1

    const/16 v1, 0xb64

    const-string v2, "Samsung|Galaxy Tab4 Active|rubenslte|SM-T365M"

    aput-object v2, v0, v1

    const/16 v1, 0xb65

    const-string v2, "Samsung|Galaxy Tab4 Active|rubensltekx|SM-T365F0"

    aput-object v2, v0, v1

    const/16 v1, 0xb66

    const-string v2, "Samsung|Galaxy Tab4 Active|rubenswifi|SM-T360"

    aput-object v2, v0, v1

    const/16 v1, 0xb67

    const-string v2, "Samsung|Galaxy Tab4 Active|rubenswifichn|SM-T360"

    aput-object v2, v0, v1

    const/16 v1, 0xb68

    const-string v2, "Samsung|Galaxy Tab4 Nook 10.1|matissewifiopenbnn|SM-T530NU"

    aput-object v2, v0, v1

    const/16 v1, 0xb69

    const-string v2, "Samsung|Galaxy TabS 10.5|SCT21|SCT21"

    aput-object v2, v0, v1

    const/16 v1, 0xb6a

    const-string v2, "Samsung|Galaxy TabS 10.5|chagallhltektt|SM-T805K"

    aput-object v2, v0, v1

    const/16 v1, 0xb6b

    const-string v2, "Samsung|Galaxy TabS 10.5|chagallhltelgt|SM-T805L"

    aput-object v2, v0, v1

    const/16 v1, 0xb6c

    const-string v2, "Samsung|Galaxy TabS 10.5|chagallhlteskt|SM-T805S"

    aput-object v2, v0, v1

    const/16 v1, 0xb6d

    const-string v2, "Samsung|Galaxy TabS 10.5|chagalllte|SM-T805"

    aput-object v2, v0, v1

    const/16 v1, 0xb6e

    const-string v2, "Samsung|Galaxy TabS 10.5|chagalllte|SM-T805M"

    aput-object v2, v0, v1

    const/16 v1, 0xb6f

    const-string v2, "Samsung|Galaxy TabS 10.5|chagalllte|SM-T805Y"

    aput-object v2, v0, v1

    const/16 v1, 0xb70

    const-string v2, "Samsung|Galaxy TabS 10.5|chagalllte|SM-T807"

    aput-object v2, v0, v1

    const/16 v1, 0xb71

    const-string v2, "Samsung|Galaxy TabS 10.5|chagalllteatt|SAMSUNG-SM-T807A"

    aput-object v2, v0, v1

    const/16 v1, 0xb72

    const-string v2, "Samsung|Galaxy TabS 10.5|chagallltecan|SM-T805W"

    aput-object v2, v0, v1

    const/16 v1, 0xb73

    const-string v2, "Samsung|Galaxy TabS 10.5|chagallltespr|SM-T807P"

    aput-object v2, v0, v1

    const/16 v1, 0xb74

    const-string v2, "Samsung|Galaxy TabS 10.5|chagallltetmo|SM-T807T"

    aput-object v2, v0, v1

    const/16 v1, 0xb75

    const-string v2, "Samsung|Galaxy TabS 10.5|chagalllteusc|SM-T807R4"

    aput-object v2, v0, v1

    const/16 v1, 0xb76

    const-string v2, "Samsung|Galaxy TabS 10.5|chagallltevzw|SM-T807V"

    aput-object v2, v0, v1

    const/16 v1, 0xb77

    const-string v2, "Samsung|Galaxy TabS 10.5|chagallwifi|SM-T800"

    aput-object v2, v0, v1

    const/16 v1, 0xb78

    const-string v2, "Samsung|Galaxy TabS 10.5|chagallwifi|SM-T800X"

    aput-object v2, v0, v1

    const/16 v1, 0xb79

    const-string v2, "Samsung|Galaxy TabS 10.5|chagallwifikx|SM-T800"

    aput-object v2, v0, v1

    const/16 v1, 0xb7a

    const-string v2, "Samsung|Galaxy TabS 8.4|klimtlte|SM-T705"

    aput-object v2, v0, v1

    const/16 v1, 0xb7b

    const-string v2, "Samsung|Galaxy TabS 8.4|klimtlte|SM-T705M"

    aput-object v2, v0, v1

    const/16 v1, 0xb7c

    const-string v2, "Samsung|Galaxy TabS 8.4|klimtlteatt|SAMSUNG-SM-T707A"

    aput-object v2, v0, v1

    const/16 v1, 0xb7d

    const-string v2, "Samsung|Galaxy TabS 8.4|klimtltecan|SM-T705W"

    aput-object v2, v0, v1

    const/16 v1, 0xb7e

    const-string v2, "Samsung|Galaxy TabS 8.4|klimtwifi|SM-T700"

    aput-object v2, v0, v1

    const/16 v1, 0xb7f

    const-string v2, "Samsung|Galaxy TabS 8.4|klimtwifikx|SM-T700"

    aput-object v2, v0, v1

    const/16 v1, 0xb80

    const-string v2, "Samsung|Galaxy Tap Pro 10.1|picassolte|SM-T525"

    aput-object v2, v0, v1

    const/16 v1, 0xb81

    const-string v2, "Samsung|Galaxy Tap Pro 8.4|mondrianwifi|SM-T320"

    aput-object v2, v0, v1

    const/16 v1, 0xb82

    const-string v2, "Samsung|Galaxy Trend|kyleve|GT-S7392"

    aput-object v2, v0, v1

    const/16 v1, 0xb83

    const-string v2, "Samsung|Galaxy Trend|kyleve|GT-S7392L"

    aput-object v2, v0, v1

    const/16 v1, 0xb84

    const-string v2, "Samsung|Galaxy Trend|kyleve3gcmcc|GT-S7568I"

    aput-object v2, v0, v1

    const/16 v1, 0xb85

    const-string v2, "Samsung|Galaxy Trend Duos|kyleichn|GT-S7562i"

    aput-object v2, v0, v1

    const/16 v1, 0xb86

    const-string v2, "Samsung|Galaxy Trend Duos|kylepluschn|GT-S7572"

    aput-object v2, v0, v1

    const/16 v1, 0xb87

    const-string v2, "Samsung|Galaxy Trend Duos|kyleve|GT-S7390"

    aput-object v2, v0, v1

    const/16 v1, 0xb88

    const-string v2, "Samsung|Galaxy Trend Duos|kyleve|GT-S7392"

    aput-object v2, v0, v1

    const/16 v1, 0xb89

    const-string v2, "Samsung|Galaxy Trend Duos|kyleve|GT-S7562C"

    aput-object v2, v0, v1

    const/16 v1, 0xb8a

    const-string v2, "Samsung|Galaxy Trend Lite|kylevess|GT-S7390"

    aput-object v2, v0, v1

    const/16 v1, 0xb8b

    const-string v2, "Samsung|Galaxy Trend Lite|kylevess|GT-S7390L"

    aput-object v2, v0, v1

    const/16 v1, 0xb8c

    const-string v2, "Samsung|Galaxy Trend Plus|kylepro|GT-S7580"

    aput-object v2, v0, v1

    const/16 v1, 0xb8d

    const-string v2, "Samsung|Galaxy Trend Plus|kylepro|GT-S7580E"

    aput-object v2, v0, v1

    const/16 v1, 0xb8e

    const-string v2, "Samsung|Galaxy Trend Plus|kylepro|GT-S7580L"

    aput-object v2, v0, v1

    const/16 v1, 0xb8f

    const-string v2, "Samsung|Galaxy Trend Plus|kylepro|GT-S7583T"

    aput-object v2, v0, v1

    const/16 v1, 0xb90

    const-string v2, "Samsung|Galaxy Trend2|garda3gcmcc|GT-S7898"

    aput-object v2, v0, v1

    const/16 v1, 0xb91

    const-string v2, "Samsung|Galaxy Trend2|gardave3gcmcc|GT-S7898I"

    aput-object v2, v0, v1

    const/16 v1, 0xb92

    const-string v2, "Samsung|Galaxy Trend2|kyleplusctc|SCH-I739"

    aput-object v2, v0, v1

    const/16 v1, 0xb93

    const-string v2, "Samsung|Galaxy Trend3|cs023g|SM-G3502U"

    aput-object v2, v0, v1

    const/16 v1, 0xb94

    const-string v2, "Samsung|Galaxy Trend3|cs02cmcc|SM-G3508"

    aput-object v2, v0, v1

    const/16 v1, 0xb95

    const-string v2, "Samsung|Galaxy Trend3|cs02ctc|SM-G3509"

    aput-object v2, v0, v1

    const/16 v1, 0xb96

    const-string v2, "Samsung|Galaxy Trend3|cs02ve|SM-G3508I"

    aput-object v2, v0, v1

    const/16 v1, 0xb97

    const-string v2, "Samsung|Galaxy Trend3|cs02ve3g|SM-G3502C"

    aput-object v2, v0, v1

    const/16 v1, 0xb98

    const-string v2, "Samsung|Galaxy Trend3|cs02ve3g|SM-G3502I"

    aput-object v2, v0, v1

    const/16 v1, 0xb99

    const-string v2, "Samsung|Galaxy Trend3|cs02ve3g|SM-G3508J"

    aput-object v2, v0, v1

    const/16 v1, 0xb9a

    const-string v2, "Samsung|Galaxy Trend3|cs02ve3g|SM-G3509I"

    aput-object v2, v0, v1

    const/16 v1, 0xb9b

    const-string v2, "Samsung|Galaxy U|SHW-M130L|SHW-M130L"

    aput-object v2, v0, v1

    const/16 v1, 0xb9c

    const-string v2, "Samsung|Galaxy Victory|goghspr|SPH-L300"

    aput-object v2, v0, v1

    const/16 v1, 0xb9d

    const-string v2, "Samsung|Galaxy Victory|goghvmu|SPH-L300"

    aput-object v2, v0, v1

    const/16 v1, 0xb9e

    const-string v2, "Samsung|Galaxy W|GT-I8150|GT-I8150"

    aput-object v2, v0, v1

    const/16 v1, 0xb9f

    const-string v2, "Samsung|Galaxy W|GT-I8150B|GT-I8150B"

    aput-object v2, v0, v1

    const/16 v1, 0xba0

    const-string v2, "Samsung|Galaxy W|GT-I8150T|GT-I8150T"

    aput-object v2, v0, v1

    const/16 v1, 0xba1

    const-string v2, "Samsung|Galaxy W|SGH-T679M|SGH-T679M"

    aput-object v2, v0, v1

    const/16 v1, 0xba2

    const-string v2, "Samsung|Galaxy W|q7lteskt|SM-T255S"

    aput-object v2, v0, v1

    const/16 v1, 0xba3

    const-string v2, "Samsung|Galaxy Win|delos3gcmcc|GT-I8558"

    aput-object v2, v0, v1

    const/16 v1, 0xba4

    const-string v2, "Samsung|Galaxy Win|delos3gduosctc|SCH-I869"

    aput-object v2, v0, v1

    const/16 v1, 0xba5

    const-string v2, "Samsung|Galaxy Win|delos3geur|GT-I8552"

    aput-object v2, v0, v1

    const/16 v1, 0xba6

    const-string v2, "Samsung|Galaxy Win|delos3geur|GT-I8552B"

    aput-object v2, v0, v1

    const/16 v1, 0xba7

    const-string v2, "Samsung|Galaxy Win|delos3gss|GT-I8550E"

    aput-object v2, v0, v1

    const/16 v1, 0xba8

    const-string v2, "Samsung|Galaxy Win|delosltelgt|SHV-E500L"

    aput-object v2, v0, v1

    const/16 v1, 0xba9

    const-string v2, "Samsung|Galaxy Win|deloslteskt|SHV-E500S"

    aput-object v2, v0, v1

    const/16 v1, 0xbaa

    const-string v2, "Samsung|Galaxy Win Duos|delos3gchn|GT-I8552"

    aput-object v2, v0, v1

    const/16 v1, 0xbab

    const-string v2, "Samsung|Galaxy Win Pro|wilcox3g|SM-G3818"

    aput-object v2, v0, v1

    const/16 v1, 0xbac

    const-string v2, "Samsung|Galaxy Win Pro|wilcoxctc|SM-G3819"

    aput-object v2, v0, v1

    const/16 v1, 0xbad

    const-string v2, "Samsung|Galaxy Win Pro|wilcoxctc|SM-G3819D"

    aput-object v2, v0, v1

    const/16 v1, 0xbae

    const-string v2, "Samsung|Galaxy Win Pro|wilcoxds|SM-G3812"

    aput-object v2, v0, v1

    const/16 v1, 0xbaf

    const-string v2, "Samsung|Galaxy Win2|coreprimeltedtv|SM-G360BT"

    aput-object v2, v0, v1

    const/16 v1, 0xbb0

    const-string v2, "Samsung|Galaxy Xcover|GT-S5690|GT-S5690"

    aput-object v2, v0, v1

    const/16 v1, 0xbb1

    const-string v2, "Samsung|Galaxy Xcover|GT-S5690L|GT-S5690L"

    aput-object v2, v0, v1

    const/16 v1, 0xbb2

    const-string v2, "Samsung|Galaxy Xcover|GT-S5690M|GT-S5690M"

    aput-object v2, v0, v1

    const/16 v1, 0xbb3

    const-string v2, "Samsung|Galaxy Xcover|GT-S5690R|GT-S5690R"

    aput-object v2, v0, v1

    const/16 v1, 0xbb4

    const-string v2, "Samsung|Galaxy Xcover2|skomer|GT-S7710"

    aput-object v2, v0, v1

    const/16 v1, 0xbb5

    const-string v2, "Samsung|Galaxy Xcover2|skomer|GT-S7710L"

    aput-object v2, v0, v1

    const/16 v1, 0xbb6

    const-string v2, "Samsung|Galaxy Y|GT-S5360|GT-S5360"

    aput-object v2, v0, v1

    const/16 v1, 0xbb7

    const-string v2, "Samsung|Galaxy Y|GT-S5360B|GT-S5360B"

    aput-object v2, v0, v1

    const/16 v1, 0xbb8

    const-string v2, "Samsung|Galaxy Y|GT-S5360L|GT-S5360L"

    aput-object v2, v0, v1

    const/16 v1, 0xbb9

    const-string v2, "Samsung|Galaxy Y|GT-S5360T|GT-S5360T"

    aput-object v2, v0, v1

    const/16 v1, 0xbba

    const-string v2, "Samsung|Galaxy Y|GT-S5363|GT-S5363"

    aput-object v2, v0, v1

    const/16 v1, 0xbbb

    const-string v2, "Samsung|Galaxy Y|GT-S5368|GT-S5368"

    aput-object v2, v0, v1

    const/16 v1, 0xbbc

    const-string v2, "Samsung|Galaxy Y|GT-S5369|GT-S5369"

    aput-object v2, v0, v1

    const/16 v1, 0xbbd

    const-string v2, "Samsung|Galaxy Y|SCH-I509|SCH-I509"

    aput-object v2, v0, v1

    const/16 v1, 0xbbe

    const-string v2, "Samsung|Galaxy Y|SCH-i509|SCH-i509"

    aput-object v2, v0, v1

    const/16 v1, 0xbbf

    const-string v2, "Samsung|Galaxy Y Duos|GT-S6102|GT-S6102"

    aput-object v2, v0, v1

    const/16 v1, 0xbc0

    const-string v2, "Samsung|Galaxy Y Duos|GT-S6102B|GT-S6102B"

    aput-object v2, v0, v1

    const/16 v1, 0xbc1

    const-string v2, "Samsung|Galaxy Y Duos|GT-S6102E|GT-S6102E"

    aput-object v2, v0, v1

    const/16 v1, 0xbc2

    const-string v2, "Samsung|Galaxy Y Plus|coriplusds|GT-S5303"

    aput-object v2, v0, v1

    const/16 v1, 0xbc3

    const-string v2, "Samsung|Galaxy Y Plus|coriplusds|GT-S5303B"

    aput-object v2, v0, v1

    const/16 v1, 0xbc4

    const-string v2, "Samsung|Galaxy Y Pop|GT-S6108|GT-S6108"

    aput-object v2, v0, v1

    const/16 v1, 0xbc5

    const-string v2, "Samsung|Galaxy Y Pro|GT-B5510|GT-B5510"

    aput-object v2, v0, v1

    const/16 v1, 0xbc6

    const-string v2, "Samsung|Galaxy Y Pro|GT-B5510B|GT-B5510B"

    aput-object v2, v0, v1

    const/16 v1, 0xbc7

    const-string v2, "Samsung|Galaxy Y Pro|GT-B5510L|GT-B5510L"

    aput-object v2, v0, v1

    const/16 v1, 0xbc8

    const-string v2, "Samsung|Galaxy Y Pro Duos|GT-B5512|GT-B5512"

    aput-object v2, v0, v1

    const/16 v1, 0xbc9

    const-string v2, "Samsung|Galaxy Y Pro Duos|GT-B5512B|GT-B5512B"

    aput-object v2, v0, v1

    const/16 v1, 0xbca

    const-string v2, "Samsung|Galaxy Y TV|GT-S5367|GT-S5367"

    aput-object v2, v0, v1

    const/16 v1, 0xbcb

    const-string v2, "Samsung|Galaxy Young|roy|GT-S6312"

    aput-object v2, v0, v1

    const/16 v1, 0xbcc

    const-string v2, "Samsung|Galaxy Young|roydtv|GT-S6313T"

    aput-object v2, v0, v1

    const/16 v1, 0xbcd

    const-string v2, "Samsung|Galaxy Young|royss|GT-S6310"

    aput-object v2, v0, v1

    const/16 v1, 0xbce

    const-string v2, "Samsung|Galaxy Young|royss|GT-S6310B"

    aput-object v2, v0, v1

    const/16 v1, 0xbcf

    const-string v2, "Samsung|Galaxy Young|royss|GT-S6310L"

    aput-object v2, v0, v1

    const/16 v1, 0xbd0

    const-string v2, "Samsung|Galaxy Young|royss|GT-S6310T"

    aput-object v2, v0, v1

    const/16 v1, 0xbd1

    const-string v2, "Samsung|Galaxy Young|royssdtv|GT-S6313T"

    aput-object v2, v0, v1

    const/16 v1, 0xbd2

    const-string v2, "Samsung|Galaxy Young|royssnfc|GT-S6310N"

    aput-object v2, v0, v1

    const/16 v1, 0xbd3

    const-string v2, "Samsung|Galaxy Young2|young23g|SM-G130H"

    aput-object v2, v0, v1

    const/16 v1, 0xbd4

    const-string v2, "Samsung|Galaxy Young2|young23g|SM-G130M"

    aput-object v2, v0, v1

    const/16 v1, 0xbd5

    const-string v2, "Samsung|Galaxy Young2|young23g|SM-G130U"

    aput-object v2, v0, v1

    const/16 v1, 0xbd6

    const-string v2, "Samsung|Galaxy Young2|young23gdtv|SM-G130BT"

    aput-object v2, v0, v1

    const/16 v1, 0xbd7

    const-string v2, "Samsung|Galaxy Young2|young2ds2g|SM-G130E"

    aput-object v2, v0, v1

    const/16 v1, 0xbd8

    const-string v2, "Samsung|Galaxy Young2|young2nfc3g|SM-G130HN"

    aput-object v2, v0, v1

    const/16 v1, 0xbd9

    const-string v2, "Samsung|Galaxy Young2 Pro|young2ve3g|SM-G130BU"

    aput-object v2, v0, v1

    const/16 v1, 0xbda

    const-string v2, "Samsung|Galaxy player 70 Plus|YP-GB70D|YP-GB70D"

    aput-object v2, v0, v1

    const/16 v1, 0xbdb

    const-string v2, "Samsung|Galaxy win|delos3gss|GT-I8550L"

    aput-object v2, v0, v1

    const/16 v1, 0xbdc

    const-string v2, "Samsung|Garda|gardalteMetroPCS|SGH-T399N"

    aput-object v2, v0, v1

    const/16 v1, 0xbdd

    const-string v2, "Samsung|Gem|SCH-I100|SCH-I100"

    aput-object v2, v0, v1

    const/16 v1, 0xbde

    const-string v2, "Samsung|Hennessy|hennessy3gduosctc|SCH-W789"

    aput-object v2, v0, v1

    const/16 v1, 0xbdf

    const-string v2, "Samsung|Homesync|spcwifi|GT-B9150"

    aput-object v2, v0, v1

    const/16 v1, 0xbe0

    const-string v2, "Samsung|IceTouch|gokey|YP-GH1"

    aput-object v2, v0, v1

    const/16 v1, 0xbe1

    const-string v2, "Samsung|Illusion|SCH-I110|SCH-I110"

    aput-object v2, v0, v1

    const/16 v1, 0xbe2

    const-string v2, "Samsung|Infuse|SGH-I997|SAMSUNG-SGH-I997"

    aput-object v2, v0, v1

    const/16 v1, 0xbe3

    const-string v2, "Samsung|Infuse|SGH-I997R|SAMSUNG-SGH-I997R"

    aput-object v2, v0, v1

    const/16 v1, 0xbe4

    const-string v2, "Samsung|Moment|SPH-M900|SPH-M900"

    aput-object v2, v0, v1

    const/16 v1, 0xbe5

    const-string v2, "Samsung|Montblanc|montblanc3gctc|SM-W2014"

    aput-object v2, v0, v1

    const/16 v1, 0xbe6

    const-string v2, "Samsung|Nexus 10|manta|Nexus 10"

    aput-object v2, v0, v1

    const/16 v1, 0xbe7

    const-string v2, "Samsung|Nexus S|crespo|Nexus S"

    aput-object v2, v0, v1

    const/16 v1, 0xbe8

    const-string v2, "Samsung|Nexus S|crespo4g|Nexus S 4G"

    aput-object v2, v0, v1

    const/16 v1, 0xbe9

    const-string v2, "Samsung|ProXpress M4580|fiber-athena|samsung-printer-tablet"

    aput-object v2, v0, v1

    const/16 v1, 0xbea

    const-string v2, "Samsung|Replenish|SPH-M580|SPH-M580"

    aput-object v2, v0, v1

    const/16 v1, 0xbeb

    const-string v2, "Samsung|Replenish|SPH-M580BST|SPH-M580BST"

    aput-object v2, v0, v1

    const/16 v1, 0xbec

    const-string v2, "Samsung|Repp|SCH-R680|SCH-R680"

    aput-object v2, v0, v1

    const/16 v1, 0xbed

    const-string v2, "Samsung|Roy VE DTV|royssvedtv|GT-S6293T"

    aput-object v2, v0, v1

    const/16 v1, 0xbee

    const-string v2, "Samsung|Roy VE DTV|royvedtv|GT-S6293T"

    aput-object v2, v0, v1

    const/16 v1, 0xbef

    const-string v2, "Samsung|Rugby Smart|SGH-I847|SAMSUNG-SGH-I847"

    aput-object v2, v0, v1

    const/16 v1, 0xbf0

    const-string v2, "Samsung|Samsung Galaxy S4|jflteMetroPCS|SGH-M919N"

    aput-object v2, v0, v1

    const/16 v1, 0xbf1

    const-string v2, "Samsung|Samsung Galaxy S4 Zoom|mprojectltektt|SM-C105K"

    aput-object v2, v0, v1

    const/16 v1, 0xbf2

    const-string v2, "Samsung|Samsung Garda|gardaltetmo|SGH-T399"

    aput-object v2, v0, v1

    const/16 v1, 0xbf3

    const-string v2, "Samsung|Samsung Homesync|spcwifi|GT-B9150"

    aput-object v2, v0, v1

    const/16 v1, 0xbf4

    const-string v2, "Samsung|Samsung Homesync|spcwifiany|GT-B9150"

    aput-object v2, v0, v1

    const/16 v1, 0xbf5

    const-string v2, "Samsung|Sidekick|SGH-T839|SGH-T839"

    aput-object v2, v0, v1

    const/16 v1, 0xbf6

    const-string v2, "Samsung|Transfix|SCH-R730|SCH-R730"

    aput-object v2, v0, v1

    const/16 v1, 0xbf7

    const-string v2, "Samsung|Transform|SPH-M920|SPH-M920"

    aput-object v2, v0, v1

    const/16 v1, 0xbf8

    const-string v2, "Samsung|Transform Ultra|SPH-M930|SPH-M930"

    aput-object v2, v0, v1

    const/16 v1, 0xbf9

    const-string v2, "Samsung|Transform Ultra|SPH-M930BST|SPH-M930BST"

    aput-object v2, v0, v1

    const/16 v1, 0xbfa

    const-string v2, "Samsung|VinsQ|SPH-M910|SPH-M910"

    aput-object v2, v0, v1

    const/16 v1, 0xbfb

    const-string v2, "Samsung|VinsQ(M910)|SPH-M910|SPH-M910"

    aput-object v2, v0, v1

    const/16 v1, 0xbfc

    const-string v2, "Samsung|olleh|ik1|SMT-E5015"

    aput-object v2, v0, v1

    const/16 v1, 0xbfd

    const-string v2, "Sony|BRAVIA Smart Stick|NSZGU1|NSZ-GU1"

    aput-object v2, v0, v1

    const/16 v1, 0xbfe

    const-string v2, "Sony|Internet TV|eagle|Internet TV Box"

    aput-object v2, v0, v1

    const/16 v1, 0xbff

    const-string v2, "Sony|NW-F800|icx1227|WALKMAN"

    aput-object v2, v0, v1

    const/16 v1, 0xc00

    const-string v2, "Sony|NW-F880 Series|icx1237|WALKMAN"

    aput-object v2, v0, v1

    const/16 v1, 0xc01

    const-string v2, "Sony|NW-Z1000|icx1216|NW-Z1000Series"

    aput-object v2, v0, v1

    const/16 v1, 0xc02

    const-string v2, "Sony|NW-ZX1|icx1240|WALKMAN"

    aput-object v2, v0, v1

    const/16 v1, 0xc03

    const-string v2, "Sony|NWZ-Z1000|icx1216|NWZ-Z1000Series"

    aput-object v2, v0, v1

    const/16 v1, 0xc04

    const-string v2, "Sony|Sony|D2302|D2302"

    aput-object v2, v0, v1

    const/16 v1, 0xc05

    const-string v2, "Sony|Tablet P|nbx02|Sony Tablet P"

    aput-object v2, v0, v1

    const/16 v1, 0xc06

    const-string v2, "Sony|Tablet S|nbx03|Sony Tablet S"

    aput-object v2, v0, v1

    const/16 v1, 0xc07

    const-string v2, "Sony|Xperia E1 dual|D2114|D2114"

    aput-object v2, v0, v1

    const/16 v1, 0xc08

    const-string v2, "Sony|Xperia A|SO-04E|SO-04E"

    aput-object v2, v0, v1

    const/16 v1, 0xc09

    const-string v2, "Sony|Xperia A2|SO-04F|SO-04F"

    aput-object v2, v0, v1

    const/16 v1, 0xc0a

    const-string v2, "Sony|Xperia C|C2304|C2304"

    aput-object v2, v0, v1

    const/16 v1, 0xc0b

    const-string v2, "Sony|Xperia C|C2305|C2305"

    aput-object v2, v0, v1

    const/16 v1, 0xc0c

    const-string v2, "Sony|Xperia C3|D2533|D2533"

    aput-object v2, v0, v1

    const/16 v1, 0xc0d

    const-string v2, "Sony|Xperia C3 Dual|D2502|D2502"

    aput-object v2, v0, v1

    const/16 v1, 0xc0e

    const-string v2, "Sony|Xperia E|C1504|C1504"

    aput-object v2, v0, v1

    const/16 v1, 0xc0f

    const-string v2, "Sony|Xperia E|C1505|C1505"

    aput-object v2, v0, v1

    const/16 v1, 0xc10

    const-string v2, "Sony|Xperia E dual|C1604|C1604"

    aput-object v2, v0, v1

    const/16 v1, 0xc11

    const-string v2, "Sony|Xperia E dual|C1605|C1605"

    aput-object v2, v0, v1

    const/16 v1, 0xc12

    const-string v2, "Sony|Xperia E1|D2004|D2004"

    aput-object v2, v0, v1

    const/16 v1, 0xc13

    const-string v2, "Sony|Xperia E1|D2005|D2005"

    aput-object v2, v0, v1

    const/16 v1, 0xc14

    const-string v2, "Sony|Xperia E1|D2114|D2114"

    aput-object v2, v0, v1

    const/16 v1, 0xc15

    const-string v2, "Sony|Xperia E1 Dual|D2104|D2104"

    aput-object v2, v0, v1

    const/16 v1, 0xc16

    const-string v2, "Sony|Xperia E1 Dual|D2105|D2105"

    aput-object v2, v0, v1

    const/16 v1, 0xc17

    const-string v2, "Sony|Xperia E1 dual|D2104|D2104"

    aput-object v2, v0, v1

    const/16 v1, 0xc18

    const-string v2, "Sony|Xperia E1 dual|D2105|D2105"

    aput-object v2, v0, v1

    const/16 v1, 0xc19

    const-string v2, "Sony|Xperia E3|D2202|D2202"

    aput-object v2, v0, v1

    const/16 v1, 0xc1a

    const-string v2, "Sony|Xperia E3|D2203|D2203"

    aput-object v2, v0, v1

    const/16 v1, 0xc1b

    const-string v2, "Sony|Xperia E3|D2206|D2206"

    aput-object v2, v0, v1

    const/16 v1, 0xc1c

    const-string v2, "Sony|Xperia E3|D2243|D2243"

    aput-object v2, v0, v1

    const/16 v1, 0xc1d

    const-string v2, "Sony|Xperia E3 Dual|D2212|D2212"

    aput-object v2, v0, v1

    const/16 v1, 0xc1e

    const-string v2, "Sony|Xperia Go|ST27a|ST27a"

    aput-object v2, v0, v1

    const/16 v1, 0xc1f

    const-string v2, "Sony|Xperia Go|ST27i|ST27i"

    aput-object v2, v0, v1

    const/16 v1, 0xc20

    const-string v2, "Sony|Xperia J|ST26a|ST26a"

    aput-object v2, v0, v1

    const/16 v1, 0xc21

    const-string v2, "Sony|Xperia J|ST26i|ST26i"

    aput-object v2, v0, v1

    const/16 v1, 0xc22

    const-string v2, "Sony|Xperia J1 Compact|D5788|D5788"

    aput-object v2, v0, v1

    const/16 v1, 0xc23

    const-string v2, "Sony|Xperia L|C2104|C2104"

    aput-object v2, v0, v1

    const/16 v1, 0xc24

    const-string v2, "Sony|Xperia L|C2105|C2105"

    aput-object v2, v0, v1

    const/16 v1, 0xc25

    const-string v2, "Sony|Xperia M|C1904|C1904"

    aput-object v2, v0, v1

    const/16 v1, 0xc26

    const-string v2, "Sony|Xperia M|C1905|C1905"

    aput-object v2, v0, v1

    const/16 v1, 0xc27

    const-string v2, "Sony|Xperia M dual|C2004|C2004"

    aput-object v2, v0, v1

    const/16 v1, 0xc28

    const-string v2, "Sony|Xperia M dual|C2005|C2005"

    aput-object v2, v0, v1

    const/16 v1, 0xc29

    const-string v2, "Sony|Xperia M2|D2303|D2303"

    aput-object v2, v0, v1

    const/16 v1, 0xc2a

    const-string v2, "Sony|Xperia M2|D2305|D2305"

    aput-object v2, v0, v1

    const/16 v1, 0xc2b

    const-string v2, "Sony|Xperia M2|D2306|D2306"

    aput-object v2, v0, v1

    const/16 v1, 0xc2c

    const-string v2, "Sony|Xperia M2 Aqua|D2403|D2403"

    aput-object v2, v0, v1

    const/16 v1, 0xc2d

    const-string v2, "Sony|Xperia M2 Aqua|D2406|D2406"

    aput-object v2, v0, v1

    const/16 v1, 0xc2e

    const-string v2, "Sony|Xperia M2 dual|D2302|D2302"

    aput-object v2, v0, v1

    const/16 v1, 0xc2f

    const-string v2, "Sony|Xperia Miro|ST23i|ST23i"

    aput-object v2, v0, v1

    const/16 v1, 0xc30

    const-string v2, "Sony|Xperia P|LT22i|LT22i"

    aput-object v2, v0, v1

    const/16 v1, 0xc31

    const-string v2, "Sony|Xperia PLAY|R800a|R800a"

    aput-object v2, v0, v1

    const/16 v1, 0xc32

    const-string v2, "Sony|Xperia PLAY|R800i|R800i"

    aput-object v2, v0, v1

    const/16 v1, 0xc33

    const-string v2, "Sony|Xperia S|LT26i|LT26i"

    aput-object v2, v0, v1

    const/16 v1, 0xc34

    const-string v2, "Sony|Xperia SL|LT26ii|LT26ii"

    aput-object v2, v0, v1

    const/16 v1, 0xc35

    const-string v2, "Sony|Xperia SP|C5302|C5302"

    aput-object v2, v0, v1

    const/16 v1, 0xc36

    const-string v2, "Sony|Xperia SP|C5303|C5303"

    aput-object v2, v0, v1

    const/16 v1, 0xc37

    const-string v2, "Sony|Xperia SP|C5306|C5306"

    aput-object v2, v0, v1

    const/16 v1, 0xc38

    const-string v2, "Sony|Xperia SP|M35h|M35h"

    aput-object v2, v0, v1

    const/16 v1, 0xc39

    const-string v2, "Sony|Xperia SP|M35t|M35t"

    aput-object v2, v0, v1

    const/16 v1, 0xc3a

    const-string v2, "Sony|Xperia T|LT30a|LT30a"

    aput-object v2, v0, v1

    const/16 v1, 0xc3b

    const-string v2, "Sony|Xperia T|LT30p|LT30p"

    aput-object v2, v0, v1

    const/16 v1, 0xc3c

    const-string v2, "Sony|Xperia T2 Ultra|D5303|D5303"

    aput-object v2, v0, v1

    const/16 v1, 0xc3d

    const-string v2, "Sony|Xperia T2 Ultra|D5306|D5306"

    aput-object v2, v0, v1

    const/16 v1, 0xc3e

    const-string v2, "Sony|Xperia T2 Ultra|D5316|D5316"

    aput-object v2, v0, v1

    const/16 v1, 0xc3f

    const-string v2, "Sony|Xperia T2 Ultra|D5316N|D5316N"

    aput-object v2, v0, v1

    const/16 v1, 0xc40

    const-string v2, "Sony|Xperia T2 Ultra|D5322|D5322"

    aput-object v2, v0, v1

    const/16 v1, 0xc41

    const-string v2, "Sony|Xperia T2 Ultra dual|D5322|D5322"

    aput-object v2, v0, v1

    const/16 v1, 0xc42

    const-string v2, "Sony|Xperia T3|D5102|D5102"

    aput-object v2, v0, v1

    const/16 v1, 0xc43

    const-string v2, "Sony|Xperia T3|D5103|D5103"

    aput-object v2, v0, v1

    const/16 v1, 0xc44

    const-string v2, "Sony|Xperia T3|D5106|D5106"

    aput-object v2, v0, v1

    const/16 v1, 0xc45

    const-string v2, "Sony|Xperia TX|LT29i|LT29i"

    aput-object v2, v0, v1

    const/16 v1, 0xc46

    const-string v2, "Sony|Xperia Tablet S|txs03|SGPT12"

    aput-object v2, v0, v1

    const/16 v1, 0xc47

    const-string v2, "Sony|Xperia Tablet S|txs03|SGPT13"

    aput-object v2, v0, v1

    const/16 v1, 0xc48

    const-string v2, "Sony|Xperia Tablet Z|SGP311|SGP311"

    aput-object v2, v0, v1

    const/16 v1, 0xc49

    const-string v2, "Sony|Xperia Tablet Z|SGP312|SGP312"

    aput-object v2, v0, v1

    const/16 v1, 0xc4a

    const-string v2, "Sony|Xperia Tablet Z|SGP321|SGP321"

    aput-object v2, v0, v1

    const/16 v1, 0xc4b

    const-string v2, "Sony|Xperia Tablet Z|SGP351|SGP351"

    aput-object v2, v0, v1

    const/16 v1, 0xc4c

    const-string v2, "Sony|Xperia Tipo|ST21i|ST21i"

    aput-object v2, v0, v1

    const/16 v1, 0xc4d

    const-string v2, "Sony|Xperia Tipo|ST21i2|ST21i2"

    aput-object v2, v0, v1

    const/16 v1, 0xc4e

    const-string v2, "Sony|Xperia U|ST25a|ST25a"

    aput-object v2, v0, v1

    const/16 v1, 0xc4f

    const-string v2, "Sony|Xperia U|ST25i|ST25i"

    aput-object v2, v0, v1

    const/16 v1, 0xc50

    const-string v2, "Sony|Xperia V|LT25i|LT25i"

    aput-object v2, v0, v1

    const/16 v1, 0xc51

    const-string v2, "Sony|Xperia Z|C6602|C6602"

    aput-object v2, v0, v1

    const/16 v1, 0xc52

    const-string v2, "Sony|Xperia Z|C6603|C6603"

    aput-object v2, v0, v1

    const/16 v1, 0xc53

    const-string v2, "Sony|Xperia Z|C6606|C6606"

    aput-object v2, v0, v1

    const/16 v1, 0xc54

    const-string v2, "Sony|Xperia Z|C6616|C6616"

    aput-object v2, v0, v1

    const/16 v1, 0xc55

    const-string v2, "Sony|Xperia Z|L36h|L36h"

    aput-object v2, v0, v1

    const/16 v1, 0xc56

    const-string v2, "Sony|Xperia Z|SO-02E|SO-02E"

    aput-object v2, v0, v1

    const/16 v1, 0xc57

    const-string v2, "Sony|Xperia Z Ultra|C6802|C6802"

    aput-object v2, v0, v1

    const/16 v1, 0xc58

    const-string v2, "Sony|Xperia Z Ultra|C6806|C6806"

    aput-object v2, v0, v1

    const/16 v1, 0xc59

    const-string v2, "Sony|Xperia Z Ultra|C6833|C6833"

    aput-object v2, v0, v1

    const/16 v1, 0xc5a

    const-string v2, "Sony|Xperia Z Ultra|C6843|C6843"

    aput-object v2, v0, v1

    const/16 v1, 0xc5b

    const-string v2, "Sony|Xperia Z Ultra|SGP412|SGP412"

    aput-object v2, v0, v1

    const/16 v1, 0xc5c

    const-string v2, "Sony|Xperia Z Ultra|SOL24|SOL24"

    aput-object v2, v0, v1

    const/16 v1, 0xc5d

    const-string v2, "Sony|Xperia Z Ultra|XL39h|XL39h"

    aput-object v2, v0, v1

    const/16 v1, 0xc5e

    const-string v2, "Sony|Xperia Z1|C6902|C6902"

    aput-object v2, v0, v1

    const/16 v1, 0xc5f

    const-string v2, "Sony|Xperia Z1|C6903|C6903"

    aput-object v2, v0, v1

    const/16 v1, 0xc60

    const-string v2, "Sony|Xperia Z1|C6906|C6906"

    aput-object v2, v0, v1

    const/16 v1, 0xc61

    const-string v2, "Sony|Xperia Z1|C6916|C6916"

    aput-object v2, v0, v1

    const/16 v1, 0xc62

    const-string v2, "Sony|Xperia Z1|C6943|C6943"

    aput-object v2, v0, v1

    const/16 v1, 0xc63

    const-string v2, "Sony|Xperia Z1|L39h|L39h"

    aput-object v2, v0, v1

    const/16 v1, 0xc64

    const-string v2, "Sony|Xperia Z1|L39t|L39t"

    aput-object v2, v0, v1

    const/16 v1, 0xc65

    const-string v2, "Sony|Xperia Z1|L39u|L39u"

    aput-object v2, v0, v1

    const/16 v1, 0xc66

    const-string v2, "Sony|Xperia Z1|SO-01F|SO-01F"

    aput-object v2, v0, v1

    const/16 v1, 0xc67

    const-string v2, "Sony|Xperia Z1|SOL23|SOL23"

    aput-object v2, v0, v1

    const/16 v1, 0xc68

    const-string v2, "Sony|Xperia Z1 Compact|D5503|D5503"

    aput-object v2, v0, v1

    const/16 v1, 0xc69

    const-string v2, "Sony|Xperia Z1 Compact|M51w|M51w"

    aput-object v2, v0, v1

    const/16 v1, 0xc6a

    const-string v2, "Sony|Xperia Z1f|SO-02F|SO-02F"

    aput-object v2, v0, v1

    const/16 v1, 0xc6b

    const-string v2, "Sony|Xperia Z2|D6502|D6502"

    aput-object v2, v0, v1

    const/16 v1, 0xc6c

    const-string v2, "Sony|Xperia Z2|D6503|D6503"

    aput-object v2, v0, v1

    const/16 v1, 0xc6d

    const-string v2, "Sony|Xperia Z2|D6543|D6543"

    aput-object v2, v0, v1

    const/16 v1, 0xc6e

    const-string v2, "Sony|Xperia Z2|SO-03F|SO-03F"

    aput-object v2, v0, v1

    const/16 v1, 0xc6f

    const-string v2, "Sony|Xperia Z2 Tablet|SGP511|SGP511"

    aput-object v2, v0, v1

    const/16 v1, 0xc70

    const-string v2, "Sony|Xperia Z2 Tablet|SGP512|SGP512"

    aput-object v2, v0, v1

    const/16 v1, 0xc71

    const-string v2, "Sony|Xperia Z2 Tablet|SGP521|SGP521"

    aput-object v2, v0, v1

    const/16 v1, 0xc72

    const-string v2, "Sony|Xperia Z2 Tablet|SGP551|SGP551"

    aput-object v2, v0, v1

    const/16 v1, 0xc73

    const-string v2, "Sony|Xperia Z2 Tablet|SGP561|SGP561"

    aput-object v2, v0, v1

    const/16 v1, 0xc74

    const-string v2, "Sony|Xperia Z2 Tablet|SO-05F|SO-05F"

    aput-object v2, v0, v1

    const/16 v1, 0xc75

    const-string v2, "Sony|Xperia Z2 Tablet|SOT21|SOT21"

    aput-object v2, v0, v1

    const/16 v1, 0xc76

    const-string v2, "Sony|Xperia Z2a|D6563|D6563"

    aput-object v2, v0, v1

    const/16 v1, 0xc77

    const-string v2, "Sony|Xperia Z3|401SO|401SO"

    aput-object v2, v0, v1

    const/16 v1, 0xc78

    const-string v2, "Sony|Xperia Z3|D6603|D6603"

    aput-object v2, v0, v1

    const/16 v1, 0xc79

    const-string v2, "Sony|Xperia Z3|D6616|D6616"

    aput-object v2, v0, v1

    const/16 v1, 0xc7a

    const-string v2, "Sony|Xperia Z3|D6643|D6643"

    aput-object v2, v0, v1

    const/16 v1, 0xc7b

    const-string v2, "Sony|Xperia Z3|D6653|D6653"

    aput-object v2, v0, v1

    const/16 v1, 0xc7c

    const-string v2, "Sony|Xperia Z3|SO-01G|SO-01G"

    aput-object v2, v0, v1

    const/16 v1, 0xc7d

    const-string v2, "Sony|Xperia Z3|SOL26|SOL26"

    aput-object v2, v0, v1

    const/16 v1, 0xc7e

    const-string v2, "Sony|Xperia Z3 Compact|D5803|D5803"

    aput-object v2, v0, v1

    const/16 v1, 0xc7f

    const-string v2, "Sony|Xperia Z3 Compact|D5833|D5833"

    aput-object v2, v0, v1

    const/16 v1, 0xc80

    const-string v2, "Sony|Xperia Z3 Compact|SO-02G|SO-02G"

    aput-object v2, v0, v1

    const/16 v1, 0xc81

    const-string v2, "Sony|Xperia Z3 Dual|D6633|D6633"

    aput-object v2, v0, v1

    const/16 v1, 0xc82

    const-string v2, "Sony|Xperia Z3 Tablet Compact|SGP611|SGP611"

    aput-object v2, v0, v1

    const/16 v1, 0xc83

    const-string v2, "Sony|Xperia Z3 Tablet Compact|SGP612|SGP612"

    aput-object v2, v0, v1

    const/16 v1, 0xc84

    const-string v2, "Sony|Xperia Z3 Tablet Compact|SGP621|SGP621"

    aput-object v2, v0, v1

    const/16 v1, 0xc85

    const-string v2, "Sony|Xperia Z3 Tablet Compact|SGP641|SGP641"

    aput-object v2, v0, v1

    const/16 v1, 0xc86

    const-string v2, "Sony|Xperia Z3v|D6708|D6708"

    aput-object v2, v0, v1

    const/16 v1, 0xc87

    const-string v2, "Sony|Xperia ZL|C6502|C6502"

    aput-object v2, v0, v1

    const/16 v1, 0xc88

    const-string v2, "Sony|Xperia ZL|C6503|C6503"

    aput-object v2, v0, v1

    const/16 v1, 0xc89

    const-string v2, "Sony|Xperia ZL|C6506|C6506"

    aput-object v2, v0, v1

    const/16 v1, 0xc8a

    const-string v2, "Sony|Xperia ZL|L35h|L35h"

    aput-object v2, v0, v1

    const/16 v1, 0xc8b

    const-string v2, "Sony|Xperia ZL2|SOL25|SOL25"

    aput-object v2, v0, v1

    const/16 v1, 0xc8c

    const-string v2, "Sony|Xperia ZR|C5306|C5306"

    aput-object v2, v0, v1

    const/16 v1, 0xc8d

    const-string v2, "Sony|Xperia ZR|C5502|C5502"

    aput-object v2, v0, v1

    const/16 v1, 0xc8e

    const-string v2, "Sony|Xperia ZR|C5503|C5503"

    aput-object v2, v0, v1

    const/16 v1, 0xc8f

    const-string v2, "Sony|Xperia acro HD|SO-03D|SO-03D"

    aput-object v2, v0, v1

    const/16 v1, 0xc90

    const-string v2, "Sony|Xperia acro S|LT26w|LT26w"

    aput-object v2, v0, v1

    const/16 v1, 0xc91

    const-string v2, "Sony|Xperia active|ST17i|ST17i"

    aput-object v2, v0, v1

    const/16 v1, 0xc92

    const-string v2, "Sony|Xperia arc S|LT18i|LT18i"

    aput-object v2, v0, v1

    const/16 v1, 0xc93

    const-string v2, "Sony|Xperia go|ST27i|ST27i"

    aput-object v2, v0, v1

    const/16 v1, 0xc94

    const-string v2, "Sony|Xperia ion|LT28h|LT28h"

    aput-object v2, v0, v1

    const/16 v1, 0xc95

    const-string v2, "Sony|Xperia ion|LT28i|LT28i"

    aput-object v2, v0, v1

    const/16 v1, 0xc96

    const-string v2, "Sony|Xperia mini pro|SK17a|SK17a"

    aput-object v2, v0, v1

    const/16 v1, 0xc97

    const-string v2, "Sony|Xperia miro|ST23a|ST23a"

    aput-object v2, v0, v1

    const/16 v1, 0xc98

    const-string v2, "Sony|Xperia miro|ST23i|ST23i"

    aput-object v2, v0, v1

    const/16 v1, 0xc99

    const-string v2, "Sony|Xperia neo L|MT25i|MT25i"

    aput-object v2, v0, v1

    const/16 v1, 0xc9a

    const-string v2, "Sony|Xperia pro|MK16i|MK16i"

    aput-object v2, v0, v1

    const/16 v1, 0xc9b

    const-string v2, "Sony|Xperia ray|ST18i|ST18i"

    aput-object v2, v0, v1

    const/16 v1, 0xc9c

    const-string v2, "Sony|Xperia sola|MT27i|MT27i"

    aput-object v2, v0, v1

    const/16 v1, 0xc9d

    const-string v2, "Sony|Xperia tipo|ST21a|ST21a"

    aput-object v2, v0, v1

    const/16 v1, 0xc9e

    const-string v2, "Sony|Xperia tipo dual|ST21a2|ST21a2"

    aput-object v2, v0, v1

    const/16 v1, 0xc9f

    const-string v2, "Sony Ericsson|Live with Walkman|WT19a|WT19a"

    aput-object v2, v0, v1

    const/16 v1, 0xca0

    const-string v2, "Sony Ericsson|Live with Walkman|WT19i|WT19i"

    aput-object v2, v0, v1

    const/16 v1, 0xca1

    const-string v2, "Sony Ericsson|Live with Walkman(TM)|WT19a|WT19a"

    aput-object v2, v0, v1

    const/16 v1, 0xca2

    const-string v2, "Sony Ericsson|X10 Xperia Mini|robyn|E10i"

    aput-object v2, v0, v1

    const/16 v1, 0xca3

    const-string v2, "Sony Ericsson|Xperia A|SO-04E|SO-04E"

    aput-object v2, v0, v1

    const/16 v1, 0xca4

    const-string v2, "Sony Ericsson|Xperia AX|SO-01E|SO-01E"

    aput-object v2, v0, v1

    const/16 v1, 0xca5

    const-string v2, "Sony Ericsson|Xperia Acro|IS11S|IS11S"

    aput-object v2, v0, v1

    const/16 v1, 0xca6

    const-string v2, "Sony Ericsson|Xperia Acro|SO-02C|SO-02C"

    aput-object v2, v0, v1

    const/16 v1, 0xca7

    const-string v2, "Sony Ericsson|Xperia Arc|LT15i|LT15i"

    aput-object v2, v0, v1

    const/16 v1, 0xca8

    const-string v2, "Sony Ericsson|Xperia Arc|SO-01C|SO-01C"

    aput-object v2, v0, v1

    const/16 v1, 0xca9

    const-string v2, "Sony Ericsson|Xperia C|S39h|S39h"

    aput-object v2, v0, v1

    const/16 v1, 0xcaa

    const-string v2, "Sony Ericsson|Xperia GX|SO-04D|SO-04D"

    aput-object v2, v0, v1

    const/16 v1, 0xcab

    const-string v2, "Sony Ericsson|Xperia Go|ST27a|ST27a"

    aput-object v2, v0, v1

    const/16 v1, 0xcac

    const-string v2, "Sony Ericsson|Xperia Go|ST27i|ST27i"

    aput-object v2, v0, v1

    const/16 v1, 0xcad

    const-string v2, "Sony Ericsson|Xperia J|ST26i|ST26i"

    aput-object v2, v0, v1

    const/16 v1, 0xcae

    const-string v2, "Sony Ericsson|Xperia Neo|MT15i|MT15i"

    aput-object v2, v0, v1

    const/16 v1, 0xcaf

    const-string v2, "Sony Ericsson|Xperia P|LT22i|LT22i"

    aput-object v2, v0, v1

    const/16 v1, 0xcb0

    const-string v2, "Sony Ericsson|Xperia PLAY|R800a|R800a"

    aput-object v2, v0, v1

    const/16 v1, 0xcb1

    const-string v2, "Sony Ericsson|Xperia PLAY|R800at|R800at"

    aput-object v2, v0, v1

    const/16 v1, 0xcb2

    const-string v2, "Sony Ericsson|Xperia PLAY|R800i|R800i"

    aput-object v2, v0, v1

    const/16 v1, 0xcb3

    const-string v2, "Sony Ericsson|Xperia PLAY|R800x|R800x"

    aput-object v2, v0, v1

    const/16 v1, 0xcb4

    const-string v2, "Sony Ericsson|Xperia PLAY|SO-01D|SO-01D"

    aput-object v2, v0, v1

    const/16 v1, 0xcb5

    const-string v2, "Sony Ericsson|Xperia Play|R800i|R800i"

    aput-object v2, v0, v1

    const/16 v1, 0xcb6

    const-string v2, "Sony Ericsson|Xperia Play|Zeus|Zeus"

    aput-object v2, v0, v1

    const/16 v1, 0xcb7

    const-string v2, "Sony Ericsson|Xperia S|LT26i|LT26i"

    aput-object v2, v0, v1

    const/16 v1, 0xcb8

    const-string v2, "Sony Ericsson|Xperia S|SO-02D|SO-02D"

    aput-object v2, v0, v1

    const/16 v1, 0xcb9

    const-string v2, "Sony Ericsson|Xperia SL|LT26ii|LT26ii"

    aput-object v2, v0, v1

    const/16 v1, 0xcba

    const-string v2, "Sony Ericsson|Xperia SP|M35c|M35c"

    aput-object v2, v0, v1

    const/16 v1, 0xcbb

    const-string v2, "Sony Ericsson|Xperia SX|SO-05D|SO-05D"

    aput-object v2, v0, v1

    const/16 v1, 0xcbc

    const-string v2, "Sony Ericsson|Xperia T|LT30a|LT30a"

    aput-object v2, v0, v1

    const/16 v1, 0xcbd

    const-string v2, "Sony Ericsson|Xperia T|LT30at|LT30at"

    aput-object v2, v0, v1

    const/16 v1, 0xcbe

    const-string v2, "Sony Ericsson|Xperia T|LT30p|LT30p"

    aput-object v2, v0, v1

    const/16 v1, 0xcbf

    const-string v2, "Sony Ericsson|Xperia TX|LT29i|LT29i"

    aput-object v2, v0, v1

    const/16 v1, 0xcc0

    const-string v2, "Sony Ericsson|Xperia Tablet Z|SGP311|SGP311"

    aput-object v2, v0, v1

    const/16 v1, 0xcc1

    const-string v2, "Sony Ericsson|Xperia Tablet Z|SGP321|SGP321"

    aput-object v2, v0, v1

    const/16 v1, 0xcc2

    const-string v2, "Sony Ericsson|Xperia Tablet Z|SGP341|SGP341"

    aput-object v2, v0, v1

    const/16 v1, 0xcc3

    const-string v2, "Sony Ericsson|Xperia Tablet Z|SO-03E|SO-03E"

    aput-object v2, v0, v1

    const/16 v1, 0xcc4

    const-string v2, "Sony Ericsson|Xperia U|ST25i|ST25i"

    aput-object v2, v0, v1

    const/16 v1, 0xcc5

    const-string v2, "Sony Ericsson|Xperia UL|SOL22|SOL22"

    aput-object v2, v0, v1

    const/16 v1, 0xcc6

    const-string v2, "Sony Ericsson|Xperia V|LT25c|LT25c"

    aput-object v2, v0, v1

    const/16 v1, 0xcc7

    const-string v2, "Sony Ericsson|Xperia V|LT25i|LT25i"

    aput-object v2, v0, v1

    const/16 v1, 0xcc8

    const-string v2, "Sony Ericsson|Xperia VL|SOL21|SOL21"

    aput-object v2, v0, v1

    const/16 v1, 0xcc9

    const-string v2, "Sony Ericsson|Xperia X10|SO-01B|SO-01B"

    aput-object v2, v0, v1

    const/16 v1, 0xcca

    const-string v2, "Sony Ericsson|Xperia X10|SonyEricssonSO-01B|SO-01B"

    aput-object v2, v0, v1

    const/16 v1, 0xccb

    const-string v2, "Sony Ericsson|Xperia X10|SonyEricssonX10iv|X10i"

    aput-object v2, v0, v1

    const/16 v1, 0xccc

    const-string v2, "Sony Ericsson|Xperia X10|X10a|X10a"

    aput-object v2, v0, v1

    const/16 v1, 0xccd

    const-string v2, "Sony Ericsson|Xperia X10|X10i|X10i"

    aput-object v2, v0, v1

    const/16 v1, 0xcce

    const-string v2, "Sony Ericsson|Xperia X10 Mini|E10i|E10i"

    aput-object v2, v0, v1

    const/16 v1, 0xccf

    const-string v2, "Sony Ericsson|Xperia X10 Mini|SonyEricssonE10i|E10i"

    aput-object v2, v0, v1

    const/16 v1, 0xcd0

    const-string v2, "Sony Ericsson|Xperia X10 Mini Pro|U20i|U20i"

    aput-object v2, v0, v1

    const/16 v1, 0xcd1

    const-string v2, "Sony Ericsson|Xperia X10 mini|SonyEricssonE10a|E10a"

    aput-object v2, v0, v1

    const/16 v1, 0xcd2

    const-string v2, "Sony Ericsson|Xperia X10 mini pro|SonyEricssonU20a|U20a"

    aput-object v2, v0, v1

    const/16 v1, 0xcd3

    const-string v2, "Sony Ericsson|Xperia X8|E15i|E15i"

    aput-object v2, v0, v1

    const/16 v1, 0xcd4

    const-string v2, "Sony Ericsson|Xperia Z|SO-02E|SO-02E"

    aput-object v2, v0, v1

    const/16 v1, 0xcd5

    const-string v2, "Sony Ericsson|Xperia Z Ultra|C6806|C6806"

    aput-object v2, v0, v1

    const/16 v1, 0xcd6

    const-string v2, "Sony Ericsson|Xperia Z1|C6903|C6903"

    aput-object v2, v0, v1

    const/16 v1, 0xcd7

    const-string v2, "Sony Ericsson|Xperia Z1|C6906|C6906"

    aput-object v2, v0, v1

    const/16 v1, 0xcd8

    const-string v2, "Sony Ericsson|Xperia Z1|C6943|C6943"

    aput-object v2, v0, v1

    const/16 v1, 0xcd9

    const-string v2, "Sony Ericsson|Xperia acro HD|IS12S|IS12S"

    aput-object v2, v0, v1

    const/16 v1, 0xcda

    const-string v2, "Sony Ericsson|Xperia acro S|LT26w|LT26w"

    aput-object v2, v0, v1

    const/16 v1, 0xcdb

    const-string v2, "Sony Ericsson|Xperia active|ST17i|ST17i"

    aput-object v2, v0, v1

    const/16 v1, 0xcdc

    const-string v2, "Sony Ericsson|Xperia arc|LT15a|LT15a"

    aput-object v2, v0, v1

    const/16 v1, 0xcdd

    const-string v2, "Sony Ericsson|Xperia arc|LT15i|LT15i"

    aput-object v2, v0, v1

    const/16 v1, 0xcde

    const-string v2, "Sony Ericsson|Xperia arc S|LT18a|LT18a"

    aput-object v2, v0, v1

    const/16 v1, 0xcdf

    const-string v2, "Sony Ericsson|Xperia arc S|LT18i|LT18i"

    aput-object v2, v0, v1

    const/16 v1, 0xce0

    const-string v2, "Sony Ericsson|Xperia go|ST27i|ST27i"

    aput-object v2, v0, v1

    const/16 v1, 0xce1

    const-string v2, "Sony Ericsson|Xperia ion|LT28at|LT28at"

    aput-object v2, v0, v1

    const/16 v1, 0xce2

    const-string v2, "Sony Ericsson|Xperia ion|LT28h|LT28h"

    aput-object v2, v0, v1

    const/16 v1, 0xce3

    const-string v2, "Sony Ericsson|Xperia ion|LT28i|LT28i"

    aput-object v2, v0, v1

    const/16 v1, 0xce4

    const-string v2, "Sony Ericsson|Xperia live|WT19a|WT19a"

    aput-object v2, v0, v1

    const/16 v1, 0xce5

    const-string v2, "Sony Ericsson|Xperia mini|S51SE|S51SE"

    aput-object v2, v0, v1

    const/16 v1, 0xce6

    const-string v2, "Sony Ericsson|Xperia mini|ST15a|ST15a"

    aput-object v2, v0, v1

    const/16 v1, 0xce7

    const-string v2, "Sony Ericsson|Xperia mini|ST15i|ST15i"

    aput-object v2, v0, v1

    const/16 v1, 0xce8

    const-string v2, "Sony Ericsson|Xperia mini pro|SK17a|SK17a"

    aput-object v2, v0, v1

    const/16 v1, 0xce9

    const-string v2, "Sony Ericsson|Xperia mini pro|SK17i|SK17i"

    aput-object v2, v0, v1

    const/16 v1, 0xcea

    const-string v2, "Sony Ericsson|Xperia miro|ST23i|ST23i"

    aput-object v2, v0, v1

    const/16 v1, 0xceb

    const-string v2, "Sony Ericsson|Xperia neo|MT15a|MT15a"

    aput-object v2, v0, v1

    const/16 v1, 0xcec

    const-string v2, "Sony Ericsson|Xperia neo|MT15i|MT15i"

    aput-object v2, v0, v1

    const/16 v1, 0xced

    const-string v2, "Sony Ericsson|Xperia neo L|MT25i|MT25i"

    aput-object v2, v0, v1

    const/16 v1, 0xcee

    const-string v2, "Sony Ericsson|Xperia neo V|MT11a|MT11a"

    aput-object v2, v0, v1

    const/16 v1, 0xcef

    const-string v2, "Sony Ericsson|Xperia neo V|MT11i|MT11i"

    aput-object v2, v0, v1

    const/16 v1, 0xcf0

    const-string v2, "Sony Ericsson|Xperia pro|MK16a|MK16a"

    aput-object v2, v0, v1

    const/16 v1, 0xcf1

    const-string v2, "Sony Ericsson|Xperia pro|MK16i|MK16i"

    aput-object v2, v0, v1

    const/16 v1, 0xcf2

    const-string v2, "Sony Ericsson|Xperia ray|SO-03C|SO-03C"

    aput-object v2, v0, v1

    const/16 v1, 0xcf3

    const-string v2, "Sony Ericsson|Xperia ray|ST18a|ST18a"

    aput-object v2, v0, v1

    const/16 v1, 0xcf4

    const-string v2, "Sony Ericsson|Xperia ray|ST18i|ST18i"

    aput-object v2, v0, v1

    const/16 v1, 0xcf5

    const-string v2, "Sony Ericsson|Xperia sola|MT27i|MT27i"

    aput-object v2, v0, v1

    const/16 v1, 0xcf6

    const-string v2, "Sony Ericsson|Xperia tipo|ST21i|ST21i"

    aput-object v2, v0, v1

    const/16 v1, 0xcf7

    const-string v2, "Sony Ericsson|Xperia tipo dual|ST21i2|ST21i2"

    aput-object v2, v0, v1

    const/16 v1, 0xcf8

    const-string v2, "Verizon Wireless|Ellipsis 7|QMV7A|QMV7A"

    aput-object v2, v0, v1

    const/16 v1, 0xcf9

    const-string v2, "Verizon Wireless|Ellipsis 7|QMV7A|QMV7B"

    aput-object v2, v0, v1

    const/16 v1, 0xcfa

    const-string v2, "Verizon Wireless|Ellipsis 7 (QMV7A)|QMV7A|QMV7A"

    aput-object v2, v0, v1

    const/16 v1, 0xcfb

    const-string v2, "Verizon Wireless|Ellipsis 7 (QMV7B)|QMV7A|QMV7B"

    aput-object v2, v0, v1

    const/16 v1, 0xcfc

    const-string v2, "Verizon Wireless|Ellipsis 8|QTAQZ3|QTAQZ3"

    aput-object v2, v0, v1

    const/16 v1, 0xcfd

    const-string v2, "Vertu|Signature Touch|odin|Signature Touch"

    aput-object v2, v0, v1

    const/16 v1, 0xcfe

    const-string v2, "ViewSonic|VSD241 Smart Display|VSD241|VSD241"

    aput-object v2, v0, v1

    const/16 v1, 0xcff

    const-string v2, "Vizio|StreamPlayer|VAP430|VAP430"

    aput-object v2, v0, v1

    const/16 v1, 0xd00

    const-string v2, "Xiaomi|China|HM2013023|2013023.0"

    aput-object v2, v0, v1

    const/16 v1, 0xd01

    const-string v2, "Xiaomi|China|braveheart|MiTV"

    aput-object v2, v0, v1

    const/16 v1, 0xd02

    const-string v2, "Xiaomi|China|casablanca|MiBOX1S"

    aput-object v2, v0, v1

    const/16 v1, 0xd03

    const-string v2, "Xiaomi|HM 1SC|armani|HM 1AC"

    aput-object v2, v0, v1

    const/16 v1, 0xd04

    const-string v2, "Xiaomi|HM 1SC|armani|HM 1SW"

    aput-object v2, v0, v1

    const/16 v1, 0xd05

    const-string v2, "Xiaomi|HM 1SLTETD|HM2014501|2014501.0"

    aput-object v2, v0, v1

    const/16 v1, 0xd06

    const-string v2, "Xiaomi|HM 1STD|HM2014011|2014011.0"

    aput-object v2, v0, v1

    const/16 v1, 0xd07

    const-string v2, "Xiaomi|HM 2LTE-BR|HM2014819|2014819.0"

    aput-object v2, v0, v1

    const/16 v1, 0xd08

    const-string v2, "Xiaomi|HM 2LTE-CMCC|HM2014813|2014813.0"

    aput-object v2, v0, v1

    const/16 v1, 0xd09

    const-string v2, "Xiaomi|HM 2LTE-CT|HM2014812|2014812.0"

    aput-object v2, v0, v1

    const/16 v1, 0xd0a

    const-string v2, "Xiaomi|HM 2LTE-CU|HM2014811|2014811.0"

    aput-object v2, v0, v1

    const/16 v1, 0xd0b

    const-string v2, "Xiaomi|HM 2LTE-IN|HM2014818|2014818.0"

    aput-object v2, v0, v1

    const/16 v1, 0xd0c

    const-string v2, "Xiaomi|HM 2LTE-SA|HM2014817|2014817.0"

    aput-object v2, v0, v1

    const/16 v1, 0xd0d

    const-string v2, "Xiaomi|HM NOTE 1LTETD|dior|HM NOTE 1LTE"

    aput-object v2, v0, v1

    const/16 v1, 0xd0e

    const-string v2, "Xiaomi|HM NOTE 1LTETD|dior|HM NOTE 1LTEW"

    aput-object v2, v0, v1

    const/16 v1, 0xd0f

    const-string v2, "Xiaomi|HM NOTE 1S CT|gucci|HM NOTE 1S"

    aput-object v2, v0, v1

    const/16 v1, 0xd10

    const-string v2, "Xiaomi|HM NOTE 1S CT|gucci|gucci"

    aput-object v2, v0, v1

    const/16 v1, 0xd11

    const-string v2, "Xiaomi|Hong Mi|HM2013022|2013022.0"

    aput-object v2, v0, v1

    const/16 v1, 0xd12

    const-string v2, "Xiaomi|MI 2|aries|MI 2"

    aput-object v2, v0, v1

    const/16 v1, 0xd13

    const-string v2, "Xiaomi|MI 2|aries|MI 2S"

    aput-object v2, v0, v1

    const/16 v1, 0xd14

    const-string v2, "Xiaomi|MI 4LTE|cancro|MI 4W"

    aput-object v2, v0, v1

    const/16 v1, 0xd15

    const-string v2, "Xiaomi|MI 4LTE-CT|cancro|MI 4LTE"

    aput-object v2, v0, v1

    const/16 v1, 0xd16

    const-string v2, "ZTE|009Z|bladeplus|ZTE V882"

    aput-object v2, v0, v1

    const/16 v1, 0xd17

    const-string v2, "ZTE|009Z|bladeplus|ZTE V886J"

    aput-object v2, v0, v1

    const/16 v1, 0xd18

    const-string v2, "ZTE|Avea inTouch 4|msm8916_32|ZTE Blade V220"

    aput-object v2, v0, v1

    const/16 v1, 0xd19

    const-string v2, "ZTE|BASE Lutea 2|skate|BASE Lutea 2"

    aput-object v2, v0, v1

    const/16 v1, 0xd1a

    const-string v2, "ZTE|Blade|blade|003Z"

    aput-object v2, v0, v1

    const/16 v1, 0xd1b

    const-string v2, "ZTE|Blade|blade|Android Edition StarTrail"

    aput-object v2, v0, v1

    const/16 v1, 0xd1c

    const-string v2, "ZTE|Blade|blade|BASE lutea"

    aput-object v2, v0, v1

    const/16 v1, 0xd1d

    const-string v2, "ZTE|Blade|blade|BLADE_N880"

    aput-object v2, v0, v1

    const/16 v1, 0xd1e

    const-string v2, "ZTE|Blade|blade|Beeline E400"

    aput-object v2, v0, v1

    const/16 v1, 0xd1f

    const-string v2, "ZTE|Blade|blade|Kyivstar Spark"

    aput-object v2, v0, v1

    const/16 v1, 0xd20

    const-string v2, "ZTE|Blade|blade|MF8604"

    aput-object v2, v0, v1

    const/16 v1, 0xd21

    const-string v2, "ZTE|Blade|blade|Movistar Prime"

    aput-object v2, v0, v1

    const/16 v1, 0xd22

    const-string v2, "ZTE|Blade|blade|N880"

    aput-object v2, v0, v1

    const/16 v1, 0xd23

    const-string v2, "ZTE|Blade|blade|Netphone 701"

    aput-object v2, v0, v1

    const/16 v1, 0xd24

    const-string v2, "ZTE|Blade|blade|Optimus San Francisco"

    aput-object v2, v0, v1

    const/16 v1, 0xd25

    const-string v2, "ZTE|Blade|blade|Orange San Francisco"

    aput-object v2, v0, v1

    const/16 v1, 0xd26

    const-string v2, "ZTE|Blade|blade|Orange Tactile internet 2"

    aput-object v2, v0, v1

    const/16 v1, 0xd27

    const-string v2, "ZTE|Blade|blade|RTK V8"

    aput-object v2, v0, v1

    const/16 v1, 0xd28

    const-string v2, "ZTE|Blade|blade|San Francisco"

    aput-object v2, v0, v1

    const/16 v1, 0xd29

    const-string v2, "ZTE|Blade|blade|V8502"

    aput-object v2, v0, v1

    const/16 v1, 0xd2a

    const-string v2, "ZTE|Blade|blade|WayteQ Libra"

    aput-object v2, v0, v1

    const/16 v1, 0xd2b

    const-string v2, "ZTE|Blade|blade|XCD35"

    aput-object v2, v0, v1

    const/16 v1, 0xd2c

    const-string v2, "ZTE|Blade|blade|ZTE Libra"

    aput-object v2, v0, v1

    const/16 v1, 0xd2d

    const-string v2, "ZTE|Blade|blade|ZTE V880"

    aput-object v2, v0, v1

    const/16 v1, 0xd2e

    const-string v2, "ZTE|Blade|blade|ZTE-BLADE"

    aput-object v2, v0, v1

    const/16 v1, 0xd2f

    const-string v2, "ZTE|Blade|blade|ZTE-C N880S"

    aput-object v2, v0, v1

    const/16 v1, 0xd30

    const-string v2, "ZTE|Blade|blade|ZTE-LIBRA"

    aput-object v2, v0, v1

    const/16 v1, 0xd31

    const-string v2, "ZTE|Blade|blade|ZTE-Libra"

    aput-object v2, v0, v1

    const/16 v1, 0xd32

    const-string v2, "ZTE|Blade|blade|ZTE-U V880"

    aput-object v2, v0, v1

    const/16 v1, 0xd33

    const-string v2, "ZTE|Blade|blade|a5"

    aput-object v2, v0, v1

    const/16 v1, 0xd34

    const-string v2, "ZTE|Blade III|atlas40|Skate Pro"

    aput-object v2, v0, v1

    const/16 v1, 0xd35

    const-string v2, "ZTE|Bouygues Telecom Bs 402|P172G10|A4C"

    aput-object v2, v0, v1

    const/16 v1, 0xd36

    const-string v2, "ZTE|Bouygues Telecom Bs 402|P172G10|Amazing A4C"

    aput-object v2, v0, v1

    const/16 v1, 0xd37

    const-string v2, "ZTE|Bouygues Telecom Bs 402|P172G10|ZTE Blade Q Mini"

    aput-object v2, v0, v1

    const/16 v1, 0xd38

    const-string v2, "ZTE|Grand X|P175A20|Grand X(M)"

    aput-object v2, v0, v1

    const/16 v1, 0xd39

    const-string v2, "ZTE|Grand X|P175A20|ZTE Grand X Classic"

    aput-object v2, v0, v1

    const/16 v1, 0xd3a

    const-string v2, "ZTE|Grand X|P175A20|ZTE V970"

    aput-object v2, v0, v1

    const/16 v1, 0xd3b

    const-string v2, "ZTE|Grand X|P175A20|ZTE V970M"

    aput-object v2, v0, v1

    const/16 v1, 0xd3c

    const-string v2, "ZTE|Grand X|P175A20|ZTE-U V970M"

    aput-object v2, v0, v1

    const/16 v1, 0xd3d

    const-string v2, "ZTE|Grand X|P175A20|tmn smart a18"

    aput-object v2, v0, v1

    const/16 v1, 0xd3e

    const-string v2, "ZTE|Grand X In|mfld_pr2|STARADDICT II Plus"

    aput-object v2, v0, v1

    const/16 v1, 0xd3f

    const-string v2, "ZTE|Grand X In|mfld_pr2|ZTE Grand X In"

    aput-object v2, v0, v1

    const/16 v1, 0xd40

    const-string v2, "ZTE|Grand X Pro|P177A20|Blade Super"

    aput-object v2, v0, v1

    const/16 v1, 0xd41

    const-string v2, "ZTE|Grand X Pro|P177A20|KPN Smart 300"

    aput-object v2, v0, v1

    const/16 v1, 0xd42

    const-string v2, "ZTE|K97|K97|ZTE K97"

    aput-object v2, v0, v1

    const/16 v1, 0xd43

    const-string v2, "ZTE|N720|N720|ZTE-U N720"

    aput-object v2, v0, v1

    const/16 v1, 0xd44

    const-string v2, "ZTE|N720|N720|ZTE_U N720"

    aput-object v2, v0, v1

    const/16 v1, 0xd45

    const-string v2, "ZTE|N860|arthur|Warp"

    aput-object v2, v0, v1

    const/16 v1, 0xd46

    const-string v2, "ZTE|N910|arthur4g|ZTE-N910"

    aput-object v2, v0, v1

    const/16 v1, 0xd47

    const-string v2, "ZTE|N918St|N918St|BGH Joy Smart AXS II"

    aput-object v2, v0, v1

    const/16 v1, 0xd48

    const-string v2, "ZTE|N918St|N918St|BGH Joy Smart AXS II D"

    aput-object v2, v0, v1

    const/16 v1, 0xd49

    const-string v2, "ZTE|N918St|N918St|ZTE N918St"

    aput-object v2, v0, v1

    const/16 v1, 0xd4a

    const-string v2, "ZTE|N986D|P188F10|N986+"

    aput-object v2, v0, v1

    const/16 v1, 0xd4b

    const-string v2, "ZTE|NE501J|NE501J|V5"

    aput-object v2, v0, v1

    const/16 v1, 0xd4c

    const-string v2, "ZTE|NE501J|NE501J|ZTE_V5"

    aput-object v2, v0, v1

    const/16 v1, 0xd4d

    const-string v2, "ZTE|NX40X|NX402|NX402"

    aput-object v2, v0, v1

    const/16 v1, 0xd4e

    const-string v2, "ZTE|NX40X_APT|NX40X|NX40X"

    aput-object v2, v0, v1

    const/16 v1, 0xd4f

    const-string v2, "ZTE|NX507J|NX507J|NX507H"

    aput-object v2, v0, v1

    const/16 v1, 0xd50

    const-string v2, "ZTE|Orange Reyo|P172D10|Avea inTouch 3 Large"

    aput-object v2, v0, v1

    const/16 v1, 0xd51

    const-string v2, "ZTE|Orange Reyo|P172D10|Blade Q Maxi"

    aput-object v2, v0, v1

    const/16 v1, 0xd52

    const-string v2, "ZTE|Orange Reyo|P172D10|ZTE Blade Q Maxi"

    aput-object v2, v0, v1

    const/16 v1, 0xd53

    const-string v2, "ZTE|Racer|mooncake|Carl"

    aput-object v2, v0, v1

    const/16 v1, 0xd54

    const-string v2, "ZTE|Racer|mooncake|MTC 916"

    aput-object v2, v0, v1

    const/16 v1, 0xd55

    const-string v2, "ZTE|Racer|mooncake|MTS-SP100"

    aput-object v2, v0, v1

    const/16 v1, 0xd56

    const-string v2, "ZTE|Racer|mooncake|Movistar Link"

    aput-object v2, v0, v1

    const/16 v1, 0xd57

    const-string v2, "ZTE|Racer|mooncake|RTK D1"

    aput-object v2, v0, v1

    const/16 v1, 0xd58

    const-string v2, "ZTE|Racer|mooncake|TaiWan Mobile T2"

    aput-object v2, v0, v1

    const/16 v1, 0xd59

    const-string v2, "ZTE|Racer|mooncake|V8402"

    aput-object v2, v0, v1

    const/16 v1, 0xd5a

    const-string v2, "ZTE|Racer|mooncake|Vip Droid"

    aput-object v2, v0, v1

    const/16 v1, 0xd5b

    const-string v2, "ZTE|Racer|mooncake|XCD 28"

    aput-object v2, v0, v1

    const/16 v1, 0xd5c

    const-string v2, "ZTE|Racer|mooncake|ZTE X850"

    aput-object v2, v0, v1

    const/16 v1, 0xd5d

    const-string v2, "ZTE|Racer|mooncake|ZTE-C N600"

    aput-object v2, v0, v1

    const/16 v1, 0xd5e

    const-string v2, "ZTE|Racer|mooncake|ZTE-C N600+"

    aput-object v2, v0, v1

    const/16 v1, 0xd5f

    const-string v2, "ZTE|Racer|mooncake|ZTE-LINK"

    aput-object v2, v0, v1

    const/16 v1, 0xd60

    const-string v2, "ZTE|Racer|mooncake|ZTE-RACER"

    aput-object v2, v0, v1

    const/16 v1, 0xd61

    const-string v2, "ZTE|Racer|mooncake|ZTE-U V852"

    aput-object v2, v0, v1

    const/16 v1, 0xd62

    const-string v2, "ZTE|Racer|mooncake|ZTE-U X850"

    aput-object v2, v0, v1

    const/16 v1, 0xd63

    const-string v2, "ZTE|STARTRAIL 4|P172E10|Avea inTouch 3"

    aput-object v2, v0, v1

    const/16 v1, 0xd64

    const-string v2, "ZTE|STARTRAIL 4|P172E10|ZTE Blade Q"

    aput-object v2, v0, v1

    const/16 v1, 0xd65

    const-string v2, "ZTE|Spro 2|msm8974|MF97V"

    aput-object v2, v0, v1

    const/16 v1, 0xd66

    const-string v2, "ZTE|TURKCELL T50|msm8226|TURKCELL TURBO T50"

    aput-object v2, v0, v1

    const/16 v1, 0xd67

    const-string v2, "ZTE|U880|U880|ZTE-T U880"

    aput-object v2, v0, v1

    const/16 v1, 0xd68

    const-string v2, "ZTE|U9180|U9180|ZTE U9180"

    aput-object v2, v0, v1

    const/16 v1, 0xd69

    const-string v2, "ZTE|V9|v9|A100"

    aput-object v2, v0, v1

    const/16 v1, 0xd6a

    const-string v2, "ZTE|V9|v9|BASE Tab"

    aput-object v2, v0, v1

    const/16 v1, 0xd6b

    const-string v2, "ZTE|V9|v9|BLACK 03"

    aput-object v2, v0, v1

    const/16 v1, 0xd6c

    const-string v2, "ZTE|V9|v9|Beeline M2"

    aput-object v2, v0, v1

    const/16 v1, 0xd6d

    const-string v2, "ZTE|V9|v9|Light"

    aput-object v2, v0, v1

    const/16 v1, 0xd6e

    const-string v2, "ZTE|V9|v9|Light Tab"

    aput-object v2, v0, v1

    const/16 v1, 0xd6f

    const-string v2, "ZTE|V9|v9|MTC 1055"

    aput-object v2, v0, v1

    const/16 v1, 0xd70

    const-string v2, "ZTE|V9|v9|One Pad"

    aput-object v2, v0, v1

    const/16 v1, 0xd71

    const-string v2, "ZTE|V9|v9|RTK V9"

    aput-object v2, v0, v1

    const/16 v1, 0xd72

    const-string v2, "ZTE|V9|v9|TO101"

    aput-object v2, v0, v1

    const/16 v1, 0xd73

    const-string v2, "ZTE|V9|v9|TT101"

    aput-object v2, v0, v1

    const/16 v1, 0xd74

    const-string v2, "ZTE|V9|v9|V9C"

    aput-object v2, v0, v1

    const/16 v1, 0xd75

    const-string v2, "ZTE|V9|v9|V9c"

    aput-object v2, v0, v1

    const/16 v1, 0xd76

    const-string v2, "ZTE|V9|v9|V9e"

    aput-object v2, v0, v1

    const/16 v1, 0xd77

    const-string v2, "ZTE|V9|v9|myPad P2"

    aput-object v2, v0, v1

    const/16 v1, 0xd78

    const-string v2, "ZTE|V9A|v9plus|Light Tab 2"

    aput-object v2, v0, v1

    const/16 v1, 0xd79

    const-string v2, "ZTE|V9A|v9plus|ZTE V9A"

    aput-object v2, v0, v1

    const/16 v1, 0xd7a

    const-string v2, "ZTE|V9A|v9plus|my Pad P3"

    aput-object v2, v0, v1

    const/16 v1, 0xd7b

    const-string v2, "ZTE|V9A|v9plus|myPad P3"

    aput-object v2, v0, v1

    const/16 v1, 0xd7c

    const-string v2, "ZTE|V9S|V9S|myPadP4"

    aput-object v2, v0, v1

    const/16 v1, 0xd7d

    const-string v2, "ZTE|X501_USA_Cricket|X501|X501_USA_RS"

    aput-object v2, v0, v1

    const/16 v1, 0xd7e

    const-string v2, "ZTE|ZTE BLADE III|atlas40|Skate Pro"

    aput-object v2, v0, v1

    const/16 v1, 0xd7f

    const-string v2, "ZTE|ZTE Blade C370|ZTE_Blade_C370|NOS NOVU"

    aput-object v2, v0, v1

    const/16 v1, 0xd80

    const-string v2, "ZTE|ZTE Blade G Lux|P172F10|BGH Joy Smart A6"

    aput-object v2, v0, v1

    const/16 v1, 0xd81

    const-string v2, "ZTE|ZTE Blade G Lux|P172F10|BGH Joy Smart A6d"

    aput-object v2, v0, v1

    const/16 v1, 0xd82

    const-string v2, "ZTE|ZTE Blade G Lux|P172F10|Blade G Lux"

    aput-object v2, v0, v1

    const/16 v1, 0xd83

    const-string v2, "ZTE|ZTE Blade G Lux|P172F10|DIGICEL DL800"

    aput-object v2, v0, v1

    const/16 v1, 0xd84

    const-string v2, "ZTE|ZTE Blade G Lux|P172F10|MEO Smart A40"

    aput-object v2, v0, v1

    const/16 v1, 0xd85

    const-string v2, "ZTE|ZTE Blade G Lux|P172F10|Orange Tado"

    aput-object v2, v0, v1

    const/16 v1, 0xd86

    const-string v2, "ZTE|ZTE Blade G Lux|P172F10|ZTE Kis3 max"

    aput-object v2, v0, v1

    const/16 v1, 0xd87

    const-string v2, "ZTE|ZTE Blade G Lux|P172F10|ZTE V830W"

    aput-object v2, v0, v1

    const/16 v1, 0xd88

    const-string v2, "ZTE|ZTE Blade L2|P182A10|BGH Joy Smart AXS"

    aput-object v2, v0, v1

    const/16 v1, 0xd89

    const-string v2, "ZTE|ZTE Blade L2|P182A10|BGH Joy Smart AXS D"

    aput-object v2, v0, v1

    const/16 v1, 0xd8a

    const-string v2, "ZTE|ZTE Blade L2|P182A10|Blade L2"

    aput-object v2, v0, v1

    const/16 v1, 0xd8b

    const-string v2, "ZTE|ZTE Blade L2|P182A10|MEO Smart A75"

    aput-object v2, v0, v1

    const/16 v1, 0xd8c

    const-string v2, "ZTE|ZTE Blade L3|P182A20|Blade L3"

    aput-object v2, v0, v1

    const/16 v1, 0xd8d

    const-string v2, "ZTE|ZTE Blade Q Lux|P632A10|BGH Joy Smart A7G"

    aput-object v2, v0, v1

    const/16 v1, 0xd8e

    const-string v2, "ZTE|ZTE Blade Q Lux|P632A10|Beeline Pro"

    aput-object v2, v0, v1

    const/16 v1, 0xd8f

    const-string v2, "ZTE|ZTE Blade Q Lux|P632A10|ZTE Blade A430"

    aput-object v2, v0, v1

    const/16 v1, 0xd90

    const-string v2, "ZTE|ZTE Blade Q Lux|P632A10|ZTE Fit 4G Smart"

    aput-object v2, v0, v1

    const/16 v1, 0xd91

    const-string v2, "ZTE|ZTE Blade V|ZTE-Blade-V|Vodafone Blade V"

    aput-object v2, v0, v1

    const/16 v1, 0xd92

    const-string v2, "ZTE|ZTE Blade Vec|P692S20_Q82|Blade Vec"

    aput-object v2, v0, v1

    const/16 v1, 0xd93

    const-string v2, "ZTE|ZTE Blade Vec|P692S20_Q82|ZTE Geek 2"

    aput-object v2, v0, v1

    const/16 v1, 0xd94

    const-string v2, "ZTE|ZTE C310|P172D04|ZTE Blade C310"

    aput-object v2, v0, v1

    const/16 v1, 0xd95

    const-string v2, "ZTE|ZTE GEEK II Pro|ztexasp92_wet_jb9|ZTE M1001"

    aput-object v2, v0, v1

    const/16 v1, 0xd96

    const-string v2, "ZTE|ZTE Grand Memo LTE|Grand-Memo|ZTE Grand Memo"

    aput-object v2, v0, v1

    const/16 v1, 0xd97

    const-string v2, "ZTE|ZTE Grand S II|P541T50|ZTE S221"

    aput-object v2, v0, v1

    const/16 v1, 0xd98

    const-string v2, "ZTE|ZTE Grand X 2|P682F06|Amazing A7"

    aput-object v2, v0, v1

    const/16 v1, 0xd99

    const-string v2, "ZTE|ZTE Grand X 2|P682F06|ZTE V968"

    aput-object v2, v0, v1

    const/16 v1, 0xd9a

    const-string v2, "ZTE|ZTE Grand X 2|P682F06|ZTE V969"

    aput-object v2, v0, v1

    const/16 v1, 0xd9b

    const-string v2, "ZTE|ZTE Grand X Quad Lite|P188F07|Amazing A6"

    aput-object v2, v0, v1

    const/16 v1, 0xd9c

    const-string v2, "ZTE|ZTE Grand X Quad Lite|P188F07|V8602"

    aput-object v2, v0, v1

    const/16 v1, 0xd9d

    const-string v2, "ZTE|ZTE Grand X Quad Lite|P188F07|ZTE Grand X2"

    aput-object v2, v0, v1

    const/16 v1, 0xd9e

    const-string v2, "ZTE|ZTE Grand X Quad Lite|P188F07|ZTE Skate 2"

    aput-object v2, v0, v1

    const/16 v1, 0xd9f

    const-string v2, "ZTE|ZTE Grand X Quad Lite|P188F07|ZTE V967S"

    aput-object v2, v0, v1

    const/16 v1, 0xda0

    const-string v2, "ZTE|ZTE Grand X2 In|redhookbay|Grand X2 In"

    aput-object v2, v0, v1

    const/16 v1, 0xda1

    const-string v2, "ZTE|ZTE Kis 3|ZTE-P821E10|MEO SMART A16"

    aput-object v2, v0, v1

    const/16 v1, 0xda2

    const-string v2, "ZTE|ZTE Kis 3|ZTE-P821E10|MEO Smart A16"

    aput-object v2, v0, v1

    const/16 v1, 0xda3

    const-string v2, "ZTE|ZTE Kis 3|ZTE-P821E10|MOCHE SMART A16"

    aput-object v2, v0, v1

    const/16 v1, 0xda4

    const-string v2, "ZTE|ZTE Kis 3|ZTE-P821E10|ZTE V811"

    aput-object v2, v0, v1

    const/16 v1, 0xda5

    const-string v2, "ZTE|ZTE Kis Pro|nice|Optimus Zali"

    aput-object v2, v0, v1

    const/16 v1, 0xda6

    const-string v2, "ZTE|ZTE LEO M1|V883M|V883M"

    aput-object v2, v0, v1

    const/16 v1, 0xda7

    const-string v2, "ZTE|ZTE LEO S1|V972M|V972M"

    aput-object v2, v0, v1

    const/16 v1, 0xda8

    const-string v2, "ZTE|ZTE N799D|ZTE-N799D|N799D"

    aput-object v2, v0, v1

    const/16 v1, 0xda9

    const-string v2, "ZTE|ZTE N818|ZTE-N818|N818"

    aput-object v2, v0, v1

    const/16 v1, 0xdaa

    const-string v2, "ZTE|ZTE N919D|ZTE-N919D|N919D"

    aput-object v2, v0, v1

    const/16 v1, 0xdab

    const-string v2, "ZTE|ZTE N9835|chovar|N9835"

    aput-object v2, v0, v1

    const/16 v1, 0xdac

    const-string v2, "ZTE|ZTE N986|P188F02|N986"

    aput-object v2, v0, v1

    const/16 v1, 0xdad

    const-string v2, "ZTE|ZTE Q509T|P632T31|Amazing X5"

    aput-object v2, v0, v1

    const/16 v1, 0xdae

    const-string v2, "ZTE|ZTE Q509T|P632T31|ZTE Blade A450"

    aput-object v2, v0, v1

    const/16 v1, 0xdaf

    const-string v2, "ZTE|ZTE Q509T|P632T31|ZTE Blade V2 Lite"

    aput-object v2, v0, v1

    const/16 v1, 0xdb0

    const-string v2, "ZTE|ZTE S118|P189S10|Grand S Lite"

    aput-object v2, v0, v1

    const/16 v1, 0xdb1

    const-string v2, "ZTE|ZTE STAR|msm8226|ZTE GEEK II Pro 4G"

    aput-object v2, v0, v1

    const/16 v1, 0xdb2

    const-string v2, "ZTE|ZTE STAR|msm8226|ZTE S2002"

    aput-object v2, v0, v1

    const/16 v1, 0xdb3

    const-string v2, "ZTE|ZTE STAR|msm8226|ZTE Star 1"

    aput-object v2, v0, v1

    const/16 v1, 0xdb4

    const-string v2, "ZTE|ZTE Switch X1|deepblue|ZTE V796"

    aput-object v2, v0, v1

    const/16 v1, 0xdb5

    const-string v2, "ZTE|ZTE T28|bluetick|ZTE T28 Prepaid"

    aput-object v2, v0, v1

    const/16 v1, 0xdb6

    const-string v2, "ZTE|ZTE T86|msm8226|Amazing X1"

    aput-object v2, v0, v1

    const/16 v1, 0xdb7

    const-string v2, "ZTE|ZTE V5S|P189F13|ZTE Grand Memo lite"

    aput-object v2, v0, v1

    const/16 v1, 0xdb8

    const-string v2, "ZTE|ZTE V72|V72|MT7A"

    aput-object v2, v0, v1

    const/16 v1, 0xdb9

    const-string v2, "ZTE|ZTE V72|V72|myPad P4 Lite"

    aput-object v2, v0, v1

    const/16 v1, 0xdba

    const-string v2, "ZTE|ZTE V769M|V769M|V769M"

    aput-object v2, v0, v1

    const/16 v1, 0xdbb

    const-string v2, "ZTE|ZTE V769M|V769M|ZTE LEO Q2"

    aput-object v2, v0, v1

    const/16 v1, 0xdbc

    const-string v2, "ZTE|ZTE V791|P175A40|V791"

    aput-object v2, v0, v1

    const/16 v1, 0xdbd

    const-string v2, "ZTE|ZTE V793|P175A60|Amazing A3"

    aput-object v2, v0, v1

    const/16 v1, 0xdbe

    const-string v2, "ZTE|ZTE V793|P175A60|Cellcom 4G"

    aput-object v2, v0, v1

    const/16 v1, 0xdbf

    const-string v2, "ZTE|ZTE V793|P175A60|M9000"

    aput-object v2, v0, v1

    const/16 v1, 0xdc0

    const-string v2, "ZTE|ZTE V793|P175A60|Telcel T20"

    aput-object v2, v0, v1

    const/16 v1, 0xdc1

    const-string v2, "ZTE|ZTE V793|P175A60|ZTE KIS Flex"

    aput-object v2, v0, v1

    const/16 v1, 0xdc2

    const-string v2, "ZTE|ZTE V793|P175A60|tmn smart a6"

    aput-object v2, v0, v1

    const/16 v1, 0xdc3

    const-string v2, "ZTE|ZTE V795|P172D01|BGH Joy Smart A1"

    aput-object v2, v0, v1

    const/16 v1, 0xdc4

    const-string v2, "ZTE|ZTE V795|P172D01|V795(A3S)"

    aput-object v2, v0, v1

    const/16 v1, 0xdc5

    const-string v2, "ZTE|ZTE V795|P172D01|ZTE B795"

    aput-object v2, v0, v1

    const/16 v1, 0xdc6

    const-string v2, "ZTE|ZTE V795|P172D01|ZTE KIS II"

    aput-object v2, v0, v1

    const/16 v1, 0xdc7

    const-string v2, "ZTE|ZTE V795|P172D01|ZTE KIS II PRO"

    aput-object v2, v0, v1

    const/16 v1, 0xdc8

    const-string v2, "ZTE|ZTE V795|P172D01|ZTE Kis II"

    aput-object v2, v0, v1

    const/16 v1, 0xdc9

    const-string v2, "ZTE|ZTE V797|P172D03|VIETTEL V8411"

    aput-object v2, v0, v1

    const/16 v1, 0xdca

    const-string v2, "ZTE|ZTE V807|P177E01|Amazing A4"

    aput-object v2, v0, v1

    const/16 v1, 0xdcb

    const-string v2, "ZTE|ZTE V807|P177E01|Beeline E700"

    aput-object v2, v0, v1

    const/16 v1, 0xdcc

    const-string v2, "ZTE|ZTE V807|P177E01|Leopard MF900"

    aput-object v2, v0, v1

    const/16 v1, 0xdcd

    const-string v2, "ZTE|ZTE V807|P177E01|UZTE V807"

    aput-object v2, v0, v1

    const/16 v1, 0xdce

    const-string v2, "ZTE|ZTE V807|P177E01|V8501"

    aput-object v2, v0, v1

    const/16 v1, 0xdcf

    const-string v2, "ZTE|ZTE V807|P177E01|ZTE BLADE C"

    aput-object v2, v0, v1

    const/16 v1, 0xdd0

    const-string v2, "ZTE|ZTE V807|P177E01|ZTE V889S"

    aput-object v2, v0, v1

    const/16 v1, 0xdd1

    const-string v2, "ZTE|ZTE V808|P172E01|UZTE V808"

    aput-object v2, v0, v1

    const/16 v1, 0xdd2

    const-string v2, "ZTE|ZTE V809|P172A10|BGH Joy Smart A2"

    aput-object v2, v0, v1

    const/16 v1, 0xdd3

    const-string v2, "ZTE|ZTE V809|P172A10|ZTE Blade C2"

    aput-object v2, v0, v1

    const/16 v1, 0xdd4

    const-string v2, "ZTE|ZTE V809|P172A10|ZTE T809"

    aput-object v2, v0, v1

    const/16 v1, 0xdd5

    const-string v2, "ZTE|ZTE V809|P172A10|meo smart a12"

    aput-object v2, v0, v1

    const/16 v1, 0xdd6

    const-string v2, "ZTE|ZTE V811|ZTE-V811|Beeline Smart2"

    aput-object v2, v0, v1

    const/16 v1, 0xdd7

    const-string v2, "ZTE|ZTE V811W|P821E10|ZTE V811"

    aput-object v2, v0, v1

    const/16 v1, 0xdd8

    const-string v2, "ZTE|ZTE V813W|P172B20|ZTE Blade C2 Plus"

    aput-object v2, v0, v1

    const/16 v1, 0xdd9

    const-string v2, "ZTE|ZTE V815W|P172R10|Amazing A4S"

    aput-object v2, v0, v1

    const/16 v1, 0xdda

    const-string v2, "ZTE|ZTE V815W|P172R10|B8405"

    aput-object v2, v0, v1

    const/16 v1, 0xddb

    const-string v2, "ZTE|ZTE V815W|P172R10|BGH Joy Smart A5d"

    aput-object v2, v0, v1

    const/16 v1, 0xddc

    const-string v2, "ZTE|ZTE V815W|P172R10|KIS II Max"

    aput-object v2, v0, v1

    const/16 v1, 0xddd

    const-string v2, "ZTE|ZTE V815W|P172R10|SMART Start"

    aput-object v2, v0, v1

    const/16 v1, 0xdde

    const-string v2, "ZTE|ZTE V815W|P172R10|UZTE GRAND V7"

    aput-object v2, v0, v1

    const/16 v1, 0xddf

    const-string v2, "ZTE|ZTE V815W|P172R10|ZTE Blade Buzz"

    aput-object v2, v0, v1

    const/16 v1, 0xde0

    const-string v2, "ZTE|ZTE V815W|P172R10|ZTE Blade Q1"

    aput-object v2, v0, v1

    const/16 v1, 0xde1

    const-string v2, "ZTE|ZTE V815W|P172R10|ZTE Kis II Max"

    aput-object v2, v0, v1

    const/16 v1, 0xde2

    const-string v2, "ZTE|ZTE V815W|P172R10|ZTE Maxx"

    aput-object v2, v0, v1

    const/16 v1, 0xde3

    const-string v2, "ZTE|ZTE V815W|P172R10|ZTE T815"

    aput-object v2, v0, v1

    const/16 v1, 0xde4

    const-string v2, "ZTE|ZTE V815W|P172R10|ZTE V816W"

    aput-object v2, v0, v1

    const/16 v1, 0xde5

    const-string v2, "ZTE|ZTE V817|ZTE-V817|V817"

    aput-object v2, v0, v1

    const/16 v1, 0xde6

    const-string v2, "ZTE|ZTE V818|P172F01|ZTE Blade 2"

    aput-object v2, v0, v1

    const/16 v1, 0xde7

    const-string v2, "ZTE|ZTE V829|P172A30|BGH Joy Smart A3"

    aput-object v2, v0, v1

    const/16 v1, 0xde8

    const-string v2, "ZTE|ZTE V829|P172A30|Blade G Pro"

    aput-object v2, v0, v1

    const/16 v1, 0xde9

    const-string v2, "ZTE|ZTE V829|P172A30|V8507"

    aput-object v2, v0, v1

    const/16 v1, 0xdea

    const-string v2, "ZTE|ZTE V829|P172A30|ZTE Blade G Plus"

    aput-object v2, v0, v1

    const/16 v1, 0xdeb

    const-string v2, "ZTE|ZTE V829|P172A30|ZTE Blade G Pro"

    aput-object v2, v0, v1

    const/16 v1, 0xdec

    const-string v2, "ZTE|ZTE V887|P177A10|ZTE Blade L"

    aput-object v2, v0, v1

    const/16 v1, 0xded

    const-string v2, "ZTE|ZTE V887|P177A10|tmn smart a20"

    aput-object v2, v0, v1

    const/16 v1, 0xdee

    const-string v2, "ZTE|ZTE V889M|P175A10|UZTE V889M"

    aput-object v2, v0, v1

    const/16 v1, 0xdef

    const-string v2, "ZTE|ZTE V965|P188F03|ZTE Blade G2"

    aput-object v2, v0, v1

    const/16 v1, 0xdf0    # 5.0E-42f

    const-string v2, "ZTE|ZTE V965|P188F03|ZTE R880H"

    aput-object v2, v0, v1

    const/16 v1, 0xdf1

    const-string v2, "ZTE|ZTE V965|P188F03|ZTE V880H"

    aput-object v2, v0, v1

    const/16 v1, 0xdf2

    const-string v2, "ZTE|ZTE V970|whistler|UZTE V970"

    aput-object v2, v0, v1

    const/16 v1, 0xdf3

    const-string v2, "ZTE|ZTE V975|redhookbay|V975"

    aput-object v2, v0, v1

    const/16 v1, 0xdf4

    const-string v2, "ZTE|ZTE V975|redhookbay|ZTE Geek"

    aput-object v2, v0, v1

    const/16 v1, 0xdf5

    const-string v2, "ZTE|ZTE V987|P188F04|UZTE GRAND X Quad"

    aput-object v2, v0, v1

    const/16 v1, 0xdf6

    const-string v2, "ZTE|ZTE V987|P188F04|ZTE Grand X"

    aput-object v2, v0, v1

    const/16 v1, 0xdf7

    const-string v2, "ZTE|ZTE Z932L|warplte|Z932L"

    aput-object v2, v0, v1

    const/16 v1, 0xdf8

    const-string v2, "ZTE|ZTE-U V760|ztenj73_gb|MD Smart"

    aput-object v2, v0, v1

    const/16 v1, 0xdf9

    const-string v2, "ZTE|ZTE-U V760|ztenj73_gb|Telenor Touch Mini"

    aput-object v2, v0, v1

    const/16 v1, 0xdfa

    const-string v2, "ZTE|ZTE-U V760|ztenj73_gb|ZTE-U V856"

    aput-object v2, v0, v1

    const/16 v1, 0xdfb

    const-string v2, "ZTE|ZTE-U V760|ztenj73_gb|ZTE-U V857"

    aput-object v2, v0, v1

    const/16 v1, 0xdfc

    const-string v2, "ZTE|ZTE-U V760|ztenj73_gb|moii E598"

    aput-object v2, v0, v1

    const/16 v1, 0xdfd

    const-string v2, "ZTE|ZTE-V6500|V6500|Etisalat Smartphone"

    aput-object v2, v0, v1

    const/16 v1, 0xdfe

    const-string v2, "ZTE|ZTE_LEO_Q1|hct72_wet_jb3|V765M"

    aput-object v2, v0, v1

    const/16 v1, 0xdff

    const-string v2, "ZTE|ZTE_LEO_Q1|hct72_wet_jb3|ZTE LEO Q1"

    aput-object v2, v0, v1

    const/16 v1, 0xe00

    const-string v2, "ZTE|ZTE_LEO_Q1|hct72_wet_jb3|ZTE V765M"

    aput-object v2, v0, v1

    const/16 v1, 0xe01

    const-string v2, "ZTE|ZTE_LEO_Q1|hct72_wet_jb3|ZTE_CLARO_Q1"

    aput-object v2, v0, v1

    const/16 v1, 0xe02

    const-string v2, "ZTE|ZTE_LEO_Q1|hct72_wet_jb3|mobifone M9001"

    aput-object v2, v0, v1

    const/16 v1, 0xe03

    const-string v2, "ZTE|ZTE_Q701C|ZTE-Q701C|ZTE Q701C"

    aput-object v2, v0, v1

    const/16 v1, 0xe04

    const-string v2, "ZTE|ZTE_Q801C|ZTE-Q801C|ZTE Q801C"

    aput-object v2, v0, v1

    const/16 v1, 0xe05

    const-string v2, "ZTE|ZTE_Q801L|ZTE-Q801L|ZTE Q801L"

    aput-object v2, v0, v1

    const/16 v1, 0xe06

    const-string v2, "ZTE|ZXY-ZTE_V6700|V6700|ZTE V6700"

    aput-object v2, v0, v1

    const/16 v1, 0xe07

    const-string v2, "ZTE|myPad P5|K78|Amazing_P5"

    aput-object v2, v0, v1

    .line 52
    sput-object v0, Lcom/texa/careapp/utils/Devices;->SUPPORTED_DEVICES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 545
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 548
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 551
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v0, :cond_3

    aget-char v6, p0, v4

    if-eqz v5, :cond_1

    .line 552
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 553
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    goto :goto_1

    .line 556
    :cond_1
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v5, 0x1

    .line 559
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 8

    .line 497
    sget-object v0, Lcom/texa/careapp/utils/Devices;->sDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 500
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    sget-object v1, Lcom/texa/careapp/utils/Devices;->SUPPORTED_DEVICES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, " "

    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    .line 502
    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v0, "\\|"

    .line 503
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 504
    aget-object v1, v0, v3

    const/4 v2, 0x1

    .line 505
    aget-object v0, v0, v2

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 507
    sput-object v0, Lcom/texa/careapp/utils/Devices;->sDeviceName:Ljava/lang/String;

    goto :goto_1

    .line 509
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/utils/Devices;->sDeviceName:Ljava/lang/String;

    .line 511
    :goto_1
    sget-object v0, Lcom/texa/careapp/utils/Devices;->sDeviceName:Ljava/lang/String;

    return-object v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 514
    :cond_3
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 515
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 516
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 517
    invoke-static {v1}, Lcom/texa/careapp/utils/Devices;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/utils/Devices;->sDeviceName:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v2, "HTC"

    .line 518
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/utils/Devices;->sDeviceName:Ljava/lang/String;

    goto :goto_2

    .line 521
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/texa/careapp/utils/Devices;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/texa/careapp/utils/Devices;->sDeviceName:Ljava/lang/String;

    .line 523
    :goto_2
    sget-object v0, Lcom/texa/careapp/utils/Devices;->sDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 529
    sget-object v0, Lcom/texa/careapp/utils/Devices;->SUPPORTED_DEVICES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 530
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string p0, "\\|"

    .line 531
    invoke-virtual {v4, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 532
    aget-object v0, p0, v2

    const/4 v1, 0x1

    .line 533
    aget-object p0, p0, v1

    .line 534
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 535
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "moto "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 538
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_1
    return-object p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
