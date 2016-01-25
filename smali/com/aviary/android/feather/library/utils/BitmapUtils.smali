.class public Lcom/aviary/android/feather/library/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field static mWhiteMultiplyFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 626
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/aviary/android/feather/library/utils/BitmapUtils;->mWhiteMultiplyFilter:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public static compareBySize(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p0, "bmp1"    # Landroid/graphics/Bitmap;
    .param p1, "bmp2"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x1

    .line 621
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 623
    :cond_0
    :goto_0
    return v0

    .line 622
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 623
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compressBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I

    .prologue
    .line 457
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 458
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 459
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static copy(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-nez p1, :cond_0

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local p1    # "config":Landroid/graphics/Bitmap$Config;
    :cond_0
    invoke-static {v2, v3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 52
    .local v1, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 53
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 54
    return-object v1
.end method

.method public static copy(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "dst"    # Landroid/graphics/Bitmap;

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 59
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 60
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 62
    .end local v0    # "c":Landroid/graphics/Canvas;
    :cond_0
    return-void
.end method

.method public static flattenDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "topDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "ratio"    # F
    .param p3, "padding_top"    # F

    .prologue
    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 640
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 641
    .local v7, "w":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 642
    .local v2, "h":I
    invoke-virtual {p0, v8, v8, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 644
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 645
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 646
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 648
    int-to-float v8, v7

    div-float v6, v8, p2

    .line 649
    .local v6, "icon_w":F
    int-to-float v8, v2

    div-float v3, v8, p2

    .line 650
    .local v3, "icon_h":F
    int-to-float v8, v7

    sub-float/2addr v8, v6

    div-float v4, v8, v9

    .line 651
    .local v4, "icon_left":F
    int-to-float v8, v2

    sub-float/2addr v8, v3

    div-float/2addr v8, v9

    int-to-float v9, v2

    mul-float/2addr v9, p3

    add-float v5, v8, v9

    .line 653
    .local v5, "icon_top":F
    float-to-int v8, v4

    float-to-int v9, v5

    add-float v10, v4, v6

    float-to-int v10, v10

    add-float v11, v5, v3

    float-to-int v11, v11

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 654
    sget-object v8, Lcom/aviary/android/feather/library/utils/BitmapUtils;->mWhiteMultiplyFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 655
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 656
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 657
    return-object v0
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "input"    # Landroid/graphics/Bitmap;
    .param p1, "destWidth"    # I
    .param p2, "destHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/aviary/android/feather/library/utils/BitmapUtils;->resizeBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 21
    .param p0, "input"    # Landroid/graphics/Bitmap;
    .param p1, "destWidth"    # I
    .param p2, "destHeight"    # I
    .param p3, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 322
    move/from16 v10, p1

    .line 323
    .local v10, "dstWidth":I
    move/from16 v9, p2

    .line 324
    .local v9, "dstHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 325
    .local v5, "srcWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 327
    .local v6, "srcHeight":I
    const/16 v2, 0x5a

    move/from16 v0, p3

    if-eq v0, v2, :cond_0

    const/16 v2, 0x10e

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 328
    :cond_0
    move/from16 v10, p2

    .line 329
    move/from16 v9, p1

    .line 332
    :cond_1
    const/4 v11, 0x0

    .line 334
    .local v11, "needsResize":Z
    if-gt v5, v10, :cond_2

    if-le v6, v9, :cond_6

    .line 335
    :cond_2
    const/4 v11, 0x1

    .line 337
    int-to-double v2, v5

    int-to-double v0, v10

    move-wide/from16 v19, v0

    div-double v15, v2, v19

    .line 338
    .local v15, "ratio1":D
    int-to-double v2, v6

    int-to-double v0, v9

    move-wide/from16 v19, v0

    div-double v17, v2, v19

    .line 340
    .local v17, "ratio2":D
    cmpl-double v2, v15, v17

    if-lez v2, :cond_5

    .line 341
    int-to-double v2, v10

    int-to-double v0, v5

    move-wide/from16 v19, v0

    div-double v13, v2, v19

    .line 342
    .local v13, "p":D
    int-to-double v2, v6

    mul-double/2addr v2, v13

    double-to-int v9, v2

    .line 353
    .end local v13    # "p":D
    .end local v15    # "ratio1":D
    .end local v17    # "ratio2":D
    :goto_0
    if-nez v11, :cond_3

    if-eqz p3, :cond_4

    .line 356
    :cond_3
    if-nez p3, :cond_7

    .line 357
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v10, v9, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .local v12, "output":Landroid/graphics/Bitmap;
    :goto_1
    move-object/from16 p0, v12

    .line 366
    .end local v12    # "output":Landroid/graphics/Bitmap;
    .end local p0    # "input":Landroid/graphics/Bitmap;
    :cond_4
    return-object p0

    .line 344
    .restart local v15    # "ratio1":D
    .restart local v17    # "ratio2":D
    .restart local p0    # "input":Landroid/graphics/Bitmap;
    :cond_5
    int-to-double v2, v9

    int-to-double v0, v6

    move-wide/from16 v19, v0

    div-double v13, v2, v19

    .line 345
    .restart local v13    # "p":D
    int-to-double v2, v5

    mul-double/2addr v2, v13

    double-to-int v10, v2

    .line 348
    goto :goto_0

    .line 349
    .end local v13    # "p":D
    .end local v15    # "ratio1":D
    .end local v17    # "ratio2":D
    :cond_6
    move v10, v5

    .line 350
    move v9, v6

    goto :goto_0

    .line 359
    :cond_7
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 360
    .local v7, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, v10

    int-to-float v3, v5

    div-float/2addr v2, v3

    int-to-float v3, v9

    int-to-float v4, v6

    div-float/2addr v3, v4

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 361
    move/from16 v0, p3

    int-to-float v2, v0

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 362
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .restart local v12    # "output":Landroid/graphics/Bitmap;
    goto :goto_1
.end method
