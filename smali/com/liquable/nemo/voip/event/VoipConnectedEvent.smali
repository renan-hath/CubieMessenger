.class public Lcom/liquable/nemo/voip/event/VoipConnectedEvent;
.super Lcom/liquable/nemo/voip/event/VoipEvent;
.source "VoipConnectedEvent.java"


# instance fields
.field private final server:Lcom/liquable/nemo/util/ServerRegions$Server;

.field private final voipClient:Lcom/liquable/nemo/voip/client/VoipClient;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/util/ServerRegions$Server;Lcom/liquable/nemo/voip/client/VoipClient;)V
    .locals 1
    .param p1, "server"    # Lcom/liquable/nemo/util/ServerRegions$Server;
    .param p2, "voipClient"    # Lcom/liquable/nemo/voip/client/VoipClient;

    .prologue
    .line 12
    sget-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->CONNECTED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    .line 13
    iput-object p1, p0, Lcom/liquable/nemo/voip/event/VoipConnectedEvent;->server:Lcom/liquable/nemo/util/ServerRegions$Server;

    .line 14
    iput-object p2, p0, Lcom/liquable/nemo/voip/event/VoipConnectedEvent;->voipClient:Lcom/liquable/nemo/voip/client/VoipClient;

    .line 15
    return-void
.end method


# virtual methods
.method public getServer()Lcom/liquable/nemo/util/ServerRegions$Server;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/liquable/nemo/voip/event/VoipConnectedEvent;->server:Lcom/liquable/nemo/util/ServerRegions$Server;

    return-object v0
.end method

.method public getVoipClient()Lcom/liquable/nemo/voip/client/VoipClient;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/voip/event/VoipConnectedEvent;->voipClient:Lcom/liquable/nemo/voip/client/VoipClient;

    return-object v0
.end method
