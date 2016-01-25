.class Lcom/liquable/nemo/client/EndPointClient$2;
.super Ljava/lang/Object;
.source "EndPointClient.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 207
    iput-object p1, p0, Lcom/liquable/nemo/client/EndPointClient$2;->this$0:Lcom/liquable/nemo/client/EndPointClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/liquable/nemo/client/EndPointClient$2;->this$0:Lcom/liquable/nemo/client/EndPointClient;

    # getter for: Lcom/liquable/nemo/client/EndPointClient;->connectionListener:Lcom/liquable/nemo/client/ConnectionListener;
    invoke-static {v0}, Lcom/liquable/nemo/client/EndPointClient;->access$200(Lcom/liquable/nemo/client/EndPointClient;)Lcom/liquable/nemo/client/ConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/client/ConnectionListener;->onServerSelected()V

    .line 211
    return-void
.end method
