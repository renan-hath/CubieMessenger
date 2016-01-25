.class Lcom/liquable/nemo/chat/model/ChattingManager$6;
.super Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;
.source "ChattingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/model/ChattingManager;->modifyChatGroupIcon(Lcom/liquable/nemo/group/model/ChatGroup;Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

.field final synthetic val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

.field final synthetic val$copiedFileName:Ljava/lang/String;

.field final synthetic val$copiedLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

.field final synthetic val$copiedRemoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$newIconFile:Ljava/io/File;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/model/ChattingManager;Ljava/io/File;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/storage/LocalKeyPath;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/model/ChattingManager;

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    iput-object p2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$newIconFile:Ljava/io/File;

    iput-object p3, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$copiedRemoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    iput-object p4, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    iput-object p5, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$copiedLocalKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    iput-object p6, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$copiedFileName:Ljava/lang/String;

    iput-object p7, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p8, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$800(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/android/service/FileTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$newIconFile:Ljava/io/File;

    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$copiedRemoteKeyPath:Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    new-instance v3, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/chat/model/ChattingManager$6$1;-><init>(Lcom/liquable/nemo/chat/model/ChattingManager$6;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 1254
    return-void
.end method

.method public onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    .locals 2
    .param p1, "error"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;
    invoke-static {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$100(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/storage/NemoFileService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getLocalKeyPathOfIcon()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/NemoFileService;->delete(Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 1259
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1260
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1261
    return-void
.end method
