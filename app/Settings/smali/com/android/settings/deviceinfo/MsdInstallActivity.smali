.class public Lcom/android/settings/deviceinfo/MsdInstallActivity;
.super Landroid/app/Activity;
.source "MsdInstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/MsdInstallActivity$MsdInstallRetrySpan;
    }
.end annotation


# static fields
.field private static final INSTALL_ICON_ARR:[[I

.field private static final MSD_INSTALL_RETRY:[I


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mHeaderView:Landroid/view/View;

.field private mInstallIcon:[I

.field private mInstallStep:I

.field private mInstallSummaryArr:[Ljava/lang/String;

.field private mInstallSystemType:I

.field private mIsInstallAlready:Z

.field private mMsdInstallIcon:Landroid/widget/ImageView;

.field private mMsdInstallIcon_1:Landroid/widget/ImageView;

.field private mMsdInstallRetry:Landroid/widget/TextView;

.field private mMsdInstallStatus:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mMsdInstallStatusGrp:Landroid/widget/RadioGroup;

.field private mMsdInstallSucceed:Landroid/widget/CheckBox;

.field private mMsdInstallSummary:Landroid/widget/TextView;

.field private mMsdInstallSummary_1:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 38
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->INSTALL_ICON_ARR:[[I

    .line 63
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->MSD_INSTALL_RETRY:[I

    return-void

    .line 38
    nop

    :array_0
    .array-data 0x4
        0x30t 0x1t 0x2t 0x7ft
        0x32t 0x1t 0x2t 0x7ft
        0x35t 0x1t 0x2t 0x7ft
        0x35t 0x1t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2et 0x1t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x2ft 0x1t 0x2t 0x7ft
        0x31t 0x1t 0x2t 0x7ft
        0x34t 0x1t 0x2t 0x7ft
        0x34t 0x1t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 63
    :array_4
    .array-data 0x4
        0x50t 0x8t 0xct 0x7ft
        0x51t 0x8t 0xct 0x7ft
        0x52t 0x8t 0xct 0x7ft
        0x53t 0x8t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 159
    new-instance v0, Lcom/android/settings/deviceinfo/MsdInstallActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity$4;-><init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallStatus:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/MsdInstallActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSucceed:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/MsdInstallActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/MsdInstallActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/MsdInstallActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/MsdInstallActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mIsInstallAlready:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/deviceinfo/MsdInstallActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mIsInstallAlready:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->showInstallUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->init()V

    return-void
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "install_system"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    .line 93
    iput v8, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    .line 94
    iput-boolean v8, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mIsInstallAlready:Z

    .line 95
    const v4, 0x7f09000c

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080065

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v4, 0x7f0900ca

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    .line 98
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    const v5, 0x7f0900d4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSummary:Landroid/widget/TextView;

    .line 99
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    const v5, 0x7f0900d5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallIcon:Landroid/widget/ImageView;

    .line 100
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    const v5, 0x7f0900d2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSummary_1:Landroid/widget/TextView;

    .line 101
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    const v5, 0x7f0900d3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallIcon_1:Landroid/widget/ImageView;

    .line 103
    const v4, 0x7f0900cb

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallStatusGrp:Landroid/widget/RadioGroup;

    .line 104
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallStatusGrp:Landroid/widget/RadioGroup;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallStatus:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 106
    const v4, 0x7f0900ce

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSucceed:Landroid/widget/CheckBox;

    .line 107
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSucceed:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/settings/deviceinfo/MsdInstallActivity$1;

    invoke-direct {v5, p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity$1;-><init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    const v4, 0x7f0900d0

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mCancelButton:Landroid/widget/Button;

    .line 115
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/deviceinfo/MsdInstallActivity$2;

    invoke-direct {v5, p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity$2;-><init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v4, 0x7f0900d1

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mNextButton:Landroid/widget/Button;

    .line 124
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings/deviceinfo/MsdInstallActivity$3;

    invoke-direct {v5, p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity$3;-><init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v4, 0x7f0900cf

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallRetry:Landroid/widget/TextView;

    .line 132
    iget v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    if-eq v4, v9, :cond_0

    iget v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    if-ne v4, v10, :cond_1

    .line 133
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallRetry:Landroid/widget/TextView;

    sget-object v5, Lcom/android/settings/deviceinfo/MsdInstallActivity;->MSD_INSTALL_RETRY:[I

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 144
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 145
    .local v1, res:Landroid/content/res/Resources;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSummaryArr:[Ljava/lang/String;

    .line 146
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSummaryArr:[Ljava/lang/String;

    const v5, 0x7f080066

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    aget-object v5, v5, v6

    aput-object v5, v4, v8

    .line 148
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSummaryArr:[Ljava/lang/String;

    const v5, 0x7f080067

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    aget-object v5, v5, v6

    aput-object v5, v4, v9

    .line 150
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSummaryArr:[Ljava/lang/String;

    const/4 v5, 0x2

    const v6, 0x7f080068

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    .line 152
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSummaryArr:[Ljava/lang/String;

    const v5, 0x7f080069

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    aget-object v5, v5, v6

    aput-object v5, v4, v10

    .line 154
    sget-object v4, Lcom/android/settings/deviceinfo/MsdInstallActivity;->INSTALL_ICON_ARR:[[I

    iget v5, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallIcon:[I

    .line 156
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->showInstallUI()V

    .line 157
    return-void

    .line 135
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/android/settings/deviceinfo/MsdInstallActivity;->MSD_INSTALL_RETRY:[I

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 136
    .local v0, msdInstallRetry:Ljava/lang/CharSequence;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 137
    .local v3, ss:Landroid/text/SpannableStringBuilder;
    const v4, 0x7f0c084d

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 138
    .local v2, spanLength:I
    new-instance v4, Lcom/android/settings/deviceinfo/MsdInstallActivity$MsdInstallRetrySpan;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity$MsdInstallRetrySpan;-><init>(Lcom/android/settings/deviceinfo/MsdInstallActivity;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/16 v7, 0x21

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 140
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallRetry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 141
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallRetry:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private showInstallUI()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 176
    iget v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    packed-switch v1, :pswitch_data_0

    .line 190
    :goto_0
    :pswitch_0
    iget v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSystemType:I

    if-eq v1, v7, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSummary:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallSummaryArr:[Ljava/lang/String;

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    aget-object v5, v5, v6

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallIcon:[I

    iget v6, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    aget v5, v5, v6

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    :cond_0
    iget-object v5, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallRetry:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    if-le v1, v4, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    if-eqz v1, :cond_5

    .line 197
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallStatusGrp:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 202
    :goto_2
    iget v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    if-le v1, v4, :cond_6

    const v0, 0x7f0c084e

    .line 203
    .local v0, buttonResId:I
    :goto_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 205
    iget-object v5, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mNextButton:Landroid/widget/Button;

    iget v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    if-le v1, v4, :cond_7

    move v1, v3

    :goto_4
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 206
    iget-object v5, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mNextButton:Landroid/widget/Button;

    iget v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSucceed:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_1
    move v1, v4

    :goto_5
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 208
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSucceed:Landroid/widget/CheckBox;

    iget v5, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    if-ne v5, v4, :cond_9

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 209
    return-void

    .line 178
    .end local v0           #buttonResId:I
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallSummary_1:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    if-ne v1, v6, :cond_2

    move v1, v2

    :goto_7
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v5, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallIcon_1:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    if-ne v1, v6, :cond_3

    move v1, v2

    :goto_8
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 178
    goto :goto_7

    :cond_3
    move v1, v3

    .line 179
    goto :goto_8

    .line 184
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :pswitch_3
    iput v7, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mInstallStep:I

    goto :goto_0

    :cond_4
    move v1, v3

    .line 194
    goto :goto_1

    .line 199
    :cond_5
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MsdInstallActivity;->mMsdInstallStatusGrp:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_2

    .line 202
    :cond_6
    const/high16 v0, 0x104

    goto :goto_3

    .restart local v0       #buttonResId:I
    :cond_7
    move v1, v2

    .line 205
    goto :goto_4

    :cond_8
    move v1, v2

    .line 206
    goto :goto_5

    :cond_9
    move v2, v3

    .line 208
    goto :goto_6

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v0, 0x7f040057

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->setContentView(I)V

    .line 88
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MsdInstallActivity;->init()V

    .line 89
    return-void
.end method
