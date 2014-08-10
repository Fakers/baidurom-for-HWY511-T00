.class public interface abstract Lcom/mediatek/common/stereo3d/IJpsParser;
.super Ljava/lang/Object;
.source "IJpsParser.java"


# static fields
.field public static final MONOSCOPIC:I = 0x0

.field public static final PARSE:Ljava/lang/String; = "parse"

.field public static final S3D_EYE_BOTH:I = 0x0

.field public static final S3D_EYE_LEFT:I = 0x1

.field public static final S3D_EYE_RIGHT:I = 0x2

.field public static final S3D_FULL_HEIGHT:I = 0x0

.field public static final S3D_FULL_WIDTH:I = 0x0

.field public static final S3D_HALF_HEIGHT:I = 0x1

.field public static final S3D_HALF_WIDTH:I = 0x1

.field public static final S3D_LAYOUT_ANAGLYPH:I = 0x4

.field public static final S3D_LAYOUT_INTERLEAVED:I = 0x1

.field public static final S3D_LAYOUT_SIDE_BY_SIDE:I = 0x2

.field public static final S3D_LAYOUT_TOP_AND_BOTTOM:I = 0x3

.field public static final S3D_LEFT_FIELD_FIRST:I = 0x1

.field public static final S3D_RIGHT_FIELD_FIRST:I = 0x0

.field public static final STEREOSCOPIC:I = 0x1


# virtual methods
.method public abstract getDisplay()I
.end method

.method public abstract getFieldOrder()I
.end method

.method public abstract getHeightType()I
.end method

.method public abstract getLayout()I
.end method

.method public abstract getType()I
.end method

.method public abstract getWidthType()I
.end method
