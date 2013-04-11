.class Lcom/android/settings/permission/LogFragment$PermLogAdapter;
.super Landroid/widget/BaseAdapter;
.source "LogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/permission/LogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermLogAdapter"
.end annotation


# instance fields
.field private mPermEventLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/permission/LogFragment$EventLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/permission/LogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/permission/LogFragment;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/permission/LogFragment$EventLogInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p2, permEventLogList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/permission/LogFragment$EventLogInfo;>;"
    iput-object p1, p0, Lcom/android/settings/permission/LogFragment$PermLogAdapter;->this$0:Lcom/android/settings/permission/LogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 159
    iput-object p2, p0, Lcom/android/settings/permission/LogFragment$PermLogAdapter;->mPermEventLogList:Ljava/util/ArrayList;

    .line 160
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment$PermLogAdapter;->mPermEventLogList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 178
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 183
    iget-object v12, p0, Lcom/android/settings/permission/LogFragment$PermLogAdapter;->mPermEventLogList:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/permission/LogFragment$EventLogInfo;

    .line 184
    .local v4, eventLogInfo:Lcom/android/settings/permission/LogFragment$EventLogInfo;
    const/4 v11, 0x0

    .line 185
    .local v11, view:Landroid/view/View;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/permission/LogFragment$EventLogInfo;

    iget v12, v12, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mType:I

    iget v13, v4, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mType:I

    if-ne v12, v13, :cond_0

    .line 186
    move-object/from16 v11, p2

    .line 194
    :goto_0
    invoke-virtual {v11, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 195
    iget v12, v4, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mType:I

    if-nez v12, :cond_2

    .line 196
    const v12, 0x7f09000c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 197
    .local v3, date:Landroid/widget/TextView;
    iget-object v12, v4, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    .end local v3           #date:Landroid/widget/TextView;
    :goto_1
    return-object v11

    .line 188
    :cond_0
    const v5, 0x7f040061

    .line 189
    .local v5, layoutId:I
    iget v12, v4, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mType:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 190
    const v5, 0x7f04005f

    .line 192
    :cond_1
    iget-object v12, p0, Lcom/android/settings/permission/LogFragment$PermLogAdapter;->this$0:Lcom/android/settings/permission/LogFragment;

    invoke-virtual {v12}, Lcom/android/settings/permission/LogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v5, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    goto :goto_0

    .line 202
    .end local v5           #layoutId:I
    :cond_2
    const v12, 0x7f090012

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 203
    .local v1, appNameView:Landroid/widget/TextView;
    const v12, 0x7f0900e0

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 204
    .local v7, permView:Landroid/widget/TextView;
    const v12, 0x7f090016

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 205
    .local v9, statusView:Landroid/widget/TextView;
    const v12, 0x7f090047

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 207
    .local v10, timeView:Landroid/widget/TextView;
    iget-object v12, p0, Lcom/android/settings/permission/LogFragment$PermLogAdapter;->this$0:Lcom/android/settings/permission/LogFragment;

    invoke-virtual {v12}, Lcom/android/settings/permission/LogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 209
    .local v8, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v12, v4, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mEventLog:Lcom/lbe/security/bean/EventLog;

    invoke-virtual {v12}, Lcom/lbe/security/bean/EventLog;->getPkg()I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, packages:[Ljava/lang/String;
    if-eqz v6, :cond_3

    array-length v12, v6

    if-lez v12, :cond_3

    .line 211
    const/4 v12, 0x0

    aget-object v12, v6, v12

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 214
    .local v2, applicationInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, appName:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 221
    .end local v0           #appName:Ljava/lang/String;
    .end local v2           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v6           #packages:[Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v12, v4, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mEventLog:Lcom/lbe/security/bean/EventLog;

    invoke-virtual {v12}, Lcom/lbe/security/bean/EventLog;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v12, v4, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :try_start_1
    iget-object v12, p0, Lcom/android/settings/permission/LogFragment$PermLogAdapter;->this$0:Lcom/android/settings/permission/LogFragment;

    iget-object v12, v12, Lcom/android/settings/permission/LogFragment;->mSDKHelper:Lcom/lbe/security/service/sdkhelper/SDKHelper;

    iget-object v13, v4, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mEventLog:Lcom/lbe/security/bean/EventLog;

    invoke-virtual {v13}, Lcom/lbe/security/bean/EventLog;->getAction()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/lbe/security/service/sdkhelper/SDKHelper;->getActionColoredName(I)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lcom/lbe/security/sdk/SDKException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 225
    :catch_0
    move-exception v12

    goto/16 :goto_1

    .line 217
    :catch_1
    move-exception v12

    goto :goto_2
.end method

.method public setPermLogList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/permission/LogFragment$EventLogInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, permEventLogList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/permission/LogFragment$EventLogInfo;>;"
    iput-object p1, p0, Lcom/android/settings/permission/LogFragment$PermLogAdapter;->mPermEventLogList:Ljava/util/ArrayList;

    .line 164
    return-void
.end method
