.class Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper$1;
.super Landroid/os/ResultReceiver;
.source "NemoRpcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;->askServiceIsSendTextExists(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper$1;->this$0:Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;

    iput-object p3, p0, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper$1;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper$1;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string/jumbo v1, "com.liquable.nemo.android.service.ChattingAndroidService.AskServiceIsSendTextExists.Result"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    iget-object v0, p0, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 76
    return-void
.end method
