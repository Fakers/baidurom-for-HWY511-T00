.class public Lcom/mediatek/common/telephony/gsm/PBEntry;
.super Ljava/lang/Object;
.source "PBEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/common/telephony/gsm/PBEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_NOT_SET:I = -0x1

.field public static final STRING_NOT_SET:Ljava/lang/String; = ""


# instance fields
.field private mAdnumber:Ljava/lang/String;

.field private mAdtype:I

.field private mEmail:Ljava/lang/String;

.field private mGroup:Ljava/lang/String;

.field private mHidden:I

.field private mIndex1:I

.field private mNumber:Ljava/lang/String;

.field private mSecondtext:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/mediatek/common/telephony/gsm/PBEntry$1;

    invoke-direct {v0}, Lcom/mediatek/common/telephony/gsm/PBEntry$1;-><init>()V

    sput-object v0, Lcom/mediatek/common/telephony/gsm/PBEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mIndex1:I

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mNumber:Ljava/lang/String;

    .line 85
    iput v1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mType:I

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mText:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mHidden:I

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mGroup:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mAdnumber:Ljava/lang/String;

    .line 91
    iput v1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mAdtype:I

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mSecondtext:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mEmail:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static reateFromParcel(Landroid/os/Parcel;)Lcom/mediatek/common/telephony/gsm/PBEntry;
    .locals 2
    .parameter "source"

    .prologue
    .line 107
    new-instance v0, Lcom/mediatek/common/telephony/gsm/PBEntry;

    invoke-direct {v0}, Lcom/mediatek/common/telephony/gsm/PBEntry;-><init>()V

    .line 108
    .local v0, p:Lcom/mediatek/common/telephony/gsm/PBEntry;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mIndex1:I

    .line 109
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mNumber:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mType:I

    .line 111
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mText:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mHidden:I

    .line 113
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mGroup:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mAdnumber:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mAdtype:I

    .line 116
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mSecondtext:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mEmail:Ljava/lang/String;

    .line 118
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getAdnumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mAdnumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAdtype()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mAdtype:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getHidden()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mHidden:I

    return v0
.end method

.method public getIndex1()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mIndex1:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondtext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mSecondtext:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mType:I

    return v0
.end method

.method public setAdnumber(Ljava/lang/String;)V
    .locals 0
    .parameter "sAdnumber"

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    iput-object p1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mAdnumber:Ljava/lang/String;

    .line 186
    :cond_0
    return-void
.end method

.method public setAdtype(I)V
    .locals 0
    .parameter "iAdtype"

    .prologue
    .line 189
    iput p1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mAdtype:I

    .line 190
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "sEmail"

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    iput-object p1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mEmail:Ljava/lang/String;

    .line 200
    :cond_0
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .parameter "sGroup"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mGroup:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setHidden(I)V
    .locals 0
    .parameter "iHidden"

    .prologue
    .line 175
    iput p1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mHidden:I

    .line 176
    return-void
.end method

.method public setIndex1(I)V
    .locals 0
    .parameter "iIndex1"

    .prologue
    .line 157
    iput p1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mIndex1:I

    .line 158
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "sNumber"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mNumber:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setSecondtext(Ljava/lang/String;)V
    .locals 0
    .parameter "sSecondtext"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mSecondtext:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "sText"

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    iput-object p1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mText:Ljava/lang/String;

    .line 172
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "iType"

    .prologue
    .line 165
    iput p1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mType:I

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mIndex1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hidden:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mHidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", group:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adnumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mAdnumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adtype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mAdtype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondtext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mSecondtext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "dest"

    .prologue
    .line 122
    iget v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mIndex1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mHidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mGroup:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mAdnumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mAdtype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mSecondtext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/mediatek/common/telephony/gsm/PBEntry;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/mediatek/common/telephony/gsm/PBEntry;->writeToParcel(Landroid/os/Parcel;)V

    .line 136
    return-void
.end method
