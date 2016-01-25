.class Lcom/liquable/nemo/android/service/ChattingAndroidService$8;
.super Ljava/lang/Object;
.source "ChattingAndroidService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/android/service/ChattingAndroidService;->fetchOfflineMessageIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/android/service/ChattingAndroidService;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$8;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 326
    # getter for: Lcom/liquable/nemo/android/service/ChattingAndroidService;->wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$700()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 328
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->processOfflineMesssage()V

    .line 330
    # getter for: Lcom/liquable/nemo/android/service/ChattingAndroidService;->wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$700()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    # getter for: Lcom/liquable/nemo/android/service/ChattingAndroidService;->wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$700()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$8;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    # getter for: Lcom/liquable/nemo/android/service/ChattingAndroidService;->fetchingOfflineMessageAttempt:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$800(Lcom/liquable/nemo/android/service/ChattingAndroidService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 336
    .local v0, "accumulatedAttempts":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$8;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    new-instance v2, Lcom/liquable/nemo/android/service/ChattingAndroidService$8$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService$8$1;-><init>(Lcom/liquable/nemo/android/service/ChattingAndroidService$8;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 346
    :cond_1
    return-void
.end method
