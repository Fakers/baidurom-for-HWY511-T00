.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/LightsService$Light;

.field private final mBatteryLowARGB:I

.field private final mBatteryMediumARGB:I

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/LightsService;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "lights"

    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 755
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    .line 757
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 759
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 761
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 763
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 765
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 767
    return-void
.end method

.method private getIpoLedStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 819
    const-string v0, "1"

    const-string v1, "sys.ipo.ledon"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->ipo_led_on:Z
    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->access$1102(Lcom/android/server/BatteryService;Z)Z

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    const-string v0, "0"

    const-string v1, "sys.ipo.ledon"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->ipo_led_off:Z
    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->access$1202(Lcom/android/server/BatteryService;Z)Z

    goto :goto_0
.end method

.method private updateLedStatus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 832
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->ipo_led_off:Z
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mIPOBoot:Z
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->LowLevelFlag:Z
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mIPOBoot:Z
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 834
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->mIPOBoot:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$102(Lcom/android/server/BatteryService;Z)Z

    .line 835
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->ipo_led_off:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$1202(Lcom/android/server/BatteryService;Z)Z

    .line 836
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->ipo_led_on:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$1102(Lcom/android/server/BatteryService;Z)Z

    .line 841
    :cond_2
    return-void
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 8

    .prologue
    const/16 v7, 0x5a

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 773
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)I

    move-result v0

    .line 774
    .local v0, level:I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryStatus:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)I

    move-result v1

    .line 775
    .local v1, status:I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mIPOBoot:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 778
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->getIpoLedStatus()V

    .line 780
    :cond_0
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 781
    if-ne v1, v5, :cond_1

    .line 782
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->updateLedStatus()V

    .line 784
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService$Light;->setColor(I)V

    .line 817
    :goto_0
    return-void

    .line 786
    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->LowLevelFlag:Z
    invoke-static {v2, v6}, Lcom/android/server/BatteryService;->access$1002(Lcom/android/server/BatteryService;Z)Z

    .line 787
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->updateLedStatus()V

    .line 789
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0

    .line 792
    :cond_2
    if-eq v1, v5, :cond_3

    if-ne v1, v3, :cond_6

    .line 794
    :cond_3
    if-eq v1, v3, :cond_4

    if-lt v0, v7, :cond_5

    .line 795
    :cond_4
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->updateLedStatus()V

    .line 797
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 799
    :cond_5
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->updateLedStatus()V

    .line 801
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 804
    :cond_6
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->ipo_led_on:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1100(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mIPOBoot:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 805
    if-eq v1, v3, :cond_7

    if-lt v0, v7, :cond_9

    .line 806
    :cond_7
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService$Light;->setColor(I)V

    .line 811
    :goto_1
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->mIPOBoot:Z
    invoke-static {v2, v4}, Lcom/android/server/BatteryService;->access$102(Lcom/android/server/BatteryService;Z)Z

    .line 812
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->ipo_led_on:Z
    invoke-static {v2, v4}, Lcom/android/server/BatteryService;->access$1102(Lcom/android/server/BatteryService;Z)Z

    .line 815
    :cond_8
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_0

    .line 809
    :cond_9
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_1
.end method
