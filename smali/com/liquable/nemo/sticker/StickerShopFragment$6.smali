.class Lcom/liquable/nemo/sticker/StickerShopFragment$6;
.super Ljava/lang/Object;
.source "StickerShopFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/StickerShopFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/StickerShopFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$6;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 636
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 650
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$6;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$1600(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 642
    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 644
    .local v0, "stickerItem":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->viewStickerItem(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 646
    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$6;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/sticker/StickerShopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopCallback;

    invoke-interface {v1, v0}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopCallback;->goToFreeItem(Lcom/liquable/nemo/model/sticker/StickerItemDto;)V

    goto :goto_0

    .line 648
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$6;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/sticker/StickerShopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopCallback;

    invoke-interface {v1, v0}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopCallback;->goToPaidItem(Lcom/liquable/nemo/model/sticker/StickerItemDto;)V

    goto :goto_0
.end method
