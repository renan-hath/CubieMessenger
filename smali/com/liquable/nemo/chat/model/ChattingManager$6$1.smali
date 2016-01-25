.class Lcom/liquable/nemo/chat/model/ChattingManager$6$1;
.super Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;
.source "ChattingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/model/ChattingManager$6;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/model/ChattingManager$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/chat/model/ChattingManager$6;

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    invoke-direct {p0}, Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 6

    .prologue
    .line 1227
    :try_start_0
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v3, v3, Lcom/liquable/nemo/chat/model/ChattingManager$6;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;
    invoke-static {v3}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$100(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/storage/NemoFileService;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v4, v4, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$newIconFile:Ljava/io/File;

    iget-object v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v5, v5, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 1228
    invoke-virtual {v5}, Lcom/liquable/nemo/group/model/ChatGroup;->getLocalKeyPathOfIcon()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v5

    .line 1227
    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/storage/NemoFileService;->copyFileToLocalKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 1229
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v3, v3, Lcom/liquable/nemo/chat/model/ChattingManager$6;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;
    invoke-static {v3}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$100(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/storage/NemoFileService;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v4, v4, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$newIconFile:Ljava/io/File;

    iget-object v5, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v5, v5, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$copiedLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/storage/NemoFileService;->copyFileToLocalKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    :goto_0
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v3, v3, Lcom/liquable/nemo/chat/model/ChattingManager$6;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;
    invoke-static {v3}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$400(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/db/ChatGroupDao;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v4, v4, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/db/ChatGroupDao;->findByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    .line 1235
    .local v1, "found":Lcom/liquable/nemo/group/model/ChatGroup;
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v3, v3, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 1236
    invoke-virtual {v3}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v4, v4, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$copiedFileName:Ljava/lang/String;

    .line 1235
    invoke-static {v3, v4}, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->createBySender(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;

    move-result-object v2

    .line 1238
    .local v2, "updateGroupIconMessage":Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v3, v3, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v3}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v4, v4, Lcom/liquable/nemo/chat/model/ChattingManager$6;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 1239
    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->pref:Lcom/liquable/nemo/util/Pref;
    invoke-static {v4}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$500(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/util/Pref;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v4

    .line 1238
    invoke-static {v3, v4}, Lcom/liquable/nemo/message/model/MessageInfo;->createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;->setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V

    .line 1241
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v3, v3, Lcom/liquable/nemo/chat/model/ChattingManager$6;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # invokes: Lcom/liquable/nemo/chat/model/ChattingManager;->saveAndNotifyMessage(Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z
    invoke-static {v3, v2, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$600(Lcom/liquable/nemo/chat/model/ChattingManager;Lcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/group/model/ChatGroup;)Z

    .line 1242
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v3, v3, Lcom/liquable/nemo/chat/model/ChattingManager$6;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->chattingService:Lcom/liquable/nemo/client/service/IChattingService;
    invoke-static {v3}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$700(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/client/service/IChattingService;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/liquable/nemo/client/service/IChattingService;->sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 1243
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v3, v3, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1244
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v3, v3, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1245
    return-void

    .line 1230
    .end local v1    # "found":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v2    # "updateGroupIconMessage":Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;
    :catch_0
    move-exception v0

    .line 1231
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v3, v3, Lcom/liquable/nemo/chat/model/ChattingManager$6;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;
    invoke-static {v3}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$100(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/storage/NemoFileService;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v4, v4, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->getLocalKeyPathOfIcon()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/NemoFileService;->delete(Lcom/liquable/nemo/storage/LocalKeyPath;)V

    goto :goto_0
.end method

.method public onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    .locals 2
    .param p1, "error"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v0, v0, Lcom/liquable/nemo/chat/model/ChattingManager$6;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;
    invoke-static {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$100(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/storage/NemoFileService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v1, v1, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getLocalKeyPathOfIcon()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/NemoFileService;->delete(Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 1250
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v0, v0, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1251
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;->this$1:Lcom/liquable/nemo/chat/model/ChattingManager$6;

    iget-object v0, v0, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1252
    return-void
.end method
