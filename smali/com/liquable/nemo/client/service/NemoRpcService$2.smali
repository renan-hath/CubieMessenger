.class Lcom/liquable/nemo/client/service/NemoRpcService$2;
.super Ljava/lang/Object;
.source "NemoRpcService.java"

# interfaces
.implements Lcom/liquable/nemo/client/ReceiveDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/client/service/NemoRpcService;
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
        "Lcom/liquable/nemo/endpoint/frame/SendAck;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/service/NemoRpcService;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/service/NemoRpcService;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$2;->this$0:Lcom/liquable/nemo/client/service/NemoRpcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceive(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .locals 0

    .prologue
    .line 124
    check-cast p1, Lcom/liquable/nemo/endpoint/frame/SendAck;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/service/NemoRpcService$2;->onReceive(Lcom/liquable/nemo/endpoint/frame/SendAck;)V

    return-void
.end method

.method public onReceive(Lcom/liquable/nemo/endpoint/frame/SendAck;)V
    .locals 3
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/SendAck;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/liquable/nemo/client/service/NemoRpcService$2;->this$0:Lcom/liquable/nemo/client/service/NemoRpcService;

    # getter for: Lcom/liquable/nemo/client/service/NemoRpcService;->completers:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/liquable/nemo/client/service/NemoRpcService;->access$000(Lcom/liquable/nemo/client/service/NemoRpcService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/SendAck;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/future/Completer;

    .line 128
    .local v0, "completer":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/future/Completer;->complete(Ljava/lang/Object;)V

    goto :goto_0
.end method
