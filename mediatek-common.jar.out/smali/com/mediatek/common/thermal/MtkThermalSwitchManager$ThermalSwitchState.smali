.class Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalSwitchState;
.super Ljava/lang/Object;
.source "MtkThermalSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThermalSwitchState"
.end annotation


# static fields
.field public static final Disabled:I = 0x3

.field public static final Disabling:I = 0x2

.field public static final Enabling:I = 0x4

.field public static final Init:I = 0x0

.field public static final Ready:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;


# direct methods
.method constructor <init>(Lcom/mediatek/common/thermal/MtkThermalSwitchManager;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$ThermalSwitchState;->this$0:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
