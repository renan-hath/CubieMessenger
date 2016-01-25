.class Lcom/liquable/nemo/sticker/BaseStickerItemFragment$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "BaseStickerItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->downloadStickerPackage()V
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
        "Lcom/liquable/nemo/model/sticker/StickerPackageDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/BaseStickerItemFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "showToast"    # Z

    .prologue
    .line 114
    iput-object p1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    invoke-direct {p0, p2, p3}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 122
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v3, v3, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 123
    invoke-virtual {v3}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerPackageFromServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    move-result-object v0

    goto :goto_0
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
    .line 114
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$1;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v1, v1, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->setStickerPackageDownloadingBegin(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 137
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v1, v1, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->setStickerPackageDownloadingEnd(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 2
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    .line 142
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v1, v1, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->setStickerPackageDownloadingEnd(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/model/sticker/StickerPackageDto;)V
    .locals 3
    .param p1, "result"    # Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .prologue
    .line 147
    sget-object v0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getStickerPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 148
    if-eqz p1, :cond_0

    .line 149
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$1;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iget-object v1, v1, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getThumbnailPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->downloadStickerPackage(Lcom/liquable/nemo/model/sticker/StickerPackageDto;Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 114
    check-cast p1, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$1;->postExecuteSuccess(Lcom/liquable/nemo/model/sticker/StickerPackageDto;)V

    return-void
.end method
