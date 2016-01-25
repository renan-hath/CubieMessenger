.class public Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "UrlLoadableImage.java"


# instance fields
.field private final height:I

.field private loading:Z

.field private final showLoadingAnimation:Z

.field private final srcImageDensity:F

.field private final type:Lcom/liquable/nemo/util/urlimage/UrlFileType;

.field private final url:Ljava/lang/String;

.field private final width:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;IIFZ)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/liquable/nemo/util/urlimage/UrlFileType;
    .param p3, "widthInDp"    # I
    .param p4, "heightInDp"    # I
    .param p5, "srcImageDensity"    # F
    .param p6, "showLoadingAnimation"    # Z

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->loading:Z

    .line 61
    iput-object p1, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->url:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->type:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    .line 63
    iput p3, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->width:I

    .line 64
    iput p4, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->height:I

    .line 65
    iput p5, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->srcImageDensity:F

    .line 66
    iput-boolean p6, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->showLoadingAnimation:Z

    .line 67
    return-void
.end method

.method public static createFitImagePixel(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;IIF)Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/liquable/nemo/util/urlimage/UrlFileType;
    .param p2, "initialWidthInDp"    # I
    .param p3, "initialHeightInDp"    # I
    .param p4, "srcImageDensity"    # F

    .prologue
    .line 23
    new-instance v0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;-><init>(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;IIFZ)V

    return-object v0
.end method

.method public static createFixedSize(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;II)Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/liquable/nemo/util/urlimage/UrlFileType;
    .param p2, "widthInDp"    # I
    .param p3, "heightInDp"    # I

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->createFixedSize(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;IIZ)Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;

    move-result-object v0

    return-object v0
.end method

.method public static createFixedSize(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;IIZ)Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/liquable/nemo/util/urlimage/UrlFileType;
    .param p2, "widthInDp"    # I
    .param p3, "heightInDp"    # I
    .param p4, "showLoadingAnimation"    # Z

    .prologue
    .line 43
    new-instance v0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;

    const/high16 v5, -0x40800000    # -1.0f

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;-><init>(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;IIFZ)V

    return-object v0
.end method


# virtual methods
.method public isLoading()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->loading:Z

    return v0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    if-ne p0, p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 80
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 82
    check-cast v0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;

    .line 83
    .local v0, "other":Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;
    iget v3, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->height:I

    iget v4, v0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->height:I

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 84
    goto :goto_0

    .line 86
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->type:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    iget-object v4, v0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->type:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 87
    goto :goto_0

    .line 89
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->url:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 90
    iget-object v3, v0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->url:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v1, v2

    .line 91
    goto :goto_0

    .line 93
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->url:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 94
    goto :goto_0

    .line 96
    :cond_6
    iget v3, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->width:I

    iget v4, v0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->width:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 97
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 104
    const/16 v0, 0x1f

    .line 105
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 106
    .local v1, "result":I
    iget v2, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->height:I

    add-int/lit8 v1, v2, 0x1f

    .line 107
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->type:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 108
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->url:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 109
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->width:I

    add-int v1, v2, v3

    .line 110
    return v1

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->type:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/urlimage/UrlFileType;->hashCode()I

    move-result v2

    goto :goto_0

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 115
    iget-object v6, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->type:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    iget-object v7, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/urlimage/UrlFileType;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 117
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 118
    iput-boolean v9, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->loading:Z

    .line 119
    iget v6, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->srcImageDensity:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 120
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/liquable/nemo/util/ImageUtils;->decodeDimension(Ljava/lang/String;)Lcom/liquable/nemo/util/Dimension;

    move-result-object v2

    .line 122
    .local v2, "dimension":Lcom/liquable/nemo/util/Dimension;
    invoke-static {p1}, Lcom/liquable/nemo/util/NemoUIs;->getDensity(Landroid/content/Context;)F

    move-result v1

    .line 124
    .local v1, "density":F
    iget v6, v2, Lcom/liquable/nemo/util/Dimension;->width:I

    int-to-float v6, v6

    iget v7, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->srcImageDensity:F

    div-float/2addr v6, v7

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 125
    .local v5, "targetWidth":I
    iget v6, v2, Lcom/liquable/nemo/util/Dimension;->height:I

    int-to-float v6, v6

    iget v7, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->srcImageDensity:F

    div-float/2addr v6, v7

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 126
    .local v4, "targetHeight":I
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5, v4}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleUpOrDownToBitmap(Ljava/lang/String;II)Lcom/liquable/nemo/util/Optional;

    move-result-object v6

    .line 128
    invoke-virtual {v6}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 139
    .end local v1    # "density":F
    .end local v2    # "dimension":Lcom/liquable/nemo/util/Dimension;
    .end local v4    # "targetHeight":I
    .end local v5    # "targetWidth":I
    :goto_0
    return-object v6

    .line 130
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->width:I

    .line 132
    invoke-static {p1, v7}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v7

    iget v8, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->height:I

    .line 133
    invoke-static {p1, v8}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v8

    .line 130
    invoke-static {v6, v9, v7, v8}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Ljava/lang/String;III)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 134
    .local v0, "b":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    goto :goto_0

    .line 137
    .end local v0    # "b":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    :cond_1
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->asyncHttpClient:Lcom/liquable/nemo/http/AsyncHttpClient;

    iget-object v7, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->url:Ljava/lang/String;

    iget-object v8, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->type:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    invoke-virtual {p0}, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->keyHashCode()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/liquable/nemo/http/AsyncHttpClient;->startDownload(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;I)V

    .line 138
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->loading:Z

    .line 139
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 145
    iget v0, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 146
    iget v0, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 147
    return-void
.end method

.method public showLoadingAnimation()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->showLoadingAnimation:Z

    return v0
.end method
