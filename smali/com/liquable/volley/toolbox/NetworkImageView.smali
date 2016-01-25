.class public Lcom/liquable/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;
.source "NetworkImageView.java"


# instance fields
.field private mDefaultImageId:I

.field private mDefaultImageScaleType:Landroid/widget/ImageView$ScaleType;

.field private mErrorImageId:I

.field private mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

.field private mImageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

.field private mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/liquable/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/liquable/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-virtual {p0}, Lcom/liquable/volley/toolbox/NetworkImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/volley/toolbox/NetworkImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/toolbox/NetworkImageView;

    .prologue
    .line 34
    iget v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mErrorImageId:I

    return v0
.end method

.method static synthetic access$100(Lcom/liquable/volley/toolbox/NetworkImageView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/toolbox/NetworkImageView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/volley/toolbox/NetworkImageView;)Landroid/widget/ImageView$ScaleType;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/toolbox/NetworkImageView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/volley/toolbox/NetworkImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/volley/toolbox/NetworkImageView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/liquable/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    return-void
.end method

.method private loadImageIfNecessary(Z)V
    .locals 13
    .param p1, "isInLayoutPass"    # Z

    .prologue
    const/4 v12, -0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/liquable/volley/toolbox/NetworkImageView;->getWidth()I

    move-result v9

    .line 128
    .local v9, "width":I
    invoke-virtual {p0}, Lcom/liquable/volley/toolbox/NetworkImageView;->getHeight()I

    move-result v6

    .line 130
    .local v6, "height":I
    const/4 v11, 0x0

    .local v11, "wrapWidth":Z
    const/4 v10, 0x0

    .line 131
    .local v10, "wrapHeight":Z
    invoke-virtual {p0}, Lcom/liquable/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/liquable/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v12, :cond_2

    move v11, v0

    .line 133
    :goto_0
    invoke-virtual {p0}, Lcom/liquable/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v12, :cond_3

    move v10, v0

    .line 138
    :cond_0
    :goto_1
    if-eqz v11, :cond_4

    if-eqz v10, :cond_4

    move v7, v0

    .line 139
    .local v7, "isFullyWrapContent":Z
    :goto_2
    if-nez v9, :cond_5

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    .line 214
    :cond_1
    :goto_3
    return-void

    .end local v7    # "isFullyWrapContent":Z
    :cond_2
    move v11, v1

    .line 132
    goto :goto_0

    :cond_3
    move v10, v1

    .line 133
    goto :goto_1

    :cond_4
    move v7, v1

    .line 138
    goto :goto_2

    .line 145
    .restart local v7    # "isFullyWrapContent":Z
    :cond_5
    iget-object v2, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 146
    iget-object v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_6

    .line 147
    iget-object v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    .line 150
    :cond_6
    invoke-direct {p0}, Lcom/liquable/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    goto :goto_3

    .line 155
    :cond_7
    iget-object v2, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v2}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 156
    iget-object v2, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v2}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v12, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v2}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 162
    invoke-direct {p0}, Lcom/liquable/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    .line 167
    :cond_8
    if-eqz v11, :cond_9

    move v3, v1

    .line 168
    .local v3, "maxWidth":I
    :goto_4
    if-eqz v10, :cond_a

    move v4, v1

    .line 170
    .local v4, "maxHeight":I
    :goto_5
    iget-object v2, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v12, :cond_b

    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    move v5, v0

    .line 176
    .local v5, "isCropMode":Z
    :goto_6
    iget-object v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    new-instance v2, Lcom/liquable/volley/toolbox/NetworkImageView$1;

    invoke-direct {v2, p0, p1}, Lcom/liquable/volley/toolbox/NetworkImageView$1;-><init>(Lcom/liquable/volley/toolbox/NetworkImageView;Z)V

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;IIZ)Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v8

    .line 213
    .local v8, "newContainer":Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;
    iput-object v8, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_3

    .end local v3    # "maxWidth":I
    .end local v4    # "maxHeight":I
    .end local v5    # "isCropMode":Z
    .end local v8    # "newContainer":Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;
    :cond_9
    move v3, v9

    .line 167
    goto :goto_4

    .restart local v3    # "maxWidth":I
    :cond_a
    move v4, v6

    .line 168
    goto :goto_5

    .restart local v4    # "maxHeight":I
    :cond_b
    move v5, v1

    .line 170
    goto :goto_6
.end method

.method private setDefaultImageOrNull()V
    .locals 3

    .prologue
    .line 217
    iget v2, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    if-eqz v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mDefaultImageScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v2}, Lcom/liquable/volley/toolbox/NetworkImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 219
    iget v2, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    invoke-virtual {p0, v2}, Lcom/liquable/volley/toolbox/NetworkImageView;->setImageResource(I)V

    .line 220
    invoke-virtual {p0}, Lcom/liquable/volley/toolbox/NetworkImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 221
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 222
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 223
    .local v0, "animation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 228
    .end local v0    # "animation":Landroid/graphics/drawable/AnimationDrawable;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/liquable/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelLoading()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/liquable/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    .line 118
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 252
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 253
    invoke-virtual {p0}, Lcom/liquable/volley/toolbox/NetworkImageView;->invalidate()V

    .line 254
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 242
    invoke-virtual {p0, v1}, Lcom/liquable/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 244
    iput-object v1, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/liquable/volley/toolbox/NetworkImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 247
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 248
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 232
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 233
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/liquable/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    .line 234
    return-void
.end method

.method public setDefaultImageResId(ILandroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p1, "defaultImage"    # I
    .param p2, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 103
    iput p1, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    .line 104
    iput-object p2, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mDefaultImageScaleType:Landroid/widget/ImageView$ScaleType;

    .line 105
    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 0
    .param p1, "errorImage"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mErrorImageId:I

    .line 113
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageLoader"    # Lcom/liquable/volley/toolbox/ImageLoader;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/liquable/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/liquable/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    .line 96
    return-void
.end method
