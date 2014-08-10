.class public Landroid/util/LongSparseLongArray;
.super Ljava/lang/Object;
.source "LongSparseLongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[J

.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/LongSparseLongArray;-><init>(I)V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealLongArraySize(I)I

    move-result p1

    .line 50
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 51
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 53
    return-void
.end method

.method private growKeyAndValueArrays(I)V
    .locals 6
    .parameter "minNeededSize"

    .prologue
    const/4 v5, 0x0

    .line 217
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealLongArraySize(I)I

    move-result v0

    .line 219
    .local v0, n:I
    new-array v1, v0, [J

    .line 220
    .local v1, nkeys:[J
    new-array v2, v0, [J

    .line 222
    .local v2, nvalues:[J
    iget-object v3, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget-object v4, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iget-object v3, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget-object v4, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iput-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 226
    iput-object v2, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    .line 227
    return-void
.end method


# virtual methods
.method public append(JJ)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 201
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 202
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 214
    :goto_0
    return-void

    .line 206
    :cond_0
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 207
    .local v0, pos:I
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 208
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Landroid/util/LongSparseLongArray;->growKeyAndValueArrays(I)V

    .line 211
    :cond_1
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 212
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aput-wide p3, v1, v0

    .line 213
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 194
    return-void
.end method

.method public clone()Landroid/util/LongSparseLongArray;
    .locals 3

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 59
    .local v1, clone:Landroid/util/LongSparseLongArray;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/LongSparseLongArray;

    move-object v1, v0

    .line 60
    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Landroid/util/LongSparseLongArray;->mKeys:[J

    .line 61
    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Landroid/util/LongSparseLongArray;->mValues:[J
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(J)V
    .locals 4
    .parameter "key"

    .prologue
    .line 94
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 96
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Landroid/util/LongSparseLongArray;->removeAt(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public get(J)J
    .locals 2
    .parameter "key"

    .prologue
    .line 73
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(JJ)J
    .locals 4
    .parameter "key"
    .parameter "valueIfKeyNotFound"

    .prologue
    .line 81
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 83
    .local v0, i:I
    if-gez v0, :cond_0

    .line 86
    .end local p3
    :goto_0
    return-wide p3

    .restart local p3
    :cond_0
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aget-wide p3, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(J)I
    .locals 3
    .parameter "key"

    .prologue
    .line 170
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(J)I
    .locals 3
    .parameter "value"

    .prologue
    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 183
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 186
    .end local v0           #i:I
    :goto_1
    return v0

    .line 182
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 152
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JJ)V
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 116
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 118
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 119
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aput-wide p3, v1, v0

    .line 136
    :goto_0
    return-void

    .line 121
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 123
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 124
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Landroid/util/LongSparseLongArray;->growKeyAndValueArrays(I)V

    .line 127
    :cond_1
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 128
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/util/LongSparseLongArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/util/LongSparseLongArray;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    :cond_2
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    aput-wide p1, v1, v0

    .line 133
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aput-wide p3, v1, v0

    .line 134
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    goto :goto_0
.end method

.method public removeAt(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 105
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v3, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget v3, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    .line 108
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return v0
.end method

.method public valueAt(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 161
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method
