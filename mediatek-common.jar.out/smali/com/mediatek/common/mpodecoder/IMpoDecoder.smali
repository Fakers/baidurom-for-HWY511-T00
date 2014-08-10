.class public interface abstract Lcom/mediatek/common/mpodecoder/IMpoDecoder;
.super Ljava/lang/Object;
.source "IMpoDecoder.java"


# static fields
.field public static final DECODE_FILE:Ljava/lang/String; = "decodeFile"

.field public static final DECODE_URI:Ljava/lang/String; = "decodeUri"

.field public static final MTK_TYPE_3DPan:I = 0x20001

.field public static final MTK_TYPE_MAV:I = 0x20003

.field public static final MTK_TYPE_NONE:I = 0x0

.field public static final MTK_TYPE_Stereo:I = 0x20002


# virtual methods
.method public abstract close()V
.end method

.method public abstract frameBitmap(ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method public abstract frameCount()I
.end method

.method public abstract getMtkMpoType()I
.end method

.method public abstract height()I
.end method

.method public abstract suggestMtkMpoType()I
.end method

.method public abstract width()I
.end method
