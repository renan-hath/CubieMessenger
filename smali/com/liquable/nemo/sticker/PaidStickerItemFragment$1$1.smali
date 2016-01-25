.class Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "PaidStickerItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "showToast"    # Z

    .prologue
    .line 78
    iput-object p1, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;->this$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;

    invoke-direct {p0, p2, p3}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;Z)V

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
    .line 82
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->purchaseManager:Lcom/liquable/nemo/purchase/model/PurchaseManager;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;->this$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;

    iget-object v2, v2, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    iget-object v2, v2, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 83
    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getProductId()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/purchase/model/PurchaseManager;->limitedTimeOfferSticker(Ljava/lang/String;Ljava/lang/String;)Z

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
    .line 78
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;->this$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    iget-object v1, v1, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->setStickerPackageDownloadingBegin(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;->this$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->limitedFreeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 90
    return-void
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 98
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;->this$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    iget-object v1, v1, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->setStickerPackageDownloadingEnd(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;->this$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->limitedFreeButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;->this$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d01c6

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 101
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 105
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;->this$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    iget-object v1, v1, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->setStickerPackageDownloadingEnd(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;->this$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->limitedFreeButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;->this$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d01c6

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 108
    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 112
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;->this$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;->this$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    iget-object v1, v1, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->loadItem(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;->this$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->downloadStickerPackage()V

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;->this$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->limitedFreeButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;->this$1:Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/PaidStickerItemFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d01c6

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/PaidStickerItemFragment$1$1;->postExecuteSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
