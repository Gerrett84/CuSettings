.class public Lcom/android/settings/MiuiDeviceInfoSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiDeviceInfoSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lmiui/v5/view/ActionBarMovableLayout$Callback;
.implements Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;,
        Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;
    }
.end annotation


# static fields
.field private static final CHANCE:[D

.field private static final PICTURES:[I

.field private static final SOUNDS:[Ljava/lang/String;

.field private static sTotalInternalMemory:J


# instance fields
.field private mDeviceName:Lmiui/preference/ValuePreference;

.field private mEmulatedInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

.field private mLogo:Landroid/widget/ImageView;

.field private mMeasurementList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/deviceinfo/StorageMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private mSDCardInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUpdateHandler:Landroid/os/Handler;

.field private receiverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 60
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/media/audio/ui/HeiHei.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/media/audio/ui/HeiHei.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/media/audio/ui/HeiHei.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/system/media/audio/ui/HeiHei.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/system/media/audio/ui/HeiHei.mp3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->SOUNDS:[Ljava/lang/String;

    .line 67
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->PICTURES:[I

    .line 74
    new-array v0, v3, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->CHANCE:[D

    return-void

    .line 67
    nop

    :array_0
    .array-data 0x4
        0x51t 0x0t 0x2t 0x7ft
        0x52t 0x0t 0x2t 0x7ft
        0x53t 0x0t 0x2t 0x7ft
        0x54t 0x0t 0x2t 0x7ft
        0x55t 0x0t 0x2t 0x7ft
    .end array-data

    .line 74
    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x40t 0x33t 0x33t 0xe3t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xd0t 0x3ft
        0x0t 0x0t 0x0t 0xa0t 0x99t 0x99t 0xb9t 0x3ft
        0x0t 0x0t 0x0t 0x40t 0xe1t 0x7at 0xa4t 0x3ft
        0x0t 0x0t 0x0t 0x40t 0xe1t 0x7at 0x84t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 498
    new-instance v0, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    invoke-direct {v0}, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mSDCardInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    .line 499
    new-instance v0, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    invoke-direct {v0}, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mEmulatedInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    .line 542
    new-instance v0, Lcom/android/settings/MiuiDeviceInfoSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiDeviceInfoSettings$2;-><init>(Lcom/android/settings/MiuiDeviceInfoSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mUpdateHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MiuiDeviceInfoSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mSDCardInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mEmulatedInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/MiuiDeviceInfoSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->receiverList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/MiuiDeviceInfoSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->fillOverview()V

    return-void
.end method

.method private fillOverview()V
    .locals 15

    .prologue
    .line 439
    const-string v11, "device_internal_memory"

    invoke-virtual {p0, v11}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lmiui/preference/ValuePreference;

    .local v5, internalMemory:Lmiui/preference/ValuePreference;
    iget-object v11, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mEmulatedInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    iget-wide v1, v11, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->free:J

    .local v1, availableSize:J
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    .local v6, path:Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 445
    .local v7, stat:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v3, v11

    .line 446
    .local v3, blockSize:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v11, v11

    mul-long/2addr v11, v3

    add-long/2addr v1, v11

    .line 449
    .end local v3           #blockSize:J
    .end local v6           #path:Ljava/io/File;
    .end local v7           #stat:Landroid/os/StatFs;
    const v11, 0x7f0c072c

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->miuiFormatSize(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, availableInternalMemroyStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/MiuiDeviceInfoSettings;->getTotalInternalMemory()J

    move-result-wide v8

    .line 451
    .local v8, totalInternalMemroy:J
    const v11, 0x7f0c072d

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/settings/MiuiDeviceInfoSettings;->miuiFormatSize(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 452
    .local v10, totalInternalMemroyStr:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCpuInfo()Ljava/lang/String;
    .locals 15

    .prologue
    .line 389
    const/4 v6, 0x0

    .line 391
    .local v6, localBufferedReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v10, "/sys/devices/system/cpu"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 392
    .local v2, cpuDir:Ljava/io/File;
    new-instance v10, Lcom/android/settings/MiuiDeviceInfoSettings$1;

    invoke-direct {v10, p0}, Lcom/android/settings/MiuiDeviceInfoSettings$1;-><init>(Lcom/android/settings/MiuiDeviceInfoSettings;)V

    invoke-virtual {v2, v10}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, cpus:[Ljava/lang/String;
    const-string v1, ""

    .line 405
    .local v1, cpuCount:Ljava/lang/String;
    array-length v10, v4

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 406
    const v10, 0x7f0c072a

    invoke-virtual {p0, v10}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 407
    :cond_0
    array-length v10, v4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1

    .line 408
    const v10, 0x7f0c072b

    invoke-virtual {p0, v10}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 409
    :cond_1
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    .line 410
    .local v0, cpuConfigFile:Ljava/lang/String;
    sget-boolean v10, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v10, :cond_2

    sget-boolean v10, Lmiui/os/Build;->IS_U9200:Z

    if-eqz v10, :cond_3

    .line 411
    :cond_2
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 413
    :cond_3
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 414
    .local v5, fr:Ljava/io/FileReader;
    new-instance v7, Ljava/io/BufferedReader;

    const/16 v10, 0x2000

    invoke-direct {v7, v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 416
    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .local v7, localBufferedReader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, str:Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 418
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    const-wide/16 v12, 0xc

    add-long/2addr v10, v12

    const-wide/16 v12, 0x19

    div-long/2addr v10, v12

    const-wide/16 v12, 0x19

    mul-long/2addr v10, v12

    long-to-float v3, v10

    .line 419
    .local v3, cpuMaxfreq:F
    const-string v9, "MHz"

    .line 420
    .local v9, unit:Ljava/lang/String;
    const/high16 v10, 0x447a

    cmpl-float v10, v3, v10

    if-ltz v10, :cond_4

    .line 421
    const/high16 v10, 0x447a

    div-float/2addr v3, v10

    .line 422
    const-string v9, "GHz"

    .line 424
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%.1f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v10

    .line 428
    if-eqz v7, :cond_5

    .line 430
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_5
    :goto_0
    move-object v6, v7

    .line 435
    .end local v0           #cpuConfigFile:Ljava/lang/String;
    .end local v1           #cpuCount:Ljava/lang/String;
    .end local v2           #cpuDir:Ljava/io/File;
    .end local v3           #cpuMaxfreq:F
    .end local v4           #cpus:[Ljava/lang/String;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v8           #str:Ljava/lang/String;
    .end local v9           #unit:Ljava/lang/String;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    :goto_1
    return-object v10

    .line 428
    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #cpuConfigFile:Ljava/lang/String;
    .restart local v1       #cpuCount:Ljava/lang/String;
    .restart local v2       #cpuDir:Ljava/io/File;
    .restart local v4       #cpus:[Ljava/lang/String;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v8       #str:Ljava/lang/String;
    :cond_6
    if-eqz v7, :cond_9

    .line 430
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v6, v7

    .line 435
    .end local v0           #cpuConfigFile:Ljava/lang/String;
    .end local v1           #cpuCount:Ljava/lang/String;
    .end local v2           #cpuDir:Ljava/io/File;
    .end local v4           #cpus:[Ljava/lang/String;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v8           #str:Ljava/lang/String;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    :cond_7
    :goto_2
    const/4 v10, 0x0

    goto :goto_1

    .line 431
    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #cpuConfigFile:Ljava/lang/String;
    .restart local v1       #cpuCount:Ljava/lang/String;
    .restart local v2       #cpuDir:Ljava/io/File;
    .restart local v4       #cpus:[Ljava/lang/String;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v8       #str:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v6, v7

    .line 432
    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 426
    .end local v0           #cpuConfigFile:Ljava/lang/String;
    .end local v1           #cpuCount:Ljava/lang/String;
    .end local v2           #cpuDir:Ljava/io/File;
    .end local v4           #cpus:[Ljava/lang/String;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v8           #str:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 428
    :goto_3
    if-eqz v6, :cond_7

    .line 430
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 431
    :catch_2
    move-exception v10

    goto :goto_2

    .line 428
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v6, :cond_8

    .line 430
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 432
    :cond_8
    :goto_5
    throw v10

    .line 431
    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #cpuConfigFile:Ljava/lang/String;
    .restart local v1       #cpuCount:Ljava/lang/String;
    .restart local v2       #cpuDir:Ljava/io/File;
    .restart local v3       #cpuMaxfreq:F
    .restart local v4       #cpus:[Ljava/lang/String;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v8       #str:Ljava/lang/String;
    .restart local v9       #unit:Ljava/lang/String;
    :catch_3
    move-exception v11

    goto :goto_0

    .end local v0           #cpuConfigFile:Ljava/lang/String;
    .end local v1           #cpuCount:Ljava/lang/String;
    .end local v2           #cpuDir:Ljava/io/File;
    .end local v3           #cpuMaxfreq:F
    .end local v4           #cpus:[Ljava/lang/String;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v8           #str:Ljava/lang/String;
    .end local v9           #unit:Ljava/lang/String;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v11

    goto :goto_5

    .line 428
    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #cpuConfigFile:Ljava/lang/String;
    .restart local v1       #cpuCount:Ljava/lang/String;
    .restart local v2       #cpuDir:Ljava/io/File;
    .restart local v4       #cpus:[Ljava/lang/String;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #localBufferedReader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 426
    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v7       #localBufferedReader:Ljava/io/BufferedReader;
    :catch_5
    move-exception v10

    move-object v6, v7

    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    goto :goto_3

    .end local v6           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v7       #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v8       #str:Ljava/lang/String;
    :cond_9
    move-object v6, v7

    .end local v7           #localBufferedReader:Ljava/io/BufferedReader;
    .restart local v6       #localBufferedReader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private getFormattedKernelVersion()Ljava/lang/String;
    .locals 8

    .prologue
    .line 308
    :try_start_0
    const-string v5, "/proc/version"

    invoke-direct {p0, v5}, Lcom/android/settings/MiuiDeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, procVersionStr:Ljava/lang/String;
    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .line 320
    .local v0, PROC_VERSION_REGEX:Ljava/lang/String;
    const-string v5, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 321
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 323
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    .line 324
    const-string v5, "DeviceInfoSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Regex did not match on /proc/version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v5, "Unavailable"

    .line 338
    .end local v0           #PROC_VERSION_REGEX:Ljava/lang/String;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v4           #procVersionStr:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 326
    .restart local v0       #PROC_VERSION_REGEX:Ljava/lang/String;
    .restart local v2       #m:Ljava/util/regex/Matcher;
    .restart local v3       #p:Ljava/util/regex/Pattern;
    .restart local v4       #procVersionStr:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    .line 327
    const-string v5, "DeviceInfoSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Regex match on /proc/version only returned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " groups"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v5, "Unavailable"

    goto :goto_0

    .line 331
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 333
    .end local v0           #PROC_VERSION_REGEX:Ljava/lang/String;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v4           #procVersionStr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 334
    .local v1, e:Ljava/io/IOException;
    const-string v5, "DeviceInfoSettings"

    const-string v6, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    const-string v5, "Unavailable"

    goto :goto_0
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 5

    .prologue
    .line 350
    :try_start_0
    const-string v1, "/sys/board_properties/soc/msv"

    invoke-direct {p0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, msv:Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 353
    const-string v1, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v0           #msv:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 357
    :catch_0
    move-exception v1

    .line 360
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 355
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getTotalInternalMemory()J
    .locals 12

    .prologue
    const-wide/32 v10, 0x3b9aca00

    const-wide/16 v8, 0x4

    const-wide/16 v6, 0x1

    .line 457
    sget-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 460
    :try_start_0
    const-string v2, "/proc/partitions"

    const-string v3, "mmcblk0"

    invoke-static {v2, v3}, Lcom/android/settings/MiuiDeviceInfoSettings;->readLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, line:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 462
    const-string v2, " +"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, parts:[Ljava/lang/String;
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    .line 464
    sget-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    const-wide/32 v4, 0x7a1200

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 465
    sget-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    add-long/2addr v2, v6

    mul-long/2addr v2, v10

    mul-long/2addr v2, v8

    sput-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    .end local v1           #parts:[Ljava/lang/String;
    :cond_0
    :goto_0
    sget-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    return-wide v2

    .line 467
    .restart local v1       #parts:[Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    add-long/2addr v2, v6

    mul-long/2addr v2, v10

    sput-wide v2, Lcom/android/settings/MiuiDeviceInfoSettings;->sTotalInternalMemory:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 470
    .end local v1           #parts:[Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private miuiFormatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/text/util/MiuiFormatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 298
    .local v0, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 300
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method private static readLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filename"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 486
    .local v1, reader:Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 487
    .local v0, line:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 488
    const-string v2, "mmcblk0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v2
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "preferenceGroup"
    .parameter "preference"
    .parameter "property"

    .prologue
    .line 256
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiui/preference/ValuePreference;

    .line 271
    .local v1, valuePreference:Lmiui/preference/ValuePreference;
    :try_start_0
    invoke-virtual {v1, p2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "property"

    .prologue
    .line 280
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 281
    .local v0, valuePreference:Lmiui/preference/ValuePreference;
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v0           #valuePreference:Lmiui/preference/ValuePreference;
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public isContentVerticalScrolled()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 589
    const/4 v1, 0x0

    .line 590
    .local v1, retval:Z
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 591
    .local v0, listView:Landroid/widget/ListView;
    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 593
    .local v2, view:Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 596
    .end local v2           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v1

    .restart local v2       #view:Landroid/view/View;
    :cond_2
    move v1, v3

    .line 593
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .parameter "icicle"

    .prologue
    .line 106
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v21, 0x7f06001c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 108
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->setHasOptionsMenu(Z)V

    .line 110
    const-string v21, "model_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lmiui/preference/ValuePreference;

    .line 111
    .local v14, modeNumber:Lmiui/preference/ValuePreference;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getMsvSuffix()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 113
    const-string v21, "firmware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lmiui/preference/ValuePreference;

    .line 114
    .local v9, firmwareVersion:Lmiui/preference/ValuePreference;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 116
    const-string v21, "device_miui_version"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MIUI-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v21, "device_cpu"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lmiui/preference/ValuePreference;

    .line 119
    .local v7, deviceCpu:Lmiui/preference/ValuePreference;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getCpuInfo()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 121
    const-string v21, "device_memory"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lmiui/preference/ValuePreference;

    .line 122
    .local v8, deviceMemory:Lmiui/preference/ValuePreference;
    invoke-static {}, Lmiui/os/Environment;->getTotalPhysicalMemory()J

    move-result-wide v21

    const-wide/16 v23, 0x400

    mul-long v21, v21, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->formatSize(J)Ljava/lang/String;

    move-result-object v20

    .line 123
    .local v20, totalRam:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 125
    const-string v21, "baseband_version"

    const-string v22, "gsm.version.baseband"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v21, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Lmiui/preference/ValuePreference;

    .line 127
    .local v12, kernelVersion:Lmiui/preference/ValuePreference;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    const-string v22, "user"

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 131
    .local v4, category:Landroid/preference/PreferenceCategory;
    const-string v21, "safetylegal"

    const-string v22, "ro.url.safetylegal"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v4, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    const-string v22, "baseband_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 145
    .local v3, act:Landroid/app/Activity;
    const-string v21, "container"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceGroup;

    .line 146
    .local v15, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v21, "team"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v3, v15, v0, v1}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 151
    const-string v21, "contributors"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v3, v15, v0, v1}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 154
    const-string v21, "storage"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/storage/StorageManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MiuiDeviceInfoSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 155
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MiuiDeviceInfoSettings;->mMeasurementList:Ljava/util/ArrayList;

    .line 156
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MiuiDeviceInfoSettings;->receiverList:Ljava/util/ArrayList;

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MiuiDeviceInfoSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v19

    .line 158
    .local v19, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/16 v18, 0x0

    .line 159
    .local v18, storagePath:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_3

    .line 160
    aget-object v21, v19, v11

    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v18

    .line 161
    const-string v21, "mounted"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MiuiDeviceInfoSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 162
    aget-object v22, v19, v11

    if-nez v11, :cond_2

    const/16 v21, 0x1

    :goto_1
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-result-object v13

    .line 164
    .local v13, measurement:Lcom/android/settings/deviceinfo/StorageMeasurement;
    new-instance v17, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;

    aget-object v21, v19, v11

    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v21

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;-><init>(Lcom/android/settings/MiuiDeviceInfoSettings;Z)V

    .line 165
    .local v17, receiver:Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MiuiDeviceInfoSettings;->receiverList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 167
    invoke-virtual {v13}, Lcom/android/settings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 168
    invoke-virtual {v13}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measure()V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MiuiDeviceInfoSettings;->mMeasurementList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v13           #measurement:Lcom/android/settings/deviceinfo/StorageMeasurement;
    .end local v17           #receiver:Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 162
    :cond_2
    const/16 v21, 0x0

    goto :goto_1

    .line 173
    :cond_3
    sget-boolean v21, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v21, :cond_4

    .line 174
    const-string v21, "user_manual"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 175
    .local v16, preference:Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 178
    .end local v16           #preference:Landroid/preference/Preference;
    :cond_4
    const-string v21, "device_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Lmiui/preference/ValuePreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MiuiDeviceInfoSettings;->mDeviceName:Lmiui/preference/ValuePreference;

    .line 180
    new-instance v10, Lmiui/widget/HeiHeiGestureView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Lmiui/widget/HeiHeiGestureView;-><init>(Landroid/content/Context;)V

    .line 181
    .local v10, hh:Lmiui/widget/HeiHeiGestureView;
    new-instance v21, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x1

    invoke-direct/range {v21 .. v23}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lmiui/widget/HeiHeiGestureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    sget-object v21, Lcom/android/settings/MiuiDeviceInfoSettings;->SOUNDS:[Ljava/lang/String;

    sget-object v22, Lcom/android/settings/MiuiDeviceInfoSettings;->PICTURES:[I

    sget-object v23, Lcom/android/settings/MiuiDeviceInfoSettings;->CHANCE:[D

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v10, v0, v1, v2}, Lmiui/widget/HeiHeiGestureView;->setResources([Ljava/lang/String;[I[D)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 185
    .local v6, decorView:Landroid/widget/FrameLayout;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 186
    .local v5, child:Landroid/view/View;
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 187
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v10, v5, v0}, Lmiui/widget/HeiHeiGestureView;->addView(Landroid/view/View;I)V

    .line 188
    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 189
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 205
    const/4 v1, 0x1

    const v2, 0x7f0c02b3

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 206
    .local v0, updateItem:Landroid/view/MenuItem;
    const v1, 0x7f0200fd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 207
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 209
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 214
    const v1, 0x7f04007b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 216
    .local v0, rootView:Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 365
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mMeasurementList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 366
    .local v1, storageMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->cleanUp()V

    goto :goto_0

    .line 368
    .end local v1           #storageMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 369
    return-void
.end method

.method public onFling(FI)V
    .locals 2
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1, p2}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 585
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 241
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 250
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 243
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYSTEM_UPDATE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.updater"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 247
    const/4 v1, 0x1

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 601
    const-string v0, "device_name"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/EditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 603
    const-string v1, "edit_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 606
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 194
    const-string v1, "user_manual"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MIUI_LICENSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/miui/internal/app/MiuiLicenseActivity;->EXTRA_MIUI_DOC_URL:Ljava/lang/String;

    sget-object v2, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_MANUAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 199
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 373
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 375
    const v1, 0x7f0c07dc

    .line 376
    .local v1, deviceNameRes:I
    sget-boolean v3, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v3, :cond_0

    .line 377
    const v1, 0x7f0c07df

    .line 379
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, defaultName:Ljava/lang/String;
    const-string v3, "persist.sys.device_name"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDeviceName:Lmiui/preference/ValuePreference;

    invoke-virtual {v3, v2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 382
    iget-object v3, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDeviceName:Lmiui/preference/ValuePreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 383
    iget-object v3, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mDeviceName:Lmiui/preference/ValuePreference;

    invoke-virtual {v3, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 385
    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->fillOverview()V

    .line 386
    return-void
.end method

.method public onScroll(IF)V
    .locals 1
    .parameter "state"
    .parameter "offset"

    .prologue
    .line 577
    const/4 v0, 0x0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 580
    :cond_0
    return-void
.end method

.method public onScrollBegin()V
    .locals 0

    .prologue
    .line 569
    return-void
.end method

.method public onScrollEnd()V
    .locals 0

    .prologue
    .line 573
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 221
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 225
    .local v0, act:Landroid/app/Activity;
    const v3, 0x7f090008

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mLogo:Landroid/widget/ImageView;

    .line 226
    iget-object v4, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->mLogo:Landroid/widget/ImageView;

    sget-boolean v3, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v3, :cond_1

    const v3, 0x7f02012f

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    invoke-virtual {v0}, Landroid/app/Activity;->getMiuiActionBar()Lmiui/v5/app/MiuiActionBar;

    move-result-object v1

    .line 230
    .local v1, actionBar:Lmiui/v5/app/MiuiActionBar;
    if-eqz v1, :cond_0

    .line 231
    const v3, 0x7f0c0363

    invoke-interface {v1, v3}, Lmiui/v5/app/MiuiActionBar;->setTitle(I)V

    .line 232
    const v3, 0x60b009b

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/v5/view/ActionBarMovableLayout;

    .line 234
    .local v2, actionBarMovableLayout:Lmiui/v5/view/ActionBarMovableLayout;
    invoke-virtual {v2, p0}, Lmiui/v5/view/ActionBarMovableLayout;->setCallback(Lmiui/v5/view/ActionBarMovableLayout$Callback;)V

    .line 235
    invoke-virtual {v2, p0}, Lmiui/v5/view/ActionBarMovableLayout;->setOnScrollListener(Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;)V

    .line 237
    .end local v2           #actionBarMovableLayout:Lmiui/v5/view/ActionBarMovableLayout;
    :cond_0
    return-void

    .line 226
    .end local v1           #actionBar:Lmiui/v5/app/MiuiActionBar;
    :cond_1
    const v3, 0x7f02012e

    goto :goto_0
.end method
