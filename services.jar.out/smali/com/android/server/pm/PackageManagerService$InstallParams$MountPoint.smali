.class Lcom/android/server/pm/PackageManagerService$InstallParams$MountPoint;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService$InstallParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MountPoint"
.end annotation


# instance fields
.field mIsExternal:Z

.field mIsMounted:Z

.field mPath:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 0
    .parameter

    .prologue
    .line 6669
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$MountPoint;->this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallParams;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6669
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$InstallParams$MountPoint;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;)V

    return-void
.end method
