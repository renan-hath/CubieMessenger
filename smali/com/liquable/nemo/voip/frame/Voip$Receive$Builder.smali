.class public final Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Voip.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/frame/Voip$Receive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/liquable/nemo/voip/frame/Voip$Receive;",
        "Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dialId_:Ljava/lang/Object;

.field private receiveId_:Ljava/lang/Object;

.field private receiverPublicKey_:Lcom/google/protobuf/ByteString;

.field private receiverUid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3721
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3709
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->receiveId_:Ljava/lang/Object;

    .line 3712
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->dialId_:Ljava/lang/Object;

    .line 3715
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->receiverUid_:Ljava/lang/Object;

    .line 3718
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->receiverPublicKey_:Lcom/google/protobuf/ByteString;

    .line 3722
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->maybeForceBuilderInitialization()V

    .line 3723
    return-void
.end method

.method static synthetic access$5500()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    .locals 1

    .prologue
    .line 3699
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    .locals 1

    .prologue
    .line 3704
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 3800
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/liquable/nemo/voip/frame/Voip$Receive;
    .locals 2

    .prologue
    .line 3727
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-result-object v0

    .line 3728
    .local v0, "result":Lcom/liquable/nemo/voip/frame/Voip$Receive;
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3729
    invoke-static {v0}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3731
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Receive;
    .locals 5

    .prologue
    .line 3736
    new-instance v1, Lcom/liquable/nemo/voip/frame/Voip$Receive;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/voip/frame/Voip$Receive;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V

    .line 3737
    .local v1, "result":Lcom/liquable/nemo/voip/frame/Voip$Receive;
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    .line 3738
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 3739
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3740
    or-int/lit8 v2, v2, 0x1

    .line 3742
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->receiveId_:Ljava/lang/Object;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiveId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->access$5002(Lcom/liquable/nemo/voip/frame/Voip$Receive;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3743
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3744
    or-int/lit8 v2, v2, 0x2

    .line 3746
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->dialId_:Ljava/lang/Object;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Receive;->dialId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->access$5102(Lcom/liquable/nemo/voip/frame/Voip$Receive;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3747
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3748
    or-int/lit8 v2, v2, 0x4

    .line 3750
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->receiverUid_:Ljava/lang/Object;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiverUid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->access$5202(Lcom/liquable/nemo/voip/frame/Voip$Receive;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3751
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 3752
    or-int/lit8 v2, v2, 0x8

    .line 3754
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->receiverPublicKey_:Lcom/google/protobuf/ByteString;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiverPublicKey_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->access$5302(Lcom/liquable/nemo/voip/frame/Voip$Receive;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 3755
    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Receive;->bitField0_:I
    invoke-static {v1, v2}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->access$5402(Lcom/liquable/nemo/voip/frame/Voip$Receive;I)I

    .line 3756
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    .locals 1

    .prologue
    .line 3761
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3762
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->receiveId_:Ljava/lang/Object;

    .line 3763
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    .line 3764
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->dialId_:Ljava/lang/Object;

    .line 3765
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    .line 3766
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->receiverUid_:Ljava/lang/Object;

    .line 3767
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    .line 3768
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->receiverPublicKey_:Lcom/google/protobuf/ByteString;

    .line 3769
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    .line 3770
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    .locals 2

    .prologue
    .line 3775
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Receive;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

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
    .line 3699
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Receive;
    .locals 1

    .prologue
    .line 3780
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3785
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eq v2, v1, :cond_1

    .line 3797
    :cond_0
    :goto_0
    return v0

    .line 3789
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 3793
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 3797
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
    .line 3699
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3699
    check-cast p1, Lcom/liquable/nemo/voip/frame/Voip$Receive;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Receive;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

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
    .line 3699
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3806
    const/4 v2, 0x0

    .line 3808
    .local v2, "parsedMessage":Lcom/liquable/nemo/voip/frame/Voip$Receive;
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/voip/frame/Voip$Receive;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3813
    if-eqz v2, :cond_0

    .line 3814
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Receive;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    .line 3817
    :cond_0
    return-object p0

    .line 3809
    :catch_0
    move-exception v1

    .line 3810
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-object v2, v0

    .line 3811
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3813
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 3814
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Receive;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Receive;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    .locals 1
    .param p1, "other"    # Lcom/liquable/nemo/voip/frame/Voip$Receive;

    .prologue
    .line 3822
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Receive;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3843
    :cond_0
    :goto_0
    return-object p0

    .line 3825
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->hasReceiveId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3826
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    .line 3827
    # getter for: Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiveId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->access$5000(Lcom/liquable/nemo/voip/frame/Voip$Receive;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->receiveId_:Ljava/lang/Object;

    .line 3830
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->hasDialId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3831
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    .line 3832
    # getter for: Lcom/liquable/nemo/voip/frame/Voip$Receive;->dialId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->access$5100(Lcom/liquable/nemo/voip/frame/Voip$Receive;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->dialId_:Ljava/lang/Object;

    .line 3835
    :cond_3
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->hasReceiverUid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3836
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    .line 3837
    # getter for: Lcom/liquable/nemo/voip/frame/Voip$Receive;->receiverUid_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->access$5200(Lcom/liquable/nemo/voip/frame/Voip$Receive;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->receiverUid_:Ljava/lang/Object;

    .line 3840
    :cond_4
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->hasReceiverPublicKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3841
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Receive;->getReceiverPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->setReceiverPublicKey(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;

    goto :goto_0
.end method

.method public setDialId(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3850
    if-nez p1, :cond_0

    .line 3851
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3853
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    .line 3854
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->dialId_:Ljava/lang/Object;

    .line 3856
    return-object p0
.end method

.method public setDialIdBytes(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3863
    if-nez p1, :cond_0

    .line 3864
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3866
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    .line 3867
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->dialId_:Ljava/lang/Object;

    .line 3869
    return-object p0
.end method

.method public setReceiveId(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3876
    if-nez p1, :cond_0

    .line 3877
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3879
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    .line 3880
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->receiveId_:Ljava/lang/Object;

    .line 3882
    return-object p0
.end method

.method public setReceiveIdBytes(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3889
    if-nez p1, :cond_0

    .line 3890
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3892
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    .line 3893
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->receiveId_:Ljava/lang/Object;

    .line 3895
    return-object p0
.end method

.method public setReceiverPublicKey(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3902
    if-nez p1, :cond_0

    .line 3903
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3905
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    .line 3906
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->receiverPublicKey_:Lcom/google/protobuf/ByteString;

    .line 3908
    return-object p0
.end method

.method public setReceiverUid(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3915
    if-nez p1, :cond_0

    .line 3916
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3918
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    .line 3919
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->receiverUid_:Ljava/lang/Object;

    .line 3921
    return-object p0
.end method

.method public setReceiverUidBytes(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3928
    if-nez p1, :cond_0

    .line 3929
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3931
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->bitField0_:I

    .line 3932
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Receive$Builder;->receiverUid_:Ljava/lang/Object;

    .line 3934
    return-object p0
.end method
