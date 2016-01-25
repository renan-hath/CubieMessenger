.class Lcom/liquable/nemo/chat/model/ChattingManager$3;
.super Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;
.source "ChattingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/model/ChattingManager;->downloadUpdateChatGroupIcon(Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

.field final synthetic val$updateGroupIconMessage:Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/model/ChattingManager;Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/model/ChattingManager;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$3;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    iput-object p2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$3;->val$updateGroupIconMessage:Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;

    invoke-direct {p0}, Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$3;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$000(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$3;->val$updateGroupIconMessage:Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastChatGroupHistoryIconChanged(Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;)V

    .line 684
    return-void
.end method
