.class public abstract Lcom/liquable/nemo/message/model/DomainMessage;
.super Ljava/lang/Object;
.source "DomainMessage.java"

# interfaces
.implements Lcom/liquable/nemo/message/model/IDomainMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/message/model/DomainMessage$SendState;
    }
.end annotation


# static fields
.field public static final ARCHIVED_TABLE_NAME:Ljava/lang/String; = "ARCHIVED_MESSAGES"

.field public static final COLUMN_NAME_CHAT_GROUP_TOPIC:Ljava/lang/String; = "MSG_CHAT_GROUP_TOPIC"

.field public static final COLUMN_NAME_CONTENT:Ljava/lang/String; = "MSG_CONTENT"

.field public static final COLUMN_NAME_CREATE_TIME:Ljava/lang/String; = "MSG_CREATE_TIME"

.field public static final COLUMN_NAME_READED_MARK:Ljava/lang/String; = "MSG_READED_MARK"

.field public static final COLUMN_NAME_READ_COUNT:Ljava/lang/String; = "MSG_READ_COUNT"

.field public static final COLUMN_NAME_RECEIVE_TIME:Ljava/lang/String; = "MSG_RECEIVE_TIME"

.field public static final COLUMN_NAME_SENDER_UID:Ljava/lang/String; = "MSG_SENDER_UID"

.field public static final COLUMN_NAME_SEND_STATE:Ljava/lang/String; = "MSG_SEND_STATE"

.field public static final COLUMN_NAME_TYPE:Ljava/lang/String; = "MSG_TYPE"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "MESSAGES"

.field public static final _ID:Ljava/lang/String; = "MSG_ID"

.field private static final serialVersionUID:J = -0x4251f41c85a5e0bL


# instance fields
.field protected messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

.field private readCount:I

.field private readMark:Z

.field private receiveTime:Ljava/util/Date;

