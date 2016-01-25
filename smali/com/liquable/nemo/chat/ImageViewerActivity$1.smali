.class Lcom/liquable/nemo/chat/ImageViewerActivity$1;
.super Landroid/os/AsyncTask;
.source "ImageViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ImageViewerActivity;->leftQuery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/message/model/IMediaMessage;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/message/model/IMediaMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ImageViewerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ImageViewerActivity;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 297
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/IMediaMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x40

    const/4 v10, 0x1

    const/4 v5, -0x1

    .line 301
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    iget-boolean v0, v0, Lcom/liquable/nemo/chat/ImageViewerActivity;->leftInArchive:Z

    if-eqz v0, :cond_1

    .line 302
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    # invokes: Lcom/liquable/nemo/chat/ImageViewerActivity;->getTopic(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$200(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    .line 303
    invoke-virtual {v2}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    # invokes: Lcom/liquable/nemo/chat/ImageViewerActivity;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$300(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    iget-wide v3, v3, Lcom/liquable/nemo/chat/ImageViewerActivity;->leftTime:J

    .line 302
    invoke-virtual/range {v0 .. v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->listArchivedMessagesByTypeAndTime(Ljava/lang/String;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object v7

    .line 314
    .local v7, "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/IMediaMessage;>;"
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/IMediaMessage;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/liquable/nemo/message/model/IMediaMessage;

    .line 317
    .local v8, "mediaMsg":Lcom/liquable/nemo/message/model/IMediaMessage;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-interface {v8}, Lcom/liquable/nemo/message/model/IMediaMessage;->getAllLocalKeyPaths()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/NemoFileService;->isAllLocalKeyPathFileExist(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 308
    .end local v7    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/IMediaMessage;>;"
    .end local v8    # "mediaMsg":Lcom/liquable/nemo/message/model/IMediaMessage;
    .end local v9    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/IMediaMessage;>;"
    :cond_1
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    # invokes: Lcom/liquable/nemo/chat/ImageViewerActivity;->getTopic(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$200(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    .line 309
    invoke-virtual {v2}, Lcom/liquable/nemo/chat/ImageViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    # invokes: Lcom/liquable/nemo/chat/ImageViewerActivity;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$300(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    iget-wide v3, v3, Lcom/liquable/nemo/chat/ImageViewerActivity;->leftTime:J

    .line 308
    invoke-virtual/range {v0 .. v6}, Lcom/liquable/nemo/chat/model/ChattingManager;->listMessagesByTypeAndTime(Ljava/lang/String;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object v7

    .restart local v7    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/IMediaMessage;>;"
    goto :goto_0

    .line 322
    .restart local v9    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/IMediaMessage;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 323
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    iget-boolean v0, v0, Lcom/liquable/nemo/chat/ImageViewerActivity;->leftInArchive:Z

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    iput-boolean v10, v0, Lcom/liquable/nemo/chat/ImageViewerActivity;->leftNoMore:Z

    .line 332
    :goto_2
    return-object v9

    .line 326
    :cond_3
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    iput-boolean v10, v0, Lcom/liquable/nemo/chat/ImageViewerActivity;->leftInArchive:Z

    goto :goto_2

    .line 329
    :cond_4
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/DomainMessage;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/DomainMessage;->getReceiveTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/liquable/nemo/chat/ImageViewerActivity;->leftTime:J

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 297
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/IMediaMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/IMediaMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/ImageViewerActivity;->messages:Ljava/util/List;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$400(Lcom/liquable/nemo/chat/ImageViewerActivity;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 339
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/ImageViewerActivity;->gallery:Landroid/widget/Gallery;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$500(Lcom/liquable/nemo/chat/ImageViewerActivity;)Landroid/widget/Gallery;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    iget-object v4, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    iget-object v5, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/ImageViewerActivity;->messages:Ljava/util/List;
    invoke-static {v5}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$400(Lcom/liquable/nemo/chat/ImageViewerActivity;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/liquable/nemo/chat/ImageViewerActivity$ImageAdapter;-><init>(Lcom/liquable/nemo/chat/ImageViewerActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 340
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/ImageViewerActivity;->messages:Ljava/util/List;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$400(Lcom/liquable/nemo/chat/ImageViewerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/ImageViewerActivity;->messages:Ljava/util/List;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$400(Lcom/liquable/nemo/chat/ImageViewerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/IMediaMessage;

    invoke-interface {v1}, Lcom/liquable/nemo/message/model/IMediaMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/ImageViewerActivity;->currentMsgId:Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$600(Lcom/liquable/nemo/chat/ImageViewerActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImageViewerActivity$1;->this$0:Lcom/liquable/nemo/chat/ImageViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/ImageViewerActivity;->gallery:Landroid/widget/Gallery;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ImageViewerActivity;->access$500(Lcom/liquable/nemo/chat/ImageViewerActivity;)Landroid/widget/Gallery;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Gallery;->setSelection(I)V

    .line 347
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 340
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
