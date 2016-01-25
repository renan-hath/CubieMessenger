.class Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask$1;
.super Ljava/lang/Object;
.source "EndPointClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;

.field final synthetic val$blockFrame:Lcom/liquable/nemo/endpoint/frame/IEpFrame;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask$1;->this$0:Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;

    iput-object p2, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask$1;->val$blockFrame:Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask$1;->this$0:Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;

    # getter for: Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;->connectionListener:Lcom/liquable/nemo/client/ConnectionListener;
    invoke-static {v0}, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;->access$000(Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask;)Lcom/liquable/nemo/client/ConnectionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/client/EndPointClient$SendNormalFrameTask$1;->val$blockFrame:Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/client/ConnectionListener;->onFrameSend(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    .line 74
    return-void
.end method
