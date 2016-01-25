.class public final Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
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
    name = "Record"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    }
.end annotation


# static fields
.field public static final BLOCK_CIPHER_FIELD_NUMBER:I = 0x3

.field public static final COMMAND_FIELD_NUMBER:I = 0x2

.field public static final MAC_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTOCOL_VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

.field private command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

.field private mac_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private protocolVersion_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3848
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$1;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->PARSER:Lcom/google/protobuf/Parser;

    .line 3876
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;-><init>(Z)V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    .line 3877
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->initFields()V

    .line 3878
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

    .line 3892
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3869
    iput-byte v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->memoizedIsInitialized:B

    .line 3871
    iput v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->memoizedSerializedSize:I

    .line 3893
    invoke-direct {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->initFields()V

    .line 3894
    const/4 v2, 0x0

    .line 3896
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 3897
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 3898
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 3899
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 3904
    invoke-virtual {p0, p1, p2, v4}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3905
    const/4 v0, 0x1

    goto :goto_0

    .line 3901
    :sswitch_0
    const/4 v0, 0x1

    .line 3902
    goto :goto_0

    .line 3910
    :sswitch_1
    iget v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

    .line 3911
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->protocolVersion_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3949
    .end local v4    # "tag":I
    :catch_0
    move-exception v1

    .line 3950
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3954
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->makeExtensionsImmutable()V

    throw v5

    .line 3915
    .restart local v4    # "tag":I
    :sswitch_2
    const/4 v3, 0x0

    .line 3916
    .local v3, "subBuilder":Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    :try_start_2
    iget v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 3917
    iget-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    invoke-virtual {v5}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v3

    .line 3919
    :cond_1
    sget-object v5, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    iput-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    .line 3921
    if-eqz v3, :cond_2

    .line 3922
    iget-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    .line 3923
    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    .line 3925
    :cond_2
    iget v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3951
    .end local v3    # "subBuilder":Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .end local v4    # "tag":I
    :catch_1
    move-exception v1

    .line 3952
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

    .line 3929
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "tag":I
    :sswitch_3
    const/4 v3, 0x0

    .line 3930
    .local v3, "subBuilder":Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;
    :try_start_4
    iget v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 3931
    iget-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    invoke-virtual {v5}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v3

    .line 3933
    :cond_3
    sget-object v5, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    iput-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    .line 3935
    if-eqz v3, :cond_4

    .line 3936
    iget-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    .line 3937
    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    .line 3939
    :cond_4
    iget v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

    goto/16 :goto_0

    .line 3943
    .end local v3    # "subBuilder":Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;
    :sswitch_4
    iget v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

    .line 3944
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->mac_:Lcom/google/protobuf/ByteString;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 3954
    .end local v4    # "tag":I
    :cond_5
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->makeExtensionsImmutable()V

    .line 3956
    return-void

    .line 3899
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 3564
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v0, -0x1

    .line 3960
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3869
    iput-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->memoizedIsInitialized:B

    .line 3871
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->memoizedSerializedSize:I

    .line 3962
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/endpoint/record/LiteSecure$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .param p2, "x1"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$1;

    .prologue
    .line 3564
    invoke-direct {p0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 3888
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3869
    iput-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->memoizedIsInitialized:B

    .line 3871
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->memoizedSerializedSize:I

    .line 3888
    return-void
.end method

.method static synthetic access$5102(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .param p1, "x1"    # I

    .prologue
    .line 3564
    iput p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->protocolVersion_:I

    return p1
.end method

.method static synthetic access$5202(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .param p1, "x1"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    .prologue
    .line 3564
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .param p1, "x1"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    .prologue
    .line 3564
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3564
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->mac_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .param p1, "x1"    # I

    .prologue
    .line 3564
    iput p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .locals 1

    .prologue
    .line 3824
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4065
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->protocolVersion_:I

    .line 4066
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    .line 4067
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    .line 4068
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->mac_:Lcom/google/protobuf/ByteString;

    .line 4069
    return-void
.end method

.method public static newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    .locals 1

    .prologue
    .line 3828
    # invokes: Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->access$5600()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    .prologue
    .line 3832
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3837
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3843
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    return-object v0
.end method


# virtual methods
.method public getBlockCipher()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
    .locals 1

    .prologue
    .line 3968
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    return-object v0
.end method

.method public getCommand()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    .locals 1

    .prologue
    .line 3975
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3564
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .locals 1

    .prologue
    .line 3980
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    return-object v0
.end method

.method public getMac()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 3992
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->mac_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3997
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .prologue
    .line 4004
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->protocolVersion_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4009
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->memoizedSerializedSize:I

    .line 4010
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4028
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 4014
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 4015
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 4016
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->protocolVersion_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4018
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 4019
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4021
    :cond_2
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 4022
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4024
    :cond_3
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 4025
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->mac_:Lcom/google/protobuf/ByteString;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4027
    :cond_4
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->memoizedSerializedSize:I

    move v1, v0

    .line 4028
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasBlockCipher()Z
    .locals 2

    .prologue
    .line 4035
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

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

.method public hasCommand()Z
    .locals 2

    .prologue
    .line 4042
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

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

.method public hasMac()Z
    .locals 2

    .prologue
    .line 4054
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

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

.method public hasProtocolVersion()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4061
    iget v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4073
    iget-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->memoizedIsInitialized:B

    .line 4074
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 4075
    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 4095
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 4075
    goto :goto_0

    .line 4078
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->hasProtocolVersion()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4079
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->memoizedIsInitialized:B

    goto :goto_1

    .line 4082
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->hasCommand()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4083
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getCommand()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4084
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->memoizedIsInitialized:B

    goto :goto_1

    .line 4088
    :cond_3
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->hasBlockCipher()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4089
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getBlockCipher()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4090
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->memoizedIsInitialized:B

    goto :goto_1

    .line 4094
    :cond_4
    iput-byte v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->memoizedIsInitialized:B

    move v2, v1

    .line 4095
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3564
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->newBuilderForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    .locals 1

    .prologue
    .line 4100
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3564
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    .locals 1

    .prologue
    .line 4105
    invoke-static {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

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
    .line 4110
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

    .line 4116
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getSerializedSize()I

    .line 4117
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4118
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->protocolVersion_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4120
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4121
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4123
    :cond_1
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 4124
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4126
    :cond_2
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 4127
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->mac_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4129
    :cond_3
    return-void
.end method
