.class public final Lcom/liquable/nemo/voip/frame/Voip$Command;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Voip.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/frame/Voip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    }
.end annotation


# static fields
.field public static final DIALRESPONSE_FIELD_NUMBER:I = 0x2

.field public static final DIAL_FIELD_NUMBER:I = 0x1

.field public static final EXCHANGEKEY_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$Command;",
            ">;"
        }
    .end annotation
.end field

.field public static final PING_FIELD_NUMBER:I = 0xb

.field public static final PONG_FIELD_NUMBER:I = 0xc

.field public static final RECEIVERESPONSE_FIELD_NUMBER:I = 0x4

.field public static final RECEIVE_FIELD_NUMBER:I = 0x3

.field public static final STATECHANGE_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Command;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

.field private dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

.field private exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

.field private pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

.field private receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

.field private receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

.field private stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 512
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$Command$1;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$Command;->PARSER:Lcom/google/protobuf/Parser;

    .line 564
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$Command;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$Command;-><init>(Z)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$Command;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Command;

    .line 565
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Command;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Command;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->initFields()V

    .line 566
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 572
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 557
    iput-byte v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->memoizedIsInitialized:B

    .line 559
    iput v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->memoizedSerializedSize:I

    .line 573
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->initFields()V

    .line 574
    const/4 v2, 0x0

    .line 576
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 577
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_11

    .line 578
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 579
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 584
    invoke-virtual {p0, p1, p2, v4}, Lcom/liquable/nemo/voip/frame/Voip$Command;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 585
    const/4 v0, 0x1

    goto :goto_0

    .line 581
    :sswitch_0
    const/4 v0, 0x1

    .line 582
    goto :goto_0

    .line 590
    :sswitch_1
    const/4 v3, 0x0

    .line 591
    .local v3, "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 592
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    invoke-virtual {v5}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v3

    .line 594
    :cond_1
    sget-object v5, Lcom/liquable/nemo/voip/frame/Voip$Dial;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/voip/frame/Voip$Dial;

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    .line 596
    if-eqz v3, :cond_2

    .line 597
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Dial;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    .line 598
    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    .line 600
    :cond_2
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 703
    .end local v3    # "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    .end local v4    # "tag":I
    :catch_0
    move-exception v1

    .line 704
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->makeExtensionsImmutable()V

    throw v5

    .line 604
    .restart local v4    # "tag":I
    :sswitch_2
    const/4 v3, 0x0

    .line 605
    .local v3, "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;
    :try_start_2
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 606
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    invoke-virtual {v5}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v3

    .line 608
    :cond_3
    sget-object v5, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    .line 610
    if-eqz v3, :cond_4

    .line 611
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    .line 612
    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    .line 614
    :cond_4
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 705
    .end local v3    # "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;
    .end local v4    # "tag":I
    :catch_1
    move-exception v1

    .line 706
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 618
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "tag":I
    :sswitch_3
    const/4 v3, 0x0

    .line 619
    .local v3, "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    :try_start_4
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 620
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    invoke-virtual {v5}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v3

    .line 622
    :cond_5
    sget-object v5, Lcom/liquable/nemo/voip/frame/Voip$Receive;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/voip/frame/Voip$Receive;

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    .line 624
    if-eqz v3, :cond_6

    .line 625
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Receive;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    .line 626
    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    .line 628
    :cond_6
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    goto/16 :goto_0

    .line 632
    .end local v3    # "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    :sswitch_4
    const/4 v3, 0x0

    .line 633
    .local v3, "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_7

    .line 634
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    invoke-virtual {v5}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v3

    .line 636
    :cond_7
    sget-object v5, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    .line 638
    if-eqz v3, :cond_8

    .line 639
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    .line 640
    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    .line 642
    :cond_8
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    goto/16 :goto_0

    .line 646
    .end local v3    # "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    :sswitch_5
    const/4 v3, 0x0

    .line 647
    .local v3, "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_9

    .line 648
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    invoke-virtual {v5}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v3

    .line 650
    :cond_9
    sget-object v5, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    .line 652
    if-eqz v3, :cond_a

    .line 653
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$StateChange;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    .line 654
    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    .line 656
    :cond_a
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    goto/16 :goto_0

    .line 660
    .end local v3    # "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;
    :sswitch_6
    const/4 v3, 0x0

    .line 661
    .local v3, "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    const/16 v6, 0x20

    if-ne v5, v6, :cond_b

    .line 662
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    invoke-virtual {v5}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    move-result-object v3

    .line 664
    :cond_b
    sget-object v5, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    .line 666
    if-eqz v3, :cond_c

    .line 667
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    .line 668
    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    .line 670
    :cond_c
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    goto/16 :goto_0

    .line 674
    .end local v3    # "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;
    :sswitch_7
    const/4 v3, 0x0

    .line 675
    .local v3, "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    const/16 v6, 0x40

    if-ne v5, v6, :cond_d

    .line 676
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    invoke-virtual {v5}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v3

    .line 678
    :cond_d
    sget-object v5, Lcom/liquable/nemo/voip/frame/Voip$Ping;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/voip/frame/Voip$Ping;

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .line 680
    if-eqz v3, :cond_e

    .line 681
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    .line 682
    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .line 684
    :cond_e
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    goto/16 :goto_0

    .line 688
    .end local v3    # "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    :sswitch_8
    const/4 v3, 0x0

    .line 689
    .local v3, "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit16 v5, v5, 0x80

    const/16 v6, 0x80

    if-ne v5, v6, :cond_f

    .line 690
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    invoke-virtual {v5}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v3

    .line 692
    :cond_f
    sget-object v5, Lcom/liquable/nemo/voip/frame/Voip$Pong;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/voip/frame/Voip$Pong;

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    .line 694
    if-eqz v3, :cond_10

    .line 695
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Pong;)Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    .line 696
    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    .line 698
    :cond_10
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 708
    .end local v3    # "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;
    .end local v4    # "tag":I
    :cond_11
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->makeExtensionsImmutable()V

    .line 710
    return-void

    .line 579
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x5a -> :sswitch_7
        0x62 -> :sswitch_8
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/liquable/nemo/voip/frame/Voip$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/liquable/nemo/voip/frame/Voip$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Command;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v0, -0x1

    .line 714
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 557
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->memoizedIsInitialized:B

    .line 559
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->memoizedSerializedSize:I

    .line 716
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .param p2, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$Command;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 568
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 557
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->memoizedIsInitialized:B

    .line 559
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->memoizedSerializedSize:I

    .line 568
    return-void
