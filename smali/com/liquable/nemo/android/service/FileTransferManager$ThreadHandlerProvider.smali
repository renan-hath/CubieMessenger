.class Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;
.super Ljava/lang/Object;
.source "FileTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/FileTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadHandlerProvider"
.end annotation


# instance fields
.field private count:I

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/android/service/FileTransferManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/android/service/FileTransferManager$1;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized acquireHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;->count:I

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "FileTransferManager#ThreadHandlerProvider"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;->handlerThread:Landroid/os/HandlerThread;

    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;->handler:Landroid/os/Handler;

    .line 60
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;->count:I

    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;->handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releaseHandler()V
    .locals 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;->count:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;->handler:Landroid/os/Handler;

    .line 67
    iget-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;->handlerThread:Landroid/os/HandlerThread;

    .line 70
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/liquable/nemo/android/service/FileTransferManager$ThreadHandlerProvider;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
