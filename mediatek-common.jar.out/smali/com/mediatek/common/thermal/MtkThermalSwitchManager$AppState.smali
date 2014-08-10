.class public final enum Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;
.super Ljava/lang/Enum;
.source "MtkThermalSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

.field public static final enum Dead:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

.field public static final enum Destroyed:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

.field public static final enum Paused:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

.field public static final enum Resumed:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    const-string v1, "Paused"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;->Paused:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    .line 72
    new-instance v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    const-string v1, "Resumed"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;->Resumed:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    .line 73
    new-instance v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    const-string v1, "Destroyed"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;->Destroyed:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    .line 74
    new-instance v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    const-string v1, "Dead"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;->Dead:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    sget-object v1, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;->Paused:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;->Resumed:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;->Destroyed:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;->Dead:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;->$VALUES:[Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;
    .locals 1
    .parameter "name"

    .prologue
    .line 70
    const-class v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;->$VALUES:[Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    invoke-virtual {v0}, [Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    return-object v0
.end method
