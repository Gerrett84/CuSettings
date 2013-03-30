.class public Lcom/android/settings/ChooseSmsLockPattern;
.super Lcom/android/settings/ChooseLockPattern;
.source "ChooseSmsLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 22
    .local v0, modIntent:Landroid/content/Intent;
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/ChooseSmsLockPattern$ChooseSmsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 24
    return-object v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/android/settings/ChooseLockPattern;->onStop()V

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/ChooseSmsLockPattern;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseSmsLockPattern;->setResult(I)V

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/ChooseSmsLockPattern;->finish()V

    .line 34
    :cond_0
    return-void
.end method
