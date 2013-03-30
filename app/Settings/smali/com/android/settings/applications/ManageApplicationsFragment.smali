.class public Lcom/android/settings/applications/ManageApplicationsFragment;
.super Landroid/app/Fragment;
.source "ManageApplicationsFragment.java"


# instance fields
.field private mActivity:Lcom/android/settings/applications/ManageApplicationsActivity;

.field private mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "filter_app_key"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 20
    .local v1, listType:I
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplicationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ManageApplicationsActivity;

    iput-object v5, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActivity:Lcom/android/settings/applications/ManageApplicationsActivity;

    .line 21
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActivity:Lcom/android/settings/applications/ManageApplicationsActivity;

    invoke-virtual {v5}, Lcom/android/settings/applications/ManageApplicationsActivity;->getTabs()Ljava/util/ArrayList;

    move-result-object v4

    .line 22
    .local v4, tabs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    .line 23
    .local v3, tab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;
    iget v5, v3, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->mListType:I

    if-ne v5, v1, :cond_0

    .line 24
    iput-object v3, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    .line 29
    .end local v3           #tab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;
    :cond_1
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    if-eqz v5, :cond_2

    .line 30
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    invoke-virtual {v5, p1, p2, v2}, Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 34
    :cond_2
    return-object v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 40
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mActivity:Lcom/android/settings/applications/ManageApplicationsActivity;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplicationsFragment;->mTab:Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplicationsActivity;->updateCurrentTab(Lcom/android/settings/applications/ManageApplicationsActivity$TabInfo;)V

    .line 43
    :cond_0
    return-void
.end method
