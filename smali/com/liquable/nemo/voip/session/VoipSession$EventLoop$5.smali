.class Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$5;
.super Ljava/lang/Object;
.source "VoipSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onFatalError(Lcom/liquable/nemo/voip/event/VoipEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

.field final synthetic val$event:Lcom/liquable/nemo/voip/event/VoipEvent;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;Lcom/liquable/nemo/voip/event/VoipEvent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$5;->this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    iput-object p2, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$5;->val$event:Lcom/liquable/nemo/voip/event/VoipEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 455
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$5;->this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->listenerRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->access$700(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/session/VoipSessionListener;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$5;->this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    iget-object v1, v1, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    const v2, 0x7f0d0523

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$5;->val$event:Lcom/liquable/nemo/voip/event/VoipEvent;

    invoke-virtual {v5}, Lcom/liquable/nemo/voip/event/VoipEvent;->getType()Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    move-result-object v5

    .line 456
    invoke-virtual {v5}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 455
    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/voip/session/VoipSession;->access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/voip/session/VoipSessionListener;->onSessionError(Ljava/lang/String;)V

    .line 457
    return-void
.end method
