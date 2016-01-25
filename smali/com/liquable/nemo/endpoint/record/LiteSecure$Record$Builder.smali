.class public final Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LiteSecure.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;",
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

.field private command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

.field private mac_:Lcom/google/protobuf/ByteString;

.field private protocolVersion_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3591
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3582
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    .line 3585
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    .line 3588
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->mac_:Lcom/google/protobuf/ByteString;

    .line 3592
    invoke-direct {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->maybeForceBuilderInitialization()V

    .line 3593
    return-void
.end method

.method static synthetic access$5600()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    .locals 1

    .prologue
    .line 3569
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    .locals 1

    .prologue
    .line 3574
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 3674
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3569
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .locals 2

    .prologue
    .line 3597
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-result-object v0

    .line 3598
    .local v0, "result":Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3599
    invoke-static {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3601
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3569
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .locals 5

    .prologue
    .line 3606
    new-instance v1, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/endpoint/record/LiteSecure$1;)V

    .line 3607
    .local v1, "result":Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    .line 3608
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 3609
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3610
    or-int/lit8 v2, v2, 0x1

    .line 3612
    :cond_0
    iget v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->protocolVersion_:I

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->protocolVersion_:I
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->access$5102(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;I)I

    .line 3613
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3614
    or-int/lit8 v2, v2, 0x2

    .line 3616
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->access$5202(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    .line 3617
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3618
    or-int/lit8 v2, v2, 0x4

    .line 3620
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->access$5302(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    .line 3621
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 3622
    or-int/lit8 v2, v2, 0x8

    .line 3624
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->mac_:Lcom/google/protobuf/ByteString;

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->mac_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->access$5402(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 3625
    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->bitField0_:I
    invoke-static {v1, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->access$5502(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;I)I

    .line 3626
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3569
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3569
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    .locals 1

    .prologue
    .line 3631
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3632
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->protocolVersion_:I

    .line 3633
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    .line 3634
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    .line 3635
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    .line 3636
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    .line 3637
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    .line 3638
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->mac_:Lcom/google/protobuf/ByteString;

    .line 3639
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    .line 3640
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3569
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3569
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3569
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    .locals 2

    .prologue
    .line 3645
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3569
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 3569
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3569
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    .locals 1

    .prologue
    .line 3650
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3655
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eq v2, v1, :cond_1

    .line 3671
    :cond_0
    :goto_0
    return v0

    .line 3659
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 3660
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3665
    :cond_2
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 3666
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 3671
    goto :goto_0
.end method

.method public mergeBlockCipher(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    .locals 2
    .param p1, "value"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    .prologue
    .line 3680
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3681
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    invoke-static {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v0

    .line 3682
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v0

    .line 3683
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    .line 3688
    :goto_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    .line 3689
    return-object p0

    .line 3685
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    goto :goto_0
.end method

.method public mergeCommand(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    .locals 2
    .param p1, "value"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    .prologue
    .line 3696
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3697
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    invoke-static {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v0

    .line 3698
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v0

    .line 3699
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    .line 3704
    :goto_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    .line 3705
    return-object p0

    .line 3701
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3569
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3569
    check-cast p1, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3569
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3712
    const/4 v2, 0x0

    .line 3714
    .local v2, "parsedMessage":Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3719
    if-eqz v2, :cond_0

    .line 3720
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    .line 3723
    :cond_0
    return-object p0

    .line 3715
    :catch_0
    move-exception v1

    .line 3716
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-object v2, v0

    .line 3717
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3719
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 3720
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    .locals 1
    .param p1, "other"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    .prologue
    .line 3728
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3743
    :cond_0
    :goto_0
    return-object p0

    .line 3731
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->hasProtocolVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3732
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getProtocolVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->setProtocolVersion(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    .line 3734
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->hasCommand()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3735
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getCommand()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->mergeCommand(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    .line 3737
    :cond_3
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->hasBlockCipher()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3738
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getBlockCipher()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->mergeBlockCipher(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    .line 3740
    :cond_4
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->hasMac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3741
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record;->getMac()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->setMac(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;

    goto :goto_0
.end method

.method public setBlockCipher(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    .prologue
    .line 3763
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    .line 3765
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    .line 3766
    return-object p0
.end method

.method public setBlockCipher(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    .prologue
    .line 3750
    if-nez p1, :cond_0

    .line 3751
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3753
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->blockCipher_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    .line 3755
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    .line 3756
    return-object p0
.end method

.method public setCommand(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    .prologue
    .line 3786
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    .line 3788
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    .line 3789
    return-object p0
.end method

.method public setCommand(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    .prologue
    .line 3773
    if-nez p1, :cond_0

    .line 3774
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3776
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->command_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    .line 3778
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    .line 3779
    return-object p0
.end method

.method public setMac(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3801
    if-nez p1, :cond_0

    .line 3802
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3804
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    .line 3805
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->mac_:Lcom/google/protobuf/ByteString;

    .line 3807
    return-object p0
.end method

.method public setProtocolVersion(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3814
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->bitField0_:I

    .line 3815
    iput p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Record$Builder;->protocolVersion_:I

    .line 3817
    return-object p0
.end method