.field private sendState:Lcom/liquable/nemo/message/model/DomainMessage$SendState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "MSG_CHAT_GROUP_TOPIC"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "MSG_CONTENT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "MSG_CREATE_TIME"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "MSG_RECEIVE_TIME"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "MSG_TYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "MSG_SENDER_UID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "MSG_READ_COUNT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "MSG_READED_MARK"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "MSG_SEND_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/message/model/DomainMessage;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;Lcom/liquable/nemo/message/model/MessageProcessor;)Lcom/liquable/nemo/message/model/DomainMessage;
    .locals 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "messageProcessor"    # Lcom/liquable/nemo/message/model/MessageProcessor;

    .prologue
    .line 44
    new-instance v1, Lcom/liquable/nemo/message/model/MessageInfo;

    const-string/jumbo v2, "MSG_ID"

    .line 45
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MSG_CHAT_GROUP_TOPIC"

    .line 46
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    const-string/jumbo v5, "MSG_CREATE_TIME"

    .line 47
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    const-string/jumbo v5, "MSG_SENDER_UID"

    .line 48
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/liquable/nemo/message/model/MessageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 50
    .local v1, "messageInfo":Lcom/liquable/nemo/message/model/MessageInfo;
    const-string/jumbo v2, "MSG_CONTENT"

    .line 51
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {p1, v2, v1}, Lcom/liquable/nemo/message/model/MessageProcessor;->decode(Ljava/lang/String;Lcom/liquable/nemo/message/model/MessageInfo;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v0

    .line 53
    .local v0, "domainMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    const-string/jumbo v2, "MSG_READ_COUNT"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/message/model/DomainMessage;->setReadCount(I)V

    .line 54
    new-instance v2, Ljava/util/Date;

    const-string/jumbo v3, "MSG_RECEIVE_TIME"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/message/model/DomainMessage;->setReceiveTime(Ljava/util/Date;)V

    .line 55
    const-string/jumbo v2, "MSG_READED_MARK"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/liquable/nemo/message/model/DomainMessage;->setReadMark(Z)V

    .line 56
    const-string/jumbo v2, "MSG_SEND_STATE"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->fromValue(I)Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/message/model/DomainMessage;->setSendState(Lcom/liquable/nemo/message/model/DomainMessage$SendState;)V

    .line 58
    return-object v0

    .line 55
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createContentValues(Lcom/liquable/nemo/message/model/MessageProcessor;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "processor"    # Lcom/liquable/nemo/message/model/MessageProcessor;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v2, "must set MessageInfo before using domain message"

    invoke-static {v1, v2}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/MessageInfo;->createContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 104
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "MSG_CONTENT"

    invoke-virtual {p1, p0}, Lcom/liquable/nemo/message/model/MessageProcessor;->encode(Lcom/liquable/nemo/message/model/IDomainMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "MSG_READ_COUNT"

    iget v2, p0, Lcom/liquable/nemo/message/model/DomainMessage;->readCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string/jumbo v1, "MSG_RECEIVE_TIME"

    iget-object v2, p0, Lcom/liquable/nemo/message/model/DomainMessage;->receiveTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    const-string/jumbo v1, "MSG_TYPE"

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v1, "MSG_READED_MARK"

    iget-boolean v2, p0, Lcom/liquable/nemo/message/model/DomainMessage;->readMark:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 109
    const-string/jumbo v1, "MSG_SEND_STATE"

    iget-object v2, p0, Lcom/liquable/nemo/message/model/DomainMessage;->sendState:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    iget v2, v2, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    return-object v0

    .line 101
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createDestination()Lcom/liquable/nemo/endpoint/frame/Destination;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lcom/liquable/nemo/endpoint/frame/Destination;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/endpoint/frame/Destination;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    if-ne p0, p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 123
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 124
    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 127
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 129
    check-cast v0, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 130
    .local v0, "other":Lcom/liquable/nemo/message/model/DomainMessage;
    iget-object v3, p0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    if-nez v3, :cond_4

    .line 131
    iget-object v3, v0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    if-eqz v3, :cond_0

    move v1, v2

    .line 132
    goto :goto_0

    .line 134
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    iget-object v4, v0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/message/model/MessageInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 135
    goto :goto_0
.end method

.method public getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getChatGroupTopic()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "must set MessageInfo before using domain message"

    invoke-static {v0, v1}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/MessageInfo;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/MessageInfo;->getCreateTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "must set MessageInfo before using domain message"

    invoke-static {v0, v1}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/MessageInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMessageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 170
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getReadCount()J
    .locals 2

    .prologue
    .line 175
    iget v0, p0, Lcom/liquable/nemo/message/model/DomainMessage;->readCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getReceiveTime()Ljava/util/Date;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "must set MessageInfo before using domain message"

    invoke-static {v0, v1}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/liquable/nemo/message/model/DomainMessage;->receiveTime:Ljava/util/Date;

    return-object v0

    .line 179
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSendState()Lcom/liquable/nemo/message/model/DomainMessage$SendState;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/liquable/nemo/message/model/DomainMessage;->sendState:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "must set MessageInfo before using domain message"

    invoke-static {v0, v1}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/MessageInfo;->getSenderId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 197
    const/16 v0, 0x1f

    .line 198
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 199
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 200
    return v1

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/MessageInfo;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public initial()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->setReadMark(Z)V

    .line 205
    sget-object v0, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->SEND:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->setSendState(Lcom/liquable/nemo/message/model/DomainMessage$SendState;)V

    .line 206
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->setReceiveTime(Ljava/util/Date;)V

    .line 207
    return-void
.end method

.method public isPastableToBoard()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public isReadMark()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/liquable/nemo/message/model/DomainMessage;->readMark:Z

    return v0
.end method

.method public isSameChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)Z
    .locals 2
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/MessageInfo;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSendFailed()Z
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/liquable/nemo/message/model/DomainMessage;->sendState:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    sget-object v1, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->FAILED:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSender(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/message/model/MessageInfo;->isSender(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSystemAck()Z
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/liquable/nemo/message/model/DomainMessage;->sendState:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    sget-object v1, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->SUCCESS:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markReceived(Ljava/util/Date;)V
    .locals 1
    .param p1, "receiveTime"    # Ljava/util/Date;

    .prologue
    .line 239
    sget-object v0, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->SEND:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->setSendState(Lcom/liquable/nemo/message/model/DomainMessage$SendState;)V

    .line 240
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/model/DomainMessage;->setReceiveTime(Ljava/util/Date;)V

    .line 241
    return-void
.end method

.method public requirePush()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public resend(Ljava/util/Date;)V
    .locals 4
    .param p1, "now"    # Ljava/util/Date;

    .prologue
    .line 254
    new-instance v0, Lcom/liquable/nemo/message/model/MessageInfo;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/DomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/DomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/liquable/nemo/message/model/MessageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    .line 255
    iput-object p1, p0, Lcom/liquable/nemo/message/model/DomainMessage;->receiveTime:Ljava/util/Date;

    .line 256
    sget-object v0, Lcom/liquable/nemo/message/model/DomainMessage$SendState;->SEND:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    iput-object v0, p0, Lcom/liquable/nemo/message/model/DomainMessage;->sendState:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    .line 257
    return-void
.end method

.method public setMessageInfo(Lcom/liquable/nemo/message/model/MessageInfo;)V
    .locals 0
    .param p1, "messageInfo"    # Lcom/liquable/nemo/message/model/MessageInfo;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/liquable/nemo/message/model/DomainMessage;->messageInfo:Lcom/liquable/nemo/message/model/MessageInfo;

    .line 261
    return-void
.end method

.method public setReadCount(I)V
    .locals 0
    .param p1, "readCount"    # I

    .prologue
    .line 264
    iput p1, p0, Lcom/liquable/nemo/message/model/DomainMessage;->readCount:I

    .line 265
    return-void
.end method

.method public setReadMark(Z)V
    .locals 0
    .param p1, "readMark"    # Z

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/liquable/nemo/message/model/DomainMessage;->readMark:Z

    .line 269
    return-void
.end method

.method public setReceiveTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "receiveTime"    # Ljava/util/Date;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/liquable/nemo/message/model/DomainMessage;->receiveTime:Ljava/util/Date;

    .line 273
    return-void
.end method

.method public setSendState(Lcom/liquable/nemo/message/model/DomainMessage$SendState;)V
    .locals 0
    .param p1, "sendState"    # Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/liquable/nemo/message/model/DomainMessage;->sendState:Lcom/liquable/nemo/message/model/DomainMessage$SendState;

    .line 277
    return-void
.end method
