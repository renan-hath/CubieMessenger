.class Lcom/liquable/nemo/voip/session/VoipSession$8;
.super Ljava/lang/Object;
.source "VoipSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/session/VoipSession;->reject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/session/VoipSession;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/session/VoipSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/VoipSession$8;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$8;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$2000(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    move-result-object v0

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onBeginReject()V
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->access$3300(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)V

    .line 1027
    return-void
.end method
