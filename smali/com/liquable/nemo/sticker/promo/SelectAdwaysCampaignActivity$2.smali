.class Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$2;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "SelectAdwaysCampaignActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
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
        "Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;

.field final synthetic val$stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;Landroid/content/Context;Lcom/liquable/nemo/model/sticker/StickerItemDto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$2;->this$0:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;

    iput-object p3, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$2;->val$stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

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
    .line 118
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

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
            "Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;",
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
    .line 122
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$2;->this$0:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 123
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$2;->val$stickerItemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 124
    invoke-virtual {v3}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getProductId()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/sticker/model/StickerManager;->listAdwaysCampaigns(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$2;->this$0:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->showDialog(I)V

    .line 130
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$2;->this$0:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->removeDialog(I)V

    .line 135
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$2;->postExecuteSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$2;->this$0:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;

    const v1, 0x7f0d005f

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$2;->this$0:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;

    # getter for: Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->campaignAdapter:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->access$000(Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;)Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;->update(Ljava/util/List;)V

    goto :goto_0
.end method
