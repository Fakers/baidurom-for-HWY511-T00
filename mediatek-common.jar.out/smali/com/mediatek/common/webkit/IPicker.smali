.class public interface abstract Lcom/mediatek/common/webkit/IPicker;
.super Ljava/lang/Object;
.source "IPicker.java"


# static fields
.field public static final COLOR_PICKER:Ljava/lang/String; = "colorPicker"

.field public static final GET_INSTANCE:Ljava/lang/String; = "getInstance"

.field public static final MONTH_PICKER:Ljava/lang/String; = "monthPicker"

.field public static final WEEK_PICKER:Ljava/lang/String; = "weekPicker"


# virtual methods
.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract setOnChangedListener(Lcom/mediatek/common/webkit/IOnChangedListener;)V
.end method

.method public abstract show(Landroid/content/Context;IILjava/lang/Object;)V
.end method
