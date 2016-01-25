.class public Lcom/liquable/nemo/forum/view/ButtonBannerItemView;
.super Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;
.source "ButtonBannerItemView.java"


# instance fields
.field private final buttonBannerItemDto:Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;

.field private final buttonBannerItemImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

.field private final buttonBannerItemTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonBannerItemDto"    # Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03012b

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    iput-object p2, p0, Lcom/liquable/nemo/forum/view/ButtonBannerItemView;->buttonBannerItemDto:Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;

    .line 26
    const v0, 0x7f0802cd

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/forum/view/ButtonBannerItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/volley/toolbox/NetworkImageView;

    iput-object v0, p0, Lcom/liquable/nemo/forum/view/ButtonBannerItemView;->buttonBannerItemImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    .line 27
    const v0, 0x7f0802ce

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/forum/view/ButtonBannerItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/forum/view/ButtonBannerItemView;->buttonBannerItemTextView:Landroid/widget/TextView;

    .line 28
    iget-object v0, p0, Lcom/liquable/nemo/forum/view/ButtonBannerItemView;->buttonBannerItemTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    return-void
.end method


# virtual methods
.method public updateView()V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/forum/view/ButtonBannerItemView;->buttonBannerItemImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/liquable/nemo/forum/view/ButtonBannerItemView;->buttonBannerItemDto:Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/banner/ButtonBannerItemDto;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader;)V

    .line 35
    return-void
.end method
