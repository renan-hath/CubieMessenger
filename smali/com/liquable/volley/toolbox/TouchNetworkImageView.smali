.class public Lcom/liquable/volley/toolbox/TouchNetworkImageView;
.super Lcom/liquable/nemo/widget/TouchImageView;
.source "TouchNetworkImageView.java"


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
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/widget/TouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-virtual {p0}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/volley/toolbox/TouchNetworkImageView;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/toolbox/TouchNetworkImageView;

    .prologue
    .line 34
    iget v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mErrorImageId:I

    return v0
.end method

.method static synthetic access$100(Lcom/liquable/volley/toolbox/TouchNetworkImageView;)Landroid/widget/ImageView$ScaleType;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/volley/toolbox/TouchNetworkImageView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/volley/toolbox/TouchNetworkImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/volley/toolbox/TouchNetworkImageView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->setDefaultImageOrNull()V

    return-void
.end method

.method private loadImageIfNecessary(Z)V
    .locals 12
    .param p1, "isInLayoutPass"    # Z

    .prologue
    const/4 v2, -0x2

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->getWidth()I

    move-result v9

    .line 113
    .local v9, "width":I
    invoke-virtual {p0}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->getHeight()I

    move-result v6

    .line 115
    .local v6, "height":I
    const/4 v11, 0x0

    .local v11, "wrapWidth":Z
    const/4 v10, 0x0

    .line 116
    .local v10, "wrapHeight":Z
    invoke-virtual {p0}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, v2, :cond_2

    move v11, v0

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v2, :cond_3

    move v10, v0

    .line 123
    :cond_0
    :goto_1
    if-eqz v11, :cond_4

    if-eqz v10, :cond_4

    move v7, v0

    .line 124
    .local v7, "isFullyWrapContent":Z
    :goto_2
    if-nez v9, :cond_5

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    .line 192
    :cond_1
    :goto_3
    return-void

    .end local v7    # "isFullyWrapContent":Z
    :cond_2
    move v11, v5

    .line 117
    goto :goto_0

    :cond_3
    move v10, v5

    .line 118
    goto :goto_1

    :cond_4
    move v7, v5

    .line 123
    goto :goto_2

    .line 130
    .restart local v7    # "isFullyWrapContent":Z
    :cond_5
    iget-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 131
    iget-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_6

    .line 132
    iget-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    .line 135
    :cond_6
    invoke-direct {p0}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->setDefaultImageOrNull()V

    goto :goto_3

    .line 140
    :cond_7
    iget-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 141
    iget-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 147
    invoke-direct {p0}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->setDefaultImageOrNull()V

    .line 152
    :cond_8
    if-eqz v11, :cond_9

    move v3, v5

    .line 153
    .local v3, "maxWidth":I
    :goto_4
    if-eqz v10, :cond_a

    move v4, v5

    .line 157
    .local v4, "maxHeight":I
    :goto_5
    iget-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mImageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mUrl:Ljava/lang/String;

    new-instance v2, Lcom/liquable/volley/toolbox/TouchNetworkImageView$1;

    invoke-direct {v2, p0, p1}, Lcom/liquable/volley/toolbox/TouchNetworkImageView$1;-><init>(Lcom/liquable/volley/toolbox/TouchNetworkImageView;Z)V

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;IIZ)Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v8

    .line 191
    .local v8, "newContainer":Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;
    iput-object v8, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_3

    .end local v3    # "maxWidth":I
    .end local v4    # "maxHeight":I
    .end local v8    # "newContainer":Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;
    :cond_9
    move v3, v9

    .line 152
    goto :goto_4

    .restart local v3    # "maxWidth":I
    :cond_a
    move v4, v6

    .line 153
    goto :goto_5
.end method

.method private setDefaultImageOrNull()V
    .locals 3

    .prologue
    .line 195
    iget v2, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mDefaultImageId:I

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mDefaultImageScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v2}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 197
    iget v2, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mDefaultImageId:I

    invoke-virtual {p0, v2}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->setImageResource(I)V

    .line 198
    invoke-virtual {p0}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 199
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 200
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 201
    .local v0, "animation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 206
    .end local v0    # "animation":Landroid/graphics/drawable/AnimationDrawable;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0}, Lcom/liquable/nemo/widget/TouchImageView;->drawableStateChanged()V

    .line 231
    invoke-virtual {p0}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->invalidate()V

    .line 232
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 220
    invoke-virtual {p0, v1}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 222
    iput-object v1, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mImageContainer:Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 225
    invoke-super {p0}, Lcom/liquable/nemo/widget/TouchImageView;->onDetachedFromWindow()V

    .line 226
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
    .line 210
    invoke-super/range {p0 .. p5}, Lcom/liquable/nemo/widget/TouchImageView;->onLayout(ZIIII)V

    .line 211
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->loadImageIfNecessary(Z)V

    .line 212
    return-void
.end method

.method public setDefaultImageResId(ILandroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p1, "defaultImage"    # I
    .param p2, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 93
    iput p1, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mDefaultImageId:I

    .line 94
    iput-object p2, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mDefaultImageScaleType:Landroid/widget/ImageView$ScaleType;

    .line 95
    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 0
    .param p1, "errorImage"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mErrorImageId:I

    .line 103
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageLoader"    # Lcom/liquable/volley/toolbox/ImageLoader;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mUrl:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->mImageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->loadImageIfNecessary(Z)V

    .line 86
    return-void
.end method
