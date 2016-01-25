.class Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$11;
.super Ljava/lang/Object;
.source "VoipSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->switchStateTo(Lcom/liquable/nemo/voip/session/VoipSession$State;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

.field final synthetic val$desc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    .prologue
    .line 723
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$11;->this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    iput-object p2, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$11;->val$desc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$11;->this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->listenerRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->access$700(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/session/VoipSessionListener;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$11;->val$desc:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/voip/session/VoipSessionListener;->onSessionStateChanged(Ljava/lang/String;)V

    .line 727
    return-void
.end method
