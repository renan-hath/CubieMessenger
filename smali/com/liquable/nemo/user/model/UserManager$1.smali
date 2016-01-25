.class Lcom/liquable/nemo/user/model/UserManager$1;
.super Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/user/model/UserManager;->discardCover()Z
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
    .line 88
    iput-object p1, p0, Lcom/liquable/nemo/user/model/UserManager$1;->this$0:Lcom/liquable/nemo/user/model/UserManager;

    iput-object p2, p0, Lcom/liquable/nemo/user/model/UserManager$1;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/liquable/nemo/user/model/UserManager$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/liquable/nemo/android/service/FileTransferManager$DefaultFileTransferListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager$1;->this$0:Lcom/liquable/nemo/user/model/UserManager;

    # getter for: Lcom/liquable/nemo/user/model/UserManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;
    invoke-static {v0}, Lcom/liquable/nemo/user/model/UserManager;->access$100(Lcom/liquable/nemo/user/model/UserManager;)Lcom/liquable/nemo/storage/NemoFileService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/user/model/UserManager$1;->this$0:Lcom/liquable/nemo/user/model/UserManager;

    # getter for: Lcom/liquable/nemo/user/model/UserManager;->pref:Lcom/liquable/nemo/util/Pref;
    invoke-static {v1}, Lcom/liquable/nemo/user/model/UserManager;->access$000(Lcom/liquable/nemo/user/model/UserManager;)Lcom/liquable/nemo/util/Pref;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/friend/model/Account;->createCoverLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/NemoFileService;->delete(Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager$1;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 94
    return-void
.end method

.method public onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    .locals 2
    .param p1, "error"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager$1;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 99
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 100
    return-void
.end method
