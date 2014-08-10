.class public interface abstract Lcom/mediatek/common/pluginmanager/IPluginManager;
.super Ljava/lang/Object;
.source "IPluginManager.java"


# static fields
.field public static final CLASS:Ljava/lang/String; = "class"

.field public static final CREATE:Ljava/lang/String; = "create"

.field public static final CREATE_PLUGIN_OBJECT:Ljava/lang/String; = "createPluginObject"


# virtual methods
.method public abstract getPlugin(I)Lcom/mediatek/common/pluginmanager/IPlugin;
.end method

.method public abstract getPluginCount()I
.end method

.method public abstract refreshPlugin()I
.end method
