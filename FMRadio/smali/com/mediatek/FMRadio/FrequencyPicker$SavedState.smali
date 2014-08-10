.class Lcom/mediatek/FMRadio/FrequencyPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "FrequencyPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FrequencyPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/FMRadio/FrequencyPicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFrequency:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/mediatek/FMRadio/FrequencyPicker$SavedState$1;

    invoke-direct {v0}, Lcom/mediatek/FMRadio/FrequencyPicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/mediatek/FMRadio/FrequencyPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/FrequencyPicker$SavedState;->mFrequency:I

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mediatek/FMRadio/FrequencyPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FrequencyPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0
    .parameter "superState"
    .parameter "frequency"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 132
    iput p2, p0, Lcom/mediatek/FMRadio/FrequencyPicker$SavedState;->mFrequency:I

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;ILcom/mediatek/FMRadio/FrequencyPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/mediatek/FMRadio/FrequencyPicker$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-void
.end method


# virtual methods
.method public getFrequency()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/mediatek/FMRadio/FrequencyPicker$SavedState;->mFrequency:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 147
    iget v0, p0, Lcom/mediatek/FMRadio/FrequencyPicker$SavedState;->mFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    return-void
.end method
