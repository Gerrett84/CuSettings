.class public Lcom/android/settings/deviceinfo/MiuiUsbSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiUsbSettings.java"


# instance fields
.field private mMassStorageEnable:Z

.field private mMassStorageFunctionName:Ljava/lang/String;

.field private mMsd:Landroid/preference/CheckBoxPreference;

.field private mMtp:Landroid/preference/CheckBoxPreference;

.field private mMtpFunctionName:Ljava/lang/String;

.field private mPtp:Landroid/preference/CheckBoxPreference;

.field private mPtpFunctionName:Ljava/lang/String;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 36
    new-instance v0, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;-><init>(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/MiuiUsbSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 44
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 47
    :cond_0
    const v1, 0x7f06005f

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->addPreferencesFromResource(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 50
    const-string v1, "usb_mtp"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    .line 51
    const-string v1, "usb_ptp"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    .line 52
    const-string v1, "usb_msd"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMsd:Landroid/preference/CheckBoxPreference;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0667

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtpFunctionName:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0668

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtpFunctionName:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0669

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMassStorageFunctionName:Ljava/lang/String;

    .line 58
    sget-boolean v1, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMsd:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0c07e3

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 60
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMsd:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0c07e4

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 62
    :cond_1
    sget-boolean v1, Lmiui/os/Build;->IS_MITWO:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMassStorageEnable:Z

    .line 64
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMsd:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMassStorageEnable:Z

    if-nez v1, :cond_3

    .line 65
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMsd:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMsd:Landroid/preference/CheckBoxPreference;

    .line 69
    :cond_3
    return-object v0

    .line 62
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 2
    .parameter "function"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtpFunctionName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtpFunctionName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 100
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMassStorageEnable:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMsd:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMassStorageFunctionName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 76
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 110
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    :goto_0
    return v1

    .line 115
    :cond_0
    instance-of v2, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 116
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 117
    .local v0, checkBox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 121
    .end local v0           #checkBox:Landroid/preference/CheckBoxPreference;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 122
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtpFunctionName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtpFunctionName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 131
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0

    .line 124
    :cond_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 125
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtpFunctionName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtpFunctionName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_4
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMsd:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMassStorageEnable:Z

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMassStorageFunctionName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMassStorageFunctionName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 90
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    return-void
.end method
