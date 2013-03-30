.class public Lcom/android/settings/wifi/MiuiWifiConfigController;
.super Lcom/android/settings/wifi/WifiConfigController;
.source "MiuiWifiConfigController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;
    }
.end annotation


# instance fields
.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private final mActivity:Landroid/app/Activity;

.field private mHasIporProxy:Z

.field private final mOnSubmitStateChangeListener:Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;

.field private mShowAdvance:Z

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZLcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;)V
    .locals 13
    .parameter "activity"
    .parameter "view"
    .parameter "accessPoint"
    .parameter "showAdvance"
    .parameter "onSubmitStateChangeListener"

    .prologue
    .line 39
    move-object/from16 v0, p3

    invoke-direct {p0, p2, v0}, Lcom/android/settings/wifi/WifiConfigController;-><init>(Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;)V

    .line 40
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mActivity:Landroid/app/Activity;

    .line 41
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mOnSubmitStateChangeListener:Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;

    .line 43
    iput-object p2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    .line 44
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 45
    if-nez p3, :cond_1

    const/4 v10, 0x0

    :goto_0
    iput v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    .line 47
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mShowAdvance:Z

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 51
    .local v7, resources:Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v10, :cond_2

    .line 52
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f0901df

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 53
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 54
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f0901b1

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_0
    :goto_1
    return-void

    .line 45
    .end local v7           #resources:Landroid/content/res/Resources;
    :cond_1
    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0

    .line 56
    .restart local v7       #resources:Landroid/content/res/Resources;
    :cond_2
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f0901ff

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 57
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f0901f8

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    iput-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 59
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f0901de

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 61
    .local v3, group:Landroid/view/ViewGroup;
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    .line 62
    .local v9, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v9, :cond_3

    .line 63
    const v10, 0x7f0c01e6

    invoke-static {p1, v9}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v3, v10, v11}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 66
    :cond_3
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v6

    .line 67
    .local v6, level:I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_4

    .line 68
    const v10, 0x7f080019

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, signal:[Ljava/lang/String;
    const v10, 0x7f0c01e5

    aget-object v11, v8, v6

    invoke-direct {p0, v3, v10, v11}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 72
    .end local v8           #signal:[Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 73
    .local v5, info:Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    .line 74
    const v10, 0x7f0c01e7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Mbps"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v3, v10, v11}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 77
    :cond_5
    const v10, 0x7f0c01e4

    iget-object v11, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v3, v10, v11}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 79
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 80
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_8

    .line 81
    iget-object v10, v2, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v11, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v10, v11, :cond_6

    .line 82
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 83
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mHasIporProxy:Z

    .line 87
    :goto_2
    iget-object v10, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v11, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v10, v11, :cond_7

    .line 88
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 89
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mHasIporProxy:Z

    .line 93
    :goto_3
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v10, v10, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    .line 95
    iget-object v10, v2, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 96
    .local v1, a:Ljava/net/InetAddress;
    const v10, 0x7f0c01e8

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v3, v10, v11}, Lcom/android/settings/wifi/MiuiWifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_4

    .line 85
    .end local v1           #a:Ljava/net/InetAddress;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 91
    :cond_7
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 100
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x6010036

    invoke-virtual {v10, v11}, Landroid/view/View;->setAdditionalState(I)V

    .line 101
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x6010037

    invoke-virtual {v10, v11}, Landroid/view/View;->setAdditionalState(I)V

    .line 103
    iget-boolean v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mShowAdvance:Z

    if-eqz v10, :cond_0

    .line 104
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f0901eb

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f090212

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f0901fb

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 107
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f0901fc

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 109
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mView:Landroid/view/View;

    const v11, 0x7f0901fd

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 111
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->showProxyFields()V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->showIpConfigFields()V

    .line 116
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 117
    iget-object v10, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_1
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "nameId"
    .parameter "value"

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400b8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, row:Landroid/view/View;
    const v1, 0x6010038

    invoke-virtual {v0, v1}, Landroid/view/View;->setAdditionalState(I)V

    .line 125
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 126
    const v1, 0x1020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 264
    const/4 v7, 0x0

    .line 265
    .local v7, ret:Z
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v8}, Landroid/net/LinkProperties;->clear()V

    .line 266
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    if-ne v8, v10, :cond_0

    sget-object v8, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 270
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v8, v9, :cond_2

    .line 271
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/MiuiWifiConfigController;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v6

    .line 272
    .local v6, result:I
    if-eqz v6, :cond_1

    .line 273
    const/4 v8, 0x0

    .line 306
    .end local v6           #result:I
    :goto_1
    return v8

    .line 266
    :cond_0
    sget-object v8, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 275
    .restart local v6       #result:I
    :cond_1
    const/4 v7, 0x1

    .line 278
    .end local v6           #result:I
    :cond_2
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    if-ne v8, v10, :cond_5

    sget-object v8, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 282
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v8, v9, :cond_3

    .line 283
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, host:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, portStr:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, exclusionList:Ljava/lang/String;
    const/4 v3, 0x0

    .line 287
    .local v3, port:I
    const/4 v6, 0x0

    .line 289
    .restart local v6       #result:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 290
    invoke-static {v2, v4, v1}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 294
    :goto_3
    if-nez v6, :cond_6

    .line 295
    new-instance v5, Landroid/net/ProxyProperties;

    invoke-direct {v5, v2, v3, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 296
    .local v5, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v8, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 297
    const/4 v7, 0x1

    .line 303
    .end local v1           #exclusionList:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    .end local v4           #portStr:Ljava/lang/String;
    .end local v5           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v6           #result:I
    :cond_3
    :goto_4
    iget-boolean v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mHasIporProxy:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v8, v9, :cond_4

    .line 304
    const/4 v7, 0x1

    :cond_4
    move v8, v7

    .line 306
    goto :goto_1

    .line 278
    :cond_5
    sget-object v8, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 291
    .restart local v1       #exclusionList:Ljava/lang/String;
    .restart local v2       #host:Ljava/lang/String;
    .restart local v3       #port:I
    .restart local v4       #portStr:Ljava/lang/String;
    .restart local v6       #result:I
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Ljava/lang/NumberFormatException;
    const v6, 0x7f0c00ac

    goto :goto_3

    .line 299
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_6
    const/4 v7, 0x0

    goto :goto_4
.end method


# virtual methods
.method enableSubmitIfAppropriate()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    .line 132
    const/4 v0, 0x0

    .line 135
    .local v0, enabled:Z
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 138
    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 141
    :cond_1
    const/4 v0, 0x0

    .line 144
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mShowAdvance:Z

    if-eqz v1, :cond_3

    .line 145
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v0

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mOnSubmitStateChangeListener:Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;

    if-eqz v1, :cond_4

    .line 148
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mOnSubmitStateChangeListener:Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;

    invoke-interface {v1, v0}, Lcom/android/settings/wifi/MiuiWifiConfigController$OnSubmitStateChangeListener;->onSubmitStateChange(Z)V

    .line 150
    :cond_4
    return-void

    .line 135
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/16 v7, 0x22

    const/4 v5, 0x0

    .line 154
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 155
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v4, :cond_1

    .line 156
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 159
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 167
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mShowAdvance:Z

    if-eqz v4, :cond_0

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, v6, :cond_3

    .line 168
    :cond_0
    iget v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPointSecurity:I

    packed-switch v4, :pswitch_data_0

    .line 252
    const/4 v0, 0x0

    .line 260
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :goto_1
    return-object v0

    .line 160
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v4, v6, :cond_2

    .line 161
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 164
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_0

    .line 170
    :pswitch_0
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 256
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 257
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 258
    new-instance v4, Landroid/net/LinkProperties;

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_1

    .line 174
    :pswitch_1
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 175
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 176
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 177
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v2

    .line 179
    .local v2, length:I
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, password:Ljava/lang/String;
    const/16 v4, 0xa

    if-eq v2, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_4

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_5

    :cond_4
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 183
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v3, v4, v5

    goto :goto_2

    .line 185
    :cond_5
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_2

    .line 191
    .end local v2           #length:I
    .end local v3           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 192
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 193
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 194
    .restart local v3       #password:Ljava/lang/String;
    const-string v4, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 195
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 197
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 203
    .end local v3           #password:Ljava/lang/String;
    :pswitch_3
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 204
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 205
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 206
    .restart local v3       #password:Ljava/lang/String;
    const-string v4, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 207
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    .line 211
    :goto_3
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mWapiKeyTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_2

    .line 209
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    goto :goto_3

    .line 217
    .end local v3           #password:Ljava/lang/String;
    :pswitch_4
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 218
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mCertificateAs:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    .line 219
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mCertificateUser:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_2

    .line 224
    :pswitch_5
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 225
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 226
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 228
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_8

    const-string v4, ""

    :goto_4
    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 230
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_9

    const-string v4, ""

    :goto_5
    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 233
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_a

    const-string v4, ""

    :goto_6
    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 236
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_b

    .line 237
    .local v1, isEmptyKeyId:Z
    :goto_7
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_c

    const-string v4, ""

    :goto_8
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 239
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->engine:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_d

    const-string v4, "0"

    :goto_9
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 241
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->engine_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_e

    const-string v4, ""

    :goto_a
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 242
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_f

    const-string v4, ""

    :goto_b
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 244
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_10

    const-string v4, ""

    :goto_c
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 246
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 247
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 228
    .end local v1           #isEmptyKeyId:Z
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "auth="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 230
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keystore://CACERT_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 233
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keystore://USRCERT_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_b
    move v1, v5

    .line 236
    goto/16 :goto_7

    .line 237
    .restart local v1       #isEmptyKeyId:Z
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRPKEY_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 239
    :cond_d
    const-string v4, "1"

    goto/16 :goto_9

    .line 241
    :cond_e
    const-string v4, "keystore"

    goto/16 :goto_a

    .line 242
    :cond_f
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b

    .line 244
    :cond_10
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_c

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
