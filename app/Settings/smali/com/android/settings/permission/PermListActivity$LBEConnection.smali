.class Lcom/android/settings/permission/PermListActivity$LBEConnection;
.super Lcom/lbe/security/sdk/SDKConnection;
.source "PermListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/permission/PermListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LBEConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/permission/PermListActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/permission/PermListActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "sdkAppName"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/permission/PermListActivity$LBEConnection;->this$0:Lcom/android/settings/permission/PermListActivity;

    .line 129
    invoke-direct {p0, p2, p3}, Lcom/lbe/security/sdk/SDKConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    return-void
.end method


# virtual methods
.method public OnSDKConnected(Lcom/lbe/security/sdk/SDKService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/permission/PermListActivity$LBEConnection;->this$0:Lcom/android/settings/permission/PermListActivity;

    invoke-virtual {p1}, Lcom/lbe/security/sdk/SDKService;->getHIPSService()Lcom/lbe/security/service/privacy/HIPSService;

    move-result-object v1

    #setter for: Lcom/android/settings/permission/PermListActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;
    invoke-static {v0, v1}, Lcom/android/settings/permission/PermListActivity;->access$202(Lcom/android/settings/permission/PermListActivity;Lcom/lbe/security/service/privacy/HIPSService;)Lcom/lbe/security/service/privacy/HIPSService;

    .line 135
    iget-object v0, p0, Lcom/android/settings/permission/PermListActivity$LBEConnection;->this$0:Lcom/android/settings/permission/PermListActivity;

    invoke-virtual {p1}, Lcom/lbe/security/sdk/SDKService;->getSDKHelper()Lcom/lbe/security/service/sdkhelper/SDKHelper;

    move-result-object v1

    #setter for: Lcom/android/settings/permission/PermListActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;
    invoke-static {v0, v1}, Lcom/android/settings/permission/PermListActivity;->access$302(Lcom/android/settings/permission/PermListActivity;Lcom/lbe/security/service/sdkhelper/SDKHelper;)Lcom/lbe/security/service/sdkhelper/SDKHelper;

    .line 136
    iget-object v0, p0, Lcom/android/settings/permission/PermListActivity$LBEConnection;->this$0:Lcom/android/settings/permission/PermListActivity;

    #getter for: Lcom/android/settings/permission/PermListActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;
    invoke-static {v0}, Lcom/android/settings/permission/PermListActivity;->access$300(Lcom/android/settings/permission/PermListActivity;)Lcom/lbe/security/service/sdkhelper/SDKHelper;

    move-result-object v0

    const/16 v1, 0xe7f

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->setPermissionFilter(I)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/permission/PermListActivity$LBEConnection;->this$0:Lcom/android/settings/permission/PermListActivity;

    #getter for: Lcom/android/settings/permission/PermListActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;
    invoke-static {v0}, Lcom/android/settings/permission/PermListActivity;->access$200(Lcom/android/settings/permission/PermListActivity;)Lcom/lbe/security/service/privacy/HIPSService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/privacy/HIPSService;->setFilterSystemPackage(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/permission/PermListActivity$LBEConnection;->this$0:Lcom/android/settings/permission/PermListActivity;

    #calls: Lcom/android/settings/permission/PermListActivity;->updateUI()V
    invoke-static {v0}, Lcom/android/settings/permission/PermListActivity;->access$400(Lcom/android/settings/permission/PermListActivity;)V

    .line 139
    const-string v0, "LBE-Sec"

    const-string v1, "SDK Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method public OnSDKDisconnected()V
    .locals 2

    .prologue
    .line 144
    const-string v0, "LBE-Sec"

    const-string v1, "SDK Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method
