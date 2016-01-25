.class Lcom/liquable/nemo/client/EndPointClient$4;
.super Ljava/lang/Object;
.source "EndPointClient.java"

# interfaces
.implements Lcom/liquable/nemo/client/layer/EpFrameLayer$ReadEpFrameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/EndPointClient;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/EndPointClient;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/EndPointClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/EndPointClient;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/liquable/nemo/client/EndPointClient$4;->this$0:Lcom/liquable/nemo/client/EndPointClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRead(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .locals 3
    .param p1, "epFrame"    # Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient$4;->this$0:Lcom/liquable/nemo/client/EndPointClient;

    # getter for: Lcom/liquable/nemo/client/EndPointClient;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {v0}, Lcom/liquable/nemo/client/EndPointClient;->access$300(Lcom/liquable/nemo/client/EndPointClient;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recvFrame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient$4;->this$0:Lcom/liquable/nemo/client/EndPointClient;

    # getter for: Lcom/liquable/nemo/client/EndPointClient;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/liquable/nemo/client/EndPointClient;->access$400(Lcom/liquable/nemo/client/EndPointClient;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/client/EndPointClient$4$1;

    invoke-direct {v1, p0, p1}, Lcom/liquable/nemo/client/EndPointClient$4$1;-><init>(Lcom/liquable/nemo/client/EndPointClient$4;Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    return-void
.end method
