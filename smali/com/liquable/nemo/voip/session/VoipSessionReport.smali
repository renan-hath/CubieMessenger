.class public Lcom/liquable/nemo/voip/session/VoipSessionReport;
.super Ljava/lang/Object;
.source "VoipSessionReport.java"


# instance fields
.field private hostName:Ljava/lang/String;

.field private packetDropPercent:F

.field private pingPongDuration:J

.field private readVoicePacketCount:I

.field private voipQualityLevel:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

.field private writeVoicePacketCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->LV_5:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSessionReport;->voipQualityLevel:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    return-void
.end method


# virtual methods
.method public getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSessionReport;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getPacketDropPercent()F
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/liquable/nemo/voip/session/VoipSessionReport;->packetDropPercent:F

    return v0
.end method

.method public getPingPongDuration()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/liquable/nemo/voip/session/VoipSessionReport;->pingPongDuration:J

    return-wide v0
.end method

.method public getReadVoicePacketCount()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/liquable/nemo/voip/session/VoipSessionReport;->readVoicePacketCount:I

    return v0
.end method

.method public getVoipQualityLevel()Lcom/liquable/nemo/voip/session/VoipQualityLevel;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSessionReport;->voipQualityLevel:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    return-object v0
.end method

.method public getWriteVoicePacketCount()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/liquable/nemo/voip/session/VoipSessionReport;->writeVoicePacketCount:I

    return v0
.end method

.method public setHostName(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostName"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/VoipSessionReport;->hostName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setPacketDropPercent(F)V
    .locals 0
    .param p1, "packetDropPercent"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/liquable/nemo/voip/session/VoipSessionReport;->packetDropPercent:F

    .line 50
    return-void
.end method

.method public setPingPongDuration(J)V
    .locals 0
    .param p1, "pingPongDuration"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/liquable/nemo/voip/session/VoipSessionReport;->pingPongDuration:J

    .line 54
    return-void
.end method

.method public setVoicePacketCount(II)V
    .locals 0
    .param p1, "readVoicePacketCount"    # I
    .param p2, "writeVoicePacketCount"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/liquable/nemo/voip/session/VoipSessionReport;->readVoicePacketCount:I

    .line 58
    iput p2, p0, Lcom/liquable/nemo/voip/session/VoipSessionReport;->writeVoicePacketCount:I

    .line 59
    return-void
.end method

.method public setVoipQualityLevel(Lcom/liquable/nemo/voip/session/VoipQualityLevel;)V
    .locals 0
    .param p1, "voipQualityLevel"    # Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/VoipSessionReport;->voipQualityLevel:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    .line 63
    return-void
.end method
