.class public Lcom/android/settings/deviceinfo/LockDeviceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockDeviceReceiver.java"


# instance fields
.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 139
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 119
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isFindDeviceEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 179
    .local v1, accountManager:Landroid/accounts/AccountManager;
    const-string v4, "com.xiaomi"

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 180
    .local v2, accounts:[Landroid/accounts/Account;
    array-length v4, v2

    if-gtz v4, :cond_0

    .line 184
    :goto_0
    return v3

    .line 183
    :cond_0
    aget-object v0, v2, v3

    .line 184
    .local v0, account:Landroid/accounts/Account;
    const-string v3, "true"

    const-string v4, "extra_find_device_enabled"

    invoke-virtual {v1, v0, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method private removeCheckSimAlarm(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 156
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 158
    .local v0, alarm:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "miui.intent.action.DELAY_SIM_CHECK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 160
    .local v2, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 161
    return-void
.end method

.method private setCheckSimAlarm(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 146
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 147
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 148
    .local v7, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 150
    new-instance v8, Landroid/content/Intent;

    const-string v1, "miui.intent.action.DELAY_SIM_CHECK"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v8, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p1, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 152
    .local v6, sender:Landroid/app/PendingIntent;
    const/4 v1, 0x1

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 153
    return-void
.end method

.method private setSalt(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 130
    .local v0, lDigest:Ljava/security/MessageDigest;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 131
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    .line 132
    .local v1, salt:J
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    const-string v4, "lockscreen.password_salt"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0           #lDigest:Ljava/security/MessageDigest;
    .end local v1           #salt:J
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private showLockScreen(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ACTION_SHOW_LOCK_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method private static updateRegisterNumber(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, regitsterNumber:Ljava/lang/String;
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 168
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, currentPhoneNumber:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->isFindDeviceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 175
    :cond_2
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, action:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 45
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->setCheckSimAlarm(Landroid/content/Context;)V

    .line 46
    invoke-static/range {p1 .. p1}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->updateRegisterNumber(Landroid/content/Context;)V

    goto :goto_0

    .line 50
    :cond_2
    const-string v10, "miui.intent.action.LOCK_DEVICE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 52
    const-string v10, "android.intent.extra.lock_password"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, password:Ljava/lang/String;
    const-string v10, "android.intent.extra.device_token"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 54
    .local v9, token:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 56
    :try_start_0
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 57
    .local v5, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 58
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v9}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->setSalt(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/android/internal/widget/ILockSettings;->setLockPassword([BI)V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v10

    const-string v11, "lockscreen.password_type"

    const-wide/32 v12, 0x20000

    const/4 v14, 0x0

    invoke-interface {v10, v11, v12, v13, v14}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    .line 61
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v10

    const-string v11, "lockscreen.password_type_alternate"

    const-wide/32 v12, 0x20000

    const/4 v14, 0x0

    invoke-interface {v10, v11, v12, v13, v14}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lmiui/provider/ExtraSettings$Secure;->FIND_DEVICE_PIN_LOCK:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v5           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_3
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->showLockScreen(Landroid/content/Context;)V

    goto :goto_0

    .line 70
    .end local v6           #password:Ljava/lang/String;
    .end local v9           #token:Ljava/lang/String;
    :cond_4
    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "miui.intent.action.DELAY_SIM_CHECK"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v10, "LOADED"

    const-string v11, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 74
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->updateRegisterNumber(Landroid/content/Context;)V

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lmiui/provider/ExtraSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, regitsterNumber:Ljava/lang/String;
    const-string v10, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 79
    .local v8, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, currentPhoneNumber:Ljava/lang/String;
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 83
    .restart local v5       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v4, 0x0

    .line 84
    .local v4, isSimChange:Z
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 86
    :cond_6
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 87
    const/4 v4, 0x1

    .line 88
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->showLockScreen(Landroid/content/Context;)V

    .line 91
    :cond_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lmiui/provider/ExtraSettings$Secure;->PERMANENTLY_LOCK_SIM_CHANGE:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 95
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 98
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lmiui/provider/ExtraSettings$Secure;->PERMANENTLY_LOCK_SIM_CHANGE:Ljava/lang/String;

    if-eqz v4, :cond_9

    const/4 v10, 0x1

    :goto_2
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/deviceinfo/LockDeviceReceiver;->removeCheckSimAlarm(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 98
    :cond_9
    const/4 v10, 0x0

    goto :goto_2

    .line 103
    .end local v2           #currentPhoneNumber:Ljava/lang/String;
    .end local v4           #isSimChange:Z
    .end local v5           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v7           #regitsterNumber:Ljava/lang/String;
    .end local v8           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_a
    const-string v10, "com.xiaomi.action.FIND_DEVICE_STATUS_CHANGED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 104
    const-string v2, ""

    .line 105
    .restart local v2       #currentPhoneNumber:Ljava/lang/String;
    const-string v10, "find_device_enabled"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 106
    .local v3, enabled:Z
    if-eqz v3, :cond_b

    .line 107
    const-string v10, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 108
    .restart local v8       #telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 110
    .end local v8           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_b
    if-eqz v2, :cond_0

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lmiui/provider/ExtraSettings$Secure;->REGISTER_FIND_DEVICE_SIM_NUMBER:Ljava/lang/String;

    invoke-static {v10, v11, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 63
    .end local v2           #currentPhoneNumber:Ljava/lang/String;
    .end local v3           #enabled:Z
    .restart local v6       #password:Ljava/lang/String;
    .restart local v9       #token:Ljava/lang/String;
    :catch_0
    move-exception v10

    goto/16 :goto_1
.end method
