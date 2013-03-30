.class public Lcom/android/settings/display/BrightnessActivity;
.super Landroid/app/Activity;
.source "BrightnessActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/BrightnessActivity$SavedState;
    }
.end annotation


# instance fields
.field private mAutomaticAvailable:Z

.field private mAutomaticMode:Z

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCurBrightness:I

.field private mDialog:Landroid/app/Dialog;

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mRestoredOldState:Z

.field private mScreenBrightnessDim:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSlidingBtn:Lmiui/widget/SlidingButton;

.field private mSummaryText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity;->mCurBrightness:I

    .line 52
    new-instance v0, Lcom/android/settings/display/BrightnessActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/BrightnessActivity$1;-><init>(Lcom/android/settings/display/BrightnessActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 60
    new-instance v0, Lcom/android/settings/display/BrightnessActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/BrightnessActivity$2;-><init>(Lcom/android/settings/display/BrightnessActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 269
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/display/BrightnessActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/android/settings/display/BrightnessActivity;->mCurBrightness:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/display/BrightnessActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/display/BrightnessActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->onBrightnessModeChanged()V

    return-void
.end method

.method private getBrightness()I
    .locals 5

    .prologue
    .line 142
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/display/BrightnessActivity;->getBrightnessMode(I)I

    move-result v1

    .line 143
    .local v1, mode:I
    const/4 v0, 0x0

    .line 144
    .local v0, brightness:F
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_auto_brightness_adj"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 147
    const/high16 v2, 0x3f80

    add-float/2addr v2, v0

    const/high16 v3, 0x4000

    div-float v0, v2, v3

    .line 158
    :goto_0
    const v2, 0x461c4000

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2

    .line 149
    :cond_0
    iget v2, p0, Lcom/android/settings/display/BrightnessActivity;->mCurBrightness:I

    if-gez v2, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    .line 155
    :goto_1
    iget v2, p0, Lcom/android/settings/display/BrightnessActivity;->mScreenBrightnessDim:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/settings/display/BrightnessActivity;->mScreenBrightnessDim:I

    rsub-int v3, v3, 0xff

    int-to-float v3, v3

    div-float v0, v2, v3

    goto :goto_0

    .line 153
    :cond_1
    iget v2, p0, Lcom/android/settings/display/BrightnessActivity;->mCurBrightness:I

    int-to-float v0, v2

    goto :goto_1
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 132
    move v0, p1

    .line 134
    .local v0, brightnessMode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 138
    :goto_0
    return v0

    .line 136
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initUI()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    const v0, 0x7f040070

    invoke-virtual {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->setContentView(I)V

    .line 91
    const v0, 0x7f0900f8

    invoke-virtual {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 92
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->getBrightness()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity;->mOldBrightness:I

    .line 94
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/display/BrightnessActivity;->mOldBrightness:I

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 96
    const v0, 0x7f0900f7

    invoke-virtual {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSlidingBtn:Lmiui/widget/SlidingButton;

    .line 97
    const v0, 0x7f0900f9

    invoke-virtual {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSummaryText:Landroid/widget/TextView;

    .line 98
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->mAutomaticAvailable:Z

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSlidingBtn:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    invoke-direct {p0, v2}, Lcom/android/settings/display/BrightnessActivity;->getBrightnessMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity;->mOldAutomatic:I

    .line 101
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->mOldAutomatic:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->mAutomaticMode:Z

    .line 102
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSlidingBtn:Lmiui/widget/SlidingButton;

    iget v3, p0, Lcom/android/settings/display/BrightnessActivity;->mOldAutomatic:I

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 106
    :goto_2
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 107
    return-void

    :cond_0
    move v0, v2

    .line 101
    goto :goto_0

    :cond_1
    move v1, v2

    .line 102
    goto :goto_1

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSlidingBtn:Lmiui/widget/SlidingButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setVisibility(I)V

    goto :goto_2
.end method

.method private onBrightnessChanged()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 163
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0, v1}, Lcom/android/settings/display/BrightnessActivity;->getBrightnessMode(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 168
    .local v0, checked:Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->mSlidingBtn:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 169
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->getBrightness()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 170
    return-void

    .end local v0           #checked:Z
    :cond_0
    move v0, v1

    .line 166
    goto :goto_0
.end method

.method private restoreOldState()V
    .locals 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 184
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->setMode(I)V

    .line 186
    :cond_1
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->mOldBrightness:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/BrightnessActivity;->setBrightness(IZ)V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->mRestoredOldState:Z

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity;->mCurBrightness:I

    goto :goto_0
.end method

.method private setBrightness(IZ)V
    .locals 6
    .parameter "brightness"
    .parameter "write"

    .prologue
    .line 192
    iget-boolean v4, p0, Lcom/android/settings/display/BrightnessActivity;->mAutomaticMode:Z

    if-eqz v4, :cond_2

    .line 193
    int-to-float v4, p1

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    const v5, 0x461c4000

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    sub-float v3, v4, v5

    .line 195
    .local v3, valf:F
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 197
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0, v3}, Landroid/os/IPowerManager;->setAutoBrightnessAdjustment(F)V

    .line 200
    :cond_0
    if-eqz p2, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 202
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v4, "screen_auto_brightness_adj"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #valf:F
    :cond_1
    :goto_0
    return-void

    .line 208
    :cond_2
    iget v4, p0, Lcom/android/settings/display/BrightnessActivity;->mScreenBrightnessDim:I

    rsub-int v1, v4, 0xff

    .line 209
    .local v1, range:I
    mul-int v4, p1, v1

    div-int/lit16 v4, v4, 0x2710

    iget v5, p0, Lcom/android/settings/display/BrightnessActivity;->mScreenBrightnessDim:I

    add-int p1, v4, v5

    .line 211
    :try_start_1
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 213
    .restart local v0       #power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_3

    .line 214
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 216
    :cond_3
    if-eqz p2, :cond_4

    .line 217
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/settings/display/BrightnessActivity;->mCurBrightness:I

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 219
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    const-string v4, "screen_brightness"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 224
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 222
    .restart local v0       #power:Landroid/os/IPowerManager;
    :cond_4
    iput p1, p0, Lcom/android/settings/display/BrightnessActivity;->mCurBrightness:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 205
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v1           #range:I
    .restart local v3       #valf:F
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 230
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->mAutomaticMode:Z

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 233
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x0

    .line 122
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->setMode(I)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->getBrightness()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/BrightnessActivity;->setBrightness(IZ)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->mSummaryText:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const v0, 0x7f0c088f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 129
    return-void

    :cond_0
    move v0, v1

    .line 122
    goto :goto_0

    .line 126
    :cond_1
    const v0, 0x7f0c088e

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x6090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->mAutomaticAvailable:Z

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x6080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity;->mScreenBrightnessDim:I

    .line 73
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->initUI()V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_auto_brightness_adj"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->mRestoredOldState:Z

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 175
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 176
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 178
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/settings/display/BrightnessActivity;->setBrightness(IZ)V

    .line 111
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 258
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const-string v1, "save_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/BrightnessActivity$SavedState;

    .line 260
    .local v0, myState:Lcom/android/settings/display/BrightnessActivity$SavedState;
    iget v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldProgress:I

    iput v1, p0, Lcom/android/settings/display/BrightnessActivity;->mOldBrightness:I

    .line 261
    iget-boolean v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldAutomatic:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/settings/display/BrightnessActivity;->mOldAutomatic:I

    .line 262
    iget v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->curBrightness:I

    iput v1, p0, Lcom/android/settings/display/BrightnessActivity;->mCurBrightness:I

    .line 263
    iget-boolean v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->automatic:Z

    if-eqz v1, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/settings/display/BrightnessActivity;->setMode(I)V

    .line 264
    iget v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->progress:I

    invoke-direct {p0, v1, v3}, Lcom/android/settings/display/BrightnessActivity;->setBrightness(IZ)V

    .line 266
    .end local v0           #myState:Lcom/android/settings/display/BrightnessActivity$SavedState;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 267
    return-void

    .restart local v0       #myState:Lcom/android/settings/display/BrightnessActivity$SavedState;
    :cond_1
    move v1, v3

    .line 261
    goto :goto_0

    :cond_2
    move v2, v3

    .line 263
    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    const/4 v1, 0x1

    .line 238
    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    new-instance v0, Lcom/android/settings/display/BrightnessActivity$SavedState;

    invoke-direct {v0}, Lcom/android/settings/display/BrightnessActivity$SavedState;-><init>()V

    .line 241
    .local v0, myState:Lcom/android/settings/display/BrightnessActivity$SavedState;
    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->mSlidingBtn:Lmiui/widget/SlidingButton;

    invoke-virtual {v2}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->automatic:Z

    .line 242
    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->progress:I

    .line 243
    iget v2, p0, Lcom/android/settings/display/BrightnessActivity;->mOldAutomatic:I

    if-ne v2, v1, :cond_1

    :goto_0
    iput-boolean v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldAutomatic:Z

    .line 244
    iget v1, p0, Lcom/android/settings/display/BrightnessActivity;->mOldBrightness:I

    iput v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldProgress:I

    .line 245
    iget v1, p0, Lcom/android/settings/display/BrightnessActivity;->mCurBrightness:I

    iput v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->curBrightness:I

    .line 246
    const-string v1, "save_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 249
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->restoreOldState()V

    .line 252
    .end local v0           #myState:Lcom/android/settings/display/BrightnessActivity$SavedState;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 253
    return-void

    .line 243
    .restart local v0       #myState:Lcom/android/settings/display/BrightnessActivity$SavedState;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 115
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/BrightnessActivity;->setBrightness(IZ)V

    .line 119
    return-void
.end method
