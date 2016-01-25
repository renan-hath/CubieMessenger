.class Lcom/liquable/nemo/client/service/NodeService$1;
.super Lorg/codehaus/jackson/type/TypeReference;
.source "NodeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/service/NodeService;->lambda$listEndPointServers$13(Lcom/liquable/volley/request/RequestBuilder;)Lcom/liquable/volley/request/Requestable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/type/TypeReference",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/util/ServerRegions$Server;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/service/NodeService;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/service/NodeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/service/NodeService;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/liquable/nemo/client/service/NodeService$1;->this$0:Lcom/liquable/nemo/client/service/NodeService;

    invoke-direct {p0}, Lorg/codehaus/jackson/type/TypeReference;-><init>()V

    return-void
.end method
