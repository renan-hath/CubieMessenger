.class public Lcom/liquable/nemo/util/CircleUrlLoadableImage;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "CircleUrlLoadableImage.java"


# instance fields
.field private final height:I

.field private loading:Z

.field private final type:Lcom/liquable/nemo/util/urlimage/UrlFileType;

.field private final url:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;II)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/liquable/nemo/util/urlimage/UrlFileType;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->url:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->type:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    .line 30
    iput p3, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->width:I

    .line 31
    iput p4, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->height:I

    .line 32
    return-void
.end method


# virtual methods
.method public isLoading()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->loading:Z

    return v0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    if-ne p0, p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    .line 44
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 45
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 47
    check-cast v0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;

    .line 48
    .local v0, "other":Lcom/liquable/nemo/util/CircleUrlLoadableImage;
    iget-object v3, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->url:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 49
    iget-object v3, v0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->url:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 50
    goto :goto_0

    .line 52
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 53
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 60
    const/16 v0, 0x1f

    .line 61
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 62
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->url:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 63
    return v1

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 68
    iget-object v6, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->type:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    iget-object v7, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/urlimage/UrlFileType;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 69
    .local v2, "file":Ljava/io/File;
    invoke-static {v2}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 70
    iput-boolean v10, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->loading:Z

    .line 71
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->width:I

    iget v8, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->height:I

    invoke-static {v6, v7, v8}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleUpOrDownToBitmap(Ljava/lang/String;II)Lcom/liquable/nemo/util/Optional;

    move-result-object v6

    .line 73
    invoke-virtual {v6}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 75
    .local v3, "icon":Landroid/graphics/Bitmap;
    iget v6, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->width:I

    iget v7, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->height:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 76
    .local v1, "canvasBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 78
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02052e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 79
    .local v4, "mask":Landroid/graphics/drawable/Drawable;
    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->width:I

    iget v8, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->height:I

    invoke-direct {v6, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 80
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 82
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 83
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 84
    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->width:I

    iget v8, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->height:I

    invoke-direct {v6, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    iget v8, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->width:I

    iget v9, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->height:I

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 86
    invoke-static {v3}, Lcom/liquable/nemo/util/ImageUtils;->recycleQuietly(Landroid/graphics/Bitmap;)V

    .line 93
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "canvasBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "icon":Landroid/graphics/Bitmap;
    .end local v4    # "mask":Landroid/graphics/drawable/Drawable;
    .end local v5    # "paint":Landroid/graphics/Paint;
    :goto_0
    return-object v1

    .line 91
    :cond_0
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->asyncHttpClient:Lcom/liquable/nemo/http/AsyncHttpClient;

    iget-object v7, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->url:Ljava/lang/String;

    iget-object v8, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->type:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    invoke-virtual {p0}, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->keyHashCode()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/liquable/nemo/http/AsyncHttpClient;->startDownload(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;I)V

    .line 92
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/liquable/nemo/util/CircleUrlLoadableImage;->loading:Z

    .line 93
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 2
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x42300000    # 44.0f

    .line 98
    mul-float v0, p1, v1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 99
    mul-float v0, p1, v1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 100
    return-void
.end method
