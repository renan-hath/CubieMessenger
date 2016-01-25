.class public Lcom/liquable/nemo/forum/view/ImageBannerItemView;
.super Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;
.source "ImageBannerItemView.java"


# instance fields
.field private final imageBannerItemDto:Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;

.field private final imageBannerItemImageView:Lcom/liquable/volley/toolbox/NetworkImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageBannerItemDto"    # Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030140

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    iput-object p2, p0, Lcom/liquable/nemo/forum/view/ImageBannerItemView;->imageBannerItemDto:Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;

    .line 23
    const v2, 0x7f080302

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/forum/view/ImageBannerItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/liquable/volley/toolbox/NetworkImageView;

    iput-object v2, p0, Lcom/liquable/nemo/forum/view/ImageBannerItemView;->imageBannerItemImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    .line 24
    iget-object v2, p0, Lcom/liquable/nemo/forum/view/ImageBannerItemView;->imageBannerItemImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    const v3, 0x7f020507

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3, v4}, Lcom/liquable/volley/toolbox/NetworkImageView;->setDefaultImageResId(ILandroid/widget/ImageView$ScaleType;)V

    .line 26
    invoke-static {p1}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidthInDp(Landroid/content/Context;)I

    move-result v1

    .line 27
    .local v1, "widthInDp":I
    int-to-double v2, v1

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4074000000000000L    # 320.0

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 28
    .local v0, "imageHeightInDp":I
    iget-object v2, p0, Lcom/liquable/nemo/forum/view/ImageBannerItemView;->imageBannerItemImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    invoke-static {v2, v1, v0}, Lcom/liquable/nemo/util/NemoUIs;->resizeView(Landroid/view/View;II)V

    .line 29
    return-void
.end method


# virtual methods
.method public updateView()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/forum/view/ImageBannerItemView;->imageBannerItemImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/liquable/nemo/forum/view/ImageBannerItemView;->imageBannerItemDto:Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/banner/ImageBannerItemDto;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader;)V

    .line 34
    return-void
.end method
