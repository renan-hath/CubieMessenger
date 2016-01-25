.class Lcom/liquable/nemo/sticker/StickerShopFragment$5;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "StickerShopFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/StickerShopFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/RpcAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/StickerShopFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$5;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 607
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$5;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/sticker/StickerShopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 608
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 607
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/sticker/model/StickerManager;->hasAnyAdwaysCampaigns(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 602
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/StickerShopFragment$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 613
    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 617
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->showAdwaysAdsBanner()V

    .line 619
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$5;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$1600(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 620
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$5;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$1600(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$5;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # invokes: Lcom/liquable/nemo/sticker/StickerShopFragment;->createAdwaysCampaignButton()Landroid/view/View;
    invoke-static {v1}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$1700(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 621
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$5;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$1600(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$5;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemAdapter:Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;
    invoke-static {v1}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$400(Lcom/liquable/nemo/sticker/StickerShopFragment;)Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 623
    :cond_0
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 602
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/StickerShopFragment$5;->postExecuteSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
