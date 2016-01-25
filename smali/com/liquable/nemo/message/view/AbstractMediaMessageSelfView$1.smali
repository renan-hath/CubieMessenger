.class Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$1;
.super Ljava/lang/Object;
.source "AbstractMediaMessageSelfView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->initMessageBody(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;

.field final synthetic val$chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;Lcom/liquable/nemo/chat/model/ChattingManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$1;->this$0:Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;

    iput-object p2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$1;->val$chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iput-object p3, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 89
    .local v3, "msgId":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v4, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$1;->this$0:Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;

    # getter for: Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->reUploadBtn:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->access$000(Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    new-instance v4, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$1$1;

    invoke-direct {v4, p0, v3}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$1$1;-><init>(Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$1;Ljava/lang/String;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    .line 107
    invoke-virtual {v4, v5}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 109
    :cond_2
    iget-object v4, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$1;->val$chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v4, v3}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    .line 110
    .local v2, "message":Lcom/liquable/nemo/message/model/AbstractMediaMessage;
    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 114
    .local v0, "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 115
    .local v1, "mediaFile":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 116
    iget-object v4, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$1;->this$0:Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;

    iget-object v5, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4, v5, v2, v1}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;->onThumbnailClicked(Landroid/content/Context;Lcom/liquable/nemo/message/model/AbstractMediaMessage;Ljava/io/File;)V

    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->isSystemAck()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    iget-object v4, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView$1;->val$chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v4, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadMedia(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    goto :goto_0
.end method
