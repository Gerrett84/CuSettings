.class Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment$2;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment$2;->this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment$2;->this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z
    invoke-static {v0, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->access$002(Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;Z)Z

    .line 112
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment$2;->this$0:Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 113
    return-void
.end method
