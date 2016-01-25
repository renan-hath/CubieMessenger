.class public final Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LiteSecure.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;",
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientNemoVersion_:Ljava/lang/Object;

.field private clientPlatform_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

.field private sessionId_:J

.field private uid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->clientNemoVersion_:Ljava/lang/Object;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->uid_:Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;->ANDROID:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->clientPlatform_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    .line 40
    invoke-direct {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->maybeForceBuilderInitialization()V

    .line 41
    return-void
.end method

.method static synthetic access$600()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-result-object v0

    .line 46
    .local v0, "result":Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    invoke-static {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 49
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;
    .locals 5

    .prologue
    .line 54
    new-instance v1, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/endpoint/record/LiteSecure$1;)V

    .line 55
    .local v1, "result":Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    .line 56
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 57
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 58
    or-int/lit8 v2, v2, 0x1

    .line 60
    :cond_0
    iget-wide v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->sessionId_:J

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->sessionId_:J
    invoke-static {v1, v3, v4}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->access$102(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;J)J

    .line 61
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 62
    or-int/lit8 v2, v2, 0x2

    .line 64
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->clientNemoVersion_:Ljava/lang/Object;

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->clientNemoVersion_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->access$202(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 66
    or-int/lit8 v2, v2, 0x4

    .line 68
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->uid_:Ljava/lang/Object;

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->uid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->access$302(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 70
    or-int/lit8 v2, v2, 0x8

    .line 72
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->clientPlatform_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->clientPlatform_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->access$402(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    .line 73
    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->bitField0_:I
    invoke-static {v1, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->access$502(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;I)I

    .line 74
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->sessionId_:J

    .line 81
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    .line 82
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->clientNemoVersion_:Ljava/lang/Object;

    .line 83
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    .line 84
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->uid_:Ljava/lang/Object;

    .line 85
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    .line 86
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;->ANDROID:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->clientPlatform_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    .line 87
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    .line 88
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

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
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 103
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eq v2, v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 111
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 115
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
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

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
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v2, 0x0

    .line 126
    .local v2, "parsedMessage":Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    .line 135
    :cond_0
    return-object p0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-object v2, v0

    .line 129
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    .locals 2
    .param p1, "other"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    .prologue
    .line 140
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-object p0

    .line 143
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->getSessionId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->setSessionId(J)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    .line 146
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->hasClientNemoVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    .line 148
    # getter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->clientNemoVersion_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->access$200(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->clientNemoVersion_:Ljava/lang/Object;

    .line 151
    :cond_3
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->hasUid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    .line 153
    # getter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->uid_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->access$300(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->uid_:Ljava/lang/Object;

    .line 156
    :cond_4
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->hasClientPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->getClientPlatform()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->setClientPlatform(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    goto :goto_0
.end method

.method public setClientNemoVersion(Ljava/lang/String;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 169
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    .line 170
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->clientNemoVersion_:Ljava/lang/Object;

    .line 172
    return-object p0
.end method

.method public setClientNemoVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 179
    if-nez p1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 182
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    .line 183
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->clientNemoVersion_:Ljava/lang/Object;

    .line 185
    return-object p0
.end method

.method public setClientPlatform(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 195
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    .line 196
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->clientPlatform_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Platform;

    .line 198
    return-object p0
.end method

.method public setSessionId(J)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 205
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    .line 206
    iput-wide p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->sessionId_:J

    .line 208
    return-object p0
.end method

.method public setUid(Ljava/lang/String;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 215
    if-nez p1, :cond_0

    .line 216
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 218
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    .line 219
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->uid_:Ljava/lang/Object;

    .line 221
    return-object p0
.end method

.method public setUidBytes(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 231
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->bitField0_:I

    .line 232
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->uid_:Ljava/lang/Object;

    .line 234
    return-object p0
.end method
