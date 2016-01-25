.class public final Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Voip.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;",
        "Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dialerSymmetryKey_:Lcom/google/protobuf/ByteString;

.field private receiveId_:Ljava/lang/Object;

.field private status_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4314
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4305
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->receiveId_:Ljava/lang/Object;

    .line 4308
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->OK:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->status_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    .line 4311
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->dialerSymmetryKey_:Lcom/google/protobuf/ByteString;

    .line 4315
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->maybeForceBuilderInitialization()V

    .line 4316
    return-void
.end method

.method static synthetic access$6200()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    .locals 1

    .prologue
    .line 4295
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    .locals 1

    .prologue
    .line 4300
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 4379
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4295
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    .locals 2

    .prologue
    .line 4320
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v0

    .line 4321
    .local v0, "result":Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4322
    invoke-static {v0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4324
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4295
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    .locals 5

    .prologue
    .line 4329
    new-instance v1, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V

    .line 4330
    .local v1, "result":Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->bitField0_:I

    .line 4331
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 4332
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4333
    or-int/lit8 v2, v2, 0x1

    .line 4335
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->receiveId_:Ljava/lang/Object;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->receiveId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->access$5802(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4336
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4337
    or-int/lit8 v2, v2, 0x2

    .line 4339
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->status_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->status_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->access$5902(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    .line 4340
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 4341
    or-int/lit8 v2, v2, 0x4

    .line 4343
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->dialerSymmetryKey_:Lcom/google/protobuf/ByteString;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->dialerSymmetryKey_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->access$6002(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 4344
    # setter for: Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->access$6102(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;I)I

    .line 4345
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4295
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4295
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    .locals 1

    .prologue
    .line 4350
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4351
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->receiveId_:Ljava/lang/Object;

    .line 4352
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->bitField0_:I

    .line 4353
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->OK:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->status_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    .line 4354
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->bitField0_:I

    .line 4355
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->dialerSymmetryKey_:Lcom/google/protobuf/ByteString;

    .line 4356
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->bitField0_:I

    .line 4357
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4295
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4295
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4295
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    .locals 2

    .prologue
    .line 4362
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 4295
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 4295
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4295
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    .locals 1

    .prologue
    .line 4367
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4372
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eq v1, v0, :cond_0

    .line 4374
    const/4 v0, 0x0

    .line 4376
    :cond_0
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4295
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4295
    check-cast p1, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4295
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4385
    const/4 v2, 0x0

    .line 4387
    .local v2, "parsedMessage":Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4392
    if-eqz v2, :cond_0

    .line 4393
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    .line 4396
    :cond_0
    return-object p0

    .line 4388
    :catch_0
    move-exception v1

    .line 4389
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-object v2, v0

    .line 4390
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4392
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 4393
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    .locals 1
    .param p1, "other"    # Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    .prologue
    .line 4401
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4415
    :cond_0
    :goto_0
    return-object p0

    .line 4404
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->hasReceiveId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4405
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->bitField0_:I

    .line 4406
    # getter for: Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->receiveId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->access$5800(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->receiveId_:Ljava/lang/Object;

    .line 4409
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4410
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->getStatus()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->setStatus(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    .line 4412
    :cond_3
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->hasDialerSymmetryKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4413
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->getDialerSymmetryKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->setDialerSymmetryKey(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    goto :goto_0
.end method

.method public setDialerSymmetryKey(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4426
    if-nez p1, :cond_0

    .line 4427
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4429
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->bitField0_:I

    .line 4430
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->dialerSymmetryKey_:Lcom/google/protobuf/ByteString;

    .line 4432
    return-object p0
.end method

.method public setReceiveId(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4439
    if-nez p1, :cond_0

    .line 4440
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4442
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->bitField0_:I

    .line 4443
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->receiveId_:Ljava/lang/Object;

    .line 4445
    return-object p0
.end method

.method public setReceiveIdBytes(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4452
    if-nez p1, :cond_0

    .line 4453
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4455
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->bitField0_:I

    .line 4456
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->receiveId_:Ljava/lang/Object;

    .line 4458
    return-object p0
.end method

.method public setStatus(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    .prologue
    .line 4465
    if-nez p1, :cond_0

    .line 4466
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4468
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->bitField0_:I

    .line 4469
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->status_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    .line 4471
    return-object p0
.end method
