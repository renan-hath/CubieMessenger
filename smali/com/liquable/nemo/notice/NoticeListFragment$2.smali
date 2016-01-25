.class Lcom/liquable/nemo/notice/NoticeListFragment$2;
.super Ljava/lang/Object;
.source "NoticeListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/notice/NoticeListFragment;->createAdwaysCampaignButton()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/notice/NoticeListFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/notice/NoticeListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/notice/NoticeListFragment;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/liquable/nemo/notice/NoticeListFragment$2;->this$0:Lcom/liquable/nemo/notice/NoticeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->clickAdwaysStickerShopBanner()V

    .line 86
    new-instance v0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$CreateIntent;

    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeListFragment$2;->this$0:Lcom/liquable/nemo/notice/NoticeListFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/notice/NoticeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$CreateIntent;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 88
    .local v0, "intent":Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$CreateIntent;
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeListFragment$2;->this$0:Lcom/liquable/nemo/notice/NoticeListFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/notice/NoticeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method
