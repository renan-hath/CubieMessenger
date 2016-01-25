.class public final Lcom/liquable/nemo/voip/frame/Voip$Pong;
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
    name = "Pong"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$Pong;",
            ">;"
        }
    .end annotation
.end field

.field public static final PING_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Pong;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3517
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$Pong$1;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$Pong$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->PARSER:Lcom/google/protobuf/Parser;

    .line 3532
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$Pong;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$Pong;-><init>(Z)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    .line 3533
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->initFields()V

    .line 3534
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

    .line 3546
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3539
    iput-byte v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->memoizedIsInitialized:B

    .line 3540
    iput v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->memoizedSerializedSize:I

    .line 3547
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->initFields()V

    .line 3548
    const/4 v2, 0x0

    .line 3550
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 3551
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 3552
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 3553
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 3558
    invoke-virtual {p0, p1, p2, v4}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3559
    const/4 v0, 0x1

    goto :goto_0

    .line 3555
    :sswitch_0
    const/4 v0, 0x1

    .line 3556
    goto :goto_0

    .line 3564
    :sswitch_1
    const/4 v3, 0x0

    .line 3565
    .local v3, "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 3566
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    invoke-virtual {v5}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v3

    .line 3568
    :cond_1
    sget-object v5, Lcom/liquable/nemo/voip/frame/Voip$Ping;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/voip/frame/Voip$Ping;

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .line 3570
    if-eqz v3, :cond_2

    .line 3571
    iget-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    .line 3572
    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v5

    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .line 3574
    :cond_2
    iget v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3579
    .end local v3    # "subBuilder":Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    .end local v4    # "tag":I
    :catch_0
    move-exception v1

    .line 3580
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3584
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->makeExtensionsImmutable()V

    throw v5

    :cond_3
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->makeExtensionsImmutable()V

    .line 3586
    return-void

    .line 3581
    :catch_1
    move-exception v1

    .line 3582
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3553
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 3358
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Pong;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v0, -0x1

    .line 3590
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3539
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->memoizedIsInitialized:B

    .line 3540
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->memoizedSerializedSize:I

    .line 3592
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .param p2, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$1;

    .prologue
    .line 3358
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$Pong;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 3542
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3539
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->memoizedIsInitialized:B

    .line 3540
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->memoizedSerializedSize:I

    .line 3542
    return-void
.end method

.method static synthetic access$4502(Lcom/liquable/nemo/voip/frame/Voip$Pong;Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Ping;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Pong;
    .param p1, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .prologue
    .line 3358
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/liquable/nemo/voip/frame/Voip$Pong;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Pong;
    .param p1, "x1"    # I

    .prologue
    .line 3358
    iput p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Pong;
    .locals 1

    .prologue
    .line 3504
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3634
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .line 3635
    return-void
.end method

.method public static newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;
    .locals 1

    .prologue
    .line 3508
    # invokes: Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->access$4700()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/liquable/nemo/voip/frame/Voip$Pong;)Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/liquable/nemo/voip/frame/Voip$Pong;

    .prologue
    .line 3512
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Pong;)Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Pong;
    .locals 1

    .prologue
    .line 3596
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Pong;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$Pong;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3601
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPing()Lcom/liquable/nemo/voip/frame/Voip$Ping;
    .locals 1

    .prologue
    .line 3608
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3613
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->memoizedSerializedSize:I

    .line 3614
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 3623
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 3618
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 3619
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 3620
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3622
    :cond_1
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->memoizedSerializedSize:I

    move v1, v0

    .line 3623
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasPing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3630
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->bitField0_:I

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

    .line 3639
    iget-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->memoizedIsInitialized:B

    .line 3640
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 3641
    if-ne v0, v1, :cond_0

    .line 3653
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 3641
    goto :goto_0

    .line 3644
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->hasPing()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3645
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->memoizedIsInitialized:B

    move v1, v2

    .line 3646
    goto :goto_0

    .line 3648
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->getPing()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3649
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->memoizedIsInitialized:B

    move v1, v2

    .line 3650
    goto :goto_0

    .line 3652
    :cond_3
    iput-byte v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;
    .locals 1

    .prologue
    .line 3658
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;
    .locals 1

    .prologue
    .line 3663
    invoke-static {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$Pong;)Lcom/liquable/nemo/voip/frame/Voip$Pong$Builder;

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
    .line 3668
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

    .line 3674
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->getSerializedSize()I

    .line 3675
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3676
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Pong;->ping_:Lcom/liquable/nemo/voip/frame/Voip$Ping;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3678
    :cond_0
    return-void
.end method
