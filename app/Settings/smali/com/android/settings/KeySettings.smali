.class public Lcom/android/settings/KeySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KeySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

.field private mBackLongPressTimeout:Landroid/preference/ListPreference;

.field private mButtonLight:Landroid/preference/CheckBoxPreference;

.field private mButtonLightTimout:Landroid/preference/ListPreference;

.field private mCameraKeyAction:Landroid/preference/Preference;

.field private mMenuLongPressEnable:Landroid/preference/CheckBoxPreference;

.field private mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

.field private mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

.field private mSnapshotScreenLockEnable:Landroid/preference/CheckBoxPreference;

.field private mTrackballWake:Landroid/preference/CheckBoxPreference;

.field private mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateState(Z)V
    .locals 10
    .parameter "force"

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 141
    iget-object v4, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    .line 142
    iget-object v7, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "trackball_wake_screen"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 146
    :cond_0
    iget-object v4, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    .line 147
    const-string v4, "persist.sys.multitouch"

    invoke-static {v4, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_8

    .line 148
    iget-object v4, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 154
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "back_key_long_press_timeout"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 159
    .local v3, timeout:I
    if-lez v3, :cond_9

    move v1, v5

    .line 160
    .local v1, backLongPressEnable:Z
    :goto_2
    iget-object v4, p0, Lcom/android/settings/KeySettings;->mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 161
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/settings/KeySettings;->mBackLongPressTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    iget-object v4, p0, Lcom/android/settings/KeySettings;->mBackLongPressTimeout:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 164
    :cond_2
    iget-object v4, p0, Lcom/android/settings/KeySettings;->mBackLongPressTimeout:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/KeySettings;->mBackLongPressTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v4, p0, Lcom/android/settings/KeySettings;->mSnapshotScreenLockEnable:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_3

    .line 167
    iget-object v7, p0, Lcom/android/settings/KeySettings;->mSnapshotScreenLockEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "enable_snapshot_screenlock"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_a

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 172
    :cond_3
    iget-object v4, p0, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    if-eqz v4, :cond_4

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "screen_buttons_timeout"

    const/16 v8, 0x1388

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 177
    iget-object v4, p0, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 178
    iget-object v4, p0, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 181
    :cond_4
    iget-object v7, p0, Lcom/android/settings/KeySettings;->mMenuLongPressEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "enable_assist_menu_key_long_press"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_b

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 186
    iget-object v7, p0, Lcom/android/settings/KeySettings;->mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "keyguard_disable_power_key_long_press"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_c

    move v4, v5

    :goto_5
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 191
    iget-object v4, p0, Lcom/android/settings/KeySettings;->mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_5

    .line 192
    iget-object v7, p0, Lcom/android/settings/KeySettings;->mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "volumekey_wake_screen"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_d

    move v4, v5

    :goto_6
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 196
    :cond_5
    iget-object v4, p0, Lcom/android/settings/KeySettings;->mButtonLight:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_6

    .line 197
    iget-object v4, p0, Lcom/android/settings/KeySettings;->mButtonLight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_buttons_turn_on"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_e

    :goto_7
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 201
    :cond_6
    iget-object v4, p0, Lcom/android/settings/KeySettings;->mCameraKeyAction:Landroid/preference/Preference;

    if-nez v4, :cond_f

    .line 227
    :goto_8
    return-void

    .end local v1           #backLongPressEnable:Z
    .end local v3           #timeout:I
    :cond_7
    move v4, v6

    .line 142
    goto/16 :goto_0

    .line 150
    :cond_8
    iget-object v4, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .restart local v3       #timeout:I
    :cond_9
    move v1, v6

    .line 159
    goto/16 :goto_2

    .restart local v1       #backLongPressEnable:Z
    :cond_a
    move v4, v6

    .line 167
    goto/16 :goto_3

    :cond_b
    move v4, v6

    .line 181
    goto :goto_4

    :cond_c
    move v4, v6

    .line 186
    goto :goto_5

    :cond_d
    move v4, v6

    .line 192
    goto :goto_6

    :cond_e
    move v5, v6

    .line 197
    goto :goto_7

    .line 205
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "camera_key_preferred_action_type"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 208
    .local v0, actionType:I
    const v2, 0x7f0c0760

    .line 209
    .local v2, lableId:I
    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_9
    iget-object v4, p0, Lcom/android/settings/KeySettings;->mCameraKeyAction:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_8

    .line 211
    :pswitch_0
    const v2, 0x7f0c075f

    .line 212
    goto :goto_9

    .line 215
    :pswitch_1
    const v2, 0x7f0c0760

    .line 216
    goto :goto_9

    .line 219
    :pswitch_2
    const v2, 0x7f0c0761

    .line 220
    goto :goto_9

    .line 223
    :pswitch_3
    const v2, 0x7f0c0762

    goto :goto_9

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v5, 0x7f06002a

    invoke-virtual {p0, v5}, Lcom/android/settings/KeySettings;->addPreferencesFromResource(I)V

    .line 71
    const-string v5, "enable_assist_menu_long_press"

    invoke-virtual {p0, v5}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/KeySettings;->mMenuLongPressEnable:Landroid/preference/CheckBoxPreference;

    .line 72
    const-string v5, "enable_back_long_press"

    invoke-virtual {p0, v5}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/KeySettings;->mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

    .line 73
    const-string v5, "enable_snapshot_screenlock"

    invoke-virtual {p0, v5}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/KeySettings;->mSnapshotScreenLockEnable:Landroid/preference/CheckBoxPreference;

    .line 74
    const-string v5, "disable_power_long_press"

    invoke-virtual {p0, v5}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/KeySettings;->mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

    .line 75
    const-string v5, "back_long_press_timeout"

    invoke-virtual {p0, v5}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/KeySettings;->mBackLongPressTimeout:Landroid/preference/ListPreference;

    .line 76
    iget-object v5, p0, Lcom/android/settings/KeySettings;->mBackLongPressTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    sget-boolean v5, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "pref_volume_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 83
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "multi_touch_points_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 89
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v5, "trackball_category"

    invoke-virtual {p0, v5}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 96
    :goto_2
    sget-boolean v5, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "camera_key_action_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    :goto_3
    sget-boolean v5, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "pref_button_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 110
    :goto_4
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/KeySettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 113
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/KeySettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v5}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v4

    .line 114
    .local v4, showNav:Z
    if-nez v4, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "screen_button_category"

    invoke-virtual {p0, v6}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v4           #showNav:Z
    :cond_0
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 122
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.ASSIST"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    const/high16 v5, 0x1

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 126
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 127
    const-string v5, "menu_key_category"

    invoke-virtual {p0, v5}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 128
    .local v2, p:Landroid/preference/Preference;
    if-eqz v2, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 132
    .end local v2           #p:Landroid/preference/Preference;
    :cond_1
    return-void

    .line 81
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    const-string v5, "pref_volume_wake"

    invoke-virtual {p0, v5}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/KeySettings;->mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_0

    .line 86
    :cond_3
    const-string v5, "enable_multi_touch_points"

    invoke-virtual {p0, v5}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_1

    .line 92
    :cond_4
    const-string v5, "trackball_wake"

    invoke-virtual {p0, v5}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    .line 93
    iget-object v5, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    goto/16 :goto_2

    .line 99
    :cond_5
    const-string v5, "camera_key_action"

    invoke-virtual {p0, v5}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/KeySettings;->mCameraKeyAction:Landroid/preference/Preference;

    goto/16 :goto_3

    .line 105
    :cond_6
    const-string v5, "pref_button_light"

    invoke-virtual {p0, v5}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/KeySettings;->mButtonLight:Landroid/preference/CheckBoxPreference;

    .line 106
    const-string v5, "button_light_timeout"

    invoke-virtual {p0, v5}, Lcom/android/settings/KeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    .line 107
    iget-object v5, p0, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_4

    .line 117
    :catch_0
    move-exception v5

    goto :goto_5
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/settings/KeySettings;->mBackLongPressTimeout:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    move-object v0, p2

    .line 288
    check-cast v0, Ljava/lang/String;

    .line 289
    .local v0, timeout:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/KeySettings;->mBackLongPressTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/android/settings/KeySettings;->mBackLongPressTimeout:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/KeySettings;->mBackLongPressTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "back_key_long_press_timeout"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    .end local v0           #timeout:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 296
    check-cast v0, Ljava/lang/String;

    .line 297
    .restart local v0       #timeout:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/KeySettings;->mButtonLightTimout:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_buttons_timeout"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 233
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mBackLongPressEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 235
    .local v0, isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "back_key_long_press_timeout"

    if-eqz v0, :cond_1

    :goto_0
    mul-int/lit16 v1, v1, 0x5dc

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 282
    .end local v0           #isChecked:Z
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .restart local v0       #isChecked:Z
    :cond_1
    move v1, v2

    .line 235
    goto :goto_0

    .line 239
    .end local v0           #isChecked:Z
    :cond_2
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mSnapshotScreenLockEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_4

    .line 240
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mSnapshotScreenLockEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 241
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_snapshot_screenlock"

    if-eqz v0, :cond_3

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    .line 245
    .end local v0           #isChecked:Z
    :cond_4
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mMenuLongPressEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_6

    .line 246
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mMenuLongPressEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 247
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_assist_menu_key_long_press"

    if-eqz v0, :cond_5

    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_3

    .line 251
    .end local v0           #isChecked:Z
    :cond_6
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_8

    .line 252
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mPowerLongPressEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 253
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "keyguard_disable_power_key_long_press"

    if-eqz v0, :cond_7

    :goto_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_4

    .line 257
    .end local v0           #isChecked:Z
    :cond_8
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_a

    .line 258
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mTrackballWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 259
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "trackball_wake_screen"

    if-eqz v0, :cond_9

    :goto_5
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    move v1, v2

    goto :goto_5

    .line 263
    .end local v0           #isChecked:Z
    :cond_a
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_c

    .line 264
    iget-object v1, p0, Lcom/android/settings/KeySettings;->mMultiTouchPonitsEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 265
    .restart local v0       #isChecked:Z
    if-eqz v0, :cond_b

    .line 266
    const-string v1, "persist.sys.multitouch"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 269
    :cond_b
    const-string v1, "persist.sys.multitouch"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 272
    .end local v0           #isChecked:Z
    :cond_c
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_e

    .line 273
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mVolumeKeyWakeEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 274
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volumekey_wake_screen"

    if-eqz v0, :cond_d

    :goto_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_d
    move v1, v2

    goto :goto_6

    .line 276
    .end local v0           #isChecked:Z
    :cond_e
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mButtonLight:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    .line 277
    iget-object v3, p0, Lcom/android/settings/KeySettings;->mButtonLight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 278
    .restart local v0       #isChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/KeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_buttons_turn_on"

    if-eqz v0, :cond_f

    :goto_7
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_f
    move v1, v2

    goto :goto_7
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/KeySettings;->updateState(Z)V

    .line 138
    return-void
.end method
