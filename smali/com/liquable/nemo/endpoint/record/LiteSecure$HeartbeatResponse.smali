.class public final Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;
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
    name = "HeartbeatResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;
    }
.end annotation


# static fields
.field public static final HEARTBEAT_ID_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVER_TIME_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private heartbeatId_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private serverTime_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3373
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$1;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 3393
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;-><init>(Z)V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    .line 3394
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->initFields()V

    .line 3395
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

    .line 3407
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3388
    iput v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->memoizedSerializedSize:I

    .line 3401
    iput-byte v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->memoizedIsInitialized:B

    .line 3408
    invoke-direct {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->initFields()V

    .line 3409
    const/4 v2, 0x0

    .line 3411
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 3412
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 3413
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3414
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3419
    invoke-virtual {p0, p1, p2, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3420
    const/4 v0, 0x1

    goto :goto_0

    .line 3416
    :sswitch_0
    const/4 v0, 0x1

    .line 3417
    goto :goto_0

    .line 3425
    :sswitch_1
    iget v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->bitField0_:I

    .line 3426
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->heartbeatId_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3436
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 3437
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3441
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->makeExtensionsImmutable()V

    throw v4

    .line 3430
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->bitField0_:I

    .line 3431
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->serverTime_:J
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3438
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 3439
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

    .line 3441
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->makeExtensionsImmutable()V

    .line 3443
    return-void

    .line 3414
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 3217
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v0, -0x1

    .line 3447
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3388
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->memoizedSerializedSize:I

    .line 3401
    iput-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->memoizedIsInitialized:B

    .line 3449
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/endpoint/record/LiteSecure$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .param p2, "x1"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$1;

    .prologue
    .line 3217
    invoke-direct {p0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 3403
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3388
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->memoizedSerializedSize:I

    .line 3401
    iput-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->memoizedIsInitialized:B

    .line 3403
    return-void
.end method

.method static synthetic access$4502(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;
    .param p1, "x1"    # I

    .prologue
    .line 3217
    iput p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->heartbeatId_:I

    return p1
.end method

.method static synthetic access$4602(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;J)J
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;
    .param p1, "x1"    # J

    .prologue
    .line 3217
    iput-wide p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->serverTime_:J

    return-wide p1
.end method

.method static synthetic access$4702(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;
    .param p1, "x1"    # I

    .prologue
    .line 3217
    iput p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;
    .locals 1

    .prologue
    .line 3360
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 3508
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->heartbeatId_:I

    .line 3509
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->serverTime_:J

    .line 3510
    return-void
.end method

.method public static newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;
    .locals 1

    .prologue
    .line 3364
    # invokes: Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->access$4800()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    .prologue
    .line 3368
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3217
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;
    .locals 1

    .prologue
    .line 3453
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    return-object v0
.end method

.method public getHeartbeatId()I
    .locals 1

    .prologue
    .line 3460
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->heartbeatId_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3465
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3470
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->memoizedSerializedSize:I

    .line 3471
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 3483
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 3475
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 3476
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 3477
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->heartbeatId_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3479
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 3480
    iget-wide v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->serverTime_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 3482
    :cond_2
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 3483
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getServerTime()J
    .locals 2

    .prologue
    .line 3490
    iget-wide v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->serverTime_:J

    return-wide v0
.end method

.method public hasHeartbeatId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3497
    iget v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServerTime()Z
    .locals 2

    .prologue
    .line 3504
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->bitField0_:I

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3514
    iget-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->memoizedIsInitialized:B

    .line 3515
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 3516
    if-ne v0, v1, :cond_0

    .line 3528
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 3516
    goto :goto_0

    .line 3519
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->hasHeartbeatId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3520
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 3521
    goto :goto_0

    .line 3523
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->hasServerTime()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3524
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 3525
    goto :goto_0

    .line 3527
    :cond_3
    iput-byte v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3217
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->newBuilderForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;
    .locals 1

    .prologue
    .line 3533
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3217
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;
    .locals 1

    .prologue
    .line 3538
    invoke-static {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

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
    .line 3543
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

    .line 3549
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->getSerializedSize()I

    .line 3550
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3551
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->heartbeatId_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3553
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3554
    iget-wide v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->serverTime_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3556
    :cond_1
    return-void
.end method
