.class public Lcom/android/settings/deviceinfo/Memory;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Memory.java"


# instance fields
.field private mClickedMountPoint:Ljava/lang/String;

.field private mInternalStorageVolumePreferenceCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

.field private mLastClickedMountToggle:Landroid/preference/Preference;

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mResources:Landroid/content/res/Resources;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 68
    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 132
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$1;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 240
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$2;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Memory;)[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->doUnmount()V

    return-void
.end method

.method private doUnmount()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c02ef

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 276
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 278
    .local v1, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 279
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c02f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c02f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 199
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 200
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 201
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 206
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 203
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "MemorySettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 294
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 295
    .local v0, mountService:Landroid/os/storage/IMountService;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v1

    .line 296
    .local v1, stUsers:[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 310
    :cond_0
    return v3
.end method

.method private isMassStorageEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 113
    .local v0, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    if-lez v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private mount()V
    .locals 3

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 332
    .local v0, mountService:Landroid/os/storage/IMountService;
    if-eqz v0, :cond_0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 340
    :goto_0
    return-void

    .line 335
    :cond_0
    const-string v1, "MemorySettings"

    const-string v2, "Mount service is null, can\'t mount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->removeDialog(I)V

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->showDialog(I)V

    .line 291
    return-void
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 316
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    .line 327
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->doUnmount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MemorySettings"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 78
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 79
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 82
    :cond_0
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    .line 86
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v0, :cond_2

    .line 89
    :cond_1
    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;Z)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 92
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v8

    .line 96
    .local v8, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v7, v8

    .line 97
    .local v7, length:I
    new-array v0, v7, [Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 98
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v7, :cond_4

    .line 99
    aget-object v3, v8, v6

    .line 100
    .local v3, storageVolume:Landroid/os/storage/StorageVolume;
    if-nez v6, :cond_3

    const/4 v5, 0x1

    .line 101
    .local v5, isPrimary:Z
    :goto_1
    iget-object v9, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    new-instance v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;Z)V

    aput-object v0, v9, v6

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 104
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 98
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 100
    .end local v5           #isPrimary:Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 107
    .end local v3           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->setHasOptionsMenu(Z)V

    .line 108
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x7f0c03db

    const/4 v0, 0x0

    .line 252
    packed-switch p1, :pswitch_data_0

    .line 270
    :goto_0
    return-object v0

    .line 254
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c02eb

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/deviceinfo/Memory$3;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/Memory$3;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00e8

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02ec

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 264
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c02ed

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02ee

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 169
    const v0, 0x7f110002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 170
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 164
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 165
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 183
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c02f5

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 192
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 190
    :cond_0
    const-class v0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x7f090279
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    .line 154
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 211
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    array-length v6, v6

    if-ge v0, v6, :cond_5

    .line 212
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v4, v6, v0

    .line 213
    .local v4, svpc:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v4, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v1

    .line 214
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 216
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v6

    if-nez v6, :cond_0

    .line 217
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    .line 237
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #svpc:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    :goto_1
    return v5

    .line 222
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v4       #svpc:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_1
    invoke-virtual {v4, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mountToggleClicked(Landroid/preference/Preference;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 223
    iput-object p2, p0, Lcom/android/settings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    .line 224
    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 225
    .local v3, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    .line 226
    iget-object v6, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, state:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "mounted_ro"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 229
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->unmount()V

    goto :goto_1

    .line 231
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->mount()V

    goto :goto_1

    .line 211
    .end local v2           #state:Ljava/lang/String;
    .end local v3           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #svpc:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 174
    const v1, 0x7f090279

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 175
    .local v0, usb:Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->isMassStorageEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 176
    return-void

    .line 175
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 119
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    .line 127
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    return-void
.end method
