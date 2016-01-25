.class Lcom/liquable/nemo/forum/ForumDaemon$1;
.super Ljava/lang/Object;
.source "ForumDaemon.java"

# interfaces
.implements Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/forum/ForumDaemon;->createAndUploadArticlePicture(Landroid/net/Uri;)Lcom/liquable/util/Tuple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/forum/ForumDaemon;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$uploadResult:[Z


# direct methods
.method constructor <init>(Lcom/liquable/nemo/forum/ForumDaemon;[ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/forum/ForumDaemon;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/liquable/nemo/forum/ForumDaemon$1;->this$0:Lcom/liquable/nemo/forum/ForumDaemon;

    iput-object p2, p0, Lcom/liquable/nemo/forum/ForumDaemon$1;->val$uploadResult:[Z

    iput-object p3, p0, Lcom/liquable/nemo/forum/ForumDaemon$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumDaemon$1;->val$uploadResult:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 188
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumDaemon$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 189
    return-void
.end method

.method public onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    .locals 1
    .param p1, "error"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumDaemon$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 194
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 198
    return-void
.end method
