.class public Lcom/mediatek/FMRadio/FMRadioWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "FMRadioWidget.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FMRadioWidget"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.mediatek.FMRadio"

    const-string v2, "com.mediatek.FMRadio.FMRadioWidget"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioWidget;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioWidget;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static configChange(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "cmd"

    .prologue
    .line 58
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/mediatek/FMRadio/FMRadioWidget;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v2, calendarWidget:Landroid/content/ComponentName;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 61
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 62
    .local v0, appWidgetIds:[I
    invoke-static {p0, v0, p1}, Lcom/mediatek/FMRadio/FMRadioWidget;->performUpdate(Landroid/content/Context;[ILjava/lang/String;)V

    .line 64
    return-void
.end method

.method private hasInstances(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 37
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 38
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/mediatek/FMRadio/FMRadioWidget;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 39
    .local v0, appWidgetIds:[I
    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;[I)V
    .locals 5
    .parameter "context"
    .parameter "remoteViews"
    .parameter "appWidgetIds"

    .prologue
    const/4 v4, 0x0

    .line 172
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.mediatek.FMRadio.FMRadioService"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    .local v2, serviceName:Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.huawei.android.FMRadio.servicecommand.intoapp"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 176
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 177
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    const/high16 v3, 0x7f0b

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 179
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "com.huawei.android.FMRadio.servicecommand.togglepause"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 181
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 182
    const v3, 0x7f0b0006

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 184
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "com.huawei.android.FMRadio.servicecommand.previous"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 186
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 187
    const v3, 0x7f0b0002

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 189
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "com.huawei.android.FMRadio.servicecommand.next"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 191
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 192
    const v3, 0x7f0b0007

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 194
    invoke-static {p0, p2, p1}, Lcom/mediatek/FMRadio/FMRadioWidget;->pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V

    .line 195
    return-void
.end method

.method private static performUpdate(Landroid/content/Context;[ILjava/lang/String;)V
    .locals 12
    .parameter "service"
    .parameter "appWidgetIds"
    .parameter "cmd"

    .prologue
    .line 75
    const-string v9, "FMRadioWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "performUpdate getPackageName= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/high16 v10, 0x7f03

    invoke-direct {v6, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 78
    .local v6, mRemoteViews:Landroid/widget/RemoteViews;
    if-eqz p2, :cond_2

    .line 79
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "com.huawei.android.FMRadio.openfm"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "com.huawei.android.FMRadio.stopfm"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 82
    .local v0, color:I
    const v9, 0x7f0b0004

    invoke-virtual {v6, v9, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 83
    const v9, 0x7f0b0004

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 84
    const v9, 0x7f0b0005

    const/16 v10, 0x8

    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 85
    const v9, 0x7f0b0002

    const-string v10, "setEnabled"

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v10, v11}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 86
    const v9, 0x7f0b0007

    const-string v10, "setEnabled"

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v10, v11}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 87
    const v9, 0x7f0b0006

    const-string v10, "setEnabled"

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v10, v11}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 88
    const v9, 0x7f0b0006

    const-string v10, "setBackgroundResource"

    const v11, 0x7f020009

    invoke-virtual {v6, v9, v10, v11}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 90
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 91
    const v9, 0x7f0b0004

    const v10, 0x7f080041

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 155
    :cond_1
    :goto_0
    invoke-static {p0, v6, p1}, Lcom/mediatek/FMRadio/FMRadioWidget;->linkButtons(Landroid/content/Context;Landroid/widget/RemoteViews;[I)V

    .line 157
    .end local v0           #color:I
    :cond_2
    return-void

    .line 93
    .restart local v0       #color:I
    :cond_3
    const-string v9, "com.huawei.android.FMRadio.openfm"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 94
    const v9, 0x7f0b0004

    const v10, 0x7f08002f

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_4
    const-string v9, "com.huawei.android.FMRadio.stopfm"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 97
    const v9, 0x7f0b0004

    const v10, 0x7f080030

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 101
    .end local v0           #color:I
    :cond_5
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v5

    .line 102
    .local v5, isPlaying:Z
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmStationList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_6

    const/4 v3, 0x1

    .line 103
    .local v3, isEmpty:Z
    :goto_1
    const/4 v2, 0x0

    .line 104
    .local v2, frequency:I
    if-eqz v5, :cond_7

    .line 105
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v2

    .line 112
    :goto_2
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v4

    .line 114
    .local v4, isFreqValid:Z
    const v10, 0x7f0b0002

    const-string v11, "setEnabled"

    if-eqz v5, :cond_8

    if-nez v3, :cond_8

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v6, v10, v11, v9}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 115
    const v10, 0x7f0b0007

    const-string v11, "setEnabled"

    if-eqz v5, :cond_9

    if-nez v3, :cond_9

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v6, v10, v11, v9}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 116
    const v9, 0x7f0b0006

    const-string v10, "setEnabled"

    const/4 v11, 0x1

    invoke-virtual {v6, v9, v10, v11}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 118
    if-eqz v5, :cond_a

    const v1, 0x7f060006

    .line 120
    .local v1, colorId:I
    :goto_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 121
    .restart local v0       #color:I
    const v9, 0x7f0b0004

    invoke-virtual {v6, v9, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 122
    const v9, 0x7f0b0005

    invoke-virtual {v6, v9, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 124
    if-eqz v5, :cond_b

    .line 125
    const v9, 0x7f0b0006

    const-string v10, "setBackgroundResource"

    const v11, 0x7f02000c

    invoke-virtual {v6, v9, v10, v11}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 127
    const v9, 0x7f0b0006

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f08004d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 134
    :goto_6
    if-eqz v4, :cond_d

    .line 135
    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioUtils;->getStationName(I)Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, name:Ljava/lang/String;
    if-nez v7, :cond_c

    .line 137
    const v9, 0x7f0b0004

    invoke-static {p0, v2}, Lcom/mediatek/FMRadio/FMRadioUtils;->getDefaultStationName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 139
    const v9, 0x7f0b0004

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 140
    const v9, 0x7f0b0005

    const/16 v10, 0x8

    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 102
    .end local v0           #color:I
    .end local v1           #colorId:I
    .end local v2           #frequency:I
    .end local v3           #isEmpty:Z
    .end local v4           #isFreqValid:Z
    .end local v7           #name:Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 107
    .restart local v2       #frequency:I
    .restart local v3       #isEmpty:Z
    :cond_7
    const-string v9, "com.mediatek.FMRadio"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 109
    .local v8, sharePerferences:Landroid/content/SharedPreferences;
    const-string v9, "last_freq"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto/16 :goto_2

    .line 114
    .end local v8           #sharePerferences:Landroid/content/SharedPreferences;
    .restart local v4       #isFreqValid:Z
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 115
    :cond_9
    const/4 v9, 0x0

    goto :goto_4

    .line 118
    :cond_a
    const v1, 0x7f060007

    goto :goto_5

    .line 129
    .restart local v0       #color:I
    .restart local v1       #colorId:I
    :cond_b
    const v9, 0x7f0b0006

    const-string v10, "setBackgroundResource"

    const v11, 0x7f020009

    invoke-virtual {v6, v9, v10, v11}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 131
    const v9, 0x7f0b0006

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f08004e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_6

    .line 142
    .restart local v7       #name:Ljava/lang/String;
    :cond_c
    const v9, 0x7f0b0004

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v2}, Lcom/mediatek/FMRadio/FMRadioUtils;->getDefaultStationName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 144
    const v9, 0x7f0b0004

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 145
    const v9, 0x7f0b0005

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 146
    const v9, 0x7f0b0005

    invoke-virtual {v6, v9, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 149
    .end local v7           #name:Ljava/lang/String;
    :cond_d
    const v9, 0x7f0b0004

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 150
    const v9, 0x7f0b0005

    const/16 v10, 0x8

    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 151
    const v9, 0x7f0b0004

    const/high16 v10, 0x7f08

    invoke-virtual {p0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private static pushUpdate(Landroid/content/Context;[ILandroid/widget/RemoteViews;)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter "remoteViews"

    .prologue
    .line 206
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 207
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {v0, p1, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    sget-object v1, Lcom/mediatek/FMRadio/FMRadioWidget;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 217
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 218
    const-string v0, "FMRadioWidget"

    const-string v1, "onDeleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 224
    const-string v0, "FMRadioWidget"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const-string v0, "FMRadioWidget"

    const-string v1, "initStationRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->initStationRecord(Landroid/content/Context;)V

    .line 229
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 46
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string v0, "FMRadioWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioWidget;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioWidget;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioWidget;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mediatek/FMRadio/FMRadioWidget;->performUpdate(Landroid/content/Context;[ILjava/lang/String;)V

    goto :goto_0
.end method
