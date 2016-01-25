.class Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$1;
.super Ljava/lang/Object;
.source "SelectAdwaysCampaignActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;

.field final synthetic val$stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;Lcom/liquable/nemo/model/sticker/StickerItemDto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$1;->this$0:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;

    iput-object p2, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$1;->val$stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 93
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 115
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;

    .line 99
    .local v9, "campaignDto":Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;
    new-instance v0, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;

    invoke-virtual {v9}, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$1;->val$stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 100
    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getProductId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$1;->val$stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 101
    invoke-virtual {v3}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$1;->val$stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 102
    invoke-virtual {v4}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$1;->val$stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 103
    invoke-virtual {v5}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getThumbnailPath()Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 106
    .local v0, "adwaysCampaignRecord":Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/util/Pref;->addAdwaysCampaignRecord(Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;)V

    .line 108
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-virtual {v9}, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->clickAdwaysCampaignApp(Ljava/lang/String;)V

    .line 110
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    .line 111
    invoke-virtual {v9}, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 113
    .local v8, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$1;->this$0:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;

    invoke-virtual {v1, v8}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->startActivity(Landroid/content/Intent;)V

    .line 114
    iget-object v1, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$1;->this$0:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->needFinishOnResume:Z

    goto :goto_0
.end method
