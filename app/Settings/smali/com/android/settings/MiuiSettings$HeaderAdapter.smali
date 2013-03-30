.class Lcom/android/settings/MiuiSettings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAirplaneModeEnabler:Lcom/android/settings/MiuiAirplaneModeEnabler;

.field private mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private mEnablerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/settings/BaseEnabler;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsFrequently:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Z)V
    .locals 4
    .parameter "activity"
    .parameter
    .parameter "authenticatorHelper"
    .parameter "isFrequently"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings/accounts/AuthenticatorHelper;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 389
    iput-object p3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 390
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mEnablerMap:Ljava/util/HashMap;

    .line 392
    new-instance v0, Lcom/android/settings/MiuiAirplaneModeEnabler;

    new-instance v1, Lmiui/widget/SlidingButton;

    invoke-direct {v1, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/MiuiAirplaneModeEnabler;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mAirplaneModeEnabler:Lcom/android/settings/MiuiAirplaneModeEnabler;

    .line 393
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mEnablerMap:Ljava/util/HashMap;

    const-wide/32 v1, 0x7f090246

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mAirplaneModeEnabler:Lcom/android/settings/MiuiAirplaneModeEnabler;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mEnablerMap:Ljava/util/HashMap;

    const-wide/32 v1, 0x7f090244

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/display/AccelerometerEnabler;

    new-instance v3, Lmiui/widget/SlidingButton;

    invoke-direct {v3, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, p1, v3}, Lcom/android/settings/display/AccelerometerEnabler;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mEnablerMap:Ljava/util/HashMap;

    const-wide/32 v1, 0x7f09024c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/settings/GpsEnabler;

    new-instance v3, Lmiui/widget/SlidingButton;

    invoke-direct {v3, p1}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, p1, v3}, Lcom/android/settings/GpsEnabler;-><init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iput-boolean p4, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mIsFrequently:Z

    .line 397
    return-void
.end method

