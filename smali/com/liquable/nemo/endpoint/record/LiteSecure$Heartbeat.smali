.class public final Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;
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
    name = "Heartbeat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;
    }
.end annotation


# static fields
.field public static final HEARTBEAT_ID_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private heartbeatId_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3061
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$1;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->PARSER:Lcom/google/protobuf/Parser;

    .line 3076
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;-><init>(Z)V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    .line 3077
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->initFields()V

    .line 3078
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

    .line 3090
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3083
    iput-byte v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->memoizedIsInitialized:B

    .line 3084
    iput v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->memoizedSerializedSize:I

    .line 3091
    invoke-direct {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->initFields()V

    .line 3092
    const/4 v2, 0x0

    .line 3094
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 3095
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 3096
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3097
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3102
    invoke-virtual {p0, p1, p2, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3103
    const/4 v0, 0x1

    goto :goto_0

    .line 3099
    :sswitch_0
    const/4 v0, 0x1

    .line 3100
    goto :goto_0

    .line 3108
    :sswitch_1
    iget v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->bitField0_:I

    .line 3109
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->heartbeatId_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3114
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 3115
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3119
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->makeExtensionsImmutable()V

    throw v4

    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->makeExtensionsImmutable()V

    .line 3121
    return-void

    .line 3116
    :catch_1
    move-exception v1

    .line 3117
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3097
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 2932
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v0, -0x1

    .line 3125
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3083
    iput-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->memoizedIsInitialized:B

    .line 3084
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->memoizedSerializedSize:I

    .line 3127
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/endpoint/record/LiteSecure$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .param p2, "x1"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$1;

    .prologue
    .line 2932
    invoke-direct {p0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 3086
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3083
    iput-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->memoizedIsInitialized:B

    .line 3084
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->memoizedSerializedSize:I

    .line 3086
    return-void
.end method

.method static synthetic access$4002(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;
    .param p1, "x1"    # I

    .prologue
    .line 2932
    iput p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->heartbeatId_:I

    return p1
.end method

.method static synthetic access$4102(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;
    .param p1, "x1"    # I

    .prologue
    .line 2932
    iput p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;
    .locals 1

    .prologue
    .line 3048
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3169
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->heartbeatId_:I

    .line 3170
    return-void
.end method

.method public static newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;
    .locals 1

    .prologue
    .line 3052
    # invokes: Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->access$4200()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    .prologue
    .line 3056
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2932
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;
    .locals 1

    .prologue
    .line 3131
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    return-object v0
.end method

.method public getHeartbeatId()I
    .locals 1

    .prologue
    .line 3138
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->heartbeatId_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3143
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3148
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->memoizedSerializedSize:I

    .line 3149
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 3158
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 3153
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 3154
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 3155
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->heartbeatId_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3157
    :cond_1
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->memoizedSerializedSize:I

    move v1, v0

    .line 3158
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasHeartbeatId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3165
    iget v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->bitField0_:I

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

    .line 3174
    iget-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->memoizedIsInitialized:B

    .line 3175
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 3176
    if-ne v0, v1, :cond_0

    .line 3184
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 3176
    goto :goto_0

    .line 3179
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->hasHeartbeatId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3180
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->memoizedIsInitialized:B

    move v1, v2

    .line 3181
    goto :goto_0

    .line 3183
    :cond_2
    iput-byte v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2932
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->newBuilderForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;
    .locals 1

    .prologue
    .line 3189
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2932
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;
    .locals 1

    .prologue
    .line 3194
    invoke-static {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

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
    .line 3199
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3205
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->getSerializedSize()I

    .line 3206
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3207
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->heartbeatId_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3209
    :cond_0
    return-void
.end method
