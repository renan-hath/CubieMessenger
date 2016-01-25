.class public final Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LiteSecure.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;",
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private heartbeatId_:I

.field private serverTime_:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3239
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3240
    invoke-direct {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->maybeForceBuilderInitialization()V

    .line 3241
    return-void
.end method

.method static synthetic access$4800()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;
    .locals 1

    .prologue
    .line 3222
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;
    .locals 1

    .prologue
    .line 3227
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 3302
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3222
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;
    .locals 2

    .prologue
    .line 3245
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-result-object v0

    .line 3246
    .local v0, "result":Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3247
    invoke-static {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3249
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3222
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;
    .locals 5

    .prologue
    .line 3254
    new-instance v1, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/endpoint/record/LiteSecure$1;)V

    .line 3255
    .local v1, "result":Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->bitField0_:I

    .line 3256
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 3257
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3258
    or-int/lit8 v2, v2, 0x1

    .line 3260
    :cond_0
    iget v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->heartbeatId_:I

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->heartbeatId_:I
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->access$4502(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;I)I

    .line 3261
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3262
    or-int/lit8 v2, v2, 0x2

    .line 3264
    :cond_1
    iget-wide v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->serverTime_:J

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->serverTime_:J
    invoke-static {v1, v3, v4}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->access$4602(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;J)J

    .line 3265
    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->access$4702(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;I)I

    .line 3266
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3222
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3222
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;
    .locals 2

    .prologue
    .line 3271
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3272
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->heartbeatId_:I

    .line 3273
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->bitField0_:I

    .line 3274
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->serverTime_:J

    .line 3275
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->bitField0_:I

    .line 3276
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3222
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3222
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3222
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;
    .locals 2

    .prologue
    .line 3281
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

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
    .line 3222
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 3222
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3222
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;
    .locals 1

    .prologue
    .line 3286
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3291
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eq v2, v1, :cond_1

    .line 3299
    :cond_0
    :goto_0
    return v0

    .line 3295
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 3299
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
    .line 3222
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3222
    check-cast p1, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

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
    .line 3222
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3308
    const/4 v2, 0x0

    .line 3310
    .local v2, "parsedMessage":Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3315
    if-eqz v2, :cond_0

    .line 3316
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    .line 3319
    :cond_0
    return-object p0

    .line 3311
    :catch_0
    move-exception v1

    .line 3312
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-object v2, v0

    .line 3313
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3315
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 3316
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;
    .locals 2
    .param p1, "other"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    .prologue
    .line 3324
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3333
    :cond_0
    :goto_0
    return-object p0

    .line 3327
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->hasHeartbeatId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3328
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->getHeartbeatId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->setHeartbeatId(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    .line 3330
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->hasServerTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3331
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->getServerTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->setServerTime(J)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    goto :goto_0
.end method

.method public setHeartbeatId(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3340
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->bitField0_:I

    .line 3341
    iput p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->heartbeatId_:I

    .line 3343
    return-object p0
.end method

.method public setServerTime(J)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 3350
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->bitField0_:I

    .line 3351
    iput-wide p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->serverTime_:J

    .line 3353
    return-object p0
.end method
