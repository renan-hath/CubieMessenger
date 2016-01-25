.class public Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver;
.super Ljava/lang/Object;
.source "MediaShareBoardReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver$downloadedReceiver;
    }
.end annotation


# instance fields
.field private final chatGroupMediaShareBoard:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

.field private fulltimeReceiver:Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver$downloadedReceiver;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)V
    .locals 0
    .param p1, "chatGroupMediaShareBoard"    # Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver;->chatGroupMediaShareBoard:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    .line 37
    return-void
.end method


# virtual methods
.method public registerAction(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver;->fulltimeReceiver:Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver$downloadedReceiver;

    if-eqz v1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v1, Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver$downloadedReceiver;

    iget-object v2, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver;->chatGroupMediaShareBoard:Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;

    invoke-direct {v1, v2}, Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver$downloadedReceiver;-><init>(Lcom/liquable/nemo/chat/media/board/MediaShareBoardActivity;)V

    iput-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver;->fulltimeReceiver:Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver$downloadedReceiver;

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.chat.model.MEDIA_MESSAGE_TRANSFER_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver;->fulltimeReceiver:Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver$downloadedReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public unregisterAction(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver;->fulltimeReceiver:Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver$downloadedReceiver;

    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver;->fulltimeReceiver:Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver$downloadedReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver;->fulltimeReceiver:Lcom/liquable/nemo/chat/media/board/MediaShareBoardReceiver$downloadedReceiver;

    goto :goto_0
.end method
