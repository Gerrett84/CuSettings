.class Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;
.super Ljava/lang/Object;
.source "MiuiDeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiDeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdcardMeasurementReceiver"
.end annotation


# instance fields
.field private mInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

.field private mIsEmulated:Z

.field final synthetic this$0:Lcom/android/settings/MiuiDeviceInfoSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/MiuiDeviceInfoSettings;Z)V
    .locals 1
    .parameter
    .parameter "isEmulated"

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->this$0:Lcom/android/settings/MiuiDeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    new-instance v0, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    invoke-direct {v0}, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->mInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    .line 519
    iput-boolean p2, p0, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->mIsEmulated:Z

    .line 520
    return-void
.end method


# virtual methods
.method public getSdcardInfo()Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->mInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    return-object v0
.end method

.method public isEmulated()Z
    .locals 1

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->mIsEmulated:Z

    return v0
.end method

.method public updateApproximate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->mInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    const-string v1, "total_size"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->total:J

    .line 529
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->mInfo:Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;

    const-string v1, "avail_size"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settings/MiuiDeviceInfoSettings$SDCardInfo;->free:J

    .line 530
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings$SdcardMeasurementReceiver;->this$0:Lcom/android/settings/MiuiDeviceInfoSettings;

    #getter for: Lcom/android/settings/MiuiDeviceInfoSettings;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->access$000(Lcom/android/settings/MiuiDeviceInfoSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 531
    return-void
.end method

.method public updateExact(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 536
    return-void
.end method
