.class public final Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;
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
    name = "AuthenticateResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
    }
.end annotation


# static fields
.field public static final NONCE_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVER_NEMO_VERSION_FIELD_NUMBER:I = 0x2

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private nonce_:J

.field private serverNemoVersion_:Ljava/lang/Object;

.field private sessionId_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1446
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$1;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 1464
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;-><init>(Z)V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    .line 1465
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->initFields()V

    .line 1466
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

    .line 1485
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1468
    iput-byte v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->memoizedIsInitialized:B

    .line 1470
    iput v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->memoizedSerializedSize:I

    .line 1486
    invoke-direct {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->initFields()V

    .line 1487
    const/4 v2, 0x0

    .line 1489
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 1490
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1491
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1492
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1497
    invoke-virtual {p0, p1, p2, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1498
    const/4 v0, 0x1

    goto :goto_0

    .line 1494
    :sswitch_0
    const/4 v0, 0x1

    .line 1495
    goto :goto_0

    .line 1503
    :sswitch_1
    iget v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->bitField0_:I

    .line 1504
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->sessionId_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1519
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 1520
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1524
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->makeExtensionsImmutable()V

    throw v4

    .line 1508
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->bitField0_:I

    .line 1509
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->serverNemoVersion_:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1521
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 1522
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

    .line 1513
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "tag":I
    :sswitch_3
    :try_start_4
    iget v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->bitField0_:I

    .line 1514
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->nonce_:J
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1524
    .end local v3    # "tag":I
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->makeExtensionsImmutable()V

    .line 1526
    return-void

    .line 1492
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 1246
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v0, -0x1

    .line 1530
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1468
    iput-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->memoizedIsInitialized:B

    .line 1470
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->memoizedSerializedSize:I

    .line 1532
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/endpoint/record/LiteSecure$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .param p2, "x1"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$1;

    .prologue
    .line 1246
    invoke-direct {p0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 1481
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1468
    iput-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->memoizedIsInitialized:B

    .line 1470
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->memoizedSerializedSize:I

    .line 1481
    return-void
.end method

.method static synthetic access$1702(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;J)J
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;
    .param p1, "x1"    # J

    .prologue
    .line 1246
    iput-wide p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->sessionId_:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->serverNemoVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->serverNemoVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;J)J
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;
    .param p1, "x1"    # J

    .prologue
    .line 1246
    iput-wide p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->nonce_:J

    return-wide p1
.end method

.method static synthetic access$2002(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;
    .param p1, "x1"    # I

    .prologue
    .line 1246
    iput p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;
    .locals 1

    .prologue
    .line 1434
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 1633
    iput-wide v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->sessionId_:J

    .line 1634
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->serverNemoVersion_:Ljava/lang/Object;

    .line 1635
    iput-wide v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->nonce_:J

    .line 1636
    return-void
.end method

.method public static newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
    .locals 1

    .prologue
    .line 1438
    # invokes: Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->access$2100()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    .prologue
    .line 1442
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1246
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;
    .locals 1

    .prologue
    .line 1536
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .prologue
    .line 1543
    iget-wide v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->nonce_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1548
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1553
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->memoizedSerializedSize:I

    .line 1554
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1570
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 1558
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 1559
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 1560
    iget-wide v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->sessionId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1562
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 1564
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->getServerNemoVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 1563
    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1566
    :cond_2
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 1567
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->nonce_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1569
    :cond_3
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 1570
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getServerNemoVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1577
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->serverNemoVersion_:Ljava/lang/Object;

    .line 1578
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1579
    check-cast v1, Ljava/lang/String;

    .line 1586
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1581
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1582
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1583
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1584
    iput-object v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->serverNemoVersion_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1586
    goto :goto_0
.end method

.method public getServerNemoVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1594
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->serverNemoVersion_:Ljava/lang/Object;

    .line 1595
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1596
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1597
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->serverNemoVersion_:Ljava/lang/Object;

    .line 1600
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

.method public getSessionId()J
    .locals 2

    .prologue
    .line 1608
    iget-wide v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->sessionId_:J

    return-wide v0
.end method

.method public hasNonce()Z
    .locals 2

    .prologue
    .line 1615
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->bitField0_:I

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

.method public hasServerNemoVersion()Z
    .locals 2

    .prologue
    .line 1622
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->bitField0_:I

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

.method public hasSessionId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1629
    iget v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->bitField0_:I

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

    .line 1640
    iget-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->memoizedIsInitialized:B

    .line 1641
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 1642
    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 1658
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 1642
    goto :goto_0

    .line 1645
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->hasSessionId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1646
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->memoizedIsInitialized:B

    goto :goto_1

    .line 1649
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->hasServerNemoVersion()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1650
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->memoizedIsInitialized:B

    goto :goto_1

    .line 1653
    :cond_3
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->hasNonce()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1654
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->memoizedIsInitialized:B

    goto :goto_1

    .line 1657
    :cond_4
    iput-byte v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->memoizedIsInitialized:B

    move v2, v1

    .line 1658
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1246
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->newBuilderForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
    .locals 1

    .prologue
    .line 1663
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1246
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
    .locals 1

    .prologue
    .line 1668
    invoke-static {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

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
    .line 1673
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1679
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->getSerializedSize()I

    .line 1680
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 1681
    iget-wide v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->sessionId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeSInt64(IJ)V

    .line 1683
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 1684
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->getServerNemoVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1686
    :cond_1
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1687
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->nonce_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeSInt64(IJ)V

    .line 1689
    :cond_2
    return-void
.end method
