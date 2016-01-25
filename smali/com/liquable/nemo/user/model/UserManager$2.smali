.class Lcom/liquable/nemo/user/model/UserManager$2;
.super Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/user/model/UserManager;->uploadCover(Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/user/model/UserManager;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$newCoverFile:Ljava/io/File;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/user/model/UserManager;Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/user/model/UserManager;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/liquable/nemo/user/model/UserManager$2;->this$0:Lcom/liquable/nemo/user/model/UserManager;

    iput-object p2, p0, Lcom/liquable/nemo/user/model/UserManager$2;->val$newCoverFile:Ljava/io/File;

    iput-object p3, p0, Lcom/liquable/nemo/user/model/UserManager$2;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/liquable/nemo/user/model/UserManager$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .prologue
    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/user/model/UserManager$2;->this$0:Lcom/liquable/nemo/user/model/UserManager;

    # getter for: Lcom/liquable/nemo/user/model/UserManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;
    invoke-static {v1}, Lcom/liquable/nemo/user/model/UserManager;->access$100(Lcom/liquable/nemo/user/model/UserManager;)Lcom/liquable/nemo/storage/NemoFileService;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/user/model/UserManager$2;->val$newCoverFile:Ljava/io/File;

    iget-object v3, p0, Lcom/liquable/nemo/user/model/UserManager$2;->this$0:Lcom/liquable/nemo/user/model/UserManager;

    .line 181
    # getter for: Lcom/liquable/nemo/user/model/UserManager;->pref:Lcom/liquable/nemo/util/Pref;
    invoke-static {v3}, Lcom/liquable/nemo/user/model/UserManager;->access$000(Lcom/liquable/nemo/user/model/UserManager;)Lcom/liquable/nemo/util/Pref;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/friend/model/Account;->createCoverLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    .line 180
    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/storage/NemoFileService;->copyFileToLocalKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/user/model/UserManager$2;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    iget-object v1, p0, Lcom/liquable/nemo/user/model/UserManager$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 188
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/liquable/nemo/user/model/UserManager$2;->this$0:Lcom/liquable/nemo/user/model/UserManager;

    # getter for: Lcom/liquable/nemo/user/model/UserManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;
    invoke-static {v1}, Lcom/liquable/nemo/user/model/UserManager;->access$100(Lcom/liquable/nemo/user/model/UserManager;)Lcom/liquable/nemo/storage/NemoFileService;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/user/model/UserManager$2;->this$0:Lcom/liquable/nemo/user/model/UserManager;

    # getter for: Lcom/liquable/nemo/user/model/UserManager;->pref:Lcom/liquable/nemo/util/Pref;
    invoke-static {v2}, Lcom/liquable/nemo/user/model/UserManager;->access$000(Lcom/liquable/nemo/user/model/UserManager;)Lcom/liquable/nemo/util/Pref;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/friend/model/Account;->createCoverLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/NemoFileService;->delete(Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 184
    # getter for: Lcom/liquable/nemo/user/model/UserManager;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/user/model/UserManager;->access$200()Lcom/liquable/nemo/util/Logger;

    move-result-object v1

    const-string/jumbo v2, "copy self cover failed"

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    .locals 2
    .param p1, "error"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager$2;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 193
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 194
    return-void
.end method
