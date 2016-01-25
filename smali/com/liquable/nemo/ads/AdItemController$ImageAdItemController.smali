.class Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;
.super Ljava/lang/Object;
.source "AdItemController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/liquable/nemo/ads/AdItemController$RefreshableAdItemController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/ads/AdItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdItemController"
.end annotation


# static fields
.field private static final SRC_IMAGE_DENSITY:F = 2.0f


# instance fields
.field private final adsImageView:Landroid/widget/ImageView;

.field private final context:Landroid/content/Context;

.field private final imageAdItemDto:Lcom/liquable/nemo/model/ads/ImageAdItemDto;

.field private final root:Landroid/view/View;

.field final synthetic this$0:Lcom/liquable/nemo/ads/AdItemController;

.field private final urlLoadableImage:Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/ads/AdItemController;Landroid/content/Context;Lcom/liquable/nemo/ads/model/ConsumableAdItem;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "item"    # Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    .prologue
    const/16 v5, 0x3c

    .line 99
    iput-object p1, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->this$0:Lcom/liquable/nemo/ads/AdItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->context:Landroid/content/Context;

    .line 101
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030127

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->root:Landroid/view/View;

    .line 103
    iget-object v2, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->root:Landroid/view/View;

    const v3, 0x7f0802be

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->adsImageView:Landroid/widget/ImageView;

    .line 104
    iget-object v2, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->root:Landroid/view/View;

    const v3, 0x7f0802bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    .local v0, "adsTitleTextView":Landroid/widget/TextView;
    invoke-virtual {p3}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->getAdItemDto()Lcom/liquable/nemo/model/ads/IAdItemDto;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/model/ads/ImageAdItemDto;

    iput-object v2, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->imageAdItemDto:Lcom/liquable/nemo/model/ads/ImageAdItemDto;

    .line 107
    iget-object v2, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->imageAdItemDto:Lcom/liquable/nemo/model/ads/ImageAdItemDto;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const/16 v1, 0x3c

    .line 111
    .local v1, "widthTheSameAsFriendNoticeIcon":I
    iget-object v2, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->imageAdItemDto:Lcom/liquable/nemo/model/ads/ImageAdItemDto;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/util/urlimage/UrlFileType;->AD_ITEM:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v5, v5, v4}, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->createFitImagePixel(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;IIF)Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->urlLoadableImage:Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;

    .line 117
    iget-object v2, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->root:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->root:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->imageAdItemDto:Lcom/liquable/nemo/model/ads/ImageAdItemDto;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->getAdId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->this$0:Lcom/liquable/nemo/ads/AdItemController;

    .line 128
    # getter for: Lcom/liquable/nemo/ads/AdItemController;->consumableAdItem:Lcom/liquable/nemo/ads/model/ConsumableAdItem;
    invoke-static {v4}, Lcom/liquable/nemo/ads/AdItemController;->access$000(Lcom/liquable/nemo/ads/AdItemController;)Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->getDisplayCount()I

    move-result v4

    iget-object v5, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->this$0:Lcom/liquable/nemo/ads/AdItemController;

    .line 129
    # getter for: Lcom/liquable/nemo/ads/AdItemController;->consumableAdItem:Lcom/liquable/nemo/ads/model/ConsumableAdItem;
    invoke-static {v5}, Lcom/liquable/nemo/ads/AdItemController;->access$000(Lcom/liquable/nemo/ads/AdItemController;)Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/liquable/nemo/analytics/IAnalyticsService;->clickOnAdItem(JILjava/lang/String;)V

    .line 130
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->adsManager:Lcom/liquable/nemo/ads/model/AdsManager;

    iget-object v2, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->this$0:Lcom/liquable/nemo/ads/AdItemController;

    # getter for: Lcom/liquable/nemo/ads/AdItemController;->consumableAdItem:Lcom/liquable/nemo/ads/model/ConsumableAdItem;
    invoke-static {v2}, Lcom/liquable/nemo/ads/AdItemController;->access$000(Lcom/liquable/nemo/ads/AdItemController;)Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/ads/model/ConsumableAdItem;->withConsume()Lcom/liquable/nemo/ads/model/ConsumableAdItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/ads/model/AdsManager;->update(Lcom/liquable/nemo/ads/model/ConsumableAdItem;)V

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->imageAdItemDto:Lcom/liquable/nemo/model/ads/ImageAdItemDto;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/ads/ImageAdItemDto;->getLinkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    iget-object v1, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->this$0:Lcom/liquable/nemo/ads/AdItemController;

    # getter for: Lcom/liquable/nemo/ads/AdItemController;->adItemViewParent:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/liquable/nemo/ads/AdItemController;->access$100(Lcom/liquable/nemo/ads/AdItemController;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->this$0:Lcom/liquable/nemo/ads/AdItemController;

    # getter for: Lcom/liquable/nemo/ads/AdItemController;->adItemViewParent:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/liquable/nemo/ads/AdItemController;->access$100(Lcom/liquable/nemo/ads/AdItemController;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->root:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 137
    iget-object v1, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->this$0:Lcom/liquable/nemo/ads/AdItemController;

    const/4 v2, 0x0

    # setter for: Lcom/liquable/nemo/ads/AdItemController;->adItemViewParent:Landroid/widget/ListView;
    invoke-static {v1, v2}, Lcom/liquable/nemo/ads/AdItemController;->access$102(Lcom/liquable/nemo/ads/AdItemController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->root:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->this$0:Lcom/liquable/nemo/ads/AdItemController;

    # getter for: Lcom/liquable/nemo/ads/AdItemController;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v0}, Lcom/liquable/nemo/ads/AdItemController;->access$200(Lcom/liquable/nemo/ads/AdItemController;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->adsImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/liquable/nemo/ads/AdItemController$ImageAdItemController;->urlLoadableImage:Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 145
    return-void
.end method
