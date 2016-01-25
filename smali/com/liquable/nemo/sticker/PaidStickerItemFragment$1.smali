.class Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;
.super Ljava/lang/Object;
.source "PaidStickerItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->init(Lcom/liquable/nemo/model/sticker/StickerItemDto;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    iget-object v1, v1, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 72
    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "limitedTimeOffer"

    const-string/jumbo v3, "cubie"

    invoke-interface {v0, v1, v2, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->clickOnStickerItemButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->isFromReactivation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->limitedTimeOfferReactivationSticker()V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    new-instance v1, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;-><init>(Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;Landroid/content/Context;Z)V

    # setter for: Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->limitedTimeOfferStickerRpc:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0, v1}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->access$002(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;Lcom/liquable/nemo/util/RpcAsyncTask;)Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 121
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    # getter for: Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->limitedTimeOfferStickerRpc:Lcom/liquable/nemo/util/RpcAsyncTask;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->access$000(Lcom/liquable/nemo/sticker/PaidStickerItemFragment;)Lcom/liquable/nemo/util/RpcAsyncTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    .line 122
    return-void
.end method
