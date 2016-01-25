.class Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$3;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "VoipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onDialed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/RpcAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

.field final synthetic val$constDialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;Landroid/content/Context;Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$3;->this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    iput-object p3, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$3;->val$constDialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 365
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 369
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pushService:Lcom/liquable/nemo/client/service/PushService;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$3;->val$constDialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->dialId:Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->access$600(Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$3;->val$constDialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    .line 370
    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->receiverUid:Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->access$1700(Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$3;->val$constDialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    .line 371
    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->server:Lcom/liquable/nemo/util/ServerRegions$Server;
    invoke-static {v3}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->access$1900(Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)Lcom/liquable/nemo/util/ServerRegions$Server;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/util/ServerRegions$Server;->toString()Ljava/lang/String;

    move-result-object v3

    .line 369
    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/client/service/PushService;->pushVoipDialing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 4
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$3;->this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    iget-object v0, v0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$2000(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/voip/event/VoipDialingPushEvent;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$3;->val$constDialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->dialId:Ljava/lang/String;
    invoke-static {v3}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->access$600(Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/voip/event/VoipDialingPushEvent;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->offer(Lcom/liquable/nemo/voip/event/VoipEvent;)Z

    .line 381
    return-void
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 365
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$3;->postExecuteSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$3;->this$1:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    iget-object v0, v0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$2000(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/voip/event/VoipDialingPushEvent;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$3;->val$constDialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->dialId:Ljava/lang/String;
    invoke-static {v3}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->access$600(Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/voip/event/VoipDialingPushEvent;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->offer(Lcom/liquable/nemo/voip/event/VoipEvent;)Z

    .line 386
    return-void
.end method
