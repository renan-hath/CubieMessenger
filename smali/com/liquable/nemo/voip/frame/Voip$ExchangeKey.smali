.class public final Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
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
    name = "ExchangeKey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;,
        Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;
    }
.end annotation


# static fields
.field public static final KEY_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private key_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2252
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$1;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->PARSER:Lcom/google/protobuf/Parser;

    .line 2269
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;-><init>(Z)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    .line 2270
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->initFields()V

    .line 2271
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

    .line 2286
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2264
    iput v6, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->memoizedSerializedSize:I

    .line 2280
    iput-byte v6, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->memoizedIsInitialized:B

    .line 2287
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->initFields()V

    .line 2288
    const/4 v2, 0x0

    .line 2290
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 2291
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 2292
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 2293
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 2298
    invoke-virtual {p0, p1, p2, v4}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2299
    const/4 v0, 0x1

    goto :goto_0

    .line 2295
    :sswitch_0
    const/4 v0, 0x1

    .line 2296
    goto :goto_0

    .line 2304
    :sswitch_1
    iget v6, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->bitField0_:I

    .line 2305
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->key_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2319
    .end local v4    # "tag":I
    :catch_0
    move-exception v1

    .line 2320
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2324
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->makeExtensionsImmutable()V

    throw v6

    .line 2309
    .restart local v4    # "tag":I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 2310
    .local v3, "rawValue":I
    invoke-static {v3}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->valueOf(I)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    move-result-object v5

    .line 2311
    .local v5, "value":Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;
    if-eqz v5, :cond_0

    .line 2312
    iget v6, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->bitField0_:I

    .line 2313
    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->type_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2321
    .end local v3    # "rawValue":I
    .end local v4    # "tag":I
    .end local v5    # "value":Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;
    :catch_1
    move-exception v1

    .line 2322
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

    .line 2324
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->makeExtensionsImmutable()V

    .line 2326
    return-void

    .line 2293
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 2020
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v0, -0x1

    .line 2330
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2264
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->memoizedSerializedSize:I

    .line 2280
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->memoizedIsInitialized:B

    .line 2332
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .param p2, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$1;

    .prologue
    .line 2020
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 2282
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2264
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->memoizedSerializedSize:I

    .line 2280
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->memoizedIsInitialized:B

    .line 2282
    return-void
.end method

.method static synthetic access$2602(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2020
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->key_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
    .param p1, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    .prologue
    .line 2020
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->type_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
    .param p1, "x1"    # I

    .prologue
    .line 2020
    iput p1, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
    .locals 1

    .prologue
    .line 2239
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2391
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->key_:Lcom/google/protobuf/ByteString;

    .line 2392
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->RECEIVER_PUBLIC_KEY:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->type_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    .line 2393
    return-void
.end method

.method public static newBuilder()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;
    .locals 1

    .prologue
    .line 2243
    # invokes: Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->access$2900()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    .prologue
    .line 2247
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2020
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
    .locals 1

    .prologue
    .line 2336
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    return-object v0
.end method

.method public getKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->key_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2348
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2353
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->memoizedSerializedSize:I

    .line 2354
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2366
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 2358
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 2359
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 2360
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->key_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2362
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 2363
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->type_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2365
    :cond_2
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->memoizedSerializedSize:I

    move v1, v0

    .line 2366
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getType()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;
    .locals 1

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->type_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    return-object v0
.end method

.method public hasKey()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2380
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    .line 2387
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->bitField0_:I

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

    .line 2397
    iget-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->memoizedIsInitialized:B

    .line 2398
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 2399
    if-ne v0, v1, :cond_0

    .line 2407
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 2399
    goto :goto_0

    .line 2402
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->hasKey()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2403
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->memoizedIsInitialized:B

    move v1, v2

    .line 2404
    goto :goto_0

    .line 2406
    :cond_2
    iput-byte v1, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2020
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;
    .locals 1

    .prologue
    .line 2412
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2020
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;
    .locals 1

    .prologue
    .line 2417
    invoke-static {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

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
    .line 2422
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

    .line 2428
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->getSerializedSize()I

    .line 2429
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2430
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->key_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2432
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2433
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->type_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2435
    :cond_1
    return-void
.end method
