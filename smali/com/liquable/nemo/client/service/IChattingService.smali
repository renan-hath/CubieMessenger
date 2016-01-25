.class public interface abstract Lcom/liquable/nemo/client/service/IChattingService;
.super Ljava/lang/Object;
.source "IChattingService.java"


# virtual methods
.method public abstract acknowledge(Lcom/liquable/nemo/model/message/OfflineSyncDto;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation
.end method

.method public abstract convertDomainMessage(Lcom/liquable/nemo/model/message/OfflineMessageDto;)Lcom/liquable/nemo/message/model/DomainMessage;
.end method

.method public abstract getNextSync(I)Lcom/liquable/nemo/model/message/OfflineSyncDto;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation
.end method

.method public abstract isMessageResendable(Ljava/lang/String;)Z
.end method

.method public abstract isWaitSendAck(Ljava/lang/String;)Z
.end method

.method public abstract listOfflineMessages(Lcom/liquable/nemo/model/account/CompositeUid;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/model/account/CompositeUid;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/message/OfflineMessageDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation
.end method

.method public abstract purge(Lcom/liquable/nemo/model/account/CompositeUid;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/model/account/CompositeUid;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/message/OfflineMessageDto;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation
.end method

.method public abstract removeWaitSendAcks(Ljava/lang/String;)Z
.end method

.method public abstract sendMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
.end method

.method public abstract sendReceiveAck(Ljava/lang/String;)V
.end method

.method public abstract sendStatus(Ljava/lang/String;Lcom/liquable/nemo/status/model/IChatStatus;)V
.end method
