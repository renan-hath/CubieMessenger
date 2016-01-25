.class Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$3;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "SelectPromotionStickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$3;->this$0:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;

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
    .line 100
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
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
    .line 104
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$3;->this$0:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 105
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/sticker/model/StickerManager;->listCampaignStickerCodes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$3;->this$0:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->showDialog(I)V

    .line 111
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$3;->this$0:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->removeDialog(I)V

    .line 116
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 100
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$3;->postExecuteSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/util/List;)V
    .locals 2
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
    .line 121
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerItemDto;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$3;->this$0:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;

    const v1, 0x7f0d005f

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$3;->this$0:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;

    # getter for: Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->promotionStickerAdapter:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->access$000(Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;)Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;->update(Ljava/util/List;)V

    goto :goto_0
.end method
