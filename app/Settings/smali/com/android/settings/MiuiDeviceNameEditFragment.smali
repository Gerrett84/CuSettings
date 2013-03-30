.class public Lcom/android/settings/MiuiDeviceNameEditFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "MiuiDeviceNameEditFragment.java"


# instance fields
.field private mDeviceNameEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceNameEditFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0862

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceNameEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x102001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, saveBtn:Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 46
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceNameEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceNameEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040037

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 24
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onSave()V
    .locals 3

    .prologue
    .line 50
    iget-object v1, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->mDeviceNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, deviceName:Ljava/lang/String;
    :try_start_0
    const-string v1, "persist.sys.device_name"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceNameEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 57
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceNameEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceNameEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    throw v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 29
    const v3, 0x7f09007b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->mDeviceNameEdit:Landroid/widget/EditText;

    .line 30
    iget-object v3, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->mDeviceNameEdit:Landroid/widget/EditText;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x5b

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 32
    const v1, 0x7f0c07dc

    .line 33
    .local v1, deviceNameRes:I
    sget-boolean v3, Lmiui/os/Build;->IS_XIAOMI:Z

    if-nez v3, :cond_0

    .line 34
    const v1, 0x7f0c07df

    .line 36
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDeviceNameEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, defaultName:Ljava/lang/String;
    const-string v3, "persist.sys.device_name"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/MiuiDeviceNameEditFragment;->mDeviceNameEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method
