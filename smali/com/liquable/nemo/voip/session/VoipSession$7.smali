.class Lcom/liquable/nemo/voip/session/VoipSession$7;
.super Ljava/lang/Object;
.source "VoipSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/session/VoipSession;->receive(Lcom/liquable/nemo/voip/session/AnswerCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/session/VoipSession;

.field final synthetic val$answerCall:Lcom/liquable/nemo/voip/session/AnswerCall;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/session/VoipSession;Lcom/liquable/nemo/voip/session/AnswerCall;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/VoipSession$7;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    iput-object p2, p0, Lcom/liquable/nemo/voip/session/VoipSession$7;->val$answerCall:Lcom/liquable/nemo/voip/session/AnswerCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$7;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$2000(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$7;->val$answerCall:Lcom/liquable/nemo/voip/session/AnswerCall;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onBeginReceive(Lcom/liquable/nemo/voip/session/AnswerCall;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->access$3200(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;Lcom/liquable/nemo/voip/session/AnswerCall;)V

    .line 1016
    return-void
.end method