.method private getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 2
    .parameter "header"

    .prologue
    .line 343
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 344
    const/4 v0, 0x0

    .line 348
    :goto_0
    return v0

    .line 345
    :cond_0
    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->isSwitchHeader(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    const/4 v0, 0x2

    goto :goto_0

    .line 348
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public getAirplaneModeEnabler()Lcom/android/settings/MiuiAirplaneModeEnabler;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mAirplaneModeEnabler:Lcom/android/settings/MiuiAirplaneModeEnabler;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 360
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 401
    const/4 v6, 0x0

    .line 402
    .local v6, holder:Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    .line 403
    .local v4, header:Landroid/preference/PreferenceActivity$Header;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v5

    .line 404
    .local v5, headerType:I
    const/4 v11, 0x0

    .line 406
    .local v11, view:Landroid/view/View;
    if-eqz p2, :cond_0

    .line 407
    move-object/from16 v11, p2

    .line 408
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #holder:Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;
    check-cast v6, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;

    .line 409
    .restart local v6       #holder:Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;
    iget-wide v13, v4, Landroid/preference/PreferenceActivity$Header;->id:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->isSwitchHeader(J)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 410
    const/16 p2, 0x0

    .line 413
    :cond_0
    if-nez p2, :cond_2

    .line 414
    new-instance v6, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;

    .end local v6           #holder:Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;
    const/4 v13, 0x0

    invoke-direct {v6, v13}, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/MiuiSettings$1;)V

    .line 415
    .restart local v6       #holder:Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;
    packed-switch v5, :pswitch_data_0

    .line 450
    :cond_1
    :goto_0
    invoke-virtual {v11, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 454
    :cond_2
    packed-switch v5, :pswitch_data_1

    .line 496
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->setIcon(Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;Landroid/preference/PreferenceActivity$Header;)V

    .line 497
    return-object v11

    .line 417
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x6030037

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 418
    const v13, 0x1020016

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v6, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 422
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x6030036

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 425
    const v13, 0x1020006

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v6, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 426
    const v13, 0x1020016

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v6, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 428
    const v13, 0x1020010

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v6, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 430
    const v13, 0x1020018

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 431
    .local v12, widgetFrame:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f040075

    invoke-virtual {v13, v14, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 432
    const v13, 0x7f09010a

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lmiui/widget/SlidingButton;

    iput-object v13, v6, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->slidingButton:Lmiui/widget/SlidingButton;

    .line 433
    const v13, 0x60b0077

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 434
    .local v1, arrow:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 435
    const/16 v13, 0x8

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 440
    .end local v1           #arrow:Landroid/view/View;
    .end local v12           #widgetFrame:Landroid/widget/LinearLayout;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x6030036

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 443
    const v13, 0x1020006

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v6, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 444
    const v13, 0x1020016

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v6, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 446
    const v13, 0x1020010

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v6, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 456
    :pswitch_3
    iget-object v13, v6, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 461
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mEnablerMap:Ljava/util/HashMap;

    iget-wide v14, v4, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/BaseEnabler;

    .line 462
    .local v2, baseEnabler:Lcom/android/settings/BaseEnabler;
    if-eqz v2, :cond_4

    .line 463
    iget-object v13, v6, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v2, v13}, Lcom/android/settings/BaseEnabler;->setSlidingButton(Lmiui/widget/SlidingButton;)V

    .line 469
    .end local v2           #baseEnabler:Lcom/android/settings/BaseEnabler;
    :cond_4
    :pswitch_5
    const v13, 0x60201f2

    invoke-virtual {v11, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 470
    iget-object v13, v6, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 472
    .local v10, summary:Ljava/lang/CharSequence;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 473
    iget-object v13, v6, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    iget-object v13, v6, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mIsFrequently:Z

    if-nez v13, :cond_5

    .line 480
    #calls: Lcom/android/settings/MiuiSettings;->getChildBackgroundState(I)I
    invoke-static/range {p1 .. p1}, Lcom/android/settings/MiuiSettings;->access$100(I)I

    move-result v9

    .line 481
    .local v9, state:I
    invoke-virtual {v11, v9}, Landroid/view/View;->setAdditionalState(I)V

    .line 484
    .end local v9           #state:I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x60a0036

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 486
    .local v8, paddingSide:I
    invoke-virtual {v11}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 487
    .local v3, bgDrawable:Landroid/graphics/drawable/StateListDrawable;
    if-eqz v3, :cond_3

    .line 488
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 489
    .local v7, padding:Landroid/graphics/Rect;
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/StateListDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 490
    iget v13, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v8

    iget v14, v7, Landroid/graphics/Rect;->top:I

    iget v15, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v15, v8

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    .line 476
    .end local v3           #bgDrawable:Landroid/graphics/drawable/StateListDrawable;
    .end local v7           #padding:Landroid/graphics/Rect;
    .end local v8           #paddingSide:I
    :cond_6
    iget-object v13, v6, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 454
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchHeader(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mEnablerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 354
    .local v0, switchHeaderIdSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 536
    iget-object v3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mEnablerMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 537
    .local v1, enablerList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/BaseEnabler;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/BaseEnabler;

    .line 538
    .local v0, baseEnabler:Lcom/android/settings/BaseEnabler;
    invoke-virtual {v0}, Lcom/android/settings/BaseEnabler;->pause()V

    goto :goto_0

    .line 540
    .end local v0           #baseEnabler:Lcom/android/settings/BaseEnabler;
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 529
    iget-object v3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mEnablerMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 530
    .local v1, enablerList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/BaseEnabler;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/BaseEnabler;

    .line 531
    .local v0, baseEnabler:Lcom/android/settings/BaseEnabler;
    invoke-virtual {v0}, Lcom/android/settings/BaseEnabler;->resume()V

    goto :goto_0

    .line 533
    .end local v0           #baseEnabler:Lcom/android/settings/BaseEnabler;
    :cond_0
    return-void
.end method

.method public setIcon(Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;Landroid/preference/PreferenceActivity$Header;)V
    .locals 6
    .parameter "holder"
    .parameter "header"

    .prologue
    const/4 v5, 0x0

    .line 501
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v3, p1, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 507
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p1, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x60a0035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 512
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 513
    iget-object v3, p1, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    iget-object v3, p2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    iget-object v3, p2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 517
    iget-object v3, p2, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, accType:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/MiuiSettings$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 520
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget-object v3, p1, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 522
    .end local v0           #accType:Ljava/lang/String;
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget v3, p2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    if-eqz v3, :cond_0

    .line 523
    iget-object v3, p1, Lcom/android/settings/MiuiSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v4, p2, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
