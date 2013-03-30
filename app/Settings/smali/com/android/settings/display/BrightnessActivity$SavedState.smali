.class Lcom/android/settings/display/BrightnessActivity$SavedState;
.super Ljava/lang/Object;
.source "BrightnessActivity.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/BrightnessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/display/BrightnessActivity$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x25be8c40f17ab62dL


# instance fields
.field automatic:Z

.field curBrightness:I

.field oldAutomatic:Z

.field oldProgress:I

.field progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 299
    new-instance v0, Lcom/android/settings/display/BrightnessActivity$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/display/BrightnessActivity$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->automatic:Z

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->progress:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldAutomatic:Z

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldProgress:I

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->curBrightness:I

    .line 288
    return-void

    :cond_0
    move v0, v2

    .line 283
    goto :goto_0

    :cond_1
    move v1, v2

    .line 285
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 292
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->automatic:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldAutomatic:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity$SavedState;->curBrightness:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    return-void

    :cond_0
    move v0, v2

    .line 292
    goto :goto_0

    :cond_1
    move v1, v2

    .line 294
    goto :goto_1
.end method
