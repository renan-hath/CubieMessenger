.class Lcom/liquable/nemo/sticker/StickerShopFragment$7;
.super Ljava/lang/Object;
.source "StickerShopFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    .line 652
    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$7;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 658
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$7;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->tabHost:Landroid/widget/TabHost;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$600(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/TabHost;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$7;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/StickerShopFragment;->tabHasMoreItems:Ljava/util/Map;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$7;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    .line 659
    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->tabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$600(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$7;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/StickerShopFragment;->tabHasMoreItems:Ljava/util/Map;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$7;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    .line 660
    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->tabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$600(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 662
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$7;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # invokes: Lcom/liquable/nemo/sticker/StickerShopFragment;->loadMore()V
    invoke-static {v0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$1800(Lcom/liquable/nemo/sticker/StickerShopFragment;)V

    .line 664
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 668
    return-void
.end method
