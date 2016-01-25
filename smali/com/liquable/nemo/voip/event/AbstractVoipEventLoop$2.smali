.class Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop$2;
.super Ljava/lang/Object;
.source "AbstractVoipEventLoop.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop;->trySubmitTask(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop$2;->this$0:Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop;

    iput-object p2, p0, Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop$2;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop$2;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method
