.class public final Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Voip.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/frame/Voip$Pong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/liquable/nemo/voip/frame/Voip$Pong;",
        "Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3380
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3377
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .line 3381
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->maybeForceBuilderInitialization()V

    .line 3382
    return-void
.end method

.method static synthetic access$4700()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;
    .locals 1

    .prologue
    .line 3367
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;
    .locals 1

    .prologue
    .line 3372
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 3437
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3367
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/liquable/nemo/voip/frame/Voip$Pong;
    .locals 2

    .prologue
    .line 3386
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v0

    .line 3387
    .local v0, "result":Lcom/liquable/nemo/voip/frame/Voip$Pong;
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3388
    invoke-static {v0}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3390
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3367
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Pong;
    .locals 5

    .prologue
    .line 3395
    new-instance v1, Lcom/liquable/nemo/voip/frame/Voip$Pong;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/voip/frame/Voip$Pong;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V

    .line 3396
    .local v1, "result":Lcom/liquable/nemo/voip/frame/Voip$Pong;
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->bitField0_:I

    .line 3397
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 3398
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3399
    or-int/lit8 v2, v2, 0x1

    .line 3401
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Pong;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->access$4502(Lcom/liquable/nemo/voip/frame/Voip$Pong;Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .line 3402
    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Pong;->bitField0_:I
    invoke-static {v1, v2}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->access$4602(Lcom/liquable/nemo/voip/frame/Voip$Pong;I)I

    .line 3403
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3367
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3367
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;
    .locals 1

    .prologue
    .line 3408
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3409
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .line 3410
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->bitField0_:I

    .line 3411
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3367
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3367
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3367
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;
    .locals 2

    .prologue
    .line 3416
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Pong;)Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

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
    .line 3367
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 3367
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3367
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Pong;
    .locals 1

    .prologue
    .line 3421
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3426
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eq v2, v1, :cond_1

    .line 3434
    :cond_0
    :goto_0
    return v0

    .line 3430
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 3434
    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3367
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3367
    check-cast p1, Lcom/liquable/nemo/voip/frame/Voip$Pong;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Pong;)Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

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
    .line 3367
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3443
    const/4 v2, 0x0

    .line 3445
    .local v2, "parsedMessage":Lcom/liquable/nemo/voip/frame/Voip$Pong;
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/voip/frame/Voip$Pong;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3450
    if-eqz v2, :cond_0

    .line 3451
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Pong;)Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    .line 3454
    :cond_0
    return-object p0

    .line 3446
    :catch_0
    move-exception v1

    .line 3447
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-object v2, v0

    .line 3448
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3450
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 3451
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Pong;)Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Pong;)Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;
    .locals 3
    .param p1, "other"    # Lcom/liquable/nemo/voip/frame/Voip$Pong;

    .prologue
    .line 3459
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 3474
    :cond_0
    :goto_0
    return-object p0

    .line 3462
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->hasPing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3463
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->getPing()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v0

    .line 3464
    .local v0, "value":Lcom/liquable/nemo/voip/frame/Voip$Ping;
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 3465
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    invoke-static {v1}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v1

    .line 3466
    invoke-virtual {v1, v0}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v1

    .line 3467
    invoke-virtual {v1}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .line 3472
    :goto_1
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->bitField0_:I

    goto :goto_0

    .line 3469
    :cond_2
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    goto :goto_1
.end method

.method public setPing(Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    .prologue
    .line 3494
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .line 3496
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->bitField0_:I

    .line 3497
    return-object p0
.end method

.method public setPing(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .prologue
    .line 3481
    if-nez p1, :cond_0

    .line 3482
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3484
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .line 3486
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->bitField0_:I

    .line 3487
    return-object p0
.end method
