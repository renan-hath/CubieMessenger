.class public final Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LiteSecure.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/endpoint/record/LiteSecure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    }
.end annotation


# static fields
.field public static final AUTHENTICATE_ERROR_FIELD_NUMBER:I = 0x4

.field public static final AUTHENTICATE_FIELD_NUMBER:I = 0x2

.field public static final AUTHENTICATE_RESPONSE_FIELD_NUMBER:I = 0x3

.field public static final HEARTBEAT_FIELD_NUMBER:I = 0x5

.field public static final HEARTBEAT_RESPONSE_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

.field private static final serialVersionUID:J


# instance fields
.field private authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

.field private authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

.field private authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

.field private bitField0_:I

.field private heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

.field private heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2583
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$1;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->PARSER:Lcom/google/protobuf/Parser;

    .line 2614
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;-><init>(Z)V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    .line 2615
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->initFields()V

    .line 2616
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

    .line 2630
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2607
    iput-byte v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->memoizedIsInitialized:B

    .line 2609
    iput v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->memoizedSerializedSize:I

    .line 2631
    invoke-direct {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->initFields()V

    .line 2632
    const/4 v2, 0x0

    .line 2634
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 2635
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_b

    .line 2636
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 2637
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 2642
    invoke-virtual {p0, p1, p2, v4}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2643
    const/4 v0, 0x1

    goto :goto_0

    .line 2639
    :sswitch_0
    const/4 v0, 0x1

    .line 2640
    goto :goto_0

    .line 2648
    :sswitch_1
    const/4 v3, 0x0

    .line 2649
    .local v3, "subBuilder":Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    iget v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 2650
    iget-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    invoke-virtual {v5}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v3

    .line 2652
    :cond_1
    sget-object v5, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    iput-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    .line 2654
    if-eqz v3, :cond_2

    .line 2655
    iget-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    .line 2656
    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    .line 2658
    :cond_2
    iget v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2719
    .end local v3    # "subBuilder":Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    .end local v4    # "tag":I
    :catch_0
    move-exception v1

    .line 2720
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2724
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->makeExtensionsImmutable()V

    throw v5

    .line 2662
    .restart local v4    # "tag":I
    :sswitch_2
    const/4 v3, 0x0

    .line 2663
    .local v3, "subBuilder":Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
    :try_start_2
    iget v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 2664
    iget-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    invoke-virtual {v5}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v3

    .line 2666
    :cond_3
    sget-object v5, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    iput-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    .line 2668
    if-eqz v3, :cond_4

    .line 2669
    iget-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    .line 2670
    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    .line 2672
    :cond_4
    iget v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2721
    .end local v3    # "subBuilder":Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
    .end local v4    # "tag":I
    :catch_1
    move-exception v1

    .line 2722
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

    .line 2676
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "tag":I
    :sswitch_3
    const/4 v3, 0x0

    .line 2677
    .local v3, "subBuilder":Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    :try_start_4
    iget v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 2678
    iget-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    invoke-virtual {v5}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    move-result-object v3

    .line 2680
    :cond_5
    sget-object v5, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    iput-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    .line 2682
    if-eqz v3, :cond_6

    .line 2683
    iget-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    .line 2684
    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    .line 2686
    :cond_6
    iget v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    goto/16 :goto_0

    .line 2690
    .end local v3    # "subBuilder":Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    :sswitch_4
    const/4 v3, 0x0

    .line 2691
    .local v3, "subBuilder":Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;
    iget v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_7

    .line 2692
    iget-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    invoke-virtual {v5}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v3

    .line 2694
    :cond_7
    sget-object v5, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    iput-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    .line 2696
    if-eqz v3, :cond_8

    .line 2697
    iget-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    .line 2698
    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    .line 2700
    :cond_8
    iget v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    goto/16 :goto_0

    .line 2704
    .end local v3    # "subBuilder":Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;
    :sswitch_5
    const/4 v3, 0x0

    .line 2705
    .local v3, "subBuilder":Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;
    iget v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_9

    .line 2706
    iget-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    invoke-virtual {v5}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    move-result-object v3

    .line 2708
    :cond_9
    sget-object v5, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    iput-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    .line 2710
    if-eqz v3, :cond_a

    .line 2711
    iget-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    .line 2712
    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    .line 2714
    :cond_a
    iget v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 2724
    .end local v3    # "subBuilder":Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;
    .end local v4    # "tag":I
    :cond_b
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->makeExtensionsImmutable()V

    .line 2726
    return-void

    .line 2637
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/liquable/nemo/endpoint/record/LiteSecure$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2195
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v0, -0x1

    .line 2730
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2607
    iput-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->memoizedIsInitialized:B

    .line 2609
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->memoizedSerializedSize:I

    .line 2732
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/endpoint/record/LiteSecure$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .param p2, "x1"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$1;

    .prologue
    .line 2195
    invoke-direct {p0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 2626
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2607
    iput-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->memoizedIsInitialized:B

    .line 2609
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->memoizedSerializedSize:I

    .line 2626
    return-void
.end method

.method static synthetic access$3102(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    .param p1, "x1"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    .prologue
    .line 2195
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    .param p1, "x1"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    .prologue
    .line 2195
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    .param p1, "x1"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    .prologue
    .line 2195
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    .param p1, "x1"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    .prologue
    .line 2195
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    .param p1, "x1"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    .prologue
    .line 2195
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    .param p1, "x1"    # I

    .prologue
    .line 2195
    iput p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    .locals 1

    .prologue
    .line 2571
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2842
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    .line 2843
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    .line 2844
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    .line 2845
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    .line 2846
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    .line 2847
    return-void
.end method

.method public static newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 1

    .prologue
    .line 2575
    # invokes: Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->access$3700()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    .prologue
    .line 2579
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthenticate()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;
    .locals 1

    .prologue
    .line 2738
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    return-object v0
.end method

.method public getAuthenticateError()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
    .locals 1

    .prologue
    .line 2745
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    return-object v0
.end method

.method public getAuthenticateResponse()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;
    .locals 1

    .prologue
    .line 2752
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    .locals 1

    .prologue
    .line 2757
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    return-object v0
.end method

.method public getHeartbeat()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;
    .locals 1

    .prologue
    .line 2764
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    return-object v0
.end method

.method public getHeartbeatResponse()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;
    .locals 1

    .prologue
    .line 2771
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2776
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 2781
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->memoizedSerializedSize:I

    .line 2782
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2803
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 2786
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 2787
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2788
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2790
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 2791
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2793
    :cond_2
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 2794
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2796
    :cond_3
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 2797
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2799
    :cond_4
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 2800
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2802
    :cond_5
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->memoizedSerializedSize:I

    move v1, v0

    .line 2803
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasAuthenticate()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2810
    iget v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAuthenticateError()Z
    .locals 2

    .prologue
    .line 2817
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

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

.method public hasAuthenticateResponse()Z
    .locals 2

    .prologue
    .line 2824
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

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

.method public hasHeartbeat()Z
    .locals 2

    .prologue
    .line 2831
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

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

.method public hasHeartbeatResponse()Z
    .locals 2

    .prologue
    .line 2838
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

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

    .line 2851
    iget-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->memoizedIsInitialized:B

    .line 2852
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 2853
    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 2887
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 2853
    goto :goto_0

    .line 2856
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->hasAuthenticate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2857
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getAuthenticate()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2858
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->memoizedIsInitialized:B

    goto :goto_1

    .line 2862
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->hasAuthenticateResponse()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2863
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getAuthenticateResponse()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2864
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->memoizedIsInitialized:B

    goto :goto_1

    .line 2868
    :cond_3
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->hasAuthenticateError()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2869
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getAuthenticateError()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2870
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->memoizedIsInitialized:B

    goto :goto_1

    .line 2874
    :cond_4
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->hasHeartbeat()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2875
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getHeartbeat()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2876
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->memoizedIsInitialized:B

    goto :goto_1

    .line 2880
    :cond_5
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->hasHeartbeatResponse()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2881
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getHeartbeatResponse()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2882
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->memoizedIsInitialized:B

    goto :goto_1

    .line 2886
    :cond_6
    iput-byte v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->memoizedIsInitialized:B

    move v2, v1

    .line 2887
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->newBuilderForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 1

    .prologue
    .line 2892
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 1

    .prologue
    .line 2897
    invoke-static {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

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
    .line 2902
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

    .line 2908
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getSerializedSize()I

    .line 2909
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2910
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2912
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2913
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2915
    :cond_1
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 2916
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2918
    :cond_2
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 2919
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2921
    :cond_3
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 2922
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2924
    :cond_4
    return-void
.end method
