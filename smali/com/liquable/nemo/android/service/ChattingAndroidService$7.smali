.class Lcom/liquable/nemo/android/service/ChattingAndroidService$7;
.super Ljava/lang/Object;
.source "ChattingAndroidService.java"

# interfaces
.implements Lcom/liquable/nemo/client/ReceiveDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/ChattingAndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/nemo/client/ReceiveDataListener",
        "<",
        "Lcom/liquable/nemo/endpoint/frame/LoginError;",
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
    .line 206
    iput-object p1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$7;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceive(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .locals 0

    .prologue
    .line 206
    check-cast p1, Lcom/liquable/nemo/endpoint/frame/LoginError;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/android/service/ChattingAndroidService$7;->onReceive(Lcom/liquable/nemo/endpoint/frame/LoginError;)V

    return-void
.end method

.method public onReceive(Lcom/liquable/nemo/endpoint/frame/LoginError;)V
    .locals 5
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/LoginError;

    .prologue
    const/4 v4, 0x0

    .line 210
    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$7;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    # getter for: Lcom/liquable/nemo/android/service/ChattingAndroidService;->markLoginTimeoutFuture:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$400(Lcom/liquable/nemo/android/service/ChattingAndroidService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 211
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<Ljava/lang/Void;>;"
    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 214
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.liquable.nemo.NEMO_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/liquable/nemo/android/service/ChattingAndroidService$14;->$SwitchMap$com$liquable$nemo$endpoint$frame$LoginErrorType:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/LoginError;->type()Lcom/liquable/nemo/endpoint/frame/LoginErrorType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/frame/LoginErrorType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 224
    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$7;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->interruptConnection(Z)V

    .line 230
    :goto_0
    return-void

    .line 217
    :pswitch_0
    const-string/jumbo v2, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v3, Lcom/liquable/nemo/NemoErrorEvent;->LOGIN_ERROR_NEED_UPDATE:Lcom/liquable/nemo/NemoErrorEvent;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 227
    :goto_1
    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$7;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->stop()V

    .line 228
    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$7;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$7;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->stopSelf()V

    goto :goto_0

    .line 220
    :pswitch_1
    const-string/jumbo v2, "com.liquable.nemo.KEY_EVENT_CODE"

    sget-object v3, Lcom/liquable/nemo/NemoErrorEvent;->LOGIN_ERROR_NEED_REINSTALL:Lcom/liquable/nemo/NemoErrorEvent;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
