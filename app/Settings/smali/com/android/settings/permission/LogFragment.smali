.class public Lcom/android/settings/permission/LogFragment;
.super Lcom/android/settings/permission/BasePermissionFragment;
.source "LogFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/permission/LogFragment$PermLogAdapter;,
        Lcom/android/settings/permission/LogFragment$EventLogInfo;
    }
.end annotation


# instance fields
.field private mEventLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/permission/LogFragment$EventLogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mLogAdapter:Lcom/android/settings/permission/LogFragment$PermLogAdapter;

.field private mTitleDate:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/permission/BasePermissionFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/permission/LogFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getFormatLogTime(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "date"
    .parameter "format"

    .prologue
    .line 99
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/permission/LogFragment;->setHasOptionsMenu(Z)V

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/permission/BasePermissionFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 129
    const/4 v0, 0x1

    const v1, 0x7f0c06ec

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 132
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/permission/BasePermissionFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 133
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 106
    const v1, 0x7f040060

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 138
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/permission/LogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c06ec

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 140
    const v1, 0x7f0c06ed

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 141
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/permission/LogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/permission/LogFragment$1;-><init>(Lcom/android/settings/permission/LogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 152
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return v3
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 10
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const v9, 0x7f09000c

    const/4 v7, 0x0

    .line 236
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v0, p2, v6

    .line 237
    .local v0, index:I
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 238
    .local v5, topView:Landroid/view/View;
    if-nez v5, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    if-nez p2, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-ltz v6, :cond_3

    .line 243
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 244
    .local v3, titleView:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleDate:Ljava/lang/String;

    .line 245
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/permission/LogFragment;->mTitleDate:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v8, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-gez v6, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v6, 0x8

    goto :goto_1

    .line 250
    .end local v3           #titleView:Landroid/widget/TextView;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/permission/LogFragment$EventLogInfo;

    .line 252
    .local v1, itemInfo:Lcom/android/settings/permission/LogFragment$EventLogInfo;
    iget v6, v1, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mType:I

    if-eqz v6, :cond_4

    .line 253
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;

    iget v8, v1, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mDatePos:I

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/permission/LogFragment$EventLogInfo;

    iget-object v6, v6, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mTimeStamp:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleDate:Ljava/lang/String;

    .line 254
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 255
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #itemInfo:Lcom/android/settings/permission/LogFragment$EventLogInfo;
    check-cast v1, Lcom/android/settings/permission/LogFragment$EventLogInfo;

    .line 256
    .restart local v1       #itemInfo:Lcom/android/settings/permission/LogFragment$EventLogInfo;
    iget v6, v1, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mType:I

    if-nez v6, :cond_5

    .line 257
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int v4, v6, v8

    .line 258
    .local v4, topMargin:I
    if-gez v4, :cond_5

    .line 259
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 260
    .local v2, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 261
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 264
    .restart local v3       #titleView:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/permission/LogFragment;->mTitleDate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 265
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/permission/LogFragment;->mTitleDate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 271
    .end local v2           #layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #titleView:Landroid/widget/TextView;
    .end local v4           #topMargin:I
    :cond_4
    iget-object v6, v1, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mTimeStamp:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleDate:Ljava/lang/String;

    .line 274
    :cond_5
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleDate:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleDate:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 275
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/permission/LogFragment;->mTitleDate:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :cond_6
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 278
    .restart local v2       #layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz v6, :cond_0

    .line 279
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 280
    iget-object v6, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 286
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lcom/android/settings/permission/BasePermissionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 113
    const v0, 0x7f09000c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/permission/LogFragment;->mTitleView:Landroid/widget/TextView;

    .line 114
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/permission/LogFragment;->mListView:Landroid/widget/ListView;

    .line 115
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/permission/LogFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 117
    return-void
.end method

.method public updateUI()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    .line 57
    new-instance v2, Lcom/lbe/security/service/privacy/EventFilter;

    invoke-direct {v2}, Lcom/lbe/security/service/privacy/EventFilter;-><init>()V

    .line 58
    .local v2, eventFilter:Lcom/lbe/security/service/privacy/EventFilter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v2, Lcom/lbe/security/service/privacy/EventFilter;->timestop:Ljava/lang/Long;

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide v9, 0x9a7ec800L

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v2, Lcom/lbe/security/service/privacy/EventFilter;->timestart:Ljava/lang/Long;

    .line 60
    iget-object v7, v2, Lcom/lbe/security/service/privacy/EventFilter;->timestart:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-gez v7, :cond_0

    .line 61
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v2, Lcom/lbe/security/service/privacy/EventFilter;->timestart:Ljava/lang/Long;

    .line 64
    :cond_0
    iget-object v7, p0, Lcom/android/settings/permission/LogFragment;->mHipSService:Lcom/lbe/security/service/privacy/HIPSService;

    const-string v8, "timestamp"

    invoke-virtual {v7, v2, v8, v11}, Lcom/lbe/security/service/privacy/HIPSService;->queryLog(Lcom/lbe/security/service/privacy/EventFilter;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    .line 65
    .local v4, eventLogList:Ljava/util/List;,"Ljava/util/List<Lcom/lbe/security/bean/EventLog;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, currentDatePos:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 69
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lbe/security/bean/EventLog;

    invoke-virtual {v7}, Lcom/lbe/security/bean/EventLog;->getTimestamp()J

    move-result-wide v7

    const-string v9, "yyyy-MM-dd"

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/settings/permission/LogFragment;->getFormatLogTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, date:Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lbe/security/bean/EventLog;

    invoke-virtual {v7}, Lcom/lbe/security/bean/EventLog;->getTimestamp()J

    move-result-wide v7

    const-string v9, "HH:mm"

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/settings/permission/LogFragment;->getFormatLogTime(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, time:Ljava/lang/String;
    if-eqz v5, :cond_1

    iget-object v7, p0, Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/permission/LogFragment$EventLogInfo;

    iget-object v7, v7, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 73
    :cond_1
    new-instance v3, Lcom/android/settings/permission/LogFragment$EventLogInfo;

    invoke-direct {v3}, Lcom/android/settings/permission/LogFragment$EventLogInfo;-><init>()V

    .line 74
    .local v3, eventLogInfo:Lcom/android/settings/permission/LogFragment$EventLogInfo;
    iput-object v1, v3, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mTimeStamp:Ljava/lang/String;

    .line 75
    iput v11, v3, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mType:I

    .line 76
    iget-object v7, p0, Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v7, p0, Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .line 80
    .end local v3           #eventLogInfo:Lcom/android/settings/permission/LogFragment$EventLogInfo;
    :cond_2
    new-instance v3, Lcom/android/settings/permission/LogFragment$EventLogInfo;

    invoke-direct {v3}, Lcom/android/settings/permission/LogFragment$EventLogInfo;-><init>()V

    .line 81
    .restart local v3       #eventLogInfo:Lcom/android/settings/permission/LogFragment$EventLogInfo;
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lbe/security/bean/EventLog;

    iput-object v7, v3, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mEventLog:Lcom/lbe/security/bean/EventLog;

    .line 82
    iput-object v6, v3, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mTimeStamp:Ljava/lang/String;

    .line 83
    iput v0, v3, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mDatePos:I

    .line 84
    const/4 v7, 0x1

    iput v7, v3, Lcom/android/settings/permission/LogFragment$EventLogInfo;->mType:I

    .line 85
    iget-object v7, p0, Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 88
    .end local v1           #date:Ljava/lang/String;
    .end local v3           #eventLogInfo:Lcom/android/settings/permission/LogFragment$EventLogInfo;
    .end local v6           #time:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/android/settings/permission/LogFragment;->mLogAdapter:Lcom/android/settings/permission/LogFragment$PermLogAdapter;

    if-nez v7, :cond_4

    .line 89
    new-instance v7, Lcom/android/settings/permission/LogFragment$PermLogAdapter;

    iget-object v8, p0, Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;

    invoke-direct {v7, p0, v8}, Lcom/android/settings/permission/LogFragment$PermLogAdapter;-><init>(Lcom/android/settings/permission/LogFragment;Ljava/util/ArrayList;)V

    iput-object v7, p0, Lcom/android/settings/permission/LogFragment;->mLogAdapter:Lcom/android/settings/permission/LogFragment$PermLogAdapter;

    .line 90
    iget-object v7, p0, Lcom/android/settings/permission/LogFragment;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/settings/permission/LogFragment;->mLogAdapter:Lcom/android/settings/permission/LogFragment$PermLogAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/permission/LogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 96
    return-void

    .line 92
    :cond_4
    iget-object v7, p0, Lcom/android/settings/permission/LogFragment;->mLogAdapter:Lcom/android/settings/permission/LogFragment$PermLogAdapter;

    iget-object v8, p0, Lcom/android/settings/permission/LogFragment;->mEventLogList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/android/settings/permission/LogFragment$PermLogAdapter;->setPermLogList(Ljava/util/ArrayList;)V

    .line 93
    iget-object v7, p0, Lcom/android/settings/permission/LogFragment;->mLogAdapter:Lcom/android/settings/permission/LogFragment$PermLogAdapter;

    invoke-virtual {v7}, Lcom/android/settings/permission/LogFragment$PermLogAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
