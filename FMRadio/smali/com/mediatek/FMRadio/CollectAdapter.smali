.class public Lcom/mediatek/FMRadio/CollectAdapter;
.super Landroid/widget/BaseAdapter;
.source "CollectAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CollectAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNormalColor:I

.field private mPlayColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/mediatek/FMRadio/CollectAdapter;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/CollectAdapter;->mPlayColor:I

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/FMRadio/CollectAdapter;->mNormalColor:I

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x8

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 38
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioUtils;->mCollectStation:[Lcom/mediatek/FMRadio/ItemHolder;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 51
    if-nez p2, :cond_0

    .line 52
    iget-object v8, p0, Lcom/mediatek/FMRadio/CollectAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 53
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030001

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 54
    const/4 v7, 0x0

    .line 55
    .local v7, minHeight:I
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/mediatek/FMRadio/CollectAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v9, :cond_1

    .line 56
    iget-object v8, p0, Lcom/mediatek/FMRadio/CollectAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070027

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 63
    :goto_0
    invoke-virtual {p2, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 66
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v7           #minHeight:I
    :cond_0
    const v8, 0x7f0b0008

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 67
    .local v4, mAddView:Landroid/widget/ImageView;
    const v8, 0x7f0b0009

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 68
    .local v6, mNoNameView:Landroid/widget/TextView;
    const v8, 0x7f0b000a

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 70
    .local v5, mNameView:Landroid/widget/TextView;
    sget-object v8, Lcom/mediatek/FMRadio/FMRadioUtils;->mCollectStation:[Lcom/mediatek/FMRadio/ItemHolder;

    aget-object v3, v8, p1

    .line 71
    .local v3, itemHolder:Lcom/mediatek/FMRadio/ItemHolder;
    const-string v8, "CollectAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "itemHolder = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-nez v3, :cond_2

    .line 74
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 109
    :goto_1
    return-object p2

    .line 59
    .end local v3           #itemHolder:Lcom/mediatek/FMRadio/ItemHolder;
    .end local v4           #mAddView:Landroid/widget/ImageView;
    .end local v5           #mNameView:Landroid/widget/TextView;
    .end local v6           #mNoNameView:Landroid/widget/TextView;
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    .restart local v7       #minHeight:I
    :cond_1
    iget-object v8, p0, Lcom/mediatek/FMRadio/CollectAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070039

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_0

    .line 80
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v7           #minHeight:I
    .restart local v3       #itemHolder:Lcom/mediatek/FMRadio/ItemHolder;
    .restart local v4       #mAddView:Landroid/widget/ImageView;
    .restart local v5       #mNameView:Landroid/widget/TextView;
    .restart local v6       #mNoNameView:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v3}, Lcom/mediatek/FMRadio/ItemHolder;->getmFrequency()I

    move-result v8

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v9

    if-ne v8, v9, :cond_3

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v2, 0x1

    .line 83
    .local v2, isPlay:Z
    :goto_2
    invoke-virtual {v3}, Lcom/mediatek/FMRadio/ItemHolder;->getmFrequency()I

    move-result v8

    invoke-static {v8}, Lcom/mediatek/FMRadio/FMRadioUtils;->getDisplayFrequency(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, displayFrequency:Ljava/lang/String;
    const-string v8, "CollectAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "itemHolder.getmStationName() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/ItemHolder;->getmStationName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v3}, Lcom/mediatek/FMRadio/ItemHolder;->getmStationName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    .line 87
    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    if-eqz v2, :cond_4

    .line 92
    iget v8, p0, Lcom/mediatek/FMRadio/CollectAdapter;->mPlayColor:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 80
    .end local v0           #displayFrequency:Ljava/lang/String;
    .end local v2           #isPlay:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 94
    .restart local v0       #displayFrequency:Ljava/lang/String;
    .restart local v2       #isPlay:Z
    :cond_4
    iget v8, p0, Lcom/mediatek/FMRadio/CollectAdapter;->mNormalColor:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 97
    :cond_5
    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    invoke-virtual {v3}, Lcom/mediatek/FMRadio/ItemHolder;->getmStationName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    if-eqz v2, :cond_6

    .line 102
    iget v8, p0, Lcom/mediatek/FMRadio/CollectAdapter;->mPlayColor:I

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 104
    :cond_6
    iget v8, p0, Lcom/mediatek/FMRadio/CollectAdapter;->mNormalColor:I

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1
.end method
