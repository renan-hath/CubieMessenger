.class Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$2;
.super Ljava/lang/Object;
.source "SelectPromotionStickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$2;->this$0:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 97
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 92
    .local v1, "item":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v2

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->clickAdwaysCampaignSticker(Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$CreateIntent;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$2;->this$0:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;

    invoke-direct {v0, v2, v1}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/model/sticker/StickerItemDto;)V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$2;->this$0:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
