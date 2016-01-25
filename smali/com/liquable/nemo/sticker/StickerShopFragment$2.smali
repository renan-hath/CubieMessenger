.class Lcom/liquable/nemo/sticker/StickerShopFragment$2;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "StickerShopFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/StickerShopFragment;->loadMore()V
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
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/StickerShopFragment;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "showToast"    # Z

    .prologue
    .line 393
    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$2;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    invoke-direct {p0, p2, p3}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x14

    .line 397
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$2;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->tabHost:Landroid/widget/TabHost;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$600(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "tabCode":Ljava/lang/String;
    sget-object v1, Lcom/liquable/nemo/sticker/StickerShopFragment;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listStickerItems:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " startIndex:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$2;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/StickerShopFragment;->itemsMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 399
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " itemSize:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-virtual {v1, v0}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 400
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$2;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/sticker/StickerShopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 401
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$2;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v4, v4, Lcom/liquable/nemo/sticker/StickerShopFragment;->itemsMap:Ljava/util/Map;

    .line 403
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 400
    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/sticker/model/StickerManager;->listStickerItems(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    .line 405
    .local v6, "items":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerItemDto;>;"
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

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
    .line 393
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/StickerShopFragment$2;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$2;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    const/4 v1, 0x1

    # setter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->loading:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$702(Lcom/liquable/nemo/sticker/StickerShopFragment;Z)Z

    .line 411
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$2;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$800(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 412
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$2;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->loading:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$702(Lcom/liquable/nemo/sticker/StickerShopFragment;Z)Z

    .line 417
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$2;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$800(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 418
    return-void
.end method

.method protected postExecuteSuccess(Landroid/util/Pair;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerItemDto;>;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 422
    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 423
    .local v3, "tabCode":Ljava/lang/String;
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 425
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerItemDto;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v6}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getRevision()J

    move-result-wide v6

    iget-object v8, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$2;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v8, v8, Lcom/liquable/nemo/sticker/StickerShopFragment;->shopDto:Lcom/liquable/nemo/model/sticker/StickerShopDto;

    invoke-virtual {v8}, Lcom/liquable/nemo/model/sticker/StickerShopDto;->getRevision()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 426
    iget-object v6, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$2;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # invokes: Lcom/liquable/nemo/sticker/StickerShopFragment;->loadShop()V
    invoke-static {v6}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$900(Lcom/liquable/nemo/sticker/StickerShopFragment;)V

    .line 453
    :cond_0
    return-void

    .line 430
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 431
    iget-object v6, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$2;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v6, v6, Lcom/liquable/nemo/sticker/StickerShopFragment;->tabHasMoreItems:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v6, Lcom/liquable/nemo/sticker/StickerShopFragment;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tabHasMoreItems("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 435
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 436
    .local v2, "stickerItemDto":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    const/4 v4, 0x0

    .line 437
    .local v4, "tabMatched":Z
    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getTabCodes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 439
    const/4 v4, 0x1

    .line 440
    iget-object v7, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$2;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # invokes: Lcom/liquable/nemo/sticker/StickerShopFragment;->addItem(Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerItemDto;)V
    invoke-static {v7, v3, v2}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$1000(Lcom/liquable/nemo/sticker/StickerShopFragment;Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerItemDto;)V

    .line 441
    const-string/jumbo v5, ""

    .line 442
    .local v5, "tabs":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getTabCodes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 443
    .local v0, "itemTabCode":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 444
    goto :goto_1

    .line 445
    .end local v0    # "itemTabCode":Ljava/lang/String;
    :cond_4
    sget-object v7, Lcom/liquable/nemo/sticker/StickerShopFragment;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "listStickerItems:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 447
    .end local v5    # "tabs":Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_3

    .line 448
    iget-object v7, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$2;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v7, v7, Lcom/liquable/nemo/sticker/StickerShopFragment;->tabHasMoreItems:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v7, Lcom/liquable/nemo/sticker/StickerShopFragment;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "tabHasMoreItems("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 450
    iget-object v7, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$2;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemAdapter:Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;
    invoke-static {v7}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$400(Lcom/liquable/nemo/sticker/StickerShopFragment;)Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 393
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/StickerShopFragment$2;->postExecuteSuccess(Landroid/util/Pair;)V

    return-void
.end method
