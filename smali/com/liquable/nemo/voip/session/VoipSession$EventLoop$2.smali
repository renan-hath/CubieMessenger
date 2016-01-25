.class Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$2;
.super Ljava/lang/Object;
.source "VoipSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onBeginReport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$2;->this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$2;->this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->listenerRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->access$700(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/session/VoipSessionListener;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$2;->this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->report:Lcom/liquable/nemo/voip/session/VoipSessionReport;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->access$1500(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)Lcom/liquable/nemo/voip/session/VoipSessionReport;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/voip/session/VoipSessionListener;->onSessinoReport(Lcom/liquable/nemo/voip/session/VoipSessionReport;)V

    .line 338
    return-void
.end method
