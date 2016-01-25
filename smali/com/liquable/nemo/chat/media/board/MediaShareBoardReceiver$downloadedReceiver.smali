.class Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver$downloadedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaShareBoardReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "downloadedReceiver"
.end annotation


# instance fields
.field private final chatGroupMediaShareBoard:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)V
    .locals 0
    .param p1, "chatGroupMediaShareBoard"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver$downloadedReceiver;->chatGroupMediaShareBoard:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    .line 18
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    const-string/jumbo v1, "com.liquable.nemo.chat.model.MEDIA_MESSAGE_TRANSFER_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    const-string/jumbo v1, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    .line 24
    .local v0, "event":Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver$downloadedReceiver;->chatGroupMediaShareBoard:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->updateDownloadingList()V

    .line 25
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver$downloadedReceiver;->chatGroupMediaShareBoard:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;->updateBoards()V

    .line 27
    .end local v0    # "event":Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;
    :cond_0
    return-void
.end method
