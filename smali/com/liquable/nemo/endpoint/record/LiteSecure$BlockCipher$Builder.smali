.class public final Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LiteSecure.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;",
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private algorithmParameter_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private cipherText_:Lcom/google/protobuf/ByteString;

.field private compression_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1721
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1712
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->algorithmParameter_:Lcom/google/protobuf/ByteString;

    .line 1715
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->cipherText_:Lcom/google/protobuf/ByteString;

    .line 1718
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->NONE:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->compression_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    .line 1722
    invoke-direct {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->maybeForceBuilderInitialization()V

    .line 1723
    return-void
.end method

.method static synthetic access$2800()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;
    .locals 1

    .prologue
    .line 1702
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;
    .locals 1

    .prologue
    .line 1707
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1790
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1702
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
    .locals 2

    .prologue
    .line 1727
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v0

    .line 1728
    .local v0, "result":Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1729
    invoke-static {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1731
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1702
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
    .locals 5

    .prologue
    .line 1736
    new-instance v1, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/endpoint/record/LiteSecure$1;)V

    .line 1737
    .local v1, "result":Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->bitField0_:I

    .line 1738
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1739
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1740
    or-int/lit8 v2, v2, 0x1

    .line 1742
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->algorithmParameter_:Lcom/google/protobuf/ByteString;

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->algorithmParameter_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->access$2402(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1743
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1744
    or-int/lit8 v2, v2, 0x2

    .line 1746
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->cipherText_:Lcom/google/protobuf/ByteString;

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->cipherText_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->access$2502(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1747
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1748
    or-int/lit8 v2, v2, 0x4

    .line 1750
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->compression_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->compression_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->access$2602(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    .line 1751
    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->bitField0_:I
    invoke-static {v1, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->access$2702(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;I)I

    .line 1752
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1702
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1702
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;
    .locals 1

    .prologue
    .line 1757
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1758
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->algorithmParameter_:Lcom/google/protobuf/ByteString;

    .line 1759
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->bitField0_:I

    .line 1760
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->cipherText_:Lcom/google/protobuf/ByteString;

    .line 1761
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->bitField0_:I

    .line 1762
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->NONE:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->compression_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    .line 1763
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->bitField0_:I

    .line 1764
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1702
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1702
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1702
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;
    .locals 2

    .prologue
    .line 1769
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

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
    .line 1702
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1702
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1702
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
    .locals 1

    .prologue
    .line 1774
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1779
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eq v2, v1, :cond_1

    .line 1787
    :cond_0
    :goto_0
    return v0

    .line 1783
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 1787
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
    .line 1702
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1702
    check-cast p1, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

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
    .line 1702
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1796
    const/4 v2, 0x0

    .line 1798
    .local v2, "parsedMessage":Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1803
    if-eqz v2, :cond_0

    .line 1804
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    .line 1807
    :cond_0
    return-object p0

    .line 1799
    :catch_0
    move-exception v1

    .line 1800
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-object v2, v0

    .line 1801
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1803
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1804
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;
    .locals 1
    .param p1, "other"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    .prologue
    .line 1812
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1824
    :cond_0
    :goto_0
    return-object p0

    .line 1815
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->hasAlgorithmParameter()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1816
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->getAlgorithmParameter()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->setAlgorithmParameter(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    .line 1818
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->hasCipherText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1819
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->getCipherText()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->setCipherText(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    .line 1821
    :cond_3
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->hasCompression()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1822
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->getCompression()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->setCompression(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    goto :goto_0
.end method

.method public setAlgorithmParameter(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1835
    if-nez p1, :cond_0

    .line 1836
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1838
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->bitField0_:I

    .line 1839
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->algorithmParameter_:Lcom/google/protobuf/ByteString;

    .line 1841
    return-object p0
.end method

.method public setCipherText(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1852
    if-nez p1, :cond_0

    .line 1853
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1855
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->bitField0_:I

    .line 1856
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->cipherText_:Lcom/google/protobuf/ByteString;

    .line 1858
    return-object p0
.end method

.method public setCompression(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    .prologue
    .line 1865
    if-nez p1, :cond_0

    .line 1866
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1868
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->bitField0_:I

    .line 1869
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->compression_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    .line 1871
    return-object p0
.end method
