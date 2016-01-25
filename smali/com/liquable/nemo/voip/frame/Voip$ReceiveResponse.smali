.class public final Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
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
    name = "ReceiveResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;,
        Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    }
.end annotation


# static fields
.field public static final DIALER_SYMMETRY_KEY_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECEIVE_ID_FIELD_NUMBER:I = 0x1

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private dialerSymmetryKey_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private receiveId_:Ljava/lang/Object;

.field private status_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4586
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$1;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 4602
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;-><init>(Z)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    .line 4603
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->initFields()V

    .line 4604
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 4625
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4606
    iput-byte v6, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->memoizedIsInitialized:B

    .line 4608
    iput v6, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->memoizedSerializedSize:I

    .line 4626
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->initFields()V

    .line 4627
    const/4 v2, 0x0

    .line 4629
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 4630
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 4631
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 4632
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 4637
    invoke-virtual {p0, p1, p2, v4}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4638
    const/4 v0, 0x1

    goto :goto_0

    .line 4634
    :sswitch_0
    const/4 v0, 0x1

    .line 4635
    goto :goto_0

    .line 4643
    :sswitch_1
    iget v6, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->bitField0_:I

    .line 4644
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->receiveId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4663
    .end local v4    # "tag":I
    :catch_0
    move-exception v1

    .line 4664
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4668
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->makeExtensionsImmutable()V

    throw v6

    .line 4648
    .restart local v4    # "tag":I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 4649
    .local v3, "rawValue":I
    invoke-static {v3}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->valueOf(I)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    move-result-object v5

    .line 4650
    .local v5, "value":Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;
    if-eqz v5, :cond_0

    .line 4651
    iget v6, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->bitField0_:I

    .line 4652
    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->status_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4665
    .end local v3    # "rawValue":I
    .end local v4    # "tag":I
    .end local v5    # "value":Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;
    :catch_1
    move-exception v1

    .line 4666
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4657
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "tag":I
    :sswitch_3
    :try_start_4
    iget v6, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->bitField0_:I

    .line 4658
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->dialerSymmetryKey_:Lcom/google/protobuf/ByteString;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 4668
    .end local v4    # "tag":I
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->makeExtensionsImmutable()V

    .line 4670
    return-void

    .line 4632
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x22 -> :sswitch_3
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
    .line 4286
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v0, -0x1

    .line 4674
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4606
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->memoizedIsInitialized:B

    .line 4608
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->memoizedSerializedSize:I

    .line 4676
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .param p2, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$1;

    .prologue
    .line 4286
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 4621
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4606
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->memoizedIsInitialized:B

    .line 4608
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->memoizedSerializedSize:I

    .line 4621
    return-void
.end method

.method static synthetic access$5800(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    .prologue
    .line 4286
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->receiveId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 4286
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->receiveId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    .param p1, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    .prologue
    .line 4286
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->status_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    return-object p1
.end method

.method static synthetic access$6002(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4286
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->dialerSymmetryKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    .param p1, "x1"    # I

    .prologue
    .line 4286
    iput p1, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    .locals 1

    .prologue
    .line 4574
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4784
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->receiveId_:Ljava/lang/Object;

    .line 4785
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->OK:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->status_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    .line 4786
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->dialerSymmetryKey_:Lcom/google/protobuf/ByteString;

    .line 4787
    return-void
.end method

.method public static newBuilder()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    .locals 1

    .prologue
    .line 4578
    # invokes: Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->access$6200()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    .prologue
    .line 4582
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4286
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    .locals 1

    .prologue
    .line 4680
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    return-object v0
.end method

.method public getDialerSymmetryKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 4691
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->dialerSymmetryKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4696
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getReceiveId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4703
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->receiveId_:Ljava/lang/Object;

    .line 4704
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4705
    check-cast v1, Ljava/lang/String;

    .line 4712
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 4707
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4708
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4709
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4710
    iput-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->receiveId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4712
    goto :goto_0
.end method

.method public getReceiveIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4720
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->receiveId_:Ljava/lang/Object;

    .line 4721
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4722
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4723
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->receiveId_:Ljava/lang/Object;

    .line 4726
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4732
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->memoizedSerializedSize:I

    .line 4733
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4748
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 4737
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 4738
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 4739
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->getReceiveIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4741
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 4742
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->status_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4744
    :cond_2
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 4745
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->dialerSymmetryKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4747
    :cond_3
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 4748
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getStatus()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;
    .locals 1

    .prologue
    .line 4755
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->status_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    return-object v0
.end method

.method public hasDialerSymmetryKey()Z
    .locals 2

    .prologue
    .line 4766
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->bitField0_:I

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

.method public hasReceiveId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4773
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 4780
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4791
    iget-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->memoizedIsInitialized:B

    .line 4792
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 4793
    if-ne v0, v1, :cond_0

    .line 4801
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 4793
    goto :goto_0

    .line 4796
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->hasReceiveId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4797
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 4798
    goto :goto_0

    .line 4800
    :cond_2
    iput-byte v1, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4286
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    .locals 1

    .prologue
    .line 4806
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4286
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;
    .locals 1

    .prologue
    .line 4811
    invoke-static {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;)Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Builder;

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
    .line 4816
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

    .line 4822
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->getSerializedSize()I

    .line 4823
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4824
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->getReceiveIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4826
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4827
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->status_:Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4829
    :cond_1
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 4830
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->dialerSymmetryKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4832
    :cond_2
    return-void
.end method
