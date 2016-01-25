.class public Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;
.super Ljava/lang/Object;
.source "NemoRpcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/client/service/NemoRpcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentServiceHelper"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final serviceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;->serviceClass:Ljava/lang/Class;

    .line 62
    return-void
.end method


# virtual methods
.method public askServiceIsSendTextExists(Ljava/lang/String;)Z
    .locals 8
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 65
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;->serviceClass:Ljava/lang/Class;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.liquable.nemo.android.service.ChattingAndroidService.AskServiceIsSendTextExists"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string/jumbo v5, "com.liquable.nemo.android.service.ChattingAndroidService.SendTextId"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v2, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 70
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 71
    .local v3, "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    const-string/jumbo v5, "com.liquable.nemo.android.service.ChattingAndroidService.Callback"

    new-instance v6, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper$1;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7, v3, v2}, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper$1;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    iget-object v5, p0, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;->context:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 81
    const-wide/16 v5, 0x1

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 82
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 85
    :goto_0
    return v4

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public removeFrameFromService(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .locals 3
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;->serviceClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.android.service.ChattingAndroidService.RemoveFrameAction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string/jumbo v1, "com.liquable.nemo.android.service.ChattingAndroidService.Frame"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 95
    return-void
.end method

.method public sendFrameToService(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .locals 3
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;->serviceClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.android.service.ChattingAndroidService.SendFrameAction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v1, "com.liquable.nemo.android.service.ChattingAndroidService.Frame"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 102
    return-void
.end method
