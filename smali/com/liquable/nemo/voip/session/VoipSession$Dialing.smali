.class final Lcom/liquable/nemo/voip/session/VoipSession$Dialing;
.super Ljava/lang/Object;
.source "VoipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/session/VoipSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Dialing"
.end annotation


# instance fields
.field private final dialId:Ljava/lang/String;

.field private final dialerUid:Ljava/lang/String;

.field private final pushedSuccess:Z

.field private final receiverUid:Ljava/lang/String;

.field private final rejected:Z

.field private final server:Lcom/liquable/nemo/util/ServerRegions$Server;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/util/ServerRegions$Server;ZZ)V
    .locals 0
    .param p1, "dialId"    # Ljava/lang/String;
    .param p2, "dialerUid"    # Ljava/lang/String;
    .param p3, "receiverUid"    # Ljava/lang/String;
    .param p4, "server"    # Lcom/liquable/nemo/util/ServerRegions$Server;
    .param p5, "dialingPushedSuccess"    # Z
    .param p6, "rejected"    # Z

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->dialId:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->dialerUid:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->receiverUid:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->server:Lcom/liquable/nemo/util/ServerRegions$Server;

    .line 89
    iput-boolean p5, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->pushedSuccess:Z

    .line 90
    iput-boolean p6, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->rejected:Z

    .line 91
    return-void
.end method

.method static synthetic access$1600(Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->dialerUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->receiverUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)Lcom/liquable/nemo/util/ServerRegions$Server;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->server:Lcom/liquable/nemo/util/ServerRegions$Server;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->dialId:Ljava/lang/String;

    return-object v0
.end method

.method public static start(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/voip/session/VoipSession$Dialing;
    .locals 7
    .param p0, "dialerUid"    # Ljava/lang/String;
    .param p1, "receiverUid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 57
    invoke-static {}, Lcom/liquable/nemo/util/Randoms;->shortUuid()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "shortUUid":Ljava/lang/String;
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/util/ServerRegions$Server;ZZ)V

    return-object v0
.end method


# virtual methods
.method public requireMissedCall()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->pushedSuccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->rejected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public withPeerServer(Lcom/liquable/nemo/util/ServerRegions$Server;)Lcom/liquable/nemo/voip/session/VoipSession$Dialing;
    .locals 7
    .param p1, "newServer"    # Lcom/liquable/nemo/util/ServerRegions$Server;

    .prologue
    .line 100
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->dialId:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->dialerUid:Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->receiverUid:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->pushedSuccess:Z

    iget-boolean v6, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->rejected:Z

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/util/ServerRegions$Server;ZZ)V

    return-object v0
.end method

.method public withPushedSuccess()Lcom/liquable/nemo/voip/session/VoipSession$Dialing;
    .locals 7

    .prologue
    .line 104
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->dialId:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->dialerUid:Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->receiverUid:Ljava/lang/String;

    iget-object v4, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->server:Lcom/liquable/nemo/util/ServerRegions$Server;

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->rejected:Z

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/util/ServerRegions$Server;ZZ)V

    return-object v0
.end method

.method public withRejected()Lcom/liquable/nemo/voip/session/VoipSession$Dialing;
    .locals 7

    .prologue
    .line 108
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->dialId:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->dialerUid:Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->receiverUid:Ljava/lang/String;

    iget-object v4, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->server:Lcom/liquable/nemo/util/ServerRegions$Server;

    iget-boolean v5, p0, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->pushedSuccess:Z

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/util/ServerRegions$Server;ZZ)V

    return-object v0
.end method
