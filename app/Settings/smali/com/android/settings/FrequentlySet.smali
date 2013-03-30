.class public Lcom/android/settings/FrequentlySet;
.super Ljava/lang/Object;
.source "FrequentlySet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/FrequentlySet$HeaderItem;
    }
.end annotation


# static fields
.field private static sAllHeaderItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/FrequentlySet$HeaderItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sHeaderId2Index:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sKey2Index:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchHeaderItemIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSearchKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/FrequentlySet;->sKey2Index:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/FrequentlySet;->sHeaderId2Index:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/FrequentlySet;->sSearchKeys:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/FrequentlySet;->sSearchHeaderItemIndex:Ljava/util/ArrayList;

    .line 31
    const-string v0, "airplane_mode_settings"

    const v1, 0x7f060008

    const v2, 0x7f090246

    const v3, 0x7f0c00ec

    const v4, 0x7f0c0706

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 32
    const-string v0, "mobile_network_settings"

    const v1, 0x7f060033

    const v2, 0x7f090251

    const v3, 0x7f0c0357

    const v4, 0x7f0c0707

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 33
    const-string v0, "wifi_settings"

    const v1, 0x7f06006a

    const v2, 0x7f090256

    const v3, 0x7f0c01b9

    const v4, 0x7f0c0708

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 34
    const-string v0, "bluetooth_settings"

    const v1, 0x7f060012

    const v2, 0x7f090249

    const v3, 0x7f0c0165

    const v4, 0x7f0c0709

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 35
    const-string v0, "android_beam_settings"

    const v1, 0x7f060009

    const v2, 0x7f090247

    const v3, 0x7f0c01ad

    const v4, 0x7f0c070a

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 36
    const-string v0, "vpn_settings"

    const v1, 0x7f060062

    const v2, 0x7f09026d

    const v3, 0x7f0c0522

    const v4, 0x7f0c070b

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 37
    const-string v0, "tether_settings"

    const v1, 0x7f060059

    const v2, 0x7f09026b

    const v3, 0x7f0c0346

    const v4, 0x7f0c070c

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 38
    const-string v0, "brightness"

    const v1, 0x7f060014

    const v2, 0x7f09024a

    const v3, 0x7f0c028a

    const v4, 0x7f0c070d

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 39
    const-string v0, "wallpaper"

    const v1, 0x7f060064

    const v2, 0x7f09026e

    const v3, 0x7f0c028e

    const v4, 0x7f0c070e

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 40
    const-string v0, "launcher_settings"

    const v1, 0x7f06002d

    const v2, 0x7f09024f

    const v3, 0x7f0c0746

    const v4, 0x7f0c070f

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 41
    const-string v0, "accelerometer"

    const v1, 0x7f060001

    const v2, 0x7f090244

    const v3, 0x7f0c0287

    const v4, 0x7f0c0710

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 42
    const-string v0, "screen_timeout"

    const v1, 0x7f06003e

    const v2, 0x7f090255

    const v3, 0x7f0c0747

    const v4, 0x7f0c0711

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 43
    const-string v0, "ring_volume"

    const v1, 0x7f06003a

    const v2, 0x7f090253

    const v3, 0x7f0c025d

    const v4, 0x7f0c0712

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 44
    const-string v0, "ringtone"

    const v1, 0x7f06003b

    const v2, 0x7f090254

    const v3, 0x7f0c0259

    const v4, 0x7f0c0713

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 45
    const-string v0, "sms_received_sound"

    const v1, 0x7f060050

    const v2, 0x7f090269

    const v3, 0x7f0c0730

    const v4, 0x7f0c0714

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 46
    const-string v0, "unlock_set_or_change"

    const v1, 0x7f06005e

    const v2, 0x7f09026c

    const v3, 0x7f0c012e

    const v4, 0x7f0c0716

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 47
    const-string v0, "access_control_settings"

    const v1, 0x7f060003

    const v2, 0x7f090245

    const v3, 0x7f0c0735

    const v4, 0x7f0c0717

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 48
    const-string v0, "location_gps"

    const v1, 0x7f060026

    const v2, 0x7f09024c

    const v3, 0x7f0c035c

    const v4, 0x7f0c0718

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 49
    const-string v0, "status_bar_settings"

    const v1, 0x7f060054

    const v2, 0x7f09025c

    const v3, 0x7f0c076f

    const v4, 0x7f0c0719

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 50
    const-string v0, "sync_settings"

    const v1, 0x7f060055

    const v2, 0x7f09026a

    const v3, 0x7f0c072f

    const v4, 0x7f0c071a

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 51
    const-string v0, "battery_indicator_style"

    const v1, 0x7f06000f

    const v2, 0x7f090248

    const v3, 0x7f0c0774

    const v4, 0x7f0c071b

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 52
    const-string v0, "key_settings"

    const v1, 0x7f060029

    const v2, 0x7f09024d

    const v3, 0x7f0c074f

    const v4, 0x7f0c071c

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 53
    const-string v0, "led_settings"

    const v1, 0x7f06002e

    const v2, 0x7f090250

    const v3, 0x7f0c078c

    const v4, 0x7f0c071d

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 54
    const-string v0, "date_time_settings"

    const v1, 0x7f060016

    const v2, 0x7f09024b

    const v3, 0x7f0c00f9

    const v4, 0x7f0c071e

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 55
    const-string v0, "language_settings"

    const v1, 0x7f06002b

    const v2, 0x7f09024e

    const v3, 0x7f0c0421

    const v4, 0x7f0c071f

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 56
    const-string v0, "about_settings"

    const/high16 v1, 0x7f06

    const v2, 0x7f090243

    const v3, 0x7f0c0363

    const v4, 0x7f0c0284

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIII)V

    .line 57
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "power_mode"

    const v1, 0x7f060036

    const v2, 0x7f090252

    const v3, 0x7f0c0847

    const v4, 0x7f0c0721

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 60
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method private static addHeaderItem(Ljava/lang/String;IIII)V
    .locals 6
    .parameter "key"
    .parameter "headerFileId"
    .parameter "headerId"
    .parameter "showStringId"
    .parameter "searchKeyId"

    .prologue
    .line 63
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/FrequentlySet;->addHeaderItem(Ljava/lang/String;IIIIZ)V

    .line 64
    return-void
