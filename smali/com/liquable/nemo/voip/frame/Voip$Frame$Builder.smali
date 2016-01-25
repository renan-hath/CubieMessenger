.class public final Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Voip.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/frame/Voip$Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/liquable/nemo/voip/frame/Voip$Frame;",
        "Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

.field private hmacSha1_:Lcom/google/protobuf/ByteString;

.field private packet_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2467
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2458
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->packet_:Lcom/google/protobuf/ByteString;

    .line 2461
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

    .line 2464
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->hmacSha1_:Lcom/google/protobuf/ByteString;

    .line 2468
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->maybeForceBuilderInitialization()V

    .line 2469
    return-void
.end method

.method static synthetic access$3600()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;
    .locals 1

    .prologue
    .line 2448
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;
    .locals 1

    .prologue
    .line 2453
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2541
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2448
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .locals 2

    .prologue
    .line 2473
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    .line 2474
    .local v0, "result":Lcom/liquable/nemo/voip/frame/Voip$Frame;
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2475
    invoke-static {v0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2477
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2448
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .locals 5

    .prologue
    .line 2482
    new-instance v1, Lcom/liquable/nemo/voip/frame/Voip$Frame;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/voip/frame/Voip$Frame;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V

    .line 2483
    .local v1, "result":Lcom/liquable/nemo/voip/frame/Voip$Frame;
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->bitField0_:I

    .line 2484
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 2485
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2486
    or-int/lit8 v2, v2, 0x1

    .line 2488
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->packet_:Lcom/google/protobuf/ByteString;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Frame;->packet_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->access$3202(Lcom/liquable/nemo/voip/frame/Voip$Frame;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2489
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2490
    or-int/lit8 v2, v2, 0x2

    .line 2492
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Frame;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->access$3302(Lcom/liquable/nemo/voip/frame/Voip$Frame;Lcom/liquable/nemo/voip/frame/Voip$Command;)Lcom/liquable/nemo/voip/frame/Voip$Command;

    .line 2493
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2494
    or-int/lit8 v2, v2, 0x4

    .line 2496
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->hmacSha1_:Lcom/google/protobuf/ByteString;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Frame;->hmacSha1_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->access$3402(Lcom/liquable/nemo/voip/frame/Voip$Frame;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2497
    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Frame;->bitField0_:I
    invoke-static {v1, v2}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->access$3502(Lcom/liquable/nemo/voip/frame/Voip$Frame;I)I

    .line 2498
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2448
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2448
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;
    .locals 1

    .prologue
    .line 2503
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2504
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->packet_:Lcom/google/protobuf/ByteString;

    .line 2505
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->bitField0_:I

    .line 2506
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

    .line 2507
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->bitField0_:I

    .line 2508
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->hmacSha1_:Lcom/google/protobuf/ByteString;

    .line 2509
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->bitField0_:I

    .line 2510
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2448
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2448
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2448
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;
    .locals 2

    .prologue
    .line 2515
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Frame;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

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
    .line 2448
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCommand()Lcom/liquable/nemo/voip/frame/Voip$Command;
    .locals 1

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2448
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2448
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .locals 1

    .prologue
    .line 2527
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 2532
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2533
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->getCommand()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2535
    const/4 v0, 0x0

    .line 2538
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeCommand(Lcom/liquable/nemo/voip/frame/Voip$Command;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;
    .locals 2
    .param p1, "value"    # Lcom/liquable/nemo/voip/frame/Voip$Command;

    .prologue
    .line 2547
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2548
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

    invoke-static {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$Command;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    .line 2549
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Command;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    .line 2550
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

    .line 2555
    :goto_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->bitField0_:I

    .line 2556
    return-object p0

    .line 2552
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

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
    .line 2448
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2448
    check-cast p1, Lcom/liquable/nemo/voip/frame/Voip$Frame;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Frame;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

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
    .line 2448
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2563
    const/4 v2, 0x0

    .line 2565
    .local v2, "parsedMessage":Lcom/liquable/nemo/voip/frame/Voip$Frame;
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/voip/frame/Voip$Frame;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2570
    if-eqz v2, :cond_0

    .line 2571
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Frame;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    .line 2574
    :cond_0
    return-object p0

    .line 2566
    :catch_0
    move-exception v1

    .line 2567
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-object v2, v0

    .line 2568
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2570
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 2571
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Frame;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Frame;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;
    .locals 1
    .param p1, "other"    # Lcom/liquable/nemo/voip/frame/Voip$Frame;

    .prologue
    .line 2579
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2591
    :cond_0
    :goto_0
    return-object p0

    .line 2582
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->hasPacket()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2583
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->getPacket()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->setPacket(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    .line 2585
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->hasCommand()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2586
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->getCommand()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->mergeCommand(Lcom/liquable/nemo/voip/frame/Voip$Command;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    .line 2588
    :cond_3
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->hasHmacSha1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2589
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->getHmacSha1()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->setHmacSha1(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    goto :goto_0
.end method

.method public setCommand(Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    .prologue
    .line 2611
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

    .line 2613
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->bitField0_:I

    .line 2614
    return-object p0
.end method

.method public setCommand(Lcom/liquable/nemo/voip/frame/Voip$Command;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/voip/frame/Voip$Command;

    .prologue
    .line 2598
    if-nez p1, :cond_0

    .line 2599
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2601
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

    .line 2603
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->bitField0_:I

    .line 2604
    return-object p0
.end method

.method public setHmacSha1(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2626
    if-nez p1, :cond_0

    .line 2627
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2629
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->bitField0_:I

    .line 2630
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->hmacSha1_:Lcom/google/protobuf/ByteString;

    .line 2632
    return-object p0
.end method

.method public setPacket(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2639
    if-nez p1, :cond_0

    .line 2640
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2642
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->bitField0_:I

    .line 2643
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->packet_:Lcom/google/protobuf/ByteString;

    .line 2645
    return-object p0
.end method
