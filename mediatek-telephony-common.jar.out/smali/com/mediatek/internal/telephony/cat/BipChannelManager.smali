.class Lcom/mediatek/internal/telephony/cat/BipChannelManager;
.super Ljava/lang/Object;
.source "BipChannelManager.java"


# static fields
.field public static final MAXCHANNELID:I = 0x1

.field public static final MAXPSCID:I = 0x1

.field public static final MAXUICCSERVIER:I = 0x1


# instance fields
.field private mBipChannelStatus:[I

.field private mChannelIdPool:B

.field private mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

.field private mCurrentOccupiedPSCh:B

.field private mCurrentOccupiedUICCSerCh:B


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    .line 69
    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    .line 70
    iput-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    .line 71
    iput-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    .line 72
    iput-object v4, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mBipChannelStatus:[I

    .line 75
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mBipChannelStatus:[I

    .line 76
    new-array v1, v3, [Lcom/mediatek/internal/telephony/cat/Channel;

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    .line 77
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 78
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    aput-object v4, v1, v0

    .line 79
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mBipChannelStatus:[I

    aput v2, v1, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public acquireChannelId(I)I
    .locals 8
    .parameter "protocolType"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, i:B
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireChannelId, protocolType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",occupied "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-ne v7, p1, :cond_0

    iget-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    if-le v5, v2, :cond_2

    :cond_0
    if-eq v5, p1, :cond_1

    if-ne v6, p1, :cond_3

    :cond_1
    iget-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    if-gt v5, v2, :cond_3

    .line 118
    :cond_2
    :goto_0
    return v1

    .line 106
    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_2

    .line 107
    iget-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    shl-int v3, v5, v0

    and-int/2addr v2, v3

    if-nez v2, :cond_7

    .line 108
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    shl-int v2, v5, v0

    int-to-byte v2, v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    .line 109
    if-ne v7, p1, :cond_5

    .line 110
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    .line 114
    :cond_4
    :goto_2
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireChannelId, mChannelIdPool "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 111
    :cond_5
    if-eq v5, p1, :cond_6

    if-ne v6, p1, :cond_4

    .line 113
    :cond_6
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    goto :goto_2

    .line 106
    :cond_7
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_1
.end method

.method public addChannel(ILcom/mediatek/internal/telephony/cat/Channel;)I
    .locals 4
    .parameter "cId"
    .parameter "ch"

    .prologue
    .line 186
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BCM-addChannel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    if-lez p1, :cond_0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    add-int/lit8 v2, p1, -0x1

    aput-object p2, v1, v2

    .line 190
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mBipChannelStatus:[I

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local p1
    :goto_0
    return p1

    .line 191
    .restart local p1
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IndexOutOfBoundsException addChannel cId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    const/4 p1, -0x1

    goto :goto_0

    .line 196
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const-string v1, "[BIP]"

    const-string v2, "No free channel id."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBipChannelStatus(I)I
    .locals 2
    .parameter "cId"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mBipChannelStatus:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getChannel(I)Lcom/mediatek/internal/telephony/cat/Channel;
    .locals 4
    .parameter "cId"

    .prologue
    .line 203
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-object v1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IndexOutOfBoundsException getChannel cId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFreeChannelId()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    .line 91
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    shl-int v2, v3, v0

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 92
    add-int/lit8 v1, v0, 0x1

    .line 95
    :goto_1
    return v1

    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isChannelIdOccupied(I)Z
    .locals 4
    .parameter "cId"

    .prologue
    const/4 v0, 0x1

    .line 84
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChannelIdOccupied, mChannelIdPool "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    add-int/lit8 v2, p1, -0x1

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClientChannelOpened()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 237
    const/4 v1, 0x0

    .line 239
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 240
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 247
    :goto_1
    return v2

    .line 239
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isClientChannelOpened channel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public releaseChannelId(I)V
    .locals 6
    .parameter "cId"

    .prologue
    const/4 v5, 0x1

    .line 148
    const/4 v1, -0x1

    .line 151
    .local v1, protocolType:I
    :try_start_0
    iget-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    add-int/lit8 v3, p1, -0x1

    int-to-byte v3, v3

    shl-int v3, v5, v3

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 152
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseChannelId, cId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been released."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 155
    :cond_0
    if-gtz p1, :cond_1

    .line 156
    const-string v2, "[BIP]"

    const-string v3, "cId==0, it\'s no valid cid."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException releaseChannelId cId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    .line 160
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    iget v1, v2, Lcom/mediatek/internal/telephony/cat/Channel;->mProtocolType:I

    .line 166
    const/4 v2, 0x3

    if-ne v2, v1, :cond_3

    iget-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    if-lez v2, :cond_3

    .line 167
    iget-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    .line 174
    :goto_1
    iget-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    add-int/lit8 v3, p1, -0x1

    int-to-byte v3, v3

    shl-int v3, v5, v3

    xor-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    and-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    .line 175
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseChannelId, cId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",protocolType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",occupied "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_2
    const-string v2, "[BIP]"

    const-string v3, "channel object is null."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :cond_3
    if-eq v5, v1, :cond_4

    const/4 v2, 0x2

    if-ne v2, v1, :cond_5

    :cond_4
    iget-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    if-lez v2, :cond_5

    .line 170
    iget-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    goto :goto_1

    .line 172
    :cond_5
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseChannelId, bad parameters.cId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public releaseChannelId(II)V
    .locals 5
    .parameter "cId"
    .parameter "protocolType"

    .prologue
    const/4 v4, 0x1

    .line 122
    :try_start_0
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    add-int/lit8 v2, p1, -0x1

    int-to-byte v2, v2

    shl-int v2, v4, v2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 123
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseChannelId, cId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been released."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 126
    :cond_0
    if-gtz p1, :cond_1

    .line 127
    const-string v1, "[BIP]"

    const-string v2, "cId==0, it\'s no valid cid."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IndexOutOfBoundsException releaseChannelId cId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    const/4 v1, 0x3

    if-ne v1, p2, :cond_2

    :try_start_1
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    if-ltz v1, :cond_2

    .line 132
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    .line 139
    :goto_1
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    add-int/lit8 v2, p1, -0x1

    int-to-byte v2, v2

    shl-int v2, v4, v2

    xor-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    and-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    .line 140
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseChannelId, cId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",protocolType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",occupied "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedUICCSerCh:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_2
    if-eq v4, p2, :cond_3

    const/4 v1, 0x2

    if-ne v1, p2, :cond_4

    :cond_3
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    if-ltz v1, :cond_4

    .line 135
    iget-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mCurrentOccupiedPSCh:B

    goto :goto_1

    .line 137
    :cond_4
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseChannelId, bad parameters.cId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannelIdPool:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public removeChannel(I)I
    .locals 5
    .parameter "cId"

    .prologue
    .line 222
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BCM-removeChannel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->releaseChannelId(I)V

    .line 225
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 226
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mBipChannelStatus:[I

    add-int/lit8 v3, p1, -0x1

    const/4 v4, 0x2

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    const/4 v2, 0x1

    .line 233
    :goto_0
    return v2

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException removeChannel cId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 230
    :catch_1
    move-exception v1

    .line 231
    .local v1, e1:Ljava/lang/NullPointerException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeChannel channel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setBipChannelStatus(II)V
    .locals 4
    .parameter "cId"
    .parameter "status"

    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mBipChannelStatus:[I

    add-int/lit8 v2, p1, -0x1

    aput p2, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IndexOutOfBoundsException setBipChannelStatus cId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateBipChannelStatus(II)V
    .locals 5
    .parameter "cId"
    .parameter "chStatus"

    .prologue
    .line 251
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    aget-object v2, v2, p1

    iput p2, v2, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatus:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException updateBipChannelStatus cId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 255
    .local v1, e1:Ljava/lang/NullPointerException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBipChannelStatus id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateChannelStatus(II)V
    .locals 5
    .parameter "cId"
    .parameter "chStatus"

    .prologue
    .line 261
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    iput p2, v2, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatus:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException updateChannelStatus cId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 265
    .local v1, e1:Ljava/lang/NullPointerException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateChannelStatus id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateChannelStatusInfo(II)V
    .locals 5
    .parameter "cId"
    .parameter "chStatusInfo"

    .prologue
    .line 270
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/cat/BipChannelManager;->mChannels:[Lcom/mediatek/internal/telephony/cat/Channel;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/mediatek/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/mediatek/common/telephony/ChannelStatus;

    iput p2, v2, Lcom/mediatek/common/telephony/ChannelStatus;->mChannelStatusInfo:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException updateChannelStatusInfo cId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 274
    .local v1, e1:Ljava/lang/NullPointerException;
    const-string v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateChannelStatusInfo id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
