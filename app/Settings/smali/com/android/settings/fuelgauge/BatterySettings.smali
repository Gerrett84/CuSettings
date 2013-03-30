.class public Lcom/android/settings/fuelgauge/BatterySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BatterySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mIndicatorStyle:Landroid/preference/ListPreference;

.field private mPowerMode:Landroid/preference/ListPreference;

.field private mPowerModeObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 32
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatterySettings$1;-><init>(Lcom/android/settings/fuelgauge/BatterySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mPowerModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/BatterySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySettings;->onPowerModeChanged()V

    return-void
.end method

.method private onPowerModeChanged()V
    .locals 3

    .prologue
    .line 40
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mPowerMode:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 41
    const-string v1, "persist.sys.aries.power_profile"

    const-string v2, "middle"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, powerMode:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mPowerMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mPowerMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mPowerMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 46
    .end local v0           #powerMode:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySettings;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mResolver:Landroid/content/ContentResolver;

    .line 53
    const-string v0, "battery_indicator_style"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mIndicatorStyle:Landroid/preference/ListPreference;

    .line 54
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mIndicatorStyle:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    const-string v0, "power_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mPowerMode:Landroid/preference/ListPreference;

    .line 56
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mPowerMode:Landroid/preference/ListPreference;

    sget-object v1, Lmiui/provider/ExtraSettings$System;->POWER_MODE_VALUES:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mPowerMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mPowerMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mPowerMode:Landroid/preference/ListPreference;

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 82
    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 85
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 86
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, key:Ljava/lang/String;
    const-string v3, "battery_indicator_style"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 94
    .local v2, value:I
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "battery_indicator_style"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mIndicatorStyle:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mIndicatorStyle:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v2           #value:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 99
    .restart local p2
    :cond_1
    const-string v3, "power_mode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 100
    check-cast v1, Ljava/lang/String;

    .line 101
    .local v1, powerMode:Ljava/lang/String;
    const-string v3, "persist.sys.aries.power_profile"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "power_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 97
    .end local v1           #powerMode:Ljava/lang/String;
    .end local p2
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 72
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "battery_indicator_style"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 74
    .local v0, style:I
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mIndicatorStyle:Landroid/preference/ListPreference;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 75
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mIndicatorStyle:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySettings;->mIndicatorStyle:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatterySettings;->onPowerModeChanged()V

    .line 78
    return-void
.end method