.end method

.method private static addHeaderItem(Ljava/lang/String;IIIIZ)V
    .locals 9
    .parameter "key"
    .parameter "headerFileId"
    .parameter "headerId"
    .parameter "showStringId"
    .parameter "searchKeyId"
    .parameter "isDefault"

    .prologue
    .line 67
    sget-object v0, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 68
    .local v7, index:I
    sget-object v0, Lcom/android/settings/FrequentlySet;->sKey2Index:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/settings/FrequentlySet;->sHeaderId2Index:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v8, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/FrequentlySet$HeaderItem;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/FrequentlySet$HeaderItem;-><init>(Ljava/lang/String;IIIIZ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-static {p4}, Lcom/android/settings/FrequentlySet;->filterSearchKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lcom/android/settings/FrequentlySet;->sSearchKeys:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/settings/FrequentlySet;->sSearchHeaderItemIndex:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    return-void
.end method

.method private static filterSearchKey(I)Z
    .locals 2
    .parameter "searchKeyId"

    .prologue
    const/4 v0, 0x0

    .line 79
    const v1, 0x7f0c070a

    if-ne v1, p0, :cond_0

    .line 80
    invoke-static {}, Lcom/android/settings/FrequentlySet;->hasNfcFeature()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 83
    :cond_0
    return v0
.end method

.method public static getDefaultKeys()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, defaultKeyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/FrequentlySet$HeaderItem;

    .line 119
    .local v1, headerItem:Lcom/android/settings/FrequentlySet$HeaderItem;
    iget-boolean v3, v1, Lcom/android/settings/FrequentlySet$HeaderItem;->isDefaultKey:Z

    if-eqz v3, :cond_0

    .line 120
    iget-object v3, v1, Lcom/android/settings/FrequentlySet$HeaderItem;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    .end local v1           #headerItem:Lcom/android/settings/FrequentlySet$HeaderItem;
    :cond_1
    return-object v0
.end method

.method public static getHeaderIds()[I
    .locals 4

    .prologue
    .line 144
    sget-object v3, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 145
    .local v2, size:I
    new-array v0, v2, [I

    .line 146
    .local v0, headerFileIds:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 147
    sget-object v3, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/FrequentlySet$HeaderItem;

    iget v3, v3, Lcom/android/settings/FrequentlySet$HeaderItem;->headerFileId:I

    aput v3, v0, v1

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_0
    return-object v0
.end method

.method public static getHeaderIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 99
    sget-object v1, Lcom/android/settings/FrequentlySet;->sKey2Index:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 100
    .local v0, index:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getKey(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, key:Ljava/lang/String;
    sget-object v1, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 106
    sget-object v1, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/FrequentlySet$HeaderItem;

    iget-object v0, v1, Lcom/android/settings/FrequentlySet$HeaderItem;->key:Ljava/lang/String;

    .line 108
    :cond_0
    return-object v0
.end method

.method public static getKeyIndex(I)I
    .locals 3
    .parameter "headerId"

    .prologue
    .line 112
    sget-object v1, Lcom/android/settings/FrequentlySet;->sHeaderId2Index:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 113
    .local v0, index:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getSearchKeys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    sget-object v0, Lcom/android/settings/FrequentlySet;->sSearchKeys:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getShowIndex(I)I
    .locals 2
    .parameter "index"

    .prologue
    const/4 v0, -0x1

    .line 131
    if-le p0, v0, :cond_0

    sget-object v1, Lcom/android/settings/FrequentlySet;->sSearchHeaderItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 132
    sget-object v0, Lcom/android/settings/FrequentlySet;->sSearchHeaderItemIndex:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 134
    :cond_0
    return v0
.end method

.method public static getShowStringId(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 138
    invoke-static {p0}, Lcom/android/settings/FrequentlySet;->getShowIndex(I)I

    move-result v0

    .line 139
    .local v0, i:I
    sget-object v2, Lcom/android/settings/FrequentlySet;->sHeaderId2Index:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    .line 140
    .local v1, size:I
    if-ge v0, v1, :cond_0

    sget-object v2, Lcom/android/settings/FrequentlySet;->sAllHeaderItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/FrequentlySet$HeaderItem;

    iget v2, v2, Lcom/android/settings/FrequentlySet$HeaderItem;->showId:I

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private static hasNfcFeature()Z
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 89
    .local v1, pm:Landroid/content/pm/IPackageManager;
    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "android.hardware.nfc"

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    const/4 v2, 0x1

    .line 95
    :goto_0
    return v2

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 95
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
