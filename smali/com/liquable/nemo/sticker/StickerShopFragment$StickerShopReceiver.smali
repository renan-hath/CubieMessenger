.class Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StickerShopFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sticker/StickerShopFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StickerShopReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/StickerShopFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopReceiver;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 228
    sget-object v2, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_ITEM_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    sget-object v3, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->COMPLETE:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    invoke-static {p2, v2, v3}, Lcom/liquable/nemo/util/BroadcastEventMatcher;->matchExtraFileTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/android/service/ExtraFileType;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopReceiver;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    iget-object v2, v2, Lcom/liquable/nemo/sticker/StickerShopFragment;->shopDto:Lcom/liquable/nemo/model/sticker/StickerShopDto;

    if-nez v2, :cond_1

    .line 267
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopReceiver;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemAdapter:Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;
    invoke-static {v2}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$400(Lcom/liquable/nemo/sticker/StickerShopFragment;)Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 235
    :cond_2
    const-string/jumbo v2, "com.liquable.nemo.sticker.StickerEvent"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const-string/jumbo v2, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/sticker/StickerEvent;

    .line 238
    .local v0, "event":Lcom/liquable/nemo/sticker/StickerEvent;
    sget-object v2, Lcom/liquable/nemo/sticker/StickerShopFragment$8;->$SwitchMap$com$liquable$nemo$sticker$StickerEvent:[I

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/StickerEvent;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopReceiver;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemAdapter:Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;
    invoke-static {v2}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$400(Lcom/liquable/nemo/sticker/StickerShopFragment;)Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;

    move-result-object v2

    # invokes: Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->resetPurchaseState()V
    invoke-static {v2}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->access$500(Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;)V

    goto :goto_0

    .line 243
    :pswitch_2
    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopReceiver;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemAdapter:Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;
    invoke-static {v2}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$400(Lcom/liquable/nemo/sticker/StickerShopFragment;)Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;

    move-result-object v2

    # invokes: Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->resetPurchaseState()V
    invoke-static {v2}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->access$500(Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;)V

    goto :goto_0

    .line 246
    :pswitch_3
    const-string/jumbo v2, "com.liquable.nemo.sticker.KEY_PRODUCTS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "productIds":[Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopReceiver;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->purchaseSuccessItems:Ljava/util/Set;
    invoke-static {v2}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$300(Lcom/liquable/nemo/sticker/StickerShopFragment;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 248
    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopReceiver;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemAdapter:Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;
    invoke-static {v2}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$400(Lcom/liquable/nemo/sticker/StickerShopFragment;)Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;

    move-result-object v2

    # invokes: Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->resetPurchaseState()V
    invoke-static {v2}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->access$500(Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;)V

    goto :goto_0

    .line 252
    .end local v1    # "productIds":[Ljava/lang/String;
    :pswitch_4
    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopReceiver;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemAdapter:Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;
    invoke-static {v2}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$400(Lcom/liquable/nemo/sticker/StickerShopFragment;)Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;

    move-result-object v2

    # invokes: Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->resetPurchaseState()V
    invoke-static {v2}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->access$500(Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;)V

    goto :goto_0

    .line 257
    :pswitch_5
    const-string/jumbo v2, "com.liquable.nemo.sticker.KEY_PRODUCTS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 258
    .restart local v1    # "productIds":[Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopReceiver;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->limitedOfferSuccessItems:Ljava/util/Set;
    invoke-static {v2}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$200(Lcom/liquable/nemo/sticker/StickerShopFragment;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 259
    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopReceiver;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemAdapter:Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;
    invoke-static {v2}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$400(Lcom/liquable/nemo/sticker/StickerShopFragment;)Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 263
    .end local v1    # "productIds":[Ljava/lang/String;
    :pswitch_6
    iget-object v2, p0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopReceiver;->this$0:Lcom/liquable/nemo/sticker/StickerShopFragment;

    # getter for: Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemAdapter:Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;
    invoke-static {v2}, Lcom/liquable/nemo/sticker/StickerShopFragment;->access$400(Lcom/liquable/nemo/sticker/StickerShopFragment;)Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
