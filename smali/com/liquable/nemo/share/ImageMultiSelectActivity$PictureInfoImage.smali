.class Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "ImageMultiSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/share/ImageMultiSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PictureInfoImage"
.end annotation


# instance fields
.field private final pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

.field final synthetic this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

.field private final thumbnailHeightInPixel:I

.field private final thumbnailWidthInPixel:I


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/share/ImageMultiSelectActivity;Lcom/liquable/nemo/android/provider/PictureInfo;)V
    .locals 6
    .param p1, "context"    # Lcom/liquable/nemo/share/ImageMultiSelectActivity;
    .param p2, "pictureInfo"    # Lcom/liquable/nemo/android/provider/PictureInfo;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 128
    iput-object p2, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 129
    const/16 v1, 0xa

    .line 131
    .local v1, "paddingDp":I
    invoke-static {p1}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidthInDp(Landroid/content/Context;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    div-int/lit8 v3, v4, 0x2

    .line 133
    .local v3, "thumbnailWidthInDp":I
    invoke-static {p1, v3}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->thumbnailWidthInPixel:I

    .line 135
    invoke-virtual {p2, p1}, Lcom/liquable/nemo/android/provider/PictureInfo;->toImageSrc(Landroid/content/Context;)Lcom/liquable/nemo/util/imagesrc/ImageSrc;

    move-result-object v4

    invoke-static {v4}, Lcom/liquable/nemo/util/ImageUtils;->decodeDimension(Lcom/liquable/nemo/util/imagesrc/ImageSrc;)Lcom/liquable/nemo/util/Dimension;

    move-result-object v0

    .line 136
    .local v0, "dimension":Lcom/liquable/nemo/util/Dimension;
    iget v4, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->thumbnailWidthInPixel:I

    int-to-float v4, v4

    iget v5, v0, Lcom/liquable/nemo/util/Dimension;->width:I

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 137
    .local v2, "ratio":F
    iget v4, v0, Lcom/liquable/nemo/util/Dimension;->height:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->thumbnailHeightInPixel:I

    .line 138
    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;)Lcom/liquable/nemo/android/provider/PictureInfo;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    return-object v0
.end method


# virtual methods
.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    if-ne p0, p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v1

    .line 145
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 146
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 148
    check-cast v0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;

    .line 149
    .local v0, "other":Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;
    iget-object v3, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    if-nez v3, :cond_3

    .line 150
    iget-object v3, v0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    if-eqz v3, :cond_4

    move v1, v2

    .line 151
    goto :goto_0

    .line 153
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    iget-object v4, v0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/android/provider/PictureInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 154
    goto :goto_0

    .line 156
    :cond_4
    iget v3, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->thumbnailWidthInPixel:I

    iget v4, v0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->thumbnailWidthInPixel:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 157
    goto :goto_0

    .line 159
    :cond_5
    iget v3, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->thumbnailHeightInPixel:I

    iget v4, v0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->thumbnailHeightInPixel:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 160
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 4

    .prologue
    .line 167
    const/16 v0, 0x1f

    .line 168
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 169
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 170
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->thumbnailWidthInPixel:I

    add-int v1, v2, v3

    .line 171
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->thumbnailHeightInPixel:I

    add-int v1, v2, v3

    .line 172
    return v1

    .line 169
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/provider/PictureInfo;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->pictureInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    iget-object v1, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->this$0:Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/provider/PictureInfo;->toImageSrc(Landroid/content/Context;)Lcom/liquable/nemo/util/imagesrc/ImageSrc;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->thumbnailWidthInPixel:I

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Lcom/liquable/nemo/util/imagesrc/ImageSrc;I)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 1
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 184
    iget v0, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->thumbnailWidthInPixel:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 185
    iget v0, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;->thumbnailHeightInPixel:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 186
    return-void
.end method
