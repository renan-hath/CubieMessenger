.class public Lcom/liquable/nemo/voip/event/VoipDisconnectedEvent;
.super Lcom/liquable/nemo/voip/event/VoipEvent;
.source "VoipDisconnectedEvent.java"


# instance fields
.field private final voipClient:Lcom/liquable/nemo/voip/client/VoipClient;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/voip/client/VoipClient;)V
    .locals 1
    .param p1, "voipClient"    # Lcom/liquable/nemo/voip/client/VoipClient;

    .prologue
    .line 10
    sget-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->DISCONNECTED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    .line 11
    iput-object p1, p0, Lcom/liquable/nemo/voip/event/VoipDisconnectedEvent;->voipClient:Lcom/liquable/nemo/voip/client/VoipClient;

    .line 12
    return-void
.end method


# virtual methods
.method public getVoipClient()Lcom/liquable/nemo/voip/client/VoipClient;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/liquable/nemo/voip/event/VoipDisconnectedEvent;->voipClient:Lcom/liquable/nemo/voip/client/VoipClient;

    return-object v0
.end method
