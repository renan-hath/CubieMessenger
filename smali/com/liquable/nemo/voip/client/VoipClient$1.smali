.class final Lcom/liquable/nemo/voip/client/VoipClient$1;
.super Ljava/lang/Object;
.source "VoipClient.java"

# interfaces
.implements Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/client/VoipClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoicePacket([B)V
    .locals 0
    .param p1, "packet"    # [B

    .prologue
    .line 171
    return-void
.end method
