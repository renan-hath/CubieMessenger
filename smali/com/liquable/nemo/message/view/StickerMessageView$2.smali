.class Lcom/liquable/nemo/message/view/StickerMessageView$2;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "StickerMessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/StickerMessageView;->update(Lcom/liquable/nemo/message/model/StickerMessage;Landroid/content/Context;)V
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
        "Lcom/liquable/nemo/model/sticker/StickerDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/StickerMessageView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$stickerCode:Ljava/lang/String;

.field final synthetic val$stickerMessage:Lcom/liquable/nemo/message/model/StickerMessage;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/StickerMessageView;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Lcom/liquable/nemo/message/model/StickerMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/StickerMessageView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->this$0:Lcom/liquable/nemo/message/view/StickerMessageView;

    iput-object p3, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->val$stickerCode:Ljava/lang/String;

    iput-object p5, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->val$stickerMessage:Lcom/liquable/nemo/message/model/StickerMessage;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/sticker/StickerDto;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 146
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->val$context:Landroid/content/Context;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 147
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->val$stickerCode:Ljava/lang/String;

    .line 146
    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/sticker/model/StickerManager;->getVisibleStickerFromServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerDto;

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
    .line 142
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/StickerMessageView$2;->doInBackground([Ljava/lang/Void;)Lcom/liquable/nemo/model/sticker/StickerDto;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->val$stickerMessage:Lcom/liquable/nemo/message/model/StickerMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/message/model/StickerMessage;->updateTransferAsTransfering(I)V

    .line 154
    iget-object v0, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->this$0:Lcom/liquable/nemo/message/view/StickerMessageView;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->val$stickerMessage:Lcom/liquable/nemo/message/model/StickerMessage;

    const/4 v3, 0x0

    # invokes: Lcom/liquable/nemo/message/view/StickerMessageView;->display(Landroid/content/Context;Lcom/liquable/nemo/message/model/StickerMessage;Lcom/liquable/nemo/model/sticker/StickerDto;)V
    invoke-static {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/StickerMessageView;->access$000(Lcom/liquable/nemo/message/view/StickerMessageView;Landroid/content/Context;Lcom/liquable/nemo/message/model/StickerMessage;Lcom/liquable/nemo/model/sticker/StickerDto;)V

    .line 155
    return-void
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/model/DomainException;)V
    .locals 4
    .param p1, "exception"    # Lcom/liquable/nemo/model/DomainException;

    .prologue
    const/4 v3, 0x0

    .line 162
    instance-of v0, p1, Lcom/liquable/nemo/model/StickerCanNotVisibleException;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->val$stickerMessage:Lcom/liquable/nemo/message/model/StickerMessage;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/StickerMessage;->updateTransferAsNotVisible()V

    .line 164
    iget-object v0, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->this$0:Lcom/liquable/nemo/message/view/StickerMessageView;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->val$stickerMessage:Lcom/liquable/nemo/message/model/StickerMessage;

    # invokes: Lcom/liquable/nemo/message/view/StickerMessageView;->display(Landroid/content/Context;Lcom/liquable/nemo/message/model/StickerMessage;Lcom/liquable/nemo/model/sticker/StickerDto;)V
    invoke-static {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/StickerMessageView;->access$000(Lcom/liquable/nemo/message/view/StickerMessageView;Landroid/content/Context;Lcom/liquable/nemo/message/model/StickerMessage;Lcom/liquable/nemo/model/sticker/StickerDto;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    instance-of v0, p1, Lcom/liquable/nemo/model/StickerNotFoundException;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->val$stickerMessage:Lcom/liquable/nemo/message/model/StickerMessage;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/StickerMessage;->updateTransferAsNotFound()V

    .line 167
    iget-object v0, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->this$0:Lcom/liquable/nemo/message/view/StickerMessageView;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->val$stickerMessage:Lcom/liquable/nemo/message/model/StickerMessage;

    # invokes: Lcom/liquable/nemo/message/view/StickerMessageView;->display(Landroid/content/Context;Lcom/liquable/nemo/message/model/StickerMessage;Lcom/liquable/nemo/model/sticker/StickerDto;)V
    invoke-static {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/StickerMessageView;->access$000(Lcom/liquable/nemo/message/view/StickerMessageView;Landroid/content/Context;Lcom/liquable/nemo/message/model/StickerMessage;Lcom/liquable/nemo/model/sticker/StickerDto;)V

    goto :goto_0
.end method

.method protected postExecuteSuccess(Lcom/liquable/nemo/model/sticker/StickerDto;)V
    .locals 3
    .param p1, "result"    # Lcom/liquable/nemo/model/sticker/StickerDto;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->val$stickerMessage:Lcom/liquable/nemo/message/model/StickerMessage;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/StickerMessage;->updateTransferAsReady()V

    .line 174
    iget-object v0, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->this$0:Lcom/liquable/nemo/message/view/StickerMessageView;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/message/view/StickerMessageView$2;->val$stickerMessage:Lcom/liquable/nemo/message/model/StickerMessage;

    # invokes: Lcom/liquable/nemo/message/view/StickerMessageView;->display(Landroid/content/Context;Lcom/liquable/nemo/message/model/StickerMessage;Lcom/liquable/nemo/model/sticker/StickerDto;)V
    invoke-static {v0, v1, v2, p1}, Lcom/liquable/nemo/message/view/StickerMessageView;->access$000(Lcom/liquable/nemo/message/view/StickerMessageView;Landroid/content/Context;Lcom/liquable/nemo/message/model/StickerMessage;Lcom/liquable/nemo/model/sticker/StickerDto;)V

    .line 175
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 142
    check-cast p1, Lcom/liquable/nemo/model/sticker/StickerDto;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/StickerMessageView$2;->postExecuteSuccess(Lcom/liquable/nemo/model/sticker/StickerDto;)V

    return-void
.end method
