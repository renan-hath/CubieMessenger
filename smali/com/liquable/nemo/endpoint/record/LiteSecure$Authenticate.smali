.class public final Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;
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
    name = "Authenticate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;,
        Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_NEMO_VERSION_FIELD_NUMBER:I = 0x2

.field public static final CLIENT_PLATFORM_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1

.field public static final UID_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientNemoVersion_:Ljava/lang/Object;

.field private clientPlatform_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private sessionId_:J

.field private uid_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 313
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$1;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->PARSER:Lcom/google/protobuf/Parser;

    .line 347
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;-><init>(Z)V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    .line 348
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->initFields()V

    .line 349
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

    .line 357
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 340
    iput-byte v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->memoizedIsInitialized:B

    .line 342
    iput v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->memoizedSerializedSize:I

    .line 358
    invoke-direct {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->initFields()V

    .line 359
    const/4 v2, 0x0

    .line 361
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 362
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 363
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 364
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 369
    invoke-virtual {p0, p1, p2, v4}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 370
    const/4 v0, 0x1

    goto :goto_0

    .line 366
    :sswitch_0
    const/4 v0, 0x1

    .line 367
    goto :goto_0

    .line 375
    :sswitch_1
    iget v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

    .line 376
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->sessionId_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 400
    .end local v4    # "tag":I
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->makeExtensionsImmutable()V

    throw v6

    .line 380
    .restart local v4    # "tag":I
    :sswitch_2
    :try_start_2
    iget v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

    .line 381
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->clientNemoVersion_:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 402
    .end local v4    # "tag":I
    :catch_1
    move-exception v1

    .line 403
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

    .line 385
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "tag":I
    :sswitch_3
    :try_start_4
    iget v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

    .line 386
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->uid_:Ljava/lang/Object;

    goto :goto_0

    .line 390
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 391
    .local v3, "rawValue":I
    invoke-static {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;->valueOf(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    move-result-object v5

    .line 392
    .local v5, "value":Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;
    if-eqz v5, :cond_0

    .line 393
    iget v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

    .line 394
    iput-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->clientPlatform_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 405
    .end local v3    # "rawValue":I
    .end local v4    # "tag":I
    .end local v5    # "value":Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->makeExtensionsImmutable()V

    .line 407
    return-void

    .line 364
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v0, -0x1

    .line 411
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 340
    iput-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->memoizedIsInitialized:B

    .line 342
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->memoizedSerializedSize:I

    .line 413
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/endpoint/record/LiteSecure$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .param p2, "x1"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 353
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 340
    iput-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->memoizedIsInitialized:B

    .line 342
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->memoizedSerializedSize:I

    .line 353
    return-void
.end method

.method static synthetic access$102(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;J)J
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;
    .param p1, "x1"    # J

    .prologue
    .line 11
    iput-wide p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->sessionId_:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->clientNemoVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->clientNemoVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$300(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->uid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->uid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;
    .param p1, "x1"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->clientPlatform_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    return-object p1
.end method

.method static synthetic access$502(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 556
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->sessionId_:J

    .line 557
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->clientNemoVersion_:Ljava/lang/Object;

    .line 558
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->uid_:Ljava/lang/Object;

    .line 559
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;->ANDROID:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->clientPlatform_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    .line 560
    return-void
.end method

.method public static newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    .locals 1

    .prologue
    .line 304
    # invokes: Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->access$600()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    .prologue
    .line 308
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClientNemoVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 419
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->clientNemoVersion_:Ljava/lang/Object;

    .line 420
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 421
    check-cast v1, Ljava/lang/String;

    .line 428
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 423
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 424
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 426
    iput-object v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->clientNemoVersion_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 428
    goto :goto_0
.end method

.method public getClientNemoVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 436
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->clientNemoVersion_:Ljava/lang/Object;

    .line 437
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 438
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 439
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->clientNemoVersion_:Ljava/lang/Object;

    .line 442
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

.method public getClientPlatform()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->clientPlatform_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;
    .locals 1

    .prologue
    .line 455
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 465
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->memoizedSerializedSize:I

    .line 466
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 486
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 470
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 471
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 472
    iget-wide v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->sessionId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 474
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 476
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->getClientNemoVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 475
    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 478
    :cond_2
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 479
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->getUidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 481
    :cond_3
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 482
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->clientPlatform_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    .line 483
    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;->getNumber()I

    move-result v2

    .line 482
    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 485
    :cond_4
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->memoizedSerializedSize:I

    move v1, v0

    .line 486
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getSessionId()J
    .locals 2

    .prologue
    .line 493
    iget-wide v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->sessionId_:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 500
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->uid_:Ljava/lang/Object;

    .line 501
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 502
    check-cast v1, Ljava/lang/String;

    .line 509
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 504
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 505
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 507
    iput-object v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->uid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 509
    goto :goto_0
.end method

.method public getUidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 517
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->uid_:Ljava/lang/Object;

    .line 518
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 519
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 520
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->uid_:Ljava/lang/Object;

    .line 523
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

.method public hasClientNemoVersion()Z
    .locals 2

    .prologue
    .line 531
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

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

.method public hasClientPlatform()Z
    .locals 2

    .prologue
    .line 538
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

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

.method public hasSessionId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 545
    iget v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUid()Z
    .locals 2

    .prologue
    .line 552
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

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

    .line 564
    iget-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->memoizedIsInitialized:B

    .line 565
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 566
    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 582
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 566
    goto :goto_0

    .line 569
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->hasSessionId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 570
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->memoizedIsInitialized:B

    goto :goto_1

    .line 573
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->hasClientNemoVersion()Z

    move-result v3

    if-nez v3, :cond_3

    .line 574
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->memoizedIsInitialized:B

    goto :goto_1

    .line 577
    :cond_3
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->hasUid()Z

    move-result v3

    if-nez v3, :cond_4

    .line 578
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->memoizedIsInitialized:B

    goto :goto_1

    .line 581
    :cond_4
    iput-byte v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->memoizedIsInitialized:B

    move v2, v1

    .line 582
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->newBuilderForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    .locals 1

    .prologue
    .line 587
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    .locals 1

    .prologue
    .line 592
    invoke-static {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

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
    .line 597
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 603
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->getSerializedSize()I

    .line 604
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 605
    iget-wide v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->sessionId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeSInt64(IJ)V

    .line 607
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 608
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->getClientNemoVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 610
    :cond_1
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 611
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->getUidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 613
    :cond_2
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 614
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->clientPlatform_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;->getNumber()I

    move-result v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 616
    :cond_3
    return-void
.end method
