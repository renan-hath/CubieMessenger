.class Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "BaseStickerItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->loadItem(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

.field final synthetic val$packageCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/BaseStickerItemFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    iput-object p3, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;->val$packageCode:Ljava/lang/String;

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
    .line 183
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 7
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
    .line 187
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    .line 188
    invoke-virtual {v2}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 189
    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;->val$packageCode:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 190
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 187
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/sticker/model/StickerManager;->listStickerItemsByCodes(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 191
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerItemDto;>;"
    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->access$000(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;I)V

    .line 197
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->access$100(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;I)V

    .line 203
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 3
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d006a

    .line 208
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0380

    .line 209
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d042e

    new-instance v2, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2$2;-><init>(Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;)V

    .line 210
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d042f

    new-instance v2, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2$1;-><init>(Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;)V

    .line 217
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 225
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 183
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;->postExecuteSuccess(Ljava/util/List;)V

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
    .line 229
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerItemDto;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 233
    .local v0, "itemDto":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;->this$0:Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->resetItem(Lcom/liquable/nemo/model/sticker/StickerItemDto;)V

    goto :goto_0
.end method
