.class public Lcom/android/settings/FontSizePreference;
.super Lmiui/preference/RadioButtonPreference;
.source "FontSizePreference.java"


# instance fields
.field private mPreviewSize:I

.field private mRowHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 24
    invoke-super {p0, p1}, Lmiui/preference/RadioButtonPreference;->onBindView(Landroid/view/View;)V

    .line 26
    iget v1, p0, Lcom/android/settings/FontSizePreference;->mRowHeight:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 27
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 28
    .local v0, textView:Landroid/widget/TextView;
    iget v1, p0, Lcom/android/settings/FontSizePreference;->mPreviewSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 29
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #textView:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 30
    .restart local v0       #textView:Landroid/widget/TextView;
    iget v1, p0, Lcom/android/settings/FontSizePreference;->mPreviewSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 31
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "rowHeight"
    .parameter "previewSize"

    .prologue
    .line 18
    iput p1, p0, Lcom/android/settings/FontSizePreference;->mRowHeight:I

    .line 19
    iput p2, p0, Lcom/android/settings/FontSizePreference;->mPreviewSize:I

    .line 20
    return-void
.end method
