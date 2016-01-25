.class Lcom/liquable/nemo/voip/session/AnswerBusySession$EventLoop;
.super Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop;
.source "AnswerBusySession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/session/AnswerBusySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventLoop"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/session/AnswerBusySession;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/voip/session/AnswerBusySession;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/AnswerBusySession;

    invoke-direct {p0}, Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/voip/session/AnswerBusySession;Lcom/liquable/nemo/voip/session/AnswerBusySession$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/voip/session/AnswerBusySession;
    .param p2, "x1"    # Lcom/liquable/nemo/voip/session/AnswerBusySession$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/session/AnswerBusySession$EventLoop;-><init>(Lcom/liquable/nemo/voip/session/AnswerBusySession;)V

    return-void
.end method


# virtual methods
.method protected processEvent(Lcom/liquable/nemo/voip/event/VoipEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/liquable/nemo/voip/event/VoipEvent;

    .prologue
    .line 36
    sget-object v1, Lcom/liquable/nemo/voip/session/AnswerBusySession$1;->$SwitchMap$com$liquable$nemo$voip$event$VoipEvent$Type:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/event/VoipEvent;->getType()Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 51
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/AnswerBusySession;

    # getter for: Lcom/liquable/nemo/voip/session/AnswerBusySession;->client:Lcom/liquable/nemo/voip/client/VoipClient;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/AnswerBusySession;->access$100(Lcom/liquable/nemo/voip/session/AnswerBusySession;)Lcom/liquable/nemo/voip/client/VoipClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/voip/client/VoipClient;->disconnectSync()V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 38
    :pswitch_0
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/AnswerBusySession;

    # getter for: Lcom/liquable/nemo/voip/session/AnswerBusySession;->client:Lcom/liquable/nemo/voip/client/VoipClient;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/AnswerBusySession;->access$100(Lcom/liquable/nemo/voip/session/AnswerBusySession;)Lcom/liquable/nemo/voip/client/VoipClient;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/AnswerBusySession;

    # getter for: Lcom/liquable/nemo/voip/session/AnswerBusySession;->answerCall:Lcom/liquable/nemo/voip/session/AnswerCall;
    invoke-static {v2}, Lcom/liquable/nemo/voip/session/AnswerBusySession;->access$000(Lcom/liquable/nemo/voip/session/AnswerBusySession;)Lcom/liquable/nemo/voip/session/AnswerCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/session/AnswerCall;->getDialId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/AnswerBusySession;

    # getter for: Lcom/liquable/nemo/voip/session/AnswerBusySession;->answerCall:Lcom/liquable/nemo/voip/session/AnswerCall;
    invoke-static {v3}, Lcom/liquable/nemo/voip/session/AnswerBusySession;->access$000(Lcom/liquable/nemo/voip/session/AnswerBusySession;)Lcom/liquable/nemo/voip/session/AnswerCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/session/AnswerCall;->getReceiverUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/voip/client/VoipClient;->writeReceive(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :pswitch_1
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/AnswerBusySession;

    # getter for: Lcom/liquable/nemo/voip/session/AnswerBusySession;->client:Lcom/liquable/nemo/voip/client/VoipClient;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/AnswerBusySession;->access$100(Lcom/liquable/nemo/voip/session/AnswerBusySession;)Lcom/liquable/nemo/voip/client/VoipClient;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/AnswerBusySession;

    # getter for: Lcom/liquable/nemo/voip/session/AnswerBusySession;->answerCall:Lcom/liquable/nemo/voip/session/AnswerCall;
    invoke-static {v2}, Lcom/liquable/nemo/voip/session/AnswerBusySession;->access$000(Lcom/liquable/nemo/voip/session/AnswerBusySession;)Lcom/liquable/nemo/voip/session/AnswerCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/session/AnswerCall;->getDialId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/voip/client/VoipClient;->writeBusy(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :pswitch_2
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/AnswerBusySession;

    # getter for: Lcom/liquable/nemo/voip/session/AnswerBusySession;->completerRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/AnswerBusySession;->access$200(Lcom/liquable/nemo/voip/session/AnswerBusySession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/session/AnswerBusySession$Completer;

    .line 45
    .local v0, "completer":Lcom/liquable/nemo/voip/session/AnswerBusySession$Completer;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/AnswerBusySession$Completer;->complete()V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
