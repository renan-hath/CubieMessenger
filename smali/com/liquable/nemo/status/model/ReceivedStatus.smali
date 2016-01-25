.class public Lcom/liquable/nemo/status/model/ReceivedStatus;
.super Ljava/lang/Object;
.source "ReceivedStatus.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x19c498605d673077L


# instance fields
.field private final chatStatus:Lcom/liquable/nemo/status/model/IChatStatus;

.field private final sendTime:J

.field private final senderUid:Ljava/lang/String;

.field private final topic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/status/model/IChatStatus;J)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "senderUid"    # Ljava/lang/String;
    .param p3, "chatStatus"    # Lcom/liquable/nemo/status/model/IChatStatus;
    .param p4, "sendTime"    # J

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/liquable/nemo/status/model/ReceivedStatus;->topic:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/liquable/nemo/status/model/ReceivedStatus;->senderUid:Ljava/lang/String;

    .line 19
    iput-wide p4, p0, Lcom/liquable/nemo/status/model/ReceivedStatus;->sendTime:J

    .line 20
    iput-object p3, p0, Lcom/liquable/nemo/status/model/ReceivedStatus;->chatStatus:Lcom/liquable/nemo/status/model/IChatStatus;

    .line 21
    return-void
.end method


# virtual methods
.method public getChatStatus()Lcom/liquable/nemo/status/model/IChatStatus;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/status/model/ReceivedStatus;->chatStatus:Lcom/liquable/nemo/status/model/IChatStatus;

    return-object v0
.end method

.method public getSendTime()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/liquable/nemo/status/model/ReceivedStatus;->sendTime:J

    return-wide v0
.end method

.method public getSenderUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/liquable/nemo/status/model/ReceivedStatus;->senderUid:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/status/model/ReceivedStatus;->topic:Ljava/lang/String;

    return-object v0
.end method
