.class public Lcom/liquable/nemo/model/message/OfflineSyncDto;
.super Ljava/lang/Object;
.source "OfflineSyncDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# instance fields
.field private final checkPoint:Ljava/lang/String;

.field private final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/message/OfflineMessageDto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "checkPoint"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "checkPoint"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "messages"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/message/OfflineMessageDto;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 16
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/message/OfflineMessageDto;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/liquable/nemo/model/message/OfflineSyncDto;->checkPoint:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/liquable/nemo/model/message/OfflineSyncDto;->messages:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    if-ne p0, p1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v1

    .line 34
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 35
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 38
    check-cast v0, Lcom/liquable/nemo/model/message/OfflineSyncDto;

    .line 40
    .local v0, "that":Lcom/liquable/nemo/model/message/OfflineSyncDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/message/OfflineSyncDto;->checkPoint:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/liquable/nemo/model/message/OfflineSyncDto;->checkPoint:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/message/OfflineSyncDto;->checkPoint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 41
    goto :goto_0

    .line 40
    :cond_5
    iget-object v3, v0, Lcom/liquable/nemo/model/message/OfflineSyncDto;->checkPoint:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 43
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/message/OfflineSyncDto;->messages:Ljava/util/List;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/liquable/nemo/model/message/OfflineSyncDto;->messages:Ljava/util/List;

    iget-object v4, v0, Lcom/liquable/nemo/model/message/OfflineSyncDto;->messages:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 44
    goto :goto_0

    .line 43
    :cond_7
    iget-object v3, v0, Lcom/liquable/nemo/model/message/OfflineSyncDto;->messages:Ljava/util/List;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getCheckPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/model/message/OfflineSyncDto;->checkPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/message/OfflineMessageDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/model/message/OfflineSyncDto;->messages:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v2, p0, Lcom/liquable/nemo/model/message/OfflineSyncDto;->checkPoint:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/liquable/nemo/model/message/OfflineSyncDto;->checkPoint:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 53
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/liquable/nemo/model/message/OfflineSyncDto;->messages:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/model/message/OfflineSyncDto;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 54
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 52
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OfflineSyncDto{checkPoint=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/message/OfflineSyncDto;->checkPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/message/OfflineSyncDto;->messages:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
