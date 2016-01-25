.class public final Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
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
    name = "BlockCipher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;,
        Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;
    }
.end annotation


# static fields
.field public static final ALGORITHM_PARAMETER_FIELD_NUMBER:I = 0x1

.field public static final CIPHER_TEXT_FIELD_NUMBER:I = 0x2

.field public static final COMPRESSION_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

.field private static final serialVersionUID:J


# instance fields
.field private algorithmParameter_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private cipherText_:Lcom/google/protobuf/ByteString;

.field private compression_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1953
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$1;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->PARSER:Lcom/google/protobuf/Parser;

    .line 1969
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;-><init>(Z)V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    .line 1970
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->initFields()V

    .line 1971
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

    .line 1992
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1973
    iput-byte v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->memoizedIsInitialized:B

    .line 1975
    iput v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->memoizedSerializedSize:I

    .line 1993
    invoke-direct {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->initFields()V

    .line 1994
    const/4 v2, 0x0

    .line 1996
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 1997
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1998
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 1999
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 2004
    invoke-virtual {p0, p1, p2, v4}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2005
    const/4 v0, 0x1

    goto :goto_0

    .line 2001
    :sswitch_0
    const/4 v0, 0x1

    .line 2002
    goto :goto_0

    .line 2010
    :sswitch_1
    iget v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->bitField0_:I

    .line 2011
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->algorithmParameter_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2030
    .end local v4    # "tag":I
    :catch_0
    move-exception v1

    .line 2031
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2035
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->makeExtensionsImmutable()V

    throw v6

    .line 2015
    .restart local v4    # "tag":I
    :sswitch_2
    :try_start_2
    iget v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->bitField0_:I

    .line 2016
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->cipherText_:Lcom/google/protobuf/ByteString;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2032
    .end local v4    # "tag":I
    :catch_1
    move-exception v1

    .line 2033
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

    .line 2020
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "tag":I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 2021
    .local v3, "rawValue":I
    invoke-static {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->valueOf(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    move-result-object v5

    .line 2022
    .local v5, "value":Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;
    if-eqz v5, :cond_0

    .line 2023
    iget v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->bitField0_:I

    .line 2024
    iput-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->compression_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2035
    .end local v3    # "rawValue":I
    .end local v4    # "tag":I
    .end local v5    # "value":Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->makeExtensionsImmutable()V

    .line 2037
    return-void

    .line 1999
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 1697
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v0, -0x1

    .line 2041
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1973
    iput-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->memoizedIsInitialized:B

    .line 1975
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->memoizedSerializedSize:I

    .line 2043
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/endpoint/record/LiteSecure$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .param p2, "x1"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$1;

    .prologue
    .line 1697
    invoke-direct {p0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 1988
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1973
    iput-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->memoizedIsInitialized:B

    .line 1975
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->memoizedSerializedSize:I

    .line 1988
    return-void
.end method

.method static synthetic access$2402(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1697
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->algorithmParameter_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1697
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->cipherText_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
    .param p1, "x1"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    .prologue
    .line 1697
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->compression_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
    .param p1, "x1"    # I

    .prologue
    .line 1697
    iput p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
    .locals 1

    .prologue
    .line 1941
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2135
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->algorithmParameter_:Lcom/google/protobuf/ByteString;

    .line 2136
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->cipherText_:Lcom/google/protobuf/ByteString;

    .line 2137
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->NONE:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->compression_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    .line 2138
    return-void
.end method

.method public static newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;
    .locals 1

    .prologue
    .line 1945
    # invokes: Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->access$2800()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    .prologue
    .line 1949
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlgorithmParameter()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->algorithmParameter_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCipherText()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->cipherText_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCompression()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;
    .locals 1

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->compression_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1697
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;
    .locals 1

    .prologue
    .line 2076
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2081
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2086
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->memoizedSerializedSize:I

    .line 2087
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2102
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 2091
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 2092
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 2093
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->algorithmParameter_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2095
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 2096
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->cipherText_:Lcom/google/protobuf/ByteString;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2098
    :cond_2
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 2099
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->compression_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2101
    :cond_3
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->memoizedSerializedSize:I

    move v1, v0

    .line 2102
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasAlgorithmParameter()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2113
    iget v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCipherText()Z
    .locals 2

    .prologue
    .line 2124
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->bitField0_:I

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

.method public hasCompression()Z
    .locals 2

    .prologue
    .line 2131
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->bitField0_:I

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

    .line 2142
    iget-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->memoizedIsInitialized:B

    .line 2143
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 2144
    if-ne v0, v1, :cond_0

    .line 2156
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 2144
    goto :goto_0

    .line 2147
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->hasAlgorithmParameter()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2148
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->memoizedIsInitialized:B

    move v1, v2

    .line 2149
    goto :goto_0

    .line 2151
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->hasCipherText()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2152
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->memoizedIsInitialized:B

    move v1, v2

    .line 2153
    goto :goto_0

    .line 2155
    :cond_3
    iput-byte v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1697
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->newBuilderForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;
    .locals 1

    .prologue
    .line 2161
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1697
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;
    .locals 1

    .prologue
    .line 2166
    invoke-static {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;)Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Builder;

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
    .line 2171
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

    .line 2177
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->getSerializedSize()I

    .line 2178
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2179
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->algorithmParameter_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2181
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2182
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->cipherText_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2184
    :cond_1
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2185
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher;->compression_:Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;

    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$BlockCipher$Compression;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2187
    :cond_2
    return-void
.end method