.end method

.method static synthetic access$102(Lcom/liquable/nemo/voip/frame/Voip$Command;Lcom/liquable/nemo/voip/frame/Voip$Dial;)Lcom/liquable/nemo/voip/frame/Voip$Dial;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Command;
    .param p1, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$Dial;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    return-object p1
.end method

.method static synthetic access$202(Lcom/liquable/nemo/voip/frame/Voip$Command;Lcom/liquable/nemo/voip/frame/Voip$DialResponse;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Command;
    .param p1, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    return-object p1
.end method

.method static synthetic access$302(Lcom/liquable/nemo/voip/frame/Voip$Command;Lcom/liquable/nemo/voip/frame/Voip$Receive;)Lcom/liquable/nemo/voip/frame/Voip$Receive;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Command;
    .param p1, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$Receive;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    return-object p1
.end method

.method static synthetic access$402(Lcom/liquable/nemo/voip/frame/Voip$Command;Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Command;
    .param p1, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    return-object p1
.end method

.method static synthetic access$502(Lcom/liquable/nemo/voip/frame/Voip$Command;Lcom/liquable/nemo/voip/frame/Voip$StateChange;)Lcom/liquable/nemo/voip/frame/Voip$StateChange;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Command;
    .param p1, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    return-object p1
.end method

.method static synthetic access$602(Lcom/liquable/nemo/voip/frame/Voip$Command;Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Command;
    .param p1, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    return-object p1
.end method

.method static synthetic access$702(Lcom/liquable/nemo/voip/frame/Voip$Command;Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Ping;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Command;
    .param p1, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    return-object p1
.end method

.method static synthetic access$802(Lcom/liquable/nemo/voip/frame/Voip$Command;Lcom/liquable/nemo/voip/frame/Voip$Pong;)Lcom/liquable/nemo/voip/frame/Voip$Pong;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Command;
    .param p1, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$Pong;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    return-object p1
.end method

.method static synthetic access$902(Lcom/liquable/nemo/voip/frame/Voip$Command;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Command;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Command;
    .locals 1

    .prologue
    .line 500
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Command;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Command;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 877
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    .line 878
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    .line 879
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    .line 880
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    .line 881
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    .line 882
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    .line 883
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .line 884
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    .line 885
    return-void
.end method

.method public static newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1

    .prologue
    .line 504
    # invokes: Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->access$1000()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/liquable/nemo/voip/frame/Voip$Command;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/liquable/nemo/voip/frame/Voip$Command;

    .prologue
    .line 508
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Command;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Command;
    .locals 1

    .prologue
    .line 720
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Command;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Command;

    return-object v0
.end method

.method public getDial()Lcom/liquable/nemo/voip/frame/Voip$Dial;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    return-object v0
.end method

.method public getDialResponse()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    return-object v0
.end method

.method public getExchangeKey()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$Command;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Command;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPing()Lcom/liquable/nemo/voip/frame/Voip$Ping;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    return-object v0
.end method

.method public getPong()Lcom/liquable/nemo/voip/frame/Voip$Pong;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    return-object v0
.end method

.method public getReceive()Lcom/liquable/nemo/voip/frame/Voip$Receive;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    return-object v0
.end method

.method public getReceiveResponse()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 779
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->memoizedSerializedSize:I

    .line 780
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 810
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 784
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 785
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 786
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 788
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 789
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 791
    :cond_2
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 792
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 794
    :cond_3
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 795
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 797
    :cond_4
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 798
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 800
    :cond_5
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 801
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 803
    :cond_6
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 804
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 806
    :cond_7
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 807
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 809
    :cond_8
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->memoizedSerializedSize:I

    move v1, v0

    .line 810
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getStateChange()Lcom/liquable/nemo/voip/frame/Voip$StateChange;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    return-object v0
.end method

.method public hasDial()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 824
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDialResponse()Z
    .locals 2

    .prologue
    .line 831
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExchangeKey()Z
    .locals 2

    .prologue
    .line 838
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPing()Z
    .locals 2

    .prologue
    .line 845
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPong()Z
    .locals 2

    .prologue
    .line 852
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReceive()Z
    .locals 2

    .prologue
    .line 859
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReceiveResponse()Z
    .locals 2

    .prologue
    .line 866
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStateChange()Z
    .locals 2

    .prologue
    .line 873
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 889
    iget-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->memoizedIsInitialized:B

    .line 890
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 891
    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 943
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 891
    goto :goto_0

    .line 894
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasDial()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 895
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getDial()Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 896
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->memoizedIsInitialized:B

    goto :goto_1

    .line 900
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasDialResponse()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 901
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getDialResponse()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 902
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->memoizedIsInitialized:B

    goto :goto_1

    .line 906
    :cond_3
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasReceive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 907
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getReceive()Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 908
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->memoizedIsInitialized:B

    goto :goto_1

    .line 912
    :cond_4
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasReceiveResponse()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 913
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getReceiveResponse()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    .line 914
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->memoizedIsInitialized:B

    goto :goto_1

    .line 918
    :cond_5
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasStateChange()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 919
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getStateChange()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    .line 920
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->memoizedIsInitialized:B

    goto :goto_1

    .line 924
    :cond_6
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasExchangeKey()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 925
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getExchangeKey()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_7

    .line 926
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->memoizedIsInitialized:B

    goto :goto_1

    .line 930
    :cond_7
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasPing()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 931
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getPing()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8

    .line 932
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->memoizedIsInitialized:B

    goto/16 :goto_1

    .line 936
    :cond_8
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasPong()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 937
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getPong()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_9

    .line 938
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->memoizedIsInitialized:B

    goto/16 :goto_1

    .line 942
    :cond_9
    iput-byte v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->memoizedIsInitialized:B

    move v2, v1

    .line 943
    goto/16 :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1

    .prologue
    .line 948
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .locals 1

    .prologue
    .line 953
    invoke-static {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$Command;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 958
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 964
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getSerializedSize()I

    .line 965
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 966
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->dial_:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 968
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 969
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->dialResponse_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 971
    :cond_1
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 972
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->receive_:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 974
    :cond_2
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 975
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->receiveResponse_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 977
    :cond_3
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 978
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->stateChange_:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 980
    :cond_4
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 981
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->exchangeKey_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 983
    :cond_5
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 984
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 986
    :cond_6
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 987
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Command;->pong_:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 989
    :cond_7
    return-void
.end method
