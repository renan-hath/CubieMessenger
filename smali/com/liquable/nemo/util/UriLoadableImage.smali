.class public Lcom/liquable/nemo/util/UriLoadableImage;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "UriLoadableImage.java"


# instance fields
.field private final heightInDp:I

.field private final uri:Landroid/net/Uri;

.field private final widthInDp:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;II)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "widthInDp"    # I
    .param p3, "heightInDp"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/liquable/nemo/util/UriLoadableImage;->uri:Landroid/net/Uri;

    .line 19
    iput p2, p0, Lcom/liquable/nemo/util/UriLoadableImage;->widthInDp:I

    .line 20
    iput p3, p0, Lcom/liquable/nemo/util/UriLoadableImage;->heightInDp:I

    .line 21
    return-void
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    if-ne p0, p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v1

    .line 28
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 29
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 31
    check-cast v0, Lcom/liquable/nemo/util/UriLoadableImage;

    .line 32
    .local v0, "other":Lcom/liquable/nemo/util/UriLoadableImage;
    iget v3, p0, Lcom/liquable/nemo/util/UriLoadableImage;->heightInDp:I

    iget v4, v0, Lcom/liquable/nemo/util/UriLoadableImage;->heightInDp:I

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 33
    goto :goto_0

    .line 35
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/util/UriLoadableImage;->uri:Landroid/net/Uri;

    if-nez v3, :cond_4

    .line 36
    iget-object v3, v0, Lcom/liquable/nemo/util/UriLoadableImage;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_5

    move v1, v2

    .line 37
    goto :goto_0

    .line 39
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/util/UriLoadableImage;->uri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/liquable/nemo/util/UriLoadableImage;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 40
    goto :goto_0

    .line 42
    :cond_5
    iget v3, p0, Lcom/liquable/nemo/util/UriLoadableImage;->widthInDp:I

    iget v4, v0, Lcom/liquable/nemo/util/UriLoadableImage;->widthInDp:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 43
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 4

    .prologue
    .line 50
    const/16 v0, 0x1f

    .line 51
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 52
    .local v1, "result":I
    iget v2, p0, Lcom/liquable/nemo/util/UriLoadableImage;->heightInDp:I

    add-int/lit8 v1, v2, 0x1f

    .line 53
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/util/UriLoadableImage;->uri:Landroid/net/Uri;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 54
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/util/UriLoadableImage;->widthInDp:I

    add-int v1, v2, v3

    .line 55
    return v1

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/util/UriLoadableImage;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v1, p0, Lcom/liquable/nemo/util/UriLoadableImage;->uri:Landroid/net/Uri;

    invoke-static {p1, v1}, Lcom/liquable/nemo/android/provider/Medias;->findMediaFilePath(Landroid/content/Context;Landroid/net/Uri;)Lcom/liquable/nemo/android/provider/MediaInfo;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 61
    .local v0, "mediaInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    iget-object v3, p0, Lcom/liquable/nemo/util/UriLoadableImage;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-static {p1, v3, v2, v1}, Lcom/liquable/nemo/util/ImageUtils;->decodeToPictureMessageBitmap(Landroid/content/Context;Landroid/net/Uri;ZI)Lcom/liquable/nemo/util/Optional;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/liquable/nemo/android/provider/PictureInfo;->getRotateDegree()I

    move-result v1

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 69
    iget v0, p0, Lcom/liquable/nemo/util/UriLoadableImage;->heightInDp:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 70
    iget v0, p0, Lcom/liquable/nemo/util/UriLoadableImage;->widthInDp:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 71
    return-void
.end method
