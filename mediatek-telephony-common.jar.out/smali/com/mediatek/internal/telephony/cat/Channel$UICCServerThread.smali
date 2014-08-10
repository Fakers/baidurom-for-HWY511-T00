.class public Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cat/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UICCServerThread"
.end annotation


# static fields
.field private static final RETRY_ACCEPT_SLEEPTIME:I = 0x64

.field private static final RETRY_COUNT:I = 0x4


# instance fields
.field di:Ljava/io/DataInputStream;

.field mReTryCount:I

.field mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/cat/Channel;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/cat/Channel;Lcom/mediatek/internal/telephony/cat/TcpServerChannel;)V
    .locals 2
    .parameter
    .parameter "tcpServerChannel"

    .prologue
    const/4 v1, 0x0

    .line 473
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/mediatek/internal/telephony/cat/Channel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/mediatek/internal/telephony/cat/TcpServerChannel;

    .line 467
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->mReTryCount:I

    .line 468
    iput-object v1, p0, Lcom/mediatek/internal/telephony/cat/Channel$UICCServerThread;->di:Ljava/io/DataInputStream;

    .line 478
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 657
    return-void
.end method
