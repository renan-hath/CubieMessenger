.class public final Lcom/liquable/nemo/voip/frame/Voip$Ping;
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
    name = "Ping"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    }
.end annotation


# static fields
.field public static final DIAL_ID_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$Ping;",
            ">;"
        }
    .end annotation
.end field

.field public static final PING_ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Ping;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private dialId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pingId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3114
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$Ping$1;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$Ping$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->PARSER:Lcom/google/protobuf/Parser;

    .line 3134
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$Ping;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$Ping;-><init>(Z)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .line 3135
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->initFields()V

    .line 3136
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

    .line 3149
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3129
    iput v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->memoizedSerializedSize:I

    .line 3143
    iput-byte v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->memoizedIsInitialized:B

    .line 3150
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->initFields()V

    .line 3151
    const/4 v2, 0x0

    .line 3153
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 3154
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 3155
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3156
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3161
    invoke-virtual {p0, p1, p2, v3}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3162
    const/4 v0, 0x1

    goto :goto_0

    .line 3158
    :sswitch_0
    const/4 v0, 0x1

    .line 3159
    goto :goto_0

    .line 3167
    :sswitch_1
    iget v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->bitField0_:I

    .line 3168
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->pingId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3178
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 3179
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3183
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->makeExtensionsImmutable()V

    throw v4

    .line 3172
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->bitField0_:I

    .line 3173
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->dialId_:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3180
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 3181
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

    .line 3183
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->makeExtensionsImmutable()V

    .line 3185
    return-void

    .line 3156
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 2919
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Ping;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v0, -0x1

    .line 3189
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3129
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->memoizedSerializedSize:I

    .line 3143
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->memoizedIsInitialized:B

    .line 3191
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .param p2, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$1;

    .prologue
    .line 2919
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$Ping;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 3145
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3129
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->memoizedSerializedSize:I

    .line 3143
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->memoizedIsInitialized:B

    .line 3145
    return-void
.end method

.method static synthetic access$3900(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->pingId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/liquable/nemo/voip/frame/Voip$Ping;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Ping;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2919
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->pingId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->dialId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/liquable/nemo/voip/frame/Voip$Ping;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Ping;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2919
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->dialId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/liquable/nemo/voip/frame/Voip$Ping;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Ping;
    .param p1, "x1"    # I

    .prologue
    .line 2919
    iput p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Ping;
    .locals 1

    .prologue
    .line 3101
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3298
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->pingId_:Ljava/lang/Object;

    .line 3299
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->dialId_:Ljava/lang/Object;

    .line 3300
    return-void
.end method

.method public static newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    .locals 1

    .prologue
    .line 3105
    # invokes: Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->access$4200()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .prologue
    .line 3109
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2919
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Ping;
    .locals 1

    .prologue
    .line 3195
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    return-object v0
.end method

.method public getDialId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3202
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->dialId_:Ljava/lang/Object;

    .line 3203
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3204
    check-cast v1, Ljava/lang/String;

    .line 3211
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3206
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3207
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3208
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3209
    iput-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->dialId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3211
    goto :goto_0
.end method

.method public getDialIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3219
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->dialId_:Ljava/lang/Object;

    .line 3220
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3221
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3222
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->dialId_:Ljava/lang/Object;

    .line 3225
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
            "Lcom/liquable/nemo/voip/frame/Voip$Ping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3231
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPingId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3238
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->pingId_:Ljava/lang/Object;

    .line 3239
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3240
    check-cast v1, Ljava/lang/String;

    .line 3247
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 3242
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3243
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3244
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3245
    iput-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->pingId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3247
    goto :goto_0
.end method

.method public getPingIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3255
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->pingId_:Ljava/lang/Object;

    .line 3256
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3257
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3258
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->pingId_:Ljava/lang/Object;

    .line 3261
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
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3267
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->memoizedSerializedSize:I

    .line 3268
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 3280
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 3272
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 3273
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 3274
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->getPingIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3276
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 3277
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->getDialIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3279
    :cond_2
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->memoizedSerializedSize:I

    move v1, v0

    .line 3280
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasDialId()Z
    .locals 2

    .prologue
    .line 3287
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->bitField0_:I

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

.method public hasPingId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3294
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->bitField0_:I

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

    .line 3304
    iget-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->memoizedIsInitialized:B

    .line 3305
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 3306
    if-ne v0, v1, :cond_0

    .line 3318
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 3306
    goto :goto_0

    .line 3309
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->hasPingId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3310
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->memoizedIsInitialized:B

    move v1, v2

    .line 3311
    goto :goto_0

    .line 3313
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->hasDialId()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3314
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->memoizedIsInitialized:B

    move v1, v2

    .line 3315
    goto :goto_0

    .line 3317
    :cond_3
    iput-byte v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2919
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    .locals 1

    .prologue
    .line 3323
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2919
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    .locals 1

    .prologue
    .line 3328
    invoke-static {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

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
    .line 3333
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

    .line 3339
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->getSerializedSize()I

    .line 3340
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3341
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->getPingIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3343
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3344
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->getDialIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3346
    :cond_1
    return-void
.end method
