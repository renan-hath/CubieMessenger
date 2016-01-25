.class public Lcom/liquable/nemo/util/bitmap/SimpleDiskCacheStrategy;
.super Ljava/lang/Object;
.source "SimpleDiskCacheStrategy.java"

# interfaces
.implements Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;


# instance fields
.field private final compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private final height:I

.field private final jpegQuality:I

.field private final uniqueName:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILandroid/graphics/Bitmap$CompressFormat;I)V
    .locals 0
    .param p1, "uniqueName"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p5, "jpegQuality"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/liquable/nemo/util/bitmap/SimpleDiskCacheStrategy;->uniqueName:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/liquable/nemo/util/bitmap/SimpleDiskCacheStrategy;->width:I

    .line 36
    iput p3, p0, Lcom/liquable/nemo/util/bitmap/SimpleDiskCacheStrategy;->height:I

    .line 37
    iput-object p4, p0, Lcom/liquable/nemo/util/bitmap/SimpleDiskCacheStrategy;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 38
    iput p5, p0, Lcom/liquable/nemo/util/bitmap/SimpleDiskCacheStrategy;->jpegQuality:I

    .line 39
    return-void
.end method

.method public static createJpeg(Ljava/lang/String;II)Lcom/liquable/nemo/util/bitmap/SimpleDiskCacheStrategy;
    .locals 6
    .param p0, "uniqueName"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 12
    new-instance v0, Lcom/liquable/nemo/util/bitmap/SimpleDiskCacheStrategy;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/util/bitmap/SimpleDiskCacheStrategy;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap$CompressFormat;I)V

    return-object v0
.end method

.method public static createPng(Ljava/lang/String;II)Lcom/liquable/nemo/util/bitmap/SimpleDiskCacheStrategy;
    .locals 6
    .param p0, "uniqueName"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 18
    new-instance v0, Lcom/liquable/nemo/util/bitmap/SimpleDiskCacheStrategy;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/util/bitmap/SimpleDiskCacheStrategy;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap$CompressFormat;I)V

    return-object v0
.end method


# virtual methods
.method public compress(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)Z
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/liquable/nemo/util/bitmap/SimpleDiskCacheStrategy;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v1, p0, Lcom/liquable/nemo/util/bitmap/SimpleDiskCacheStrategy;->jpegQuality:I

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public final getDiskKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/liquable/nemo/util/bitmap/SimpleDiskCacheStrategy;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/util/bitmap/SimpleDiskCacheStrategy;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/util/bitmap/SimpleDiskCacheStrategy;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
