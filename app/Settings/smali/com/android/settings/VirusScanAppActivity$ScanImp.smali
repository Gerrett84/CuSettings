.class abstract Lcom/android/settings/VirusScanAppActivity$ScanImp;
.super Ljava/lang/Object;
.source "VirusScanAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/VirusScanAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ScanImp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/settings/VirusScanAppActivity$ScanImp;->this$0:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getCount()I
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$ScanImp;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->mAppData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method abstract getState()Lcom/android/settings/VirusScanAppActivity$RunState;
.end method

.method abstract getStringDesp()Ljava/lang/String;
.end method

.method onFinishClick()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/settings/VirusScanAppActivity$ScanImp;->this$0:Lcom/android/settings/VirusScanAppActivity;

    #calls: Lcom/android/settings/VirusScanAppActivity;->FinishScan()V
    invoke-static {v0}, Lcom/android/settings/VirusScanAppActivity;->access$400(Lcom/android/settings/VirusScanAppActivity;)V

    .line 321
    return-void
.end method

.method onScanClick()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method updateListView(Lcom/android/settings/VirusScanAppActivity$ViewHolder;I)V
    .locals 6
    .parameter "holder"
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 338
    iget-object v1, p0, Lcom/android/settings/VirusScanAppActivity$ScanImp;->this$0:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->mAppData:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/VirusScanAppActivity$AppData;

    .line 339
    .local v0, data:Lcom/android/settings/VirusScanAppActivity$AppData;
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mAppName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/VirusScanAppActivity$AppData;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 341
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mScanStatus:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 342
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mScanStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    sget-object v1, Lcom/android/settings/VirusScanAppActivity$7;->$SwitchMap$com$android$settings$ScanState:[I

    iget-object v2, v0, Lcom/android/settings/VirusScanAppActivity$AppData;->mState:Lcom/android/settings/ScanState;

    invoke-virtual {v2}, Lcom/android/settings/ScanState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 371
    :goto_0
    return-void

    .line 346
    :pswitch_0
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mAppState:Landroid/widget/TextView;

    const v2, 0x7f0c0808

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 350
    :pswitch_1
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mAppState:Landroid/widget/TextView;

    const v2, 0x7f0c0807

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 351
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mScanStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mScanStatus:Landroid/widget/ImageView;

    const v2, 0x7f02015c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 353
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mScanStatus:Landroid/widget/ImageView;

    const v2, 0x7f02015b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 354
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mScanStatus:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/VirusScanAppActivity$ScanImp;->this$0:Lcom/android/settings/VirusScanAppActivity;

    const v3, 0x7f050001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 358
    :pswitch_2
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mAppState:Landroid/widget/TextView;

    const v2, 0x7f0c0809

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 359
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mScanStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mScanStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 361
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mScanStatus:Landroid/widget/ImageView;

    const v2, 0x7f02015a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 365
    :pswitch_3
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mAppState:Landroid/widget/TextView;

    const v2, 0x7f0c080a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 366
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mScanStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mScanStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 368
    iget-object v1, p1, Lcom/android/settings/VirusScanAppActivity$ViewHolder;->mScanStatus:Landroid/widget/ImageView;

    const v2, 0x7f02015d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method abstract updateUi()V
.end method
