.class public abstract Lcom/liquable/nemo/message/model/AbstractMediaMessage;
.super Lcom/liquable/nemo/message/model/DomainMessage;
.source "AbstractMediaMessage.java"

# interfaces
.implements Lcom/liquable/nemo/message/model/IMediaMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2637321296b82586L


# instance fields
.field protected progress:I

.field private final s3endpoint:Ljava/lang/String;

.field private state:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s3endpoint"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "s3endpoint"
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/liquable/nemo/message/model/DomainMessage;-><init>()V

    .line 16
    sget-object v0, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->PENDING:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    iput-object v0, p0, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->state:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    .line 23
    iput-object p1, p0, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->s3endpoint:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public contains(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)Z
    .locals 1
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getAllRemoteKeyPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->progress:I

    return v0
.end method

.method public final getS3endpoint()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->s3endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferState()Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->state:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    return-object v0
.end method

.method public requirePush()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public final updateTransferAsComplete()V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->COMPLETE:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    iput-object v0, p0, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->state:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    .line 53
    const/16 v0, 0x64

    iput v0, p0, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->progress:I

    .line 54
    return-void
.end method

.method public final updateTransferAsPending()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->state:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    sget-object v1, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->COMPLETE:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    if-ne v0, v1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->PENDING:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    iput-object v0, p0, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->state:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->progress:I

    goto :goto_0
.end method

.method public final updateTransferAsTransfering(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->state:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    sget-object v1, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->COMPLETE:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    if-ne v0, v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->TRANSFERING:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    iput-object v0, p0, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->state:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    .line 73
    iput p1, p0, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->progress:I

    goto :goto_0
.end method
