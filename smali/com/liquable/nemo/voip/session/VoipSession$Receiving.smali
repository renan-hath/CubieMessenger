.class final Lcom/liquable/nemo/voip/session/VoipSession$Receiving;
.super Ljava/lang/Object;
.source "VoipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/session/VoipSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Receiving"
.end annotation


# instance fields
.field private final dialId:Ljava/lang/String;

.field private final dialerUid:Ljava/lang/String;

.field private final pendingAcceptOrReject:Ljava/lang/Boolean;

.field private final receiverUid:Ljava/lang/String;

.field private final server:Lcom/liquable/nemo/util/ServerRegions$Server;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/util/ServerRegions$Server;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "dialId"    # Ljava/lang/String;
    .param p2, "dialerUid"    # Ljava/lang/String;
    .param p3, "receiverUid"    # Ljava/lang/String;
    .param p4, "server"    # Lcom/liquable/nemo/util/ServerRegions$Server;
    .param p5, "acceptOrReject"    # Ljava/lang/Boolean;

    .prologue
    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->dialId:Ljava/lang/String;

    .line 803
    iput-object p2, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->dialerUid:Ljava/lang/String;

    .line 804
    iput-object p3, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->receiverUid:Ljava/lang/String;

    .line 805
    iput-object p4, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->server:Lcom/liquable/nemo/util/ServerRegions$Server;

    .line 806
    iput-object p5, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->pendingAcceptOrReject:Ljava/lang/Boolean;

    .line 807
    return-void
.end method

.method static synthetic access$1400(Lcom/liquable/nemo/voip/session/VoipSession$Receiving;)Lcom/liquable/nemo/util/ServerRegions$Server;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    .prologue
    .line 781
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->server:Lcom/liquable/nemo/util/ServerRegions$Server;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/liquable/nemo/voip/session/VoipSession$Receiving;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    .prologue
    .line 781
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->receiverUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/voip/session/VoipSession$Receiving;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    .prologue
    .line 781
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->dialId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/liquable/nemo/voip/session/VoipSession$Receiving;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    .prologue
    .line 781
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->dialerUid:Ljava/lang/String;

    return-object v0
.end method

.method public static start(Lcom/liquable/nemo/voip/session/AnswerCall;)Lcom/liquable/nemo/voip/session/VoipSession$Receiving;
    .locals 6
    .param p0, "answerCall"    # Lcom/liquable/nemo/voip/session/AnswerCall;

    .prologue
    .line 784
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/session/AnswerCall;->getDialId()Ljava/lang/String;

    move-result-object v1

    .line 785
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/session/AnswerCall;->getDialerUid()Ljava/lang/String;

    move-result-object v2

    .line 786
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/session/AnswerCall;->getReceiverUid()Ljava/lang/String;

    move-result-object v3

    .line 787
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/session/AnswerCall;->getIpAddressWithPort()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/liquable/nemo/util/ServerRegions$Server;->parse(Ljava/lang/String;)Lcom/liquable/nemo/util/ServerRegions$Server;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/util/ServerRegions$Server;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public isPendingAccept()Z
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->pendingAcceptOrReject:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->pendingAcceptOrReject:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingReject()Z
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->pendingAcceptOrReject:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->pendingAcceptOrReject:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public withPendingAccept()Lcom/liquable/nemo/voip/session/VoipSession$Receiving;
    .locals 6

    .prologue
    .line 818
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->dialId:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->dialerUid:Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->receiverUid:Ljava/lang/String;

    iget-object v4, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->server:Lcom/liquable/nemo/util/ServerRegions$Server;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/util/ServerRegions$Server;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public withPendingReject()Lcom/liquable/nemo/voip/session/VoipSession$Receiving;
    .locals 6

    .prologue
    .line 822
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->dialId:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->dialerUid:Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->receiverUid:Ljava/lang/String;

    iget-object v4, p0, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->server:Lcom/liquable/nemo/util/ServerRegions$Server;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/util/ServerRegions$Server;Ljava/lang/Boolean;)V

    return-object v0
.end method
