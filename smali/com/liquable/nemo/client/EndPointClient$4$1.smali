.class Lcom/liquable/nemo/client/EndPointClient$4$1;
.super Ljava/lang/Object;
.source "EndPointClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/EndPointClient$4;->onRead(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/client/EndPointClient$4;

.field final synthetic val$epFrame:Lcom/liquable/nemo/endpoint/frame/IEpFrame;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/EndPointClient$4;Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/client/EndPointClient$4;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/liquable/nemo/client/EndPointClient$4$1;->this$1:Lcom/liquable/nemo/client/EndPointClient$4;

    iput-object p2, p0, Lcom/liquable/nemo/client/EndPointClient$4$1;->val$epFrame:Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient$4$1;->this$1:Lcom/liquable/nemo/client/EndPointClient$4;

    iget-object v0, v0, Lcom/liquable/nemo/client/EndPointClient$4;->this$0:Lcom/liquable/nemo/client/EndPointClient;

    # getter for: Lcom/liquable/nemo/client/EndPointClient;->connectionListener:Lcom/liquable/nemo/client/ConnectionListener;
    invoke-static {v0}, Lcom/liquable/nemo/client/EndPointClient;->access$200(Lcom/liquable/nemo/client/EndPointClient;)Lcom/liquable/nemo/client/ConnectionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/client/EndPointClient$4$1;->val$epFrame:Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/client/ConnectionListener;->onFrameReceived(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    .line 248
    return-void
.end method
