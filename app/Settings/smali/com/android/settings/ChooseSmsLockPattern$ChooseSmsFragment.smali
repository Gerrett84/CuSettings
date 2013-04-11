.class public Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;
.super Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;
.source "ChooseSmsLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseSmsLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseSmsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance v0, Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    .line 46
    return-void
.end method

.method protected onCreateNoSavedState()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 40
    return-void
.end method

.method protected preSetupViews()V
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const v1, 0x7f0c0897

    iput v1, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 59
    return-void
.end method

.method protected saveChosenPatternAndFinish()V
    .locals 3

    .prologue
    .line 49
    iget-object v1, p0, Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lmiui/security/ChooseLockSettingsHelper;->utils()Lmiui/security/MiuiLockPatternUtils;

    move-result-object v0

    .line 50
    .local v0, utils:Lmiui/security/MiuiLockPatternUtils;
    iget-object v1, p0, Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v0, v1}, Lmiui/security/MiuiLockPatternUtils;->saveMiuiLockPattern(Ljava/util/List;)V

    .line 51
    iget-object v1, p0, Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/security/ChooseLockSettingsHelper;->setPrivateSmsEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 54
    return-void
.end method
