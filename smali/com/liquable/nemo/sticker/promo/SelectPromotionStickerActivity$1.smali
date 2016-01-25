.class Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SelectPromotionStickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$1;->this$0:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    sget-object v0, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_ITEM_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    sget-object v1, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->COMPLETE:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    invoke-static {p2, v0, v1}, Lcom/liquable/nemo/util/BroadcastEventMatcher;->matchExtraFileTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/android/service/ExtraFileType;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$1;->this$0:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;

    # getter for: Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->promotionStickerAdapter:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->access$000(Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;)Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;->notifyDataSetChanged()V

    .line 56
    :cond_0
    return-void
.end method
