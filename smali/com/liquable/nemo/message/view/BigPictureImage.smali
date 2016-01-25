.class public Lcom/liquable/nemo/message/view/BigPictureImage;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "BigPictureImage.java"


# static fields
.field private static final MAX_WIDTH_OF_PICTURE_IN_CHATTING_LITE_IN_DP:I = 0x14a

.field private static final PADDING_IN_BIG_PICTURE_VIEW:I = 0x5


# instance fields
.field private final file:Ljava/io/File;

.field private final targetWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pictureFile"    # Ljava/io/File;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/liquable/nemo/message/view/BigPictureImage;->file:Ljava/io/File;

    .line 55
    invoke-static {p1}, Lcom/liquable/nemo/message/view/BigPictureImage;->getTargetWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/message/view/BigPictureImage;->targetWidth:I

    .line 56
    return-void
.end method

.method public static getTargetWidth(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/4 v4, 0x5

    invoke-static {p0, v4}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v4

    mul-int/lit8 v1, v4, 0x2

    .line 24
    .local v1, "paddingOffset":I
    instance-of v4, p0, Landroid/app/Activity;

    if-nez v4, :cond_0

    .line 25
    const/16 v4, 0xa

    invoke-static {p0, v4}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v4

    mul-int/lit8 v0, v4, 0x2

    .line 26
    .local v0, "paddingInChattingLite":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v4, v1

    sub-int v2, v4, v0

    .line 30
    .local v2, "width":I
    const/16 v4, 0x14a

    .line 31
    invoke-static {p0, v4}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v4

    .line 30
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 36
    .end local v0    # "paddingInChattingLite":I
    .end local v2    # "width":I
    .local v3, "widthPixel":I
    :goto_0
    return v3

    .line 33
    .end local v3    # "widthPixel":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v3, v4, v1

    .restart local v3    # "widthPixel":I
    goto :goto_0
.end method


# virtual methods
.method public getDiskCacheStrategy()Lcom/liquable/nemo/util/bitmap/DiskCacheStrategy;
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/message/view/BigPictureImage;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/message/view/BigPictureImage;->targetWidth:I

    iget v2, p0, Lcom/liquable/nemo/message/view/BigPictureImage;->targetWidth:I

    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/util/bitmap/SimpleDiskCacheStrategy;->createJpeg(Ljava/lang/String;II)Lcom/liquable/nemo/util/bitmap/SimpleDiskCacheStrategy;

    move-result-object v0

    return-object v0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    if-ne p0, p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 72
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 74
    check-cast v0, Lcom/liquable/nemo/message/view/BigPictureImage;

    .line 75
    .local v0, "other":Lcom/liquable/nemo/message/view/BigPictureImage;
    iget-object v3, p0, Lcom/liquable/nemo/message/view/BigPictureImage;->file:Ljava/io/File;

    if-nez v3, :cond_4

    .line 76
    iget-object v3, v0, Lcom/liquable/nemo/message/view/BigPictureImage;->file:Ljava/io/File;

    if-eqz v3, :cond_5

    move v1, v2

    .line 77
    goto :goto_0

    .line 79
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/message/view/BigPictureImage;->file:Ljava/io/File;

    iget-object v4, v0, Lcom/liquable/nemo/message/view/BigPictureImage;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 80
    goto :goto_0

    .line 82
    :cond_5
    iget v3, p0, Lcom/liquable/nemo/message/view/BigPictureImage;->targetWidth:I

    iget v4, v0, Lcom/liquable/nemo/message/view/BigPictureImage;->targetWidth:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 83
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 4

    .prologue
    .line 90
    const/16 v0, 0x1f

    .line 91
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 92
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/message/view/BigPictureImage;->file:Ljava/io/File;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 93
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/message/view/BigPictureImage;->targetWidth:I

    add-int v1, v2, v3

    .line 94
    return v1

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/message/view/BigPictureImage;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/liquable/nemo/message/view/BigPictureImage;->file:Ljava/io/File;

    iget v1, p0, Lcom/liquable/nemo/message/view/BigPictureImage;->targetWidth:I

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/ImageUtils;->centerCrop(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 104
    iget v0, p0, Lcom/liquable/nemo/message/view/BigPictureImage;->targetWidth:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 105
    iget v0, p0, Lcom/liquable/nemo/message/view/BigPictureImage;->targetWidth:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 106
    return-void
.end method
