.class public final Lcom/liquable/nemo/voip/frame/Voip$Receive;
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
    name = "Receive"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    }
.end annotation


# static fields
.field public static final DIAL_ID_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$Receive;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECEIVER_PUBLIC_KEY_FIELD_NUMBER:I = 0x4

.field public static final RECEIVER_UID_FIELD_NUMBER:I = 0x3

.field public static final RECEIVE_ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Receive;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private dialId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private receiveId_:Ljava/lang/Object;

.field private receiverPublicKey_:Lcom/google/protobuf/ByteString;

.field private receiverUid_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3954
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$Receive$1;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$Receive$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->PARSER:Lcom/google/protobuf/Parser;

    .line 3987
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$Receive;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$Receive;-><init>(Z)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    .line 3988
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->initFields()V

    .line 3989
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 3997
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3980
    iput-byte v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->memoizedIsInitialized:B

    .line 3982
    iput v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->memoizedSerializedSize:I

    .line 3998
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->initFields()V

    .line 3999
    const/4 v2, 0x0

    .line 4001
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 4002
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 4003
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 4004
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 4009
    invoke-virtual {p0, p1, p2, v3}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4010
    const/4 v0, 0x1

    goto :goto_0

    .line 4006
    :sswitch_0
    const/4 v0, 0x1

    .line 4007
    goto :goto_0

    .line 4015
    :sswitch_1
    iget v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

    .line 4016
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiveId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4036
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 4037
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4041
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->makeExtensionsImmutable()V

    throw v4

    .line 4020
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

    .line 4021
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->dialId_:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4038
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 4039
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4025
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "tag":I
    :sswitch_3
    :try_start_4
    iget v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

    .line 4026
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiverUid_:Ljava/lang/Object;

    goto :goto_0

    .line 4030
    :sswitch_4
    iget v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

    .line 4031
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiverPublicKey_:Lcom/google/protobuf/ByteString;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 4041
    .end local v3    # "tag":I
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->makeExtensionsImmutable()V

    .line 4043
    return-void

    .line 4004
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 3690
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Receive;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v0, -0x1

    .line 4047
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3980
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->memoizedIsInitialized:B

    .line 3982
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->memoizedSerializedSize:I

    .line 4049
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .param p2, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$1;

    .prologue
    .line 3690
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$Receive;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 3993
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3980
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->memoizedIsInitialized:B

    .line 3982
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->memoizedSerializedSize:I

    .line 3993
    return-void
.end method

.method static synthetic access$5000(Lcom/liquable/nemo/voip/frame/Voip$Receive;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Receive;

    .prologue
    .line 3690
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiveId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/liquable/nemo/voip/frame/Voip$Receive;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Receive;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3690
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiveId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/liquable/nemo/voip/frame/Voip$Receive;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Receive;

    .prologue
    .line 3690
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->dialId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/liquable/nemo/voip/frame/Voip$Receive;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Receive;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3690
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->dialId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/liquable/nemo/voip/frame/Voip$Receive;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Receive;

    .prologue
    .line 3690
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiverUid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/liquable/nemo/voip/frame/Voip$Receive;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Receive;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3690
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiverUid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/liquable/nemo/voip/frame/Voip$Receive;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Receive;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3690
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiverPublicKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/liquable/nemo/voip/frame/Voip$Receive;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Receive;
    .param p1, "x1"    # I

    .prologue
    .line 3690
    iput p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Receive;
    .locals 1

    .prologue
    .line 3941
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4214
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiveId_:Ljava/lang/Object;

    .line 4215
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->dialId_:Ljava/lang/Object;

    .line 4216
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiverUid_:Ljava/lang/Object;

    .line 4217
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiverPublicKey_:Lcom/google/protobuf/ByteString;

    .line 4218
    return-void
.end method

.method public static newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    .locals 1

    .prologue
    .line 3945
    # invokes: Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->access$5500()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/liquable/nemo/voip/frame/Voip$Receive;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/liquable/nemo/voip/frame/Voip$Receive;

    .prologue
    .line 3949
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Receive;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3690
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Receive;
    .locals 1

    .prologue
    .line 4053
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Receive;

    return-object v0
.end method

.method public getDialId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4060
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->dialId_:Ljava/lang/Object;

    .line 4061
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4062
    check-cast v1, Ljava/lang/String;

    .line 4069
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 4064
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4065
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4066
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4067
    iput-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->dialId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4069
    goto :goto_0
.end method

.method public getDialIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4077
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->dialId_:Ljava/lang/Object;

    .line 4078
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4079
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4080
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->dialId_:Ljava/lang/Object;

    .line 4083
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$Receive;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4089
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getReceiveId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4096
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiveId_:Ljava/lang/Object;

    .line 4097
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4098
    check-cast v1, Ljava/lang/String;

    .line 4105
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 4100
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4101
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4102
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4103
    iput-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiveId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4105
    goto :goto_0
.end method

.method public getReceiveIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4113
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiveId_:Ljava/lang/Object;

    .line 4114
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4115
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4116
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiveId_:Ljava/lang/Object;

    .line 4119
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

.method public getReceiverPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 4127
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiverPublicKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getReceiverUid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4134
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiverUid_:Ljava/lang/Object;

    .line 4135
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4136
    check-cast v1, Ljava/lang/String;

    .line 4143
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 4138
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4139
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4140
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4141
    iput-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiverUid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4143
    goto :goto_0
.end method

.method public getReceiverUidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4151
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiverUid_:Ljava/lang/Object;

    .line 4152
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4153
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4154
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiverUid_:Ljava/lang/Object;

    .line 4157
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

    .line 4163
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->memoizedSerializedSize:I

    .line 4164
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4182
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 4168
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 4169
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 4170
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->getReceiveIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4172
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 4173
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->getDialIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4175
    :cond_2
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 4176
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->getReceiverUidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4178
    :cond_3
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 4179
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiverPublicKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4181
    :cond_4
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->memoizedSerializedSize:I

    move v1, v0

    .line 4182
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasDialId()Z
    .locals 2

    .prologue
    .line 4189
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

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

.method public hasReceiveId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4196
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReceiverPublicKey()Z
    .locals 2

    .prologue
    .line 4203
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

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

.method public hasReceiverUid()Z
    .locals 2

    .prologue
    .line 4210
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4222
    iget-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->memoizedIsInitialized:B

    .line 4223
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 4224
    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 4240
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 4224
    goto :goto_0

    .line 4227
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->hasReceiveId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4228
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->memoizedIsInitialized:B

    goto :goto_1

    .line 4231
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->hasDialId()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4232
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->memoizedIsInitialized:B

    goto :goto_1

    .line 4235
    :cond_3
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->hasReceiverUid()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4236
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->memoizedIsInitialized:B

    goto :goto_1

    .line 4239
    :cond_4
    iput-byte v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->memoizedIsInitialized:B

    move v2, v1

    .line 4240
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3690
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    .locals 1

    .prologue
    .line 4245
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3690
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    .locals 1

    .prologue
    .line 4250
    invoke-static {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$Receive;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

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
    .line 4255
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

    .line 4261
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->getSerializedSize()I

    .line 4262
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4263
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->getReceiveIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4265
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4266
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->getDialIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4268
    :cond_1
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 4269
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->getReceiverUidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4271
    :cond_2
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 4272
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiverPublicKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4274
    :cond_3
    return-void
.end method
