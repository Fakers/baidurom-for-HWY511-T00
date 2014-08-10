.class public Lcom/android/internal/telephony/gemini/GeminiDataConn;
.super Lcom/android/internal/util/StateMachine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gemini/GeminiDataConn$1;,
        Lcom/android/internal/telephony/gemini/GeminiDataConn$e;,
        Lcom/android/internal/telephony/gemini/GeminiDataConn$b;,
        Lcom/android/internal/telephony/gemini/GeminiDataConn$a;,
        Lcom/android/internal/telephony/gemini/GeminiDataConn$d;,
        Lcom/android/internal/telephony/gemini/GeminiDataConn$c;
    }
.end annotation


# static fields
.field protected static final BASE:I = 0x43000

.field protected static final DBG:Z = true

.field protected static final EVENT_CLEANUP_ALL:I = 0x43002

.field protected static final EVENT_CONNECT:I = 0x43000

.field protected static final EVENT_CONNECTED:I = 0x43003

.field protected static final EVENT_DETACH_DONE:I = 0x43004

.field protected static final EVENT_DISCONNECT:I = 0x43001

.field protected static final VDBG:Z


# instance fields
.field private a:Lcom/android/internal/telephony/Phone;

.field private b:Lcom/android/internal/telephony/gemini/GeminiDataConn$c;

.field private c:Lcom/android/internal/telephony/gemini/GeminiDataConn$d;

.field private d:Lcom/android/internal/telephony/gemini/GeminiDataConn$a;

.field private e:Lcom/android/internal/telephony/gemini/GeminiDataConn$b;

.field private f:Lcom/android/internal/telephony/gemini/GeminiDataConn$e;

.field protected mAc:Lcom/android/internal/util/AsyncChannel;

.field protected mApnTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mId:I

.field protected mIdleRgisttrants:Landroid/os/RegistrantList;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mIdleRgisttrants:Landroid/os/RegistrantList;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mApnTypes:Ljava/util/HashSet;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataConn$c;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn$c;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataConn;Lcom/android/internal/telephony/gemini/GeminiDataConn$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->b:Lcom/android/internal/telephony/gemini/GeminiDataConn$c;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataConn$d;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn$d;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataConn;Lcom/android/internal/telephony/gemini/GeminiDataConn$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->c:Lcom/android/internal/telephony/gemini/GeminiDataConn$d;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataConn$a;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataConn;Lcom/android/internal/telephony/gemini/GeminiDataConn$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->d:Lcom/android/internal/telephony/gemini/GeminiDataConn$a;

    .line 103
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataConn$b;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn$b;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataConn;Lcom/android/internal/telephony/gemini/GeminiDataConn$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->e:Lcom/android/internal/telephony/gemini/GeminiDataConn$b;

    .line 104
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn$e;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataConn;Lcom/android/internal/telephony/gemini/GeminiDataConn$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->f:Lcom/android/internal/telephony/gemini/GeminiDataConn$e;

    .line 108
    const-string v0, "GeminiDataConn constructor E"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->log(Ljava/lang/String;)V

    .line 109
    check-cast p1, Lcom/android/internal/telephony/PhoneProxy;

    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->a:Lcom/android/internal/telephony/Phone;

    .line 110
    iput p3, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mId:I

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->f:Lcom/android/internal/telephony/gemini/GeminiDataConn$e;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->addState(Lcom/android/internal/util/State;)V

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->b:Lcom/android/internal/telephony/gemini/GeminiDataConn$c;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->f:Lcom/android/internal/telephony/gemini/GeminiDataConn$e;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->c:Lcom/android/internal/telephony/gemini/GeminiDataConn$d;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->f:Lcom/android/internal/telephony/gemini/GeminiDataConn$e;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->d:Lcom/android/internal/telephony/gemini/GeminiDataConn$a;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->f:Lcom/android/internal/telephony/gemini/GeminiDataConn$e;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->e:Lcom/android/internal/telephony/gemini/GeminiDataConn$b;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->f:Lcom/android/internal/telephony/gemini/GeminiDataConn$e;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->b:Lcom/android/internal/telephony/gemini/GeminiDataConn$c;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->setInitialState(Lcom/android/internal/util/State;)V

    .line 119
    const-string v0, "GeminiDataConn constructor X"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->log(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataConn;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/telephony/gemini/GeminiDataConn$d;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->c:Lcom/android/internal/telephony/gemini/GeminiDataConn$d;

    return-object v0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataConn;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataConn;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private a()Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "com.mtk.GPRS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 135
    const-string v3, "ATTACH_MODE"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 136
    if-ne v3, v4, :cond_1

    .line 137
    const-class v0, Lcom/mediatek/common/telephony/IGsmDCTExt;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/IGsmDCTExt;

    .line 138
    invoke-interface {v0}, Lcom/mediatek/common/telephony/IGsmDCTExt;->isPsDetachWhenAllPdpDeactivated()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 151
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 142
    goto :goto_0

    .line 146
    :cond_1
    const-string v4, "ATTACH_MODE_SIM"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 147
    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v3

    if-ne v0, v3, :cond_2

    move v0, v2

    .line 148
    goto :goto_0

    :cond_2
    move v0, v1

    .line 151
    goto :goto_0
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiDataConn;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "No APN is using, then clean up all"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->log(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->b()V

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->e:Lcom/android/internal/telephony/gemini/GeminiDataConn$b;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 162
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 170
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_0
    const-string v0, "detachPS()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->log(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->a:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x43004

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->detachPS(Landroid/os/Message;)V

    .line 175
    return-void
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiDataConn;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->b()V

    return-void
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiDataConn;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/telephony/gemini/GeminiDataConn$a;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->d:Lcom/android/internal/telephony/gemini/GeminiDataConn$a;

    return-object v0
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiDataConn;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic d(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/telephony/gemini/GeminiDataConn$b;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->e:Lcom/android/internal/telephony/gemini/GeminiDataConn$b;

    return-object v0
.end method

.method static synthetic d(Lcom/android/internal/telephony/gemini/GeminiDataConn;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->a:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiDataConn;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic f(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/telephony/gemini/GeminiDataConn$c;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->b:Lcom/android/internal/telephony/gemini/GeminiDataConn$c;

    return-object v0
.end method

.method static synthetic g(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/android/internal/telephony/gemini/GeminiDataConn;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cleanupAllConnection()V
    .locals 1

    .prologue
    .line 186
    const v0, 0x43002

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->sendMessage(Landroid/os/Message;)V

    .line 187
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 547
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void
.end method

.method public notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mId:I

    if-ne p6, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const v0, 0x43003

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataConn;->sendMessage(Landroid/os/Message;)V

    .line 183
    :cond_0
    return-void
.end method

.method public registerForIdle(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 191
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mIdleRgisttrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 192
    return-void
.end method

.method public unregisterForIdle(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataConn;->mIdleRgisttrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 196
    return-void
.end method
