.class public interface abstract Lcom/liquable/nemo/message/model/IDomainMessage;
.super Ljava/lang/Object;
.source "IDomainMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract createDestination()Lcom/liquable/nemo/endpoint/frame/Destination;
.end method

.method public abstract getBackupMessage(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getChatGroupTopic()Ljava/lang/String;
.end method

.method public abstract getCreateTime()Ljava/util/Date;
.end method

.method public abstract getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;
.end method

.method public abstract getMessageId()Ljava/lang/String;
.end method

.method public varargs abstract getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getReadCount()J
.end method

.method public abstract getSenderId()Ljava/lang/String;
.end method

.method public abstract isCopyable()Z
.end method

.method public abstract isHidden()Z
.end method

.method public abstract isPastableToBoard()Z
.end method

.method public abstract isSendFailed()Z
.end method

.method public abstract isSender(Ljava/lang/String;)Z
.end method

.method public abstract isSystemAck()Z
.end method

.method public abstract markReceived(Ljava/util/Date;)V
.end method

.method public abstract requirePush()Z
.end method
