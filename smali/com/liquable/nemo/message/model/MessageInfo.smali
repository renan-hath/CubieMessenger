.class public Lcom/liquable/nemo/message/model/MessageInfo;
.super Ljava/lang/Object;
.source "MessageInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x50b17912e9bb4451L


# instance fields
.field final chatGroupTopic:Ljava/lang/String;

.field final createTime:Ljava/util/Date;

.field final id:Ljava/lang/String;

.field final senderUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "chatGroupTopic"    # Ljava/lang/String;
    .param p3, "createTime"    # Ljava/util/Date;
    .param p4, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/liquable/nemo/message/model/MessageInfo;->id:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/liquable/nemo/message/model/MessageInfo;->chatGroupTopic:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/liquable/nemo/message/model/MessageInfo;->createTime:Ljava/util/Date;

    .line 32
    iput-object p4, p0, Lcom/liquable/nemo/message/model/MessageInfo;->senderUid:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static createMessageInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageInfo;
    .locals 3
    .param p0, "chatGroupTopic"    # Ljava/lang/String;
    .param p1, "senderUid"    # Ljava/lang/String;

    .prologue
    .line 12
    new-instance v0, Lcom/liquable/nemo/message/model/MessageInfo;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/liquable/nemo/message/model/MessageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 36
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 37
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "MSG_ID"

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/MessageInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v1, "MSG_CHAT_GROUP_TOPIC"

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/MessageInfo;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string/jumbo v1, "MSG_CREATE_TIME"

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/MessageInfo;->getCreateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 41
    const-string/jumbo v1, "MSG_SENDER_UID"

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/MessageInfo;->getSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    if-ne p0, p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    .line 50
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 54
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 56
    check-cast v0, Lcom/liquable/nemo/message/model/MessageInfo;

    .line 57
    .local v0, "other":Lcom/liquable/nemo/message/model/MessageInfo;
    iget-object v3, p0, Lcom/liquable/nemo/message/model/MessageInfo;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 58
    iget-object v3, v0, Lcom/liquable/nemo/message/model/MessageInfo;->id:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 59
    goto :goto_0

    .line 61
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/message/model/MessageInfo;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/message/model/MessageInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 62
    goto :goto_0
.end method

.method public getChatGroupTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/liquable/nemo/message/model/MessageInfo;->chatGroupTopic:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/liquable/nemo/message/model/MessageInfo;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/liquable/nemo/message/model/MessageInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/liquable/nemo/message/model/MessageInfo;->senderUid:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 85
    const/16 v0, 0x1f

    .line 86
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 87
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/message/model/MessageInfo;->id:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 88
    return v1

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/message/model/MessageInfo;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isSender(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/message/model/MessageInfo;->senderUid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 3
    .param p1, "createTime"    # Ljava/util/Date;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/message/model/MessageInfo;->createTime:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 97
    return-void
.end method
