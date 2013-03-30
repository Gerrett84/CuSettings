.class Lcom/android/settings/permission/PermListActivity$1;
.super Ljava/lang/Object;
.source "PermListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/permission/PermListActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/permission/PermListActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/permission/PermListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings/permission/PermListActivity$1;->this$0:Lcom/android/settings/permission/PermListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/permission/PermListActivity$1;->this$0:Lcom/android/settings/permission/PermListActivity;

    #getter for: Lcom/android/settings/permission/PermListActivity;->mPermMonitorEnable:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/permission/PermListActivity;->access$000(Lcom/android/settings/permission/PermListActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 93
    return-void
.end method
