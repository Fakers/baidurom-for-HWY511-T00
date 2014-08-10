.class public interface abstract Lcom/mediatek/common/dcfdecoder/IDcfDecoder;
.super Ljava/lang/Object;
.source "IDcfDecoder.java"


# virtual methods
.method public abstract decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
.end method

.method public abstract decodeUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
.end method

.method public abstract decryptFile(Ljava/lang/String;Z)[B
.end method

.method public abstract decryptUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)[B
.end method

.method public abstract forceDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
.end method

.method public abstract forceDecodeUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
.end method

.method public abstract forceDecryptFile(Ljava/lang/String;Z)[B
.end method

.method public abstract forceDecryptUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)[B
.end method
