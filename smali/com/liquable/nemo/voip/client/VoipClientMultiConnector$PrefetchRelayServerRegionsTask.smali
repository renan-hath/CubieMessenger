.class public final Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$PrefetchRelayServerRegionsTask;
.super Ljava/lang/Object;
.source "VoipClientMultiConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PrefetchRelayServerRegionsTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$PrefetchRelayServerRegionsTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/liquable/nemo/voip/client/RelayServerPicker;->INSTANCE:Lcom/liquable/nemo/voip/client/RelayServerPicker;

    iget-object v1, p0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector$PrefetchRelayServerRegionsTask;->this$0:Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    # getter for: Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->nodeService:Lcom/liquable/nemo/client/service/NodeService;
    invoke-static {v1}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->access$700(Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;)Lcom/liquable/nemo/client/service/NodeService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/client/RelayServerPicker;->prefetchSync(Lcom/liquable/nemo/client/service/NodeService;)V

    .line 109
    return-void
.end method
