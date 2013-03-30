.class public Lcom/android/settings/EditActivity;
.super Landroid/app/Activity;
.source "EditActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getLayoutId()I
    .locals 5

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/EditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "edit_type"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 55
    .local v2, type:I
    const/4 v1, 0x0

    .line 56
    .local v1, layoutId:I
    packed-switch v2, :pswitch_data_0

    .line 73
    :goto_0
    return v1

    .line 58
    :pswitch_0
    const v1, 0x7f040041

    .line 59
    goto :goto_0

    .line 61
    :pswitch_1
    const v1, 0x7f040005

    .line 62
    goto :goto_0

    .line 64
    :pswitch_2
    const v1, 0x7f040040

    .line 65
    goto :goto_0

    .line 67
    :pswitch_3
    const v1, 0x7f04003f

    .line 68
    goto :goto_0

    .line 70
    :pswitch_4
    const v1, 0x7f04003e

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-direct {p0}, Lcom/android/settings/EditActivity;->getLayoutId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings/EditActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/android/settings/EditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f090009

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/settings/BaseEditFragment;

    .line 26
    .local v3, fragment:Lcom/android/settings/BaseEditFragment;
    invoke-virtual {p0}, Lcom/android/settings/EditActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 27
    .local v0, actionBar:Landroid/app/ActionBar;
    const v5, 0x603002d

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 29
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    .line 30
    .local v4, titleView:Landroid/view/View;
    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/android/settings/BaseEditFragment;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    const v5, 0x1020019

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 32
    .local v1, button1:Landroid/widget/TextView;
    const/high16 v5, 0x104

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 33
    new-instance v5, Lcom/android/settings/EditActivity$1;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/EditActivity$1;-><init>(Lcom/android/settings/EditActivity;Lcom/android/settings/BaseEditFragment;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v5, 0x102001a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 40
    .local v2, button2:Landroid/widget/TextView;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 41
    const v5, 0x6020174

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 42
    const v5, 0x104000a

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 43
    new-instance v5, Lcom/android/settings/EditActivity$2;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/EditActivity$2;-><init>(Lcom/android/settings/EditActivity;Lcom/android/settings/BaseEditFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method
