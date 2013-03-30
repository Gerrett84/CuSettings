.class public Lcom/android/settings/vpn2/MiuiVpnEditFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "MiuiVpnEditFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mDnsServers:Landroid/widget/TextView;

.field private mEditing:Z

.field private mIpsecCaCert:Landroid/widget/Spinner;

.field private mIpsecIdentifier:Landroid/widget/TextView;

.field private mIpsecSecret:Landroid/widget/TextView;

.field private mIpsecServerCert:Landroid/widget/Spinner;

.field private mIpsecUserCert:Landroid/widget/Spinner;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mL2tpSecret:Landroid/widget/TextView;

.field private mMppe:Landroid/widget/CheckBox;

.field private mName:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/TextView;

.field private mProfile:Lcom/android/settings/vpn2/VpnProfile;

.field private mRoutes:Landroid/widget/TextView;

.field private mSaveLogin:Landroid/widget/CheckBox;

.field private mSearchDomains:Landroid/widget/TextView;

.field private mServer:Landroid/widget/TextView;

.field private mType:Landroid/widget/Spinner;

.field private mUsername:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    .line 41
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn2/MiuiVpnEditFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->saveEdit(Z)V

    return-void
.end method

.method private changeType(I)V
    .locals 7
    .parameter "type"

    .prologue
    const v6, 0x7f0901b8

    const v5, 0x7f0901b4

    const v4, 0x7f0901b5

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 232
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 233
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 235
    const v1, 0x7f0901bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    const v1, 0x7f0901c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 237
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 240
    packed-switch p1, :pswitch_data_0

    .line 276
    :goto_0
    return-void

    .line 242
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 246
    :pswitch_1
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 248
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 249
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x602018e

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 250
    const v1, 0x7f0901b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f02010d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 251
    const v1, 0x7f0901bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x6020190

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 252
    const v1, 0x7f0901bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f02010e

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 255
    :pswitch_2
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 256
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 257
    const v1, 0x7f0901b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x602018e

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 258
    const v1, 0x7f0901ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f02010d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 259
    const v1, 0x7f0901bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x6020190

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 260
    const v1, 0x7f0901bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f02010e

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 264
    :pswitch_3
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 265
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 266
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x6020192

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 267
    const v1, 0x7f0901b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020110

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 270
    :pswitch_4
    const v1, 0x7f0901bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :pswitch_5
    const v1, 0x7f0901c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .parameter "spinner"
    .parameter "prefix"
    .parameter "firstId"
    .parameter "selected"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 332
    .local v3, context:Landroid/content/Context;
    if-nez p3, :cond_2

    const-string v4, ""

    .line 333
    .local v4, first:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, certificates:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-nez v6, :cond_3

    .line 336
    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    .end local v2           #certificates:[Ljava/lang/String;
    aput-object v4, v2, v7

    .line 344
    .restart local v2       #certificates:[Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v0, v3, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 346
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 347
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 349
    const/4 v5, 0x1

    .local v5, i:I
    :goto_2
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 350
    aget-object v6, v2, v5

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 351
    invoke-virtual {p1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 355
    :cond_1
    return-void

    .line 332
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v2           #certificates:[Ljava/lang/String;
    .end local v4           #first:Ljava/lang/String;
    .end local v5           #i:I
    :cond_2
    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 338
    .restart local v2       #certificates:[Ljava/lang/String;
    .restart local v4       #first:Ljava/lang/String;
    :cond_3
    array-length v6, v2

    add-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 339
    .local v1, array:[Ljava/lang/String;
    aput-object v4, v1, v7

    .line 340
    array-length v6, v2

    invoke-static {v2, v7, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    move-object v2, v1

    goto :goto_1

    .line 349
    .end local v1           #array:[Ljava/lang/String;
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v5       #i:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private saveEdit(Z)V
    .locals 4
    .parameter "isDelete"

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getProfile()Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v1

    .line 427
    .local v1, profile:Lcom/android/settings/vpn2/VpnProfile;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 428
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "profile"

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnProfile;->encode()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 429
    const-string v2, "profile_key"

    iget-object v3, v1, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v2, "profile_delete"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->onBackPressed()V

    .line 433
    return-void
.end method

.method private validate(Z)Z
    .locals 3
    .parameter "editing"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 279
    if-nez p1, :cond_2

    .line 280
    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    move v0, v1

    .line 280
    goto :goto_0

    .line 282
    :cond_2
    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mServer:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 285
    goto :goto_0

    .line 287
    :cond_4
    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 300
    goto :goto_0

    .line 294
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 298
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .locals 11
    .parameter "addresses"
    .parameter "cidr"

    .prologue
    .line 305
    :try_start_0
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v1, v4

    .line 306
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 305
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 310
    :cond_1
    const/16 v8, 0x20

    .line 311
    .local v8, prefixLength:I
    if-eqz p2, :cond_2

    .line 312
    const-string v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 313
    .local v7, parts:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v7, v9

    .line 314
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 316
    .end local v7           #parts:[Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 317
    .local v2, bytes:[B
    const/4 v9, 0x3

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int v5, v9, v10

    .line 319
    .local v5, integer:I
    array-length v9, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    if-ltz v8, :cond_3

    const/16 v9, 0x20

    if-gt v8, v9, :cond_3

    const/16 v9, 0x20

    if-ge v8, v9, :cond_0

    shl-int v9, v5, v8

    if-eqz v9, :cond_0

    .line 321
    :cond_3
    const/4 v9, 0x0

    .line 327
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #bytes:[B
    .end local v4           #i$:I
    .end local v5           #integer:I
    .end local v6           #len$:I
    .end local v8           #prefixLength:I
    :goto_1
    return v9

    .line 324
    :catch_0
    move-exception v3

    .line 325
    .local v3, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_1

    .line 327
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "field"

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x102001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, saveButton:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 200
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 204
    return-void
.end method

.method getProfile()Lcom/android/settings/vpn2/VpnProfile;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Lcom/android/settings/vpn2/VpnProfile;

    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v1, v1, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/settings/vpn2/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, profile:Lcom/android/settings/vpn2/VpnProfile;
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    .line 365
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lcom/android/settings/vpn2/VpnProfile;->type:I

    .line 366
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mServer:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    .line 367
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    .line 368
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    .line 369
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mSearchDomains:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 370
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 371
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    .line 374
    iget v1, v0, Lcom/android/settings/vpn2/VpnProfile;->type:I

    packed-switch v1, :pswitch_data_0

    .line 405
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/vpn2/VpnProfile;->saveLogin:Z

    .line 406
    return-object v0

    .line 376
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/vpn2/VpnProfile;->mppe:Z

    goto :goto_0

    .line 380
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 383
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 384
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto :goto_0

    .line 388
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 391
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 396
    :cond_1
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_2

    .line 397
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 399
    :cond_2
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/vpn2/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "profile_add"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 412
    .local v0, isAddVpn:Z
    if-eqz v0, :cond_0

    const v1, 0x7f0c0633

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const v1, 0x7f0c0630

    goto :goto_0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 418
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "showOptions"

    .prologue
    .line 212
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 213
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0901c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    return-void

    .line 213
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "profile"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 67
    .local v0, profile:[B
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "profile_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, profileKey:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->onBackPressed()V

    .line 79
    :goto_0
    return-void

    .line 73
    :cond_0
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_2

    .line 74
    :cond_1
    new-instance v2, Lcom/android/settings/vpn2/VpnProfile;

    invoke-direct {v2, v1}, Lcom/android/settings/vpn2/VpnProfile;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    .line 78
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mEditing:Z

    goto :goto_0

    .line 76
    :cond_2
    invoke-static {v1, v0}, Lcom/android/settings/vpn2/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400b0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mType:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_0

    .line 219
    invoke-direct {p0, p3}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->changeType(I)V

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x102001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, saveButton:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 223
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onSave()V
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->saveEdit(Z)V

    .line 423
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 208
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseEditFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 93
    const v4, 0x7f090078

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mName:Landroid/widget/TextView;

    .line 94
    const v4, 0x7f0901b1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mType:Landroid/widget/Spinner;

    .line 95
    const v4, 0x7f0901b2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mServer:Landroid/widget/TextView;

    .line 96
    const v4, 0x7f0901ca

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mUsername:Landroid/widget/TextView;

    .line 97
    const v4, 0x7f0901cb

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mPassword:Landroid/widget/TextView;

    .line 98
    const v4, 0x7f0901c6

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mSearchDomains:Landroid/widget/TextView;

    .line 99
    const v4, 0x7f0901c7

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mDnsServers:Landroid/widget/TextView;

    .line 100
    const v4, 0x7f0901c8

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mRoutes:Landroid/widget/TextView;

    .line 101
    const v4, 0x7f0901b3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mMppe:Landroid/widget/CheckBox;

    .line 102
    const v4, 0x7f0901b7

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mL2tpSecret:Landroid/widget/TextView;

    .line 103
    const v4, 0x7f0901bb

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecIdentifier:Landroid/widget/TextView;

    .line 104
    const v4, 0x7f0901be

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecSecret:Landroid/widget/TextView;

    .line 105
    const v4, 0x7f0901c0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecUserCert:Landroid/widget/Spinner;

    .line 106
    const v4, 0x7f0901c2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecCaCert:Landroid/widget/Spinner;

    .line 107
    const v4, 0x7f0901c3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecServerCert:Landroid/widget/Spinner;

    .line 108
    const v4, 0x7f0901cc

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mSaveLogin:Landroid/widget/CheckBox;

    .line 111
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mType:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget v7, v7, Lcom/android/settings/vpn2/VpnProfile;->type:I

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 113
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mServer:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-boolean v4, v4, Lcom/android/settings/vpn2/VpnProfile;->saveLogin:Z

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mUsername:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mPassword:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_0
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mSearchDomains:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mDnsServers:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mRoutes:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mMppe:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-boolean v7, v7, Lcom/android/settings/vpn2/VpnProfile;->mppe:Z

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 122
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mL2tpSecret:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecIdentifier:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecSecret:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v7, v7, Lcom/android/settings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecUserCert:Landroid/widget/Spinner;

    const-string v7, "USRPKEY_"

    iget-object v8, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v8, v8, Lcom/android/settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {p0, v4, v7, v5, v8}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 127
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecCaCert:Landroid/widget/Spinner;

    const-string v7, "CACERT_"

    const v8, 0x7f0c062b

    iget-object v9, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v9, v9, Lcom/android/settings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v4, v7, v8, v9}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecServerCert:Landroid/widget/Spinner;

    const-string v7, "USRCERT_"

    const v8, 0x7f0c062c

    iget-object v9, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v9, v9, Lcom/android/settings/vpn2/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {p0, v4, v7, v8, v9}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 131
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mSaveLogin:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-boolean v7, v7, Lcom/android/settings/vpn2/VpnProfile;->saveLogin:Z

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 134
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mType:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 136
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mServer:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 145
    invoke-direct {p0, v6}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->validate(Z)Z

    move-result v3

    .line 146
    .local v3, valid:Z
    iget-boolean v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mEditing:Z

    if-nez v4, :cond_1

    if-nez v3, :cond_4

    :cond_1
    move v4, v6

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mEditing:Z

    .line 148
    iget-boolean v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mEditing:Z

    if-eqz v4, :cond_2

    .line 151
    const v4, 0x7f0901b0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget v4, v4, Lcom/android/settings/vpn2/VpnProfile;->type:I

    invoke-direct {p0, v4}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->changeType(I)V

    .line 157
    const v4, 0x7f0901c4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 158
    .local v2, showOptions:Landroid/view/View;
    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v4, v4, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v4, v4, Lcom/android/settings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->mProfile:Lcom/android/settings/vpn2/VpnProfile;

    iget-object v4, v4, Lcom/android/settings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 160
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .end local v2           #showOptions:Landroid/view/View;
    :cond_2
    :goto_1
    const v4, 0x7f0901cd

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 167
    .local v0, deleteButton:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "profile_add"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 168
    .local v1, isAddVpn:Z
    if-nez v1, :cond_3

    .line 169
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    new-instance v4, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;

    invoke-direct {v4, p0}, Lcom/android/settings/vpn2/MiuiVpnEditFragment$1;-><init>(Lcom/android/settings/vpn2/MiuiVpnEditFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    :cond_3
    return-void

    .end local v0           #deleteButton:Landroid/widget/Button;
    .end local v1           #isAddVpn:Z
    :cond_4
    move v4, v5

    .line 146
    goto :goto_0

    .line 162
    .restart local v2       #showOptions:Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/settings/vpn2/MiuiVpnEditFragment;->onClick(Landroid/view/View;)V

    goto :goto_1
.end method
