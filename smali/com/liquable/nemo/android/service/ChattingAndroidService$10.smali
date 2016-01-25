.class Lcom/liquable/nemo/android/service/ChattingAndroidService$10;
.super Ljava/lang/Object;
.source "ChattingAndroidService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/android/service/ChattingAndroidService;->onConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/android/service/ChattingAndroidService;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$10;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService$10;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 443
    iget-object v1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$10;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    # getter for: Lcom/liquable/nemo/android/service/ChattingAndroidService;->markLoginTimeoutFuture:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$400(Lcom/liquable/nemo/android/service/ChattingAndroidService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 444
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<Ljava/lang/Void;>;"
    if-nez v0, :cond_0

    .line 453
    :goto_0
    return-object v3

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$10;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    new-instance v2, Lcom/liquable/nemo/android/service/ChattingAndroidService$10$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService$10$1;-><init>(Lcom/liquable/nemo/android/service/ChattingAndroidService$10;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
