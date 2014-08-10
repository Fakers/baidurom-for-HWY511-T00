.class public interface abstract Lcom/mediatek/common/pluginmanager/IPlugin;
.super Ljava/lang/Object;
.source "IPlugin.java"


# virtual methods
.method public abstract createObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract createObject(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getMetaDataResourceID(Ljava/lang/String;)I
.end method

.method public abstract getMetaDataValueBoolean(Ljava/lang/String;)Z
.end method

.method public abstract getMetaDataValueColor(Ljava/lang/String;)I
.end method

.method public abstract getMetaDataValueFloat(Ljava/lang/String;)F
.end method

.method public abstract getMetaDataValueInt(Ljava/lang/String;)I
.end method

.method public abstract getMetaDataValueString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/CharSequence;
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method
