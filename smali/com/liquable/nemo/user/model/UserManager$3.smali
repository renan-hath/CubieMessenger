.class Lcom/liquable/nemo/user/model/UserManager$3;
.super Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/user/model/UserManager;->uploadMyAccountIcon(Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/user/model/UserManager;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/user/model/UserManager;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/user/model/UserManager;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/liquable/nemo/user/model/UserManager$3;->this$0:Lcom/liquable/nemo/user/model/UserManager;

    iput-object p2, p0, Lcom/liquable/nemo/user/model/UserManager$3;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/liquable/nemo/user/model/UserManager$3;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 217
    # getter for: Lcom/liquable/nemo/user/model/UserManager;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/user/model/UserManager;->access$200()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    const-string/jumbo v1, "fileTransferManager.uploadUserIcon to S3 complete"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager$3;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 219
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager$3;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 220
    return-void
.end method

.method public onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    .locals 2
    .param p1, "error"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .prologue
    .line 224
    # getter for: Lcom/liquable/nemo/user/model/UserManager;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/user/model/UserManager;->access$200()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    const-string/jumbo v1, "fileTransferManager.uploadUserIcon to S3 failed"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager$3;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 226
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager$3;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 227
    return-void
.end method
