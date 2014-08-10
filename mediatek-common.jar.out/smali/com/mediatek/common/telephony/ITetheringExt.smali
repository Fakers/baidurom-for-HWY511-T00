.class public interface abstract Lcom/mediatek/common/telephony/ITetheringExt;
.super Ljava/lang/Object;
.source "ITetheringExt.java"


# virtual methods
.method public abstract getPreferredTetheringApn(Ljava/util/ArrayList;)Lcom/mediatek/common/telephony/IApnSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/common/telephony/IApnSetting;",
            ">;)",
            "Lcom/mediatek/common/telephony/IApnSetting;"
        }
    .end annotation
.end method

.method public abstract onBuildWaitingApns(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/common/telephony/IApnSetting;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onCreateAllApnList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/common/telephony/IApnSetting;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDataSetupComplete(Lcom/mediatek/common/telephony/IApnContext;)V
.end method

.method public abstract setPreferredTetheringApn(I)V
.end method
