.class Lcom/liquable/nemo/sticker/StickerInAppBilling$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "StickerInAppBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/StickerInAppBilling;->doRpcPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/liquable/future/IFuture;
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
        "Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/StickerInAppBilling;

.field final synthetic val$completer:Lcom/liquable/future/Completer;

.field final synthetic val$signature:Ljava/lang/String;

.field final synthetic val$signedData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/StickerInAppBilling;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/future/Completer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/StickerInAppBilling;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$1;->this$0:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    iput-object p3, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$1;->val$signedData:Ljava/lang/String;

    iput-object p4, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$1;->val$signature:Ljava/lang/String;

    iput-object p5, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$1;->val$completer:Lcom/liquable/future/Completer;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

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
    .line 258
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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
            "Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;",
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
    .line 263
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->purchaseManager:Lcom/liquable/nemo/purchase/model/PurchaseManager;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$1;->val$signedData:Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$1;->val$signature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/purchase/model/PurchaseManager;->purchaseViaGooglePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 274
    # getter for: Lcom/liquable/nemo/sticker/StickerInAppBilling;->debugLogger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    const-string/jumbo v1, "purchaseViaGooglePlay: AsyncException"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$1;->val$completer:Lcom/liquable/future/Completer;

    invoke-virtual {v0, p1}, Lcom/liquable/future/Completer;->completeError(Ljava/lang/Exception;)V

    .line 276
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 280
    instance-of v0, p1, Lcom/liquable/nemo/model/InAppBillingSignatureException;

    if-eqz v0, :cond_0

    .line 281
    # getter for: Lcom/liquable/nemo/sticker/StickerInAppBilling;->debugLogger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    const-string/jumbo v1, "purchaseViaGooglePlay"

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$1;->val$completer:Lcom/liquable/future/Completer;

    invoke-virtual {v0, p1}, Lcom/liquable/future/Completer;->completeError(Ljava/lang/Exception;)V

    .line 284
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 258
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/StickerInAppBilling$1;->postExecuteSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v4, "purchasedProductIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v3, "purchaseTos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v0, "notPurchasedProductIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v1, "notPurchasedTos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v5, "successResults":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;

    .line 295
    .local v2, "purchaseResult":Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;
    # getter for: Lcom/liquable/nemo/sticker/StickerInAppBilling;->debugLogger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "purchaseViaGooglePlay: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v2}, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->getResultType()Lcom/liquable/nemo/model/purchase/ResultType;

    move-result-object v7

    sget-object v8, Lcom/liquable/nemo/model/purchase/ResultType;->SUCCESS:Lcom/liquable/nemo/model/purchase/ResultType;

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/model/purchase/ResultType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 298
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {v2}, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->getProductId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v7, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$1;->this$0:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/liquable/nemo/sticker/StickerInAppBilling;->extractToFieldInPayload(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$100(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {v2}, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->getProductId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v7, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$1;->this$0:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/liquable/nemo/sticker/StickerInAppBilling;->extractToFieldInPayload(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$100(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    .end local v2    # "purchaseResult":Lcom/liquable/nemo/model/purchase/GooglePlayPurchaseResultDto;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 308
    iget-object v6, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$1;->this$0:Lcom/liquable/nemo/sticker/StickerInAppBilling;

    # invokes: Lcom/liquable/nemo/sticker/StickerInAppBilling;->insertNotices(Ljava/util/List;)V
    invoke-static {v6, v5}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$200(Lcom/liquable/nemo/sticker/StickerInAppBilling;Ljava/util/List;)V

    .line 309
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v6, v4, v3}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastStickerPurchaseRpcSuccess(Ljava/util/List;Ljava/util/List;)V

    .line 313
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 314
    # getter for: Lcom/liquable/nemo/sticker/StickerInAppBilling;->debugLogger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/sticker/StickerInAppBilling;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rpc returned non purchased products:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " tos:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", skip process"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    .line 320
    :cond_3
    iget-object v6, p0, Lcom/liquable/nemo/sticker/StickerInAppBilling$1;->val$completer:Lcom/liquable/future/Completer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/liquable/future/Completer;->complete(Ljava/lang/Object;)V

    .line 321
    return-void
.end method
