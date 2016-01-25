.class public final Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Voip.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;",
        "Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private key_:Lcom/google/protobuf/ByteString;

.field private type_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2041
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2035
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->key_:Lcom/google/protobuf/ByteString;

    .line 2038
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->RECEIVER_PUBLIC_KEY:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->type_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    .line 2042
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->maybeForceBuilderInitialization()V

    .line 2043
    return-void
.end method

.method static synthetic access$2900()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;
    .locals 1

    .prologue
    .line 2025
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;
    .locals 1

    .prologue
    .line 2030
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2100
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2025
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
    .locals 2

    .prologue
    .line 2047
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v0

    .line 2048
    .local v0, "result":Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2049
    invoke-static {v0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2051
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2025
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
    .locals 5

    .prologue
    .line 2056
    new-instance v1, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V

    .line 2057
    .local v1, "result":Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->bitField0_:I

    .line 2058
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 2059
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2060
    or-int/lit8 v2, v2, 0x1

    .line 2062
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->key_:Lcom/google/protobuf/ByteString;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->key_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->access$2602(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2063
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2064
    or-int/lit8 v2, v2, 0x2

    .line 2066
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->type_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->type_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->access$2702(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    .line 2067
    # setter for: Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->bitField0_:I
    invoke-static {v1, v2}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->access$2802(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;I)I

    .line 2068
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2025
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2025
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;
    .locals 1

    .prologue
    .line 2073
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2074
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->key_:Lcom/google/protobuf/ByteString;

    .line 2075
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->bitField0_:I

    .line 2076
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;->RECEIVER_PUBLIC_KEY:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->type_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    .line 2077
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->bitField0_:I

    .line 2078
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2025
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2025
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2025
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;
    .locals 2

    .prologue
    .line 2083
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

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
    .line 2025
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2025
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2025
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
    .locals 1

    .prologue
    .line 2088
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2093
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eq v1, v0, :cond_0

    .line 2095
    const/4 v0, 0x0

    .line 2097
    :cond_0
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2025
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2025
    check-cast p1, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

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
    .line 2025
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2106
    const/4 v2, 0x0

    .line 2108
    .local v2, "parsedMessage":Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2113
    if-eqz v2, :cond_0

    .line 2114
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    .line 2117
    :cond_0
    return-object p0

    .line 2109
    :catch_0
    move-exception v1

    .line 2110
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-object v2, v0

    .line 2111
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2113
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 2114
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;
    .locals 1
    .param p1, "other"    # Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    .prologue
    .line 2122
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2131
    :cond_0
    :goto_0
    return-object p0

    .line 2125
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2126
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->getKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->setKey(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    .line 2128
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2129
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->getType()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->setType(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;

    goto :goto_0
.end method

.method public setKey(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2138
    if-nez p1, :cond_0

    .line 2139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2141
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->bitField0_:I

    .line 2142
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->key_:Lcom/google/protobuf/ByteString;

    .line 2144
    return-object p0
.end method

.method public setType(Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;)Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    .prologue
    .line 2151
    if-nez p1, :cond_0

    .line 2152
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2154
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->bitField0_:I

    .line 2155
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Builder;->type_:Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey$Type;

    .line 2157
    return-object p0
.end method
