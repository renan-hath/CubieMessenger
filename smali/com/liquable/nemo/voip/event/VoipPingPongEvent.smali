.class public Lcom/liquable/nemo/voip/event/VoipPingPongEvent;
.super Lcom/liquable/nemo/voip/event/VoipEvent;
.source "VoipPingPongEvent.java"


# instance fields
.field private final duration:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 8
    sget-object v0, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->PING_PONG:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    .line 9
    iput-wide p1, p0, Lcom/liquable/nemo/voip/event/VoipPingPongEvent;->duration:J

    .line 10
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/liquable/nemo/voip/event/VoipPingPongEvent;->duration:J

    return-wide v0
.end method
