.class Lcom/android/settings/permission/RootManageActivity$LBEConnection;
.super Lcom/lbe/security/sdk/SDKConnection;
.source "RootManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/permission/RootManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LBEConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/permission/RootManageActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/permission/RootManageActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "sdkAppName"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings/permission/RootManageActivity$LBEConnection;->this$0:Lcom/android/settings/permission/RootManageActivity;

    .line 117
    invoke-direct {p0, p2, p3}, Lcom/lbe/security/sdk/SDKConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    return-void
.end method


# virtual methods
.method public OnSDKConnected(Lcom/lbe/security/sdk/SDKService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings/permission/RootManageActivity$LBEConnection;->this$0:Lcom/android/settings/permission/RootManageActivity;

    invoke-virtual {p1}, Lcom/lbe/security/sdk/SDKService;->getHIPSService()Lcom/lbe/security/service/privacy/HIPSService;

    move-result-object v1

    #setter for: Lcom/android/settings/permission/RootManageActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;
    invoke-static {v0, v1}, Lcom/android/settings/permission/RootManageActivity;->access$202(Lcom/android/settings/permission/RootManageActivity;Lcom/lbe/security/service/privacy/HIPSService;)Lcom/lbe/security/service/privacy/HIPSService;

    .line 126
    iget-object v0, p0, Lcom/android/settings/permission/RootManageActivity$LBEConnection;->this$0:Lcom/android/settings/permission/RootManageActivity;

    invoke-virtual {p1}, Lcom/lbe/security/sdk/SDKService;->getSDKHelper()Lcom/lbe/security/service/sdkhelper/SDKHelper;

    move-result-object v1

    #setter for: Lcom/android/settings/permission/RootManageActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;
    invoke-static {v0, v1}, Lcom/android/settings/permission/RootManageActivity;->access$302(Lcom/android/settings/permission/RootManageActivity;Lcom/lbe/security/service/sdkhelper/SDKHelper;)Lcom/lbe/security/service/sdkhelper/SDKHelper;

    .line 127
    iget-object v0, p0, Lcom/android/settings/permission/RootManageActivity$LBEConnection;->this$0:Lcom/android/settings/permission/RootManageActivity;

    #getter for: Lcom/android/settings/permission/RootManageActivity;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;
    invoke-static {v0}, Lcom/android/settings/permission/RootManageActivity;->access$300(Lcom/android/settings/permission/RootManageActivity;)Lcom/lbe/security/service/sdkhelper/SDKHelper;

    move-result-object v0

    const/16 v1, 0xe7f

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->setPermissionFilter(I)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/permission/RootManageActivity$LBEConnection;->this$0:Lcom/android/settings/permission/RootManageActivity;

    #getter for: Lcom/android/settings/permission/RootManageActivity;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;
    invoke-static {v0}, Lcom/android/settings/permission/RootManageActivity;->access$200(Lcom/android/settings/permission/RootManageActivity;)Lcom/lbe/security/service/privacy/HIPSService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lbe/security/service/privacy/HIPSService;->setFilterSystemPackage(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/permission/RootManageActivity$LBEConnection;->this$0:Lcom/android/settings/permission/RootManageActivity;

    #calls: Lcom/android/settings/permission/RootManageActivity;->updateRootState()V
    invoke-static {v0}, Lcom/android/settings/permission/RootManageActivity;->access$400(Lcom/android/settings/permission/RootManageActivity;)V

    .line 130
    const-string v0, "LBE-Sec"

    const-string v1, "SDK Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public OnSDKDisconnected()V
    .locals 2

    .prologue
    .line 135
    const-string v0, "LBE-Sec"

    const-string v1, "SDK Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method
