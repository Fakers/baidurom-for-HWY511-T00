.class public final Landroid/appwidget/AppWidgetContext;
.super Ljava/lang/Object;
.source "AppWidgetContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppWidgetContext"

.field private static m3DWidgetsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetContext;->m3DWidgetsList:Ljava/util/ArrayList;

    .line 53
    sget-object v0, Landroid/appwidget/AppWidgetContext;->m3DWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.mediatek.weather3dwidget"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Landroid/appwidget/AppWidgetContext;->m3DWidgetsList:Ljava/util/ArrayList;

    const-string v1, "com.mediatek.videofavorites"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensurePackageDexOpt(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 105
    const-string/jumbo v2, "user"

    const-string/jumbo v3, "ro.build.type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 111
    .local v1, ipm:Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->enforceDexOpt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    const-string v2, "AppWidgetContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppWidgetContext performDexOpt done, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AppWidgetContext"

    const-string/jumbo v3, "plugin performDexOpt exception occur"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    const-string v2, "AppWidgetContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppWidgetContext performDexOpt not work, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static newWidgetContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;
    .locals 5
    .parameter "context"
    .parameter "packageName"
    .parameter "hasUsedCustomerView"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x4

    .line 66
    .local v0, contextPermission:I
    const-string v2, "AppWidgetContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v2, Landroid/appwidget/AppWidgetContext;->m3DWidgetsList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    const-string v2, "AppWidgetContext"

    const-string v3, "context permission changed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x3

    .line 71
    if-eqz p2, :cond_0

    .line 72
    invoke-static {p1}, Landroid/appwidget/AppWidgetContext;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 77
    .local v1, theirContext:Landroid/content/Context;
    return-object v1
.end method

.method public static newWidgetContextAsUser(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/UserHandle;)Landroid/content/Context;
    .locals 5
    .parameter "context"
    .parameter "packageName"
    .parameter "hasUsedCustomerView"
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x4

    .line 87
    .local v0, contextPermission:I
    const-string v2, "AppWidgetContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v2, Landroid/appwidget/AppWidgetContext;->m3DWidgetsList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const-string v2, "AppWidgetContext"

    const-string v3, "context permission changed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x3

    .line 92
    if-eqz p2, :cond_0

    .line 93
    invoke-static {p1}, Landroid/appwidget/AppWidgetContext;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 100
    .local v1, theirContext:Landroid/content/Context;
    return-object v1

    .line 96
    .end local v1           #theirContext:Landroid/content/Context;
    :cond_1
    const-string v2, "AppWidgetContext"

    const-string v3, "context permission not changed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
