.class Lcom/liquable/nemo/sticker/StickerInAppBilling$2;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "StickerInAppBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/StickerInAppBilling;->insertNotices(Ljava/util/List;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/StickerInAppBilling;

.field final synthetic val$purchaseOrderIds:Ljava/util/List;

.field final synthetic val$purchaseTos:Ljava/util/List;

.field final synthetic val$purchasedProductIds:Ljava/util/List;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/StickerInAppBilling;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;->this$0:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    iput-object p3, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;->val$purchasedProductIds:Ljava/util/List;

    iput-object p4, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;->val$purchaseOrderIds:Ljava/util/List;

    iput-object p5, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;->val$purchaseTos:Ljava/util/List;

    iput-object p6, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;->val$results:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private trackWithProductIds()V
    .locals 5

    .prologue
    .line 403
    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;->val$results:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;

    .line 404
    .local v0, "purchaseResult":Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v2

    .line 405
    invoke-virtual {v0}, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->getProductId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "google_play"

    invoke-interface {v2, v3, v4}, Lcom/liquable/nemo/analytics/IAnalyticsService;->purchaseSuccessWithProduct(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 407
    .end local v0    # "purchaseResult":Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 349
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 354
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;->this$0:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    # getter for: Lcom/liquable/nemo/sticker/StickerInAppBilling;->applicationContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$300(Lcom/liquable/nemo/sticker/StickerInAppBilling;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 355
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;->val$purchasedProductIds:Ljava/util/List;

    .line 354
    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/sticker/model/StickerManager;->listStickerItemsByProductIds(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 0
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;->trackWithProductIds()V

    .line 367
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 0
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;->trackWithProductIds()V

    .line 372
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 349
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;->postExecuteSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerItemDto;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 400
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 381
    .local v1, "itemDto":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v5

    .line 382
    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "google_play"

    invoke-interface {v5, v6, v7}, Lcom/liquable/nemo/analytics/IAnalyticsService;->purchaseSuccessWithStickerItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 385
    .end local v1    # "itemDto":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v2, "notices":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/PurchasedNotice;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;->val$purchaseOrderIds:Ljava/util/List;

    .line 387
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;->val$purchaseTos:Ljava/util/List;

    .line 388
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 389
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    iget-object v4, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;->val$purchaseOrderIds:Ljava/util/List;

    .line 390
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;->val$purchasedProductIds:Ljava/util/List;

    .line 391
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 392
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v6}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getTitle()Ljava/lang/String;

    move-result-object v8

    iget-object v6, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$2;->val$purchaseTos:Ljava/util/List;

    .line 393
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 389
    invoke-virtual {v7, v4, v5, v8, v6}, Lcom/liquable/nemo/notice/model/NoticeManager;->insertPurchasedNotice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/notice/PurchasedNotice;

    move-result-object v3

    .line 394
    .local v3, "purchasedNotice":Lcom/liquable/nemo/notice/PurchasedNotice;
    if-eqz v3, :cond_2

    .line 395
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 398
    .end local v3    # "purchasedNotice":Lcom/liquable/nemo/notice/PurchasedNotice;
    :cond_3
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v4, v2}, Lcom/liquable/nemo/android/NotifyManager;->notifyPurchasedNoticeOnStatusBar(Ljava/util/List;)V

    .line 399
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v4}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastNoticeViewUpdate()V

    goto :goto_0
.end method
