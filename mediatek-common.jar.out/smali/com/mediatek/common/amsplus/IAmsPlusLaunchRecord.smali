.class public interface abstract Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;
.super Ljava/lang/Object;
.source "IAmsPlusLaunchRecord.java"


# virtual methods
.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract getLaunchedProcess()Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;
.end method

.method public abstract getRecords()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWaitProcess()Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;
.end method

.method public abstract isLaunchingHomeActivity()Z
.end method
