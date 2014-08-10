.class public Lcom/mediatek/FMRadio/ChannelListActivity;
.super Landroid/app/ListActivity;
.source "ChannelListActivity.java"


# static fields
.field public static final ACTIVITY_RESULT:Ljava/lang/String; = "ACTIVITY_RESULT"

.field private static final TAG:Ljava/lang/String; = "ChannelListActivity"


# instance fields
.field private isAutoTune:Z

.field private mAutoTuneDialog:Landroid/app/ProgressDialog;

.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInputResultListener:Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;

.field protected mListAdapter:Lcom/mediatek/FMRadio/ChannelListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mMenu:Landroid/view/Menu;

.field private mOnTop:Z

.field private mService:Lcom/mediatek/FMRadio/FMRadioService;

.field private mShowAutoTuneDialog:Landroid/app/AlertDialog;

.field private mWaitingDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mShowAutoTuneDialog:Landroid/app/AlertDialog;

    .line 53
    iput-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    .line 57
    iput-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    .line 296
    new-instance v0, Lcom/mediatek/FMRadio/ChannelListActivity$3;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/ChannelListActivity$3;-><init>(Lcom/mediatek/FMRadio/ChannelListActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mHandler:Landroid/os/Handler;

    .line 311
    new-instance v0, Lcom/mediatek/FMRadio/ChannelListActivity$4;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/ChannelListActivity$4;-><init>(Lcom/mediatek/FMRadio/ChannelListActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mInputResultListener:Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;

    .line 331
    new-instance v0, Lcom/mediatek/FMRadio/ChannelListActivity$5;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/ChannelListActivity$5;-><init>(Lcom/mediatek/FMRadio/ChannelListActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/ChannelListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->isAutoTune:Z

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/FMRadio/ChannelListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->isAutoTune:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/ChannelListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mOnTop:Z

    return v0
.end method

.method private unregisterChannelListReceiver()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/FMRadio/ChannelListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    const-string v0, "ChannelListActivity"

    const-string v1, "unregisterer receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const-string v1, "ChannelListActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/ChannelListActivity;->setVolumeControlStream(I)V

    .line 67
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/mediatek/FMRadio/ChannelListActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ChannelListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mListView:Landroid/widget/ListView;

    .line 69
    iput-object p0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ChannelListActivity;->registerPlayListener()V

    .line 72
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ChannelListActivity;->registerChannelListReceiver()V

    .line 74
    new-instance v1, Lcom/mediatek/FMRadio/ChannelListAdapter;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/ChannelListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mListAdapter:Lcom/mediatek/FMRadio/ChannelListAdapter;

    .line 75
    iget-object v1, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mListAdapter:Lcom/mediatek/FMRadio/ChannelListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    invoke-static {p0}, Lcom/mediatek/FMRadio/CommonUI;->initWaitProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 79
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ChannelListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 80
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 81
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 189
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 190
    .local v0, menuInflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 191
    iput-object p1, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mMenu:Landroid/view/Menu;

    .line 192
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Lcom/mediatek/FMRadio/ChannelListActivity;->unregisterChannelListReceiver()V

    .line 172
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 174
    iput-object v1, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 179
    iput-object v1, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    .line 182
    :cond_1
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 183
    const-string v0, "ChannelListActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 277
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 278
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->doStopAutoTuning(Landroid/content/Context;Landroid/os/Handler;)V

    .line 280
    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 216
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 271
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 218
    :sswitch_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ChannelListActivity;->onBackPressed()V

    goto :goto_0

    .line 221
    :sswitch_1
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->getItemByFrequency(I)Lcom/mediatek/FMRadio/ItemHolder;

    move-result-object v0

    .line 225
    .local v0, curItemHolder:Lcom/mediatek/FMRadio/ItemHolder;
    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/ItemHolder;->getmFrequency()I

    move-result v2

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/ItemHolder;->getmStationName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mediatek/FMRadio/RenameDialog;->newInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/mediatek/FMRadio/RenameDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mInputResultListener:Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;

    invoke-virtual {v1, v2}, Lcom/mediatek/FMRadio/RenameDialog;->setOnInputResultListener(Lcom/mediatek/FMRadio/RenameDialog$OnInputResultListener;)V

    .line 229
    iget-object v1, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mListAdapter:Lcom/mediatek/FMRadio/ChannelListAdapter;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/ChannelListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 234
    .end local v0           #curItemHolder:Lcom/mediatek/FMRadio/ItemHolder;
    :sswitch_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/FMRadio/SleepDialog;->newInstance(Landroid/content/Context;)Lcom/mediatek/FMRadio/SleepDialog;

    goto :goto_0

    .line 237
    :sswitch_3
    iget-object v1, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->checkCurStatus(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mShowAutoTuneDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    .line 239
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080040

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x7f05

    new-instance v3, Lcom/mediatek/FMRadio/ChannelListActivity$2;

    invoke-direct {v3, p0}, Lcom/mediatek/FMRadio/ChannelListActivity$2;-><init>(Lcom/mediatek/FMRadio/ChannelListActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mShowAutoTuneDialog:Landroid/app/AlertDialog;

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mShowAutoTuneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 216
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b0043 -> :sswitch_1
        0x7f0b0044 -> :sswitch_2
        0x7f0b0045 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 141
    const-string v0, "ChannelListActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/ChannelListActivity;->refreshMenu()V

    .line 200
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 147
    const-string v0, "ChannelListActivity"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 132
    const-string v0, "ChannelListActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mOnTop:Z

    .line 134
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    .line 135
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 136
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 153
    const-string v0, "ChannelListActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 159
    const-string v0, "ChannelListActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mOnTop:Z

    .line 162
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isApplicationTop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    .line 166
    :cond_0
    return-void
.end method

.method public refreshMenu()V
    .locals 3

    .prologue
    const v2, 0x7f0b0044

    const v1, 0x7f0b0043

    .line 205
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isStationSaved(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 211
    :cond_1
    return-void

    .line 206
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerChannelListReceiver()V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.huawei.android.FMRadio.autotunecomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "com.huawei.android.FMRadio.cancelautotune"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "com.huawei.android.FMRadio.headsetunplug"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "com.huawei.android.FMRadio.headsetplug.play"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "com.huawei.android.FMRadio.headsetplug.search"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "com.huawei.android.FMRadio.open"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "com.huawei.android.FMRadio.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "com.huawei.android.FMRadio.stopstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/FMRadio/ChannelListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    const-string v1, "ChannelListActivity"

    const-string v2, "Have register a receiver!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public registerPlayListener()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/mediatek/FMRadio/ChannelListActivity$1;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/ChannelListActivity$1;-><init>(Lcom/mediatek/FMRadio/ChannelListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    :cond_0
    const-string v0, "ChannelListActivity"

    const-string v1, "Have register a OnItemClickListener for mListView!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public startAutoTune(Z)V
    .locals 3
    .parameter "keepCollected"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/FMRadio/CommonUI;->initAutoTuneDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;

    invoke-static {v0, v1, v2, p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->doAutoTuning(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/ChannelListActivity;->isAutoTune:Z

    .line 294
    return-void
.end method
