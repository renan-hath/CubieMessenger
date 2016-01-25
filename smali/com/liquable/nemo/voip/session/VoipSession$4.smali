.class Lcom/liquable/nemo/voip/session/VoipSession$4;
.super Ljava/lang/Object;
.source "VoipSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/session/VoipSession;->destroySync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/session/VoipSession;

.field final synthetic val$lastTaskLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/session/VoipSession;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 957
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/VoipSession$4;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    iput-object p2, p0, Lcom/liquable/nemo/voip/session/VoipSession$4;->val$lastTaskLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$4;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$2000(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    move-result-object v0

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onBeginDestroy()V
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->access$2900(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)V

    .line 961
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$4;->val$lastTaskLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 962
    return-void
.end method
