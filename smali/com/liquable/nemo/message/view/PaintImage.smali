.class public Lcom/liquable/nemo/message/view/PaintImage;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "PaintImage.java"


# static fields
.field private static final MAX_WIDTH_OF_PAINT_IN_CHATTING_LITE_IN_DP:I = 0x14a

.field private static final PADDING_IN_PAINT_IMAGE_VIEW:I = 0x5


# instance fields
.field private final paintFile:Ljava/io/File;

.field private final targetHeight:I

.field private final targetWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paintFile"    # Ljava/io/File;
    .param p3, "paintWidth"    # I
    .param p4, "paintHeight"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/liquable/nemo/message/view/PaintImage;->paintFile:Ljava/io/File;

    .line 40
    const/4 v6, 0x5

    invoke-static {p1, v6}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v6

    mul-int/lit8 v2, v6, 0x2

    .line 45
    .local v2, "paddingOffset":I
    instance-of v6, p1, Landroid/app/Activity;

    if-nez v6, :cond_0

    .line 46
    const/16 v6, 0xa

    invoke-static {p1, v6}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v6

    mul-int/lit8 v1, v6, 0x2

    .line 47
    .local v1, "paddingInChattingLite":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v6, v2

    sub-int v4, v6, v1

    .line 51
    .local v4, "width":I
    const/16 v6, 0x14a

    .line 52
    invoke-static {p1, v6}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v6

    .line 51
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 57
    .end local v1    # "paddingInChattingLite":I
    .end local v4    # "width":I
    .local v5, "widthPixel":I
    :goto_0
    int-to-float v6, p3

    int-to-float v7, v5

    div-float v3, v6, v7

    .line 58
    .local v3, "ratio":F
    int-to-float v6, p4

    div-float v0, v6, v3

    .line 60
    .local v0, "destHeightPixel":F
    iput v5, p0, Lcom/liquable/nemo/message/view/PaintImage;->targetWidth:I

    .line 61
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/liquable/nemo/message/view/PaintImage;->targetHeight:I

    .line 62
    return-void

    .line 54
    .end local v0    # "destHeightPixel":F
    .end local v3    # "ratio":F
    .end local v5    # "widthPixel":I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v5, v6, v2

    .restart local v5    # "widthPixel":I
    goto :goto_0
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    if-ne p0, p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 98
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 101
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 103
    check-cast v0, Lcom/liquable/nemo/message/view/PaintImage;

    .line 104
    .local v0, "other":Lcom/liquable/nemo/message/view/PaintImage;
    iget-object v3, p0, Lcom/liquable/nemo/message/view/PaintImage;->paintFile:Ljava/io/File;

    if-nez v3, :cond_4

    .line 105
    iget-object v3, v0, Lcom/liquable/nemo/message/view/PaintImage;->paintFile:Ljava/io/File;

    if-eqz v3, :cond_0

    move v1, v2

    .line 106
    goto :goto_0

    .line 108
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/message/view/PaintImage;->paintFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 109
    iget-object v3, v0, Lcom/liquable/nemo/message/view/PaintImage;->paintFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 110
    goto :goto_0

    .line 112
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/message/view/PaintImage;->paintFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v5, v0, Lcom/liquable/nemo/message/view/PaintImage;->paintFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    .line 113
    goto :goto_0

    .line 114
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/message/view/PaintImage;->paintFile:Ljava/io/File;

    iget-object v4, v0, Lcom/liquable/nemo/message/view/PaintImage;->paintFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 115
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 122
    const/16 v0, 0x1f

    .line 123
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 124
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/message/view/PaintImage;->paintFile:Ljava/io/File;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 125
    return v1

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/message/view/PaintImage;->paintFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    iget-object v1, p0, Lcom/liquable/nemo/message/view/PaintImage;->paintFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/liquable/nemo/message/view/PaintImage;->targetWidth:I

    iget v4, p0, Lcom/liquable/nemo/message/view/PaintImage;->targetHeight:I

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Ljava/lang/String;IIIZ)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 135
    .local v0, "b":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 140
    iget v0, p0, Lcom/liquable/nemo/message/view/PaintImage;->targetHeight:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 141
    iget v0, p0, Lcom/liquable/nemo/message/view/PaintImage;->targetWidth:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 142
    return-void
.end method
