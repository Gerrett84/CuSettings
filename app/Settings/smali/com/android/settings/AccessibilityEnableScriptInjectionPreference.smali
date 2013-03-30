.class public Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;
.super Landroid/preference/DialogPreference;
.source "AccessibilityEnableScriptInjectionPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;
    }
.end annotation


# instance fields
.field private mInjectionAllowed:Z

.field private mSendClickAccessibilityEvent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->updateSummary()V

    .line 45
    return-void
.end method

.method private sendAccessibilityEvent(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 72
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    iget-boolean v2, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mSendClickAccessibilityEvent:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 74
    .local v1, event:Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 75
    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 76
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 79
    .end local v1           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mSendClickAccessibilityEvent:Z

    .line 80
    return-void
.end method

.method private setSystemSetting(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_script_injection"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSummary()V
    .locals 2

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c049d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c049e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public isInjectionAllowed()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 63
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, summaryView:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->sendAccessibilityEvent(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method protected onClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->isInjectionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    .line 87
    invoke-direct {p0, v1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setSystemSetting(Z)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mSendClickAccessibilityEvent:Z

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-super {p0}, Landroid/preference/DialogPreference;->onClick()V

    .line 91
    iput-boolean v1, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mSendClickAccessibilityEvent:Z

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "result"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    .line 110
    if-eqz p1, :cond_0

    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setSystemSetting(Z)V

    .line 114
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 129
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_1
    check-cast p1, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;

    .line 134
    invoke-virtual {p1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 135
    #getter for: Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->mInjectionAllowed:Z
    invoke-static {p1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->access$000(Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 119
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 122
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 123
    .local v0, myState:Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;
    iget-boolean v2, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    #setter for: Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->mInjectionAllowed:Z
    invoke-static {v0, v2}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->access$002(Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;Z)Z

    move-object v1, v0

    .line 124
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 102
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    .line 105
    return-void

    .line 102
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setInjectionAllowed(Z)V
    .locals 1
    .parameter "injectionAllowed"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    if-eq v0, p1, :cond_0

    .line 49
    iput-boolean p1, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->persistBoolean(Z)Z

    .line 51
    invoke-direct {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->updateSummary()V

    .line 53
    :cond_0
    return-void
.end method
