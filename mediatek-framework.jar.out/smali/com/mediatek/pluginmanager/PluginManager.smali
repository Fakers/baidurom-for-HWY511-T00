.class public final Lcom/mediatek/pluginmanager/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Lcom/mediatek/common/pluginmanager/IPluginManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mediatek/common/pluginmanager/IPluginManager;"
    }
.end annotation


# static fields
.field private static final DEFAULT_VERSION_META_NAME:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "PluginManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mForceSignatureCheck:Z

.field private final mPermissionCheck:Z

.field private final mPkgMgr:Landroid/content/pm/PackageManager;

.field private final mPluginIntent:Ljava/lang/String;

.field private mPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/pluginmanager/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestVersionCheck:Z

.field private final mSignatures:[Landroid/content/pm/Signature;

.field private final mVersion:Lcom/mediatek/pluginmanager/Version;


# direct methods
.method varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;[Landroid/content/pm/Signature;)V
    .locals 2
    .parameter "context"
    .parameter "pluginIntent"
    .parameter "permissionCheck"
    .parameter "forceSignatureCheck"
    .parameter "version"
    .parameter "signatures"

    .prologue
    .line 222
    .local p0, this:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 223
    if-nez p1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pluginIntent cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_2
    iput-object p1, p0, Lcom/mediatek/pluginmanager/PluginManager;->mContext:Landroid/content/Context;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPlugins:Ljava/util/ArrayList;

    .line 232
    iput-boolean p3, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPermissionCheck:Z

    .line 233
    iput-boolean p4, p0, Lcom/mediatek/pluginmanager/PluginManager;->mForceSignatureCheck:Z

    .line 234
    iput-object p6, p0, Lcom/mediatek/pluginmanager/PluginManager;->mSignatures:[Landroid/content/pm/Signature;

    .line 235
    iput-object p2, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPluginIntent:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 237
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->mRequestVersionCheck:Z

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->mVersion:Lcom/mediatek/pluginmanager/Version;

    .line 245
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/pluginmanager/PluginManager;->refreshPlugin()I

    .line 246
    return-void

    .line 241
    :cond_4
    new-instance v0, Lcom/mediatek/pluginmanager/Version;

    invoke-direct {v0, p5}, Lcom/mediatek/pluginmanager/Version;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->mVersion:Lcom/mediatek/pluginmanager/Version;

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->mRequestVersionCheck:Z

    goto :goto_0
.end method

.method private checkPermission(Landroid/content/pm/PackageInfo;)Z
    .locals 8
    .parameter "pkgInfo"

    .prologue
    .local p0, this:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<TT;>;"
    const/4 v5, 0x1

    .line 250
    iget-boolean v6, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPermissionCheck:Z

    if-eqz v6, :cond_0

    .line 251
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 252
    .local v3, permissions:[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 264
    .end local v3           #permissions:[Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 255
    .restart local v3       #permissions:[Ljava/lang/String;
    :cond_1
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 256
    .local v4, permit:Ljava/lang/String;
    const/4 v6, -0x1

    iget-object v7, p0, Lcom/mediatek/pluginmanager/PluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 257
    const-string v5, "PluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The plugin \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' request for permission \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' which is not allowed on calling process"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v5, 0x0

    goto :goto_0

    .line 255
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private checkSignature(Landroid/content/pm/PackageInfo;)Z
    .locals 12
    .parameter "pkgInfo"

    .prologue
    .local p0, this:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<TT;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 271
    const-string v9, "ro.secure"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->mForceSignatureCheck:Z

    if-eqz v9, :cond_3

    .line 275
    :cond_0
    iget-object v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget-object v10, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->checkAPKSignatures(Ljava/lang/String;)I

    move-result v6

    .line 276
    .local v6, systemSignatureCheck:I
    const-string v9, "PluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mPkgMgr.checkAPKSignatures("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v9, 0x5

    if-eq v6, v9, :cond_1

    if-nez v6, :cond_3

    .line 280
    :cond_1
    iget-object v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->mSignatures:[Landroid/content/pm/Signature;

    array-length v9, v9

    if-nez v9, :cond_4

    .line 281
    :cond_2
    const-string v7, "PluginManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The plugin \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' didn\'t signed by system signature and no specified signature by host-app."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 304
    .end local v6           #systemSignatureCheck:I
    :cond_3
    :goto_0
    return v7

    .line 285
    .restart local v6       #systemSignatureCheck:I
    :cond_4
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 286
    .local v5, signatures:[Landroid/content/pm/Signature;
    if-nez v5, :cond_5

    .line 287
    const-string v7, "PluginManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The plugin \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' didn\'t signed."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 288
    goto :goto_0

    .line 291
    :cond_5
    move-object v0, v5

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_7

    aget-object v4, v0, v2

    .line 292
    .local v4, signature:Landroid/content/pm/Signature;
    const-string v9, "PluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Plugin signatures: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->mSignatures:[Landroid/content/pm/Signature;

    array-length v9, v9

    if-ge v1, v9, :cond_6

    .line 294
    const-string v9, "PluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Requested signatures["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/pluginmanager/PluginManager;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v11, v11, v1

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->mSignatures:[Landroid/content/pm/Signature;

    aget-object v9, v9, v1

    invoke-virtual {v9, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 291
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v4           #signature:Landroid/content/pm/Signature;
    :cond_7
    move v7, v8

    .line 300
    goto/16 :goto_0
.end method

.method private checkVersion(Landroid/content/pm/ServiceInfo;)Z
    .locals 4
    .parameter "info"

    .prologue
    .line 334
    .local p0, this:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<TT;>;"
    iget-boolean v1, p0, Lcom/mediatek/pluginmanager/PluginManager;->mRequestVersionCheck:Z

    if-eqz v1, :cond_0

    .line 335
    invoke-direct {p0, p1}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginVersion(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, pluginVersion:Ljava/lang/String;
    const-string v1, "PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host request version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/pluginmanager/PluginManager;->mVersion:Lcom/mediatek/pluginmanager/Version;

    invoke-virtual {v3}, Lcom/mediatek/pluginmanager/Version;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " plugin version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v1, p0, Lcom/mediatek/pluginmanager/PluginManager;->mVersion:Lcom/mediatek/pluginmanager/Version;

    invoke-virtual {v1, v0}, Lcom/mediatek/pluginmanager/Version;->isCompatible(Ljava/lang/String;)Z

    move-result v1

    .line 339
    .end local v0           #pluginVersion:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static varargs create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;
    .locals 6
    .parameter "context"
    .parameter "pluginIntent"
    .parameter "version"
    .parameter "signatures"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ")",
            "Lcom/mediatek/pluginmanager/PluginManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 154
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v0

    return-object v0
.end method

.method public static varargs create(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;
    .locals 7
    .parameter "context"
    .parameter "pluginIntent"
    .parameter "permissionCheck"
    .parameter "forceSignatureCheck"
    .parameter "version"
    .parameter "signatures"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ")",
            "Lcom/mediatek/pluginmanager/PluginManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Lcom/mediatek/pluginmanager/PluginManager;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/pluginmanager/PluginManager;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;[Landroid/content/pm/Signature;)V

    return-object v0
.end method

.method public static varargs create(Landroid/content/Context;Ljava/lang/String;ZZ[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;
    .locals 7
    .parameter "context"
    .parameter "pluginIntent"
    .parameter "permissionCheck"
    .parameter "forceSignatureCheck"
    .parameter "signatures"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZZ[",
            "Landroid/content/pm/Signature;",
            ")",
            "Lcom/mediatek/pluginmanager/PluginManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lcom/mediatek/pluginmanager/PluginManager;

    const-string v5, ""

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/pluginmanager/PluginManager;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;[Landroid/content/pm/Signature;)V

    return-object v0
.end method

.method public static varargs create(Landroid/content/Context;Ljava/lang/String;Z[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;
    .locals 7
    .parameter "context"
    .parameter "pluginIntent"
    .parameter "permissionCheck"
    .parameter "signatures"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z[",
            "Landroid/content/pm/Signature;",
            ")",
            "Lcom/mediatek/pluginmanager/PluginManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Lcom/mediatek/pluginmanager/PluginManager;

    const/4 v4, 0x0

    const-string v5, ""

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/pluginmanager/PluginManager;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;[Landroid/content/pm/Signature;)V

    return-object v0
.end method

.method public static varargs create(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;
    .locals 1
    .parameter "context"
    .parameter "pluginIntent"
    .parameter "signatures"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ")",
            "Lcom/mediatek/pluginmanager/PluginManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-static {p0, p1, v0, v0, p2}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;ZZ[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;
    .locals 8
    .parameter "context"
    .parameter "pluginIntent"
    .parameter "version"
    .parameter "metaName"
    .parameter "signatures"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 121
    new-instance v0, Lcom/mediatek/pluginmanager/PluginManager;

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/pluginmanager/PluginManager;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;[Landroid/content/pm/Signature;)V

    .line 122
    .local v0, pluginManager:Lcom/mediatek/pluginmanager/PluginManager;
    invoke-virtual {v0}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v0, v3}, Lcom/mediatek/pluginmanager/PluginManager;->getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;

    move-result-object v7

    .line 124
    .local v7, plugin:Lcom/mediatek/pluginmanager/Plugin;
    invoke-virtual {v7, p3}, Lcom/mediatek/pluginmanager/Plugin;->createObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 126
    .end local v7           #plugin:Lcom/mediatek/pluginmanager/Plugin;
    :cond_0
    new-instance v1, Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such plugin \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;
    .locals 1
    .parameter "context"
    .parameter "pluginIntent"
    .parameter "metaName"
    .parameter "signatures"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
        }
    .end annotation

    .prologue
    .line 103
    const-string v0, ""

    invoke-static {p0, p1, v0, p2, p3}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;
    .locals 1
    .parameter "context"
    .parameter "pluginIntent"
    .parameter "signatures"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
        }
    .end annotation

    .prologue
    .line 86
    const-string v0, "class"

    invoke-static {p0, p1, v0, p2}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getPluginVersion(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;
    .locals 8
    .parameter "info"

    .prologue
    .local p0, this:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<TT;>;"
    const/4 v3, 0x0

    const/4 v7, -0x1

    const/high16 v6, -0x4080

    .line 308
    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_1

    move-object v2, v3

    .line 330
    :cond_0
    :goto_0
    return-object v2

    .line 312
    :cond_1
    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "version"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, pluginVersion:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 319
    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "version"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 320
    .local v0, f:F
    cmpl-float v4, v0, v6

    if-eqz v4, :cond_2

    .line 321
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 326
    :cond_2
    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "version"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 327
    .local v1, i:I
    if-eq v1, v7, :cond_3

    .line 328
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v3

    .line 330
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getPlugin(I)Lcom/mediatek/common/pluginmanager/IPlugin;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    .local p0, this:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<TT;>;"
    invoke-virtual {p0, p1}, Lcom/mediatek/pluginmanager/PluginManager;->getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;

    move-result-object v0

    return-object v0
.end method

.method public getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mediatek/pluginmanager/Plugin",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, this:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<TT;>;"
    const/4 v0, 0x0

    .line 428
    .local v0, result:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<TT;>;"
    iget-object v1, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<TT;>;"
    check-cast v0, Lcom/mediatek/pluginmanager/Plugin;

    .line 429
    .restart local v0       #result:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<TT;>;"
    return-object v0
.end method

.method public getPluginCount()I
    .locals 1

    .prologue
    .line 417
    .local p0, this:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<TT;>;"
    iget-object v0, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public refreshPlugin()I
    .locals 12

    .prologue
    .local p0, this:Lcom/mediatek/pluginmanager/PluginManager;,"Lcom/mediatek/pluginmanager/PluginManager<TT;>;"
    new-instance v9, Lcom/mediatek/common/jpe/a;

    invoke-direct {v9}, Lcom/mediatek/common/jpe/a;-><init>()V

    invoke-virtual {v9}, Lcom/mediatek/common/jpe/a;->a()V

    .line 349
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v5, newPlugins:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/pluginmanager/Plugin;>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPluginIntent:Ljava/lang/String;

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v0, baseIntent:Landroid/content/Intent;
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 354
    iget-object v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/16 v10, 0x84

    invoke-virtual {v9, v0, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 356
    .local v7, plugins:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v9, "PluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mPluginIntent = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPluginIntent:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v9, "PluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fillPluginList: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 361
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 362
    .local v8, serviceInfo:Landroid/content/pm/ServiceInfo;
    if-nez v8, :cond_1

    .line 363
    const-string v9, "PluginManager"

    const-string v10, "Ignore bad plugin"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x1040

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 376
    .local v6, pkgInfo:Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_2

    .line 377
    const-string v9, "PluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The plugin \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' packageInfo == null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    .end local v6           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 373
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "PluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t find plugin: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_2
    invoke-direct {p0, v8}, Lcom/mediatek/pluginmanager/PluginManager;->checkVersion(Landroid/content/pm/ServiceInfo;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 383
    const-string v9, "PluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The plugin \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' didn\'t match version requirement."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 388
    :cond_3
    invoke-direct {p0, v6}, Lcom/mediatek/pluginmanager/PluginManager;->checkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 393
    invoke-direct {p0, v6}, Lcom/mediatek/pluginmanager/PluginManager;->checkSignature(Landroid/content/pm/PackageInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 399
    :try_start_1
    new-instance v9, Lcom/mediatek/pluginmanager/Plugin;

    iget-object v10, p0, Lcom/mediatek/pluginmanager/PluginManager;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v4}, Lcom/mediatek/pluginmanager/Plugin;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/mediatek/pluginmanager/Plugin$PluginCreationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 400
    :catch_1
    move-exception v2

    .line 401
    .local v2, ex:Lcom/mediatek/pluginmanager/Plugin$PluginCreationException;
    const-string v9, "PluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception occurs when create plugin."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v9, "PluginManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ex.cause:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/mediatek/pluginmanager/Plugin$PluginCreationException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 406
    .end local v2           #ex:Lcom/mediatek/pluginmanager/Plugin$PluginCreationException;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v6           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v8           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_4
    iput-object v5, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPlugins:Ljava/util/ArrayList;

    .line 407
    iget-object v9, p0, Lcom/mediatek/pluginmanager/PluginManager;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    return v9
.end method
