.class public final Lcom/liquable/nemo/voip/frame/Voip$Frame;
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
    name = "Frame"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;
    }
.end annotation


# static fields
.field public static final COMMAND_FIELD_NUMBER:I = 0x2

.field public static final HMAC_SHA1_FIELD_NUMBER:I = 0x3

.field public static final PACKET_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Frame;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

.field private hmacSha1_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private packet_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2676
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$Frame$1;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->PARSER:Lcom/google/protobuf/Parser;

    .line 2699
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$Frame;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;-><init>(Z)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Frame;

    .line 2700
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Frame;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->initFields()V

    .line 2701
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

    .line 2715
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2694
    iput v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->memoizedSerializedSize:I

    .line 2709
    iput-byte v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->memoizedIsInitialized:B

    .line 2716
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->initFields()V

    .line 2717
    const/4 v2, 0x0

    .line 2719
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 2720
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 2721
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 2722
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 2727
    invoke-virtual {p0, p1, p2, v4}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2728
    const/4 v0, 0x1

    goto :goto_0

    .line 2724
    :sswitch_0
    const/4 v0, 0x1

    .line 2725
    goto :goto_0

    .line 2733
    :sswitch_1
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->bitField0_:I

    .line 2734
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->packet_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2758
    .end local v4    # "tag":I
    :catch_0
    move-exception v1

    .line 2759
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2763
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->makeExtensionsImmutable()V

    throw v5

    .line 2738
    .restart local v4    # "tag":I
    :sswitch_2
    const/4 v3, 0x0

    .line 2739
    .local v3, "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    :try_start_2
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 2740
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

    invoke-virtual {v5}, Lcom/liquable/nemo/voip/frame/Voip$Command;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    move-result-object v3

    .line 2742
    :cond_1
    sget-object v5, Lcom/liquable/nemo/voip/frame/Voip$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/voip/frame/Voip$Command;

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

    .line 2744
    if-eqz v3, :cond_2

    .line 2745
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Command;)Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;

    .line 2746
    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

    .line 2748
    :cond_2
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->bitField0_:I
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2760
    .end local v3    # "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$Command$Builder;
    .end local v4    # "tag":I
    :catch_1
    move-exception v1

    .line 2761
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

    .line 2752
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "tag":I
    :sswitch_3
    :try_start_4
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->bitField0_:I

    .line 2753
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->hmacSha1_:Lcom/google/protobuf/ByteString;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2763
    .end local v4    # "tag":I
    :cond_3
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->makeExtensionsImmutable()V

    .line 2765
    return-void

    .line 2722
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 2443
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Frame;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v0, -0x1

    .line 2769
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2694
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->memoizedSerializedSize:I

    .line 2709
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->memoizedIsInitialized:B

    .line 2771
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .param p2, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$1;

    .prologue
    .line 2443
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 2711
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2694
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->memoizedSerializedSize:I

    .line 2709
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->memoizedIsInitialized:B

    .line 2711
    return-void
.end method

.method static synthetic access$3202(Lcom/liquable/nemo/voip/frame/Voip$Frame;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2443
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->packet_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/liquable/nemo/voip/frame/Voip$Frame;Lcom/liquable/nemo/voip/frame/Voip$Command;)Lcom/liquable/nemo/voip/frame/Voip$Command;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .param p1, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$Command;

    .prologue
    .line 2443
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/liquable/nemo/voip/frame/Voip$Frame;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2443
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->hmacSha1_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/liquable/nemo/voip/frame/Voip$Frame;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .param p1, "x1"    # I

    .prologue
    .line 2443
    iput p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .locals 1

    .prologue
    .line 2652
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Frame;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2857
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->packet_:Lcom/google/protobuf/ByteString;

    .line 2858
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

    .line 2859
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->hmacSha1_:Lcom/google/protobuf/ByteString;

    .line 2860
    return-void
.end method

.method public static newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;
    .locals 1

    .prologue
    .line 2656
    # invokes: Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->access$3600()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/liquable/nemo/voip/frame/Voip$Frame;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/liquable/nemo/voip/frame/Voip$Frame;

    .prologue
    .line 2660
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Frame;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2665
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$Frame;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2671
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$Frame;

    return-object v0
.end method


# virtual methods
.method public getCommand()Lcom/liquable/nemo/voip/frame/Voip$Command;
    .locals 1

    .prologue
    .line 2777
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2443
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Frame;
    .locals 1

    .prologue
    .line 2782
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Frame;

    return-object v0
.end method

.method public getHmacSha1()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2794
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->hmacSha1_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPacket()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2801
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->packet_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$Frame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2806
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2811
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->memoizedSerializedSize:I

    .line 2812
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2827
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 2816
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 2817
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 2818
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->packet_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2820
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 2821
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2823
    :cond_2
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 2824
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->hmacSha1_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2826
    :cond_3
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->memoizedSerializedSize:I

    move v1, v0

    .line 2827
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasCommand()Z
    .locals 2

    .prologue
    .line 2834
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->bitField0_:I

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

.method public hasHmacSha1()Z
    .locals 2

    .prologue
    .line 2846
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->bitField0_:I

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

.method public hasPacket()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2853
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2864
    iget-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->memoizedIsInitialized:B

    .line 2865
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 2866
    if-ne v0, v1, :cond_0

    .line 2876
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 2866
    goto :goto_0

    .line 2869
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->hasCommand()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2870
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->getCommand()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$Command;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2871
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->memoizedIsInitialized:B

    move v1, v2

    .line 2872
    goto :goto_0

    .line 2875
    :cond_2
    iput-byte v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2443
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;
    .locals 1

    .prologue
    .line 2881
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2443
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;
    .locals 1

    .prologue
    .line 2886
    invoke-static {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$Frame;)Lcom/liquable/nemo/voip/frame/Voip$Frame$Builder;

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
    .line 2891
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2897
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->getSerializedSize()I

    .line 2898
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2899
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->packet_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2901
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2902
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->command_:Lcom/liquable/nemo/voip/frame/Voip$Command;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2904
    :cond_1
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2905
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Frame;->hmacSha1_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2907
    :cond_2
    return-void
.end method
