.class public final Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
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
    name = "DialResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;,
        Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;
    }
.end annotation


# static fields
.field public static final DIAL_ID_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$DialResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private dialId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1804
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$1;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 1826
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;-><init>(Z)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    .line 1827
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->initFields()V

    .line 1828
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

    .line 1839
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1821
    iput v6, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->memoizedSerializedSize:I

    .line 1833
    iput-byte v6, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->memoizedIsInitialized:B

    .line 1840
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->initFields()V

    .line 1841
    const/4 v2, 0x0

    .line 1843
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 1844
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1845
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 1846
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 1851
    invoke-virtual {p0, p1, p2, v4}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1852
    const/4 v0, 0x1

    goto :goto_0

    .line 1848
    :sswitch_0
    const/4 v0, 0x1

    .line 1849
    goto :goto_0

    .line 1857
    :sswitch_1
    iget v6, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->bitField0_:I

    .line 1858
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->dialId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1872
    .end local v4    # "tag":I
    :catch_0
    move-exception v1

    .line 1873
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1877
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->makeExtensionsImmutable()V

    throw v6

    .line 1862
    .restart local v4    # "tag":I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 1863
    .local v3, "rawValue":I
    invoke-static {v3}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;->valueOf(I)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    move-result-object v5

    .line 1864
    .local v5, "value":Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;
    if-eqz v5, :cond_0

    .line 1865
    iget v6, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->bitField0_:I

    .line 1866
    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->status_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1874
    .end local v3    # "rawValue":I
    .end local v4    # "tag":I
    .end local v5    # "value":Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;
    :catch_1
    move-exception v1

    .line 1875
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

    .line 1877
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->makeExtensionsImmutable()V

    .line 1879
    return-void

    .line 1846
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
    .line 1542
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v0, -0x1

    .line 1883
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1821
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->memoizedSerializedSize:I

    .line 1833
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->memoizedIsInitialized:B

    .line 1885
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .param p2, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$1;

    .prologue
    .line 1542
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 1835
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1821
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->memoizedSerializedSize:I

    .line 1833
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->memoizedIsInitialized:B

    .line 1835
    return-void
.end method

.method static synthetic access$2000(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->dialId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1542
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->dialId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    .param p1, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    .prologue
    .line 1542
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->status_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    .param p1, "x1"    # I

    .prologue
    .line 1542
    iput p1, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    .locals 1

    .prologue
    .line 1791
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1968
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->dialId_:Ljava/lang/Object;

    .line 1969
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;->OK:Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->status_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    .line 1970
    return-void
.end method

.method public static newBuilder()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;
    .locals 1

    .prologue
    .line 1795
    # invokes: Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->access$2300()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    .prologue
    .line 1799
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1542
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    .locals 1

    .prologue
    .line 1889
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    return-object v0
.end method

.method public getDialId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1896
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->dialId_:Ljava/lang/Object;

    .line 1897
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1898
    check-cast v1, Ljava/lang/String;

    .line 1905
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1900
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1901
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1902
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1903
    iput-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->dialId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1905
    goto :goto_0
.end method

.method public getDialIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1913
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->dialId_:Ljava/lang/Object;

    .line 1914
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1915
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1916
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->dialId_:Ljava/lang/Object;

    .line 1919
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
            "Lcom/liquable/nemo/voip/frame/Voip$DialResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1925
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1930
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->memoizedSerializedSize:I

    .line 1931
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1943
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 1935
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 1936
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 1937
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->getDialIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1939
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 1940
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->status_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1942
    :cond_2
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 1943
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getStatus()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;
    .locals 1

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->status_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    return-object v0
.end method

.method public hasDialId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1957
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 1964
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->bitField0_:I

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

    .line 1974
    iget-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->memoizedIsInitialized:B

    .line 1975
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 1976
    if-ne v0, v1, :cond_0

    .line 1984
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1976
    goto :goto_0

    .line 1979
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->hasDialId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1980
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 1981
    goto :goto_0

    .line 1983
    :cond_2
    iput-byte v1, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1542
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;
    .locals 1

    .prologue
    .line 1989
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1542
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;
    .locals 1

    .prologue
    .line 1994
    invoke-static {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

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
    .line 1999
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

    .line 2005
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->getSerializedSize()I

    .line 2006
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2007
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->getDialIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2009
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2010
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->status_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2012
    :cond_1
    return-void
.end method
