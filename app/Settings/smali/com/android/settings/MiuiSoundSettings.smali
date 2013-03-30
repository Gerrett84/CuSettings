.class public Lcom/android/settings/MiuiSoundSettings;
.super Lcom/android/settings/SoundSettings;
.source "MiuiSoundSettings.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mContentHandler:Landroid/os/Handler;

.field private final mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSilentOrVibrate:Landroid/preference/CheckBoxPreference;

.field private mSmsDeliveredSoundPreference:Lcom/android/settings/SmsRingtonePreference;

.field private mSmsReceivedSoundPreference:Lcom/android/settings/SmsRingtonePreference;

.field private mVibrateInNormal:Landroid/preference/CheckBoxPreference;

.field private mVibrateInSilent:Landroid/preference/CheckBoxPreference;

.field private final mVibrateSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;-><init>()V

    .line 167
    new-instance v0, Lcom/android/settings/MiuiSoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSoundSettings$1;-><init>(Lcom/android/settings/MiuiSoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 176
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mContentHandler:Landroid/os/Handler;

    .line 177
    new-instance v0, Lcom/android/settings/MiuiSoundSettings$2;

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mContentHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MiuiSoundSettings$2;-><init>(Lcom/android/settings/MiuiSoundSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getHapticFeedbackLevelValue()I
    .locals 4

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_level"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 140
    .local v0, level:I
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private setHapticFeedbackLevelValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_level"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method


# virtual methods
.method protected handleOthersSummery(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsReceivedSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings/SmsRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsDeliveredSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/settings/SmsRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SoundSettings;->onCreate(Landroid/os/Bundle;)V

    .line 71
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->getHapticFeedbackLevelValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 74
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 77
    :cond_0
    const-string v1, "sms_received_sound"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SmsRingtonePreference;

    iput-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsReceivedSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    .line 78
    const-string v1, "sms_delivered_sound"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SmsRingtonePreference;

    iput-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsDeliveredSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    .line 80
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 81
    const-string v1, "miui_silent_or_vibrate"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mSilentOrVibrate:Landroid/preference/CheckBoxPreference;

    .line 82
    const-string v1, "miui_vibrate_in_silent_key"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateInSilent:Landroid/preference/CheckBoxPreference;

    .line 83
    const-string v1, "miui_vibrate_in_normal_key"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateInNormal:Landroid/preference/CheckBoxPreference;

    .line 84
    sget-boolean v1, Lmiui/os/Build;->IS_MITWO:Z

    if-nez v1, :cond_1

    .line 85
    const-string v1, "dolby_control"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiSoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 86
    .local v0, preference:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    .end local v0           #preference:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    invoke-super {p0}, Lcom/android/settings/SoundSettings;->onPause()V

    .line 112
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lcom/android/settings/SoundSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mHapticFeedbackLevel:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 148
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->setHapticFeedbackLevelValue(I)V

    .line 150
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mSilentOrVibrate:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lmiui/util/AudioManagerHelper;->toggleSilent(Landroid/content/Context;I)V

    .line 163
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SoundSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateInNormal:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateInNormal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-static {v0, v1, v2}, Lmiui/util/AudioManagerHelper;->setVibrateSetting(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateInSilent:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateInSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/util/AudioManagerHelper;->setVibrateSetting(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 94
    invoke-super {p0}, Lcom/android/settings/SoundSettings;->onResume()V

    .line 95
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "vibrate_in_silent"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    const-string v2, "vibrate_in_normal"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->refreshVolumeAndVibrate()V

    .line 105
    return-void
.end method

.method refreshVolumeAndVibrate()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 187
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 189
    .local v0, ringerMode:I
    iget-object v4, p0, Lcom/android/settings/MiuiSoundSettings;->mSilentOrVibrate:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 191
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateInSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    invoke-static {v4, v5, v2}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 197
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateInNormal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "vibrate_in_normal"

    invoke-static {v2, v4, v3}, Lmiui/provider/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 202
    return-void

    :cond_0
    move v1, v3

    .line 189
    goto :goto_0
.end method

.method protected ringtoneLookupOthers()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsReceivedSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Landroid/media/ExtraRingtoneManager;->getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSoundSettings;->updateRingtoneName(Landroid/net/Uri;I)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsDeliveredSoundPreference:Lcom/android/settings/SmsRingtonePreference;

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/media/ExtraRingtoneManager;->getRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSoundSettings;->updateRingtoneName(Landroid/net/Uri;I)V

    .line 126
    :cond_1
    return-void
.end method
