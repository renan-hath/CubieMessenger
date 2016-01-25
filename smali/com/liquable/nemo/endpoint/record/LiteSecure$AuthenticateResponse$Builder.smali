.class public final Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LiteSecure.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;",
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private nonce_:J

.field private serverNemoVersion_:Ljava/lang/Object;

.field private sessionId_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1271
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1264
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->serverNemoVersion_:Ljava/lang/Object;

    .line 1272
    invoke-direct {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->maybeForceBuilderInitialization()V

    .line 1273
    return-void
.end method

.method static synthetic access$2100()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
    .locals 1

    .prologue
    .line 1251
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
    .locals 1

    .prologue
    .line 1256
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1345
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;
    .locals 2

    .prologue
    .line 1277
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-result-object v0

    .line 1278
    .local v0, "result":Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1279
    invoke-static {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1281
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;
    .locals 5

    .prologue
    .line 1286
    new-instance v1, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/endpoint/record/LiteSecure$1;)V

    .line 1287
    .local v1, "result":Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    .line 1288
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1289
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1290
    or-int/lit8 v2, v2, 0x1

    .line 1292
    :cond_0
    iget-wide v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->sessionId_:J

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->sessionId_:J
    invoke-static {v1, v3, v4}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->access$1702(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;J)J

    .line 1293
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1294
    or-int/lit8 v2, v2, 0x2

    .line 1296
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->serverNemoVersion_:Ljava/lang/Object;

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->serverNemoVersion_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->access$1802(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1298
    or-int/lit8 v2, v2, 0x4

    .line 1300
    :cond_2
    iget-wide v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->nonce_:J

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->nonce_:J
    invoke-static {v1, v3, v4}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->access$1902(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;J)J

    .line 1301
    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->access$2002(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;I)I

    .line 1302
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 1307
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1308
    iput-wide v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->sessionId_:J

    .line 1309
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    .line 1310
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->serverNemoVersion_:Ljava/lang/Object;

    .line 1311
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    .line 1312
    iput-wide v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->nonce_:J

    .line 1313
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    .line 1314
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
    .locals 2

    .prologue
    .line 1320
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

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
    .line 1251
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1251
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;
    .locals 1

    .prologue
    .line 1325
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1330
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eq v2, v1, :cond_1

    .line 1342
    :cond_0
    :goto_0
    return v0

    .line 1334
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1338
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 1342
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
    .line 1251
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1251
    check-cast p1, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

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
    .line 1251
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1351
    const/4 v2, 0x0

    .line 1353
    .local v2, "parsedMessage":Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1358
    if-eqz v2, :cond_0

    .line 1359
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    .line 1362
    :cond_0
    return-object p0

    .line 1354
    :catch_0
    move-exception v1

    .line 1355
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-object v2, v0

    .line 1356
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1358
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1359
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
    .locals 2
    .param p1, "other"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    .prologue
    .line 1367
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1381
    :cond_0
    :goto_0
    return-object p0

    .line 1370
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1371
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->getSessionId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->setSessionId(J)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    .line 1373
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->hasServerNemoVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1374
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    .line 1375
    # getter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->serverNemoVersion_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->access$1800(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->serverNemoVersion_:Ljava/lang/Object;

    .line 1378
    :cond_3
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->hasNonce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1379
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->getNonce()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->setNonce(J)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    goto :goto_0
.end method

.method public setNonce(J)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1388
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    .line 1389
    iput-wide p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->nonce_:J

    .line 1391
    return-object p0
.end method

.method public setServerNemoVersion(Ljava/lang/String;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1398
    if-nez p1, :cond_0

    .line 1399
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1401
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    .line 1402
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->serverNemoVersion_:Ljava/lang/Object;

    .line 1404
    return-object p0
.end method

.method public setServerNemoVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1411
    if-nez p1, :cond_0

    .line 1412
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1414
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    .line 1415
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->serverNemoVersion_:Ljava/lang/Object;

    .line 1417
    return-object p0
.end method

.method public setSessionId(J)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1424
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->bitField0_:I

    .line 1425
    iput-wide p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->sessionId_:J

    .line 1427
    return-object p0
.end method
