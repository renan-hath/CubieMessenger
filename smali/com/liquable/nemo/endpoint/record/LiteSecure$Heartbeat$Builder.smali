.class public final Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LiteSecure.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;",
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private heartbeatId_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2950
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2951
    invoke-direct {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->maybeForceBuilderInitialization()V

    .line 2952
    return-void
.end method

.method static synthetic access$4200()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;
    .locals 1

    .prologue
    .line 2937
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;
    .locals 1

    .prologue
    .line 2942
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 3003
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2937
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;
    .locals 2

    .prologue
    .line 2956
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-result-object v0

    .line 2957
    .local v0, "result":Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2958
    invoke-static {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2960
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2937
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;
    .locals 5

    .prologue
    .line 2965
    new-instance v1, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/endpoint/record/LiteSecure$1;)V

    .line 2966
    .local v1, "result":Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->bitField0_:I

    .line 2967
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 2968
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2969
    or-int/lit8 v2, v2, 0x1

    .line 2971
    :cond_0
    iget v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->heartbeatId_:I

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->heartbeatId_:I
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->access$4002(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;I)I

    .line 2972
    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->bitField0_:I
    invoke-static {v1, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->access$4102(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;I)I

    .line 2973
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2937
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2937
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;
    .locals 1

    .prologue
    .line 2978
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2979
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->heartbeatId_:I

    .line 2980
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->bitField0_:I

    .line 2981
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2937
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2937
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2937
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;
    .locals 2

    .prologue
    .line 2986
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

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
    .line 2937
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2937
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2937
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;
    .locals 1

    .prologue
    .line 2991
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2996
    iget v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eq v1, v0, :cond_0

    .line 2998
    const/4 v0, 0x0

    .line 3000
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
    .line 2937
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2937
    check-cast p1, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

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
    .line 2937
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3009
    const/4 v2, 0x0

    .line 3011
    .local v2, "parsedMessage":Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3016
    if-eqz v2, :cond_0

    .line 3017
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    .line 3020
    :cond_0
    return-object p0

    .line 3012
    :catch_0
    move-exception v1

    .line 3013
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-object v2, v0

    .line 3014
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3016
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 3017
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;
    .locals 1
    .param p1, "other"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    .prologue
    .line 3025
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3031
    :cond_0
    :goto_0
    return-object p0

    .line 3028
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->hasHeartbeatId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3029
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->getHeartbeatId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->setHeartbeatId(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    goto :goto_0
.end method

.method public setHeartbeatId(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3038
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->bitField0_:I

    .line 3039
    iput p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->heartbeatId_:I

    .line 3041
    return-object p0
.end method
