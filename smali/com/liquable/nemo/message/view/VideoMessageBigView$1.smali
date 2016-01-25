.class Lcom/liquable/nemo/message/view/VideoMessageBigView$1;
.super Ljava/lang/Object;
.source "VideoMessageBigView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/VideoMessageBigView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/VideoMessageBigView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/VideoMessageBigView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/VideoMessageBigView;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView$1;->this$0:Lcom/liquable/nemo/message/view/VideoMessageBigView;

    iput-object p2, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/VideoMessage;

    .line 37
    .local v1, "message":Lcom/liquable/nemo/message/model/VideoMessage;
    if-nez v1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView$1;->this$0:Lcom/liquable/nemo/message/view/VideoMessageBigView;

    # getter for: Lcom/liquable/nemo/message/view/VideoMessageBigView;->downloadBtn:Landroid/view/View;
    invoke-static {v2}, Lcom/liquable/nemo/message/view/VideoMessageBigView;->access$000(Lcom/liquable/nemo/message/view/VideoMessageBigView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 42
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadMedia(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    goto :goto_0

    .line 43
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView$1;->this$0:Lcom/liquable/nemo/message/view/VideoMessageBigView;

    # getter for: Lcom/liquable/nemo/message/view/VideoMessageBigView;->stopDownloadBtn:Landroid/view/View;
    invoke-static {v2}, Lcom/liquable/nemo/message/view/VideoMessageBigView;->access$100(Lcom/liquable/nemo/message/view/VideoMessageBigView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 44
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->cancelDownloadMedia(Lcom/liquable/nemo/message/model/IMediaMessage;)V

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/VideoMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 47
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 48
    .local v0, "mediaFile":Ljava/io/File;
    iget-object v2, p0, Lcom/liquable/nemo/message/view/VideoMessageBigView$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->dispatchMediaMessageIntent(Landroid/content/Context;Lcom/liquable/nemo/message/model/DomainMessage;Ljava/io/File;)V

    goto :goto_0
.end method
