.class public Lcom/liquable/nemo/voip/session/AnswerCall;
.super Ljava/lang/Object;
.source "AnswerCall.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INTENT_KEY:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x3f06a721b1509839L


# instance fields
.field private final dialId:Ljava/lang/String;

.field private final dialerUid:Ljava/lang/String;

.field private final ipAddressWithPort:Ljava/lang/String;

.field private final receiverUid:Ljava/lang/String;

.field private final serverTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/liquable/nemo/voip/session/AnswerCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/voip/session/AnswerCall;->INTENT_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "dialId"    # Ljava/lang/String;
    .param p2, "dialerUid"    # Ljava/lang/String;
    .param p3, "receiverUid"    # Ljava/lang/String;
    .param p4, "ipAddressWithPort"    # Ljava/lang/String;
    .param p5, "serverTime"    # J

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->dialId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->dialerUid:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->receiverUid:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->ipAddressWithPort:Ljava/lang/String;

    .line 25
    iput-wide p5, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->serverTime:J

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    if-ne p0, p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 33
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    instance-of v3, p1, Lcom/liquable/nemo/voip/session/AnswerCall;

    if-nez v3, :cond_3

    move v1, v2

    .line 37
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 39
    check-cast v0, Lcom/liquable/nemo/voip/session/AnswerCall;

    .line 40
    .local v0, "other":Lcom/liquable/nemo/voip/session/AnswerCall;
    iget-object v3, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->dialId:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 41
    iget-object v3, v0, Lcom/liquable/nemo/voip/session/AnswerCall;->dialId:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 42
    goto :goto_0

    .line 44
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->dialId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/voip/session/AnswerCall;->dialId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 45
    goto :goto_0

    .line 47
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->dialerUid:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 48
    iget-object v3, v0, Lcom/liquable/nemo/voip/session/AnswerCall;->dialerUid:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 49
    goto :goto_0

    .line 51
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->dialerUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/voip/session/AnswerCall;->dialerUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 52
    goto :goto_0

    .line 54
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->ipAddressWithPort:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 55
    iget-object v3, v0, Lcom/liquable/nemo/voip/session/AnswerCall;->ipAddressWithPort:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 56
    goto :goto_0

    .line 58
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->ipAddressWithPort:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/voip/session/AnswerCall;->ipAddressWithPort:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 59
    goto :goto_0

    .line 61
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->receiverUid:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 62
    iget-object v3, v0, Lcom/liquable/nemo/voip/session/AnswerCall;->receiverUid:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    .line 63
    goto :goto_0

    .line 65
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->receiverUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/voip/session/AnswerCall;->receiverUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 66
    goto :goto_0

    .line 68
    :cond_b
    iget-wide v3, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->serverTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/voip/session/AnswerCall;->serverTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    .line 69
    goto :goto_0
.end method

.method public getDialId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->dialId:Ljava/lang/String;

    return-object v0
.end method

.method public getDialerUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->dialerUid:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddressWithPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->ipAddressWithPort:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->receiverUid:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTime()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->serverTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 96
    const/16 v0, 0x1f

    .line 97
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 98
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->dialId:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 99
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->dialerUid:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 100
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->ipAddressWithPort:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 101
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->receiverUid:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 102
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->serverTime:J

    iget-wide v5, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->serverTime:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 103
    return v1

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->dialId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->dialerUid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 100
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->ipAddressWithPort:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 101
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->receiverUid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AnswerCall [dialId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->dialId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dialerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->dialerUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", receiverUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->receiverUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ipAddressWithPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->ipAddressWithPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serverTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/voip/session/AnswerCall;->serverTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
