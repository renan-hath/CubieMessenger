.class Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView$1;
.super Ljava/lang/Object;
.source "AbstractMediaMessageOtherView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->initMessageBody(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;

.field final synthetic val$chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;Lcom/liquable/nemo/chat/model/ChattingManager;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;

    iput-object p2, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView$1;->val$chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iput-object p3, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    .local v3, "msgId":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v4, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView$1;->val$chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v4, v3}, Lcom/liquable/nemo/chat/model/ChattingManager;->findMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    .line 86
    .local v1, "found":Lcom/liquable/nemo/message/model/AbstractMediaMessage;
    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 91
    .local v0, "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v2

    .line 93
    .local v2, "mediaFile":Ljava/io/File;
    invoke-static {v2}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 94
    iget-object v4, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;

    # getter for: Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->downloadBtn:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->access$000(Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;)Landroid/widget/ImageButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    iget-object v4, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;

    iget-object v5, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView$1;->val$chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    # invokes: Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->downloadMedia(Lcom/liquable/nemo/chat/model/ChattingManager;Lcom/liquable/nemo/message/model/IMediaMessage;)V
    invoke-static {v4, v5, v1}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->access$100(Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;Lcom/liquable/nemo/chat/model/ChattingManager;Lcom/liquable/nemo/message/model/IMediaMessage;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v4, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView$1;->this$0:Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;

    iget-object v5, p0, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4, v5, v1, v2}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;->onThumbnailClicked(Landroid/content/Context;Lcom/liquable/nemo/message/model/AbstractMediaMessage;Ljava/io/File;)V

    goto :goto_0
.end method
