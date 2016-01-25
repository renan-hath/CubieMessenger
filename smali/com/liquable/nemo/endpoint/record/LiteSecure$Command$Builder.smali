.class public final Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LiteSecure.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;",
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

.field private authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

.field private authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

.field private bitField0_:I

.field private heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

.field private heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2225
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2210
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    .line 2213
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    .line 2216
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    .line 2219
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    .line 2222
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    .line 2226
    invoke-direct {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->maybeForceBuilderInitialization()V

    .line 2227
    return-void
.end method

.method static synthetic access$3700()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 1

    .prologue
    .line 2200
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 1

    .prologue
    .line 2205
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2329
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    .locals 2

    .prologue
    .line 2231
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v0

    .line 2232
    .local v0, "result":Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2233
    invoke-static {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2235
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    .locals 5

    .prologue
    .line 2240
    new-instance v1, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/endpoint/record/LiteSecure$1;)V

    .line 2241
    .local v1, "result":Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2242
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 2243
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2244
    or-int/lit8 v2, v2, 0x1

    .line 2246
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->access$3102(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    .line 2247
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2248
    or-int/lit8 v2, v2, 0x2

    .line 2250
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->access$3202(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    .line 2251
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2252
    or-int/lit8 v2, v2, 0x4

    .line 2254
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->access$3302(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    .line 2255
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 2256
    or-int/lit8 v2, v2, 0x8

    .line 2258
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->access$3402(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    .line 2259
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2260
    or-int/lit8 v2, v2, 0x10

    .line 2262
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->access$3502(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    .line 2263
    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->bitField0_:I
    invoke-static {v1, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->access$3602(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;I)I

    .line 2264
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 1

    .prologue
    .line 2269
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2270
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    .line 2271
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2272
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    .line 2273
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2274
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    .line 2275
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2276
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    .line 2277
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2278
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    .line 2279
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2280
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 2

    .prologue
    .line 2286
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

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
    .line 2200
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    .locals 1

    .prologue
    .line 2291
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2296
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_1

    .line 2297
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2326
    :cond_0
    :goto_0
    return v0

    .line 2302
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2303
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2308
    :cond_2
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 2309
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2314
    :cond_3
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 2315
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2320
    :cond_4
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 2321
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    .line 2326
    goto :goto_0
.end method

.method public mergeAuthenticate(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 2
    .param p1, "value"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    .prologue
    .line 2335
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2336
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    invoke-static {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;->newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v0

    .line 2337
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    move-result-object v0

    .line 2338
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    .line 2343
    :goto_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2344
    return-object p0

    .line 2340
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    goto :goto_0
.end method

.method public mergeAuthenticateError(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 2
    .param p1, "value"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    .prologue
    .line 2351
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2352
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    invoke-static {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    move-result-object v0

    .line 2353
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    move-result-object v0

    .line 2354
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    .line 2359
    :goto_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2360
    return-object p0

    .line 2356
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    goto :goto_0
.end method

.method public mergeAuthenticateResponse(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 2
    .param p1, "value"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    .prologue
    .line 2367
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2368
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    invoke-static {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;->newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v0

    .line 2369
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    move-result-object v0

    .line 2370
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    .line 2375
    :goto_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2376
    return-object p0

    .line 2372
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

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
    .line 2200
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2200
    check-cast p1, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

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
    .line 2200
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2383
    const/4 v2, 0x0

    .line 2385
    .local v2, "parsedMessage":Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2390
    if-eqz v2, :cond_0

    .line 2391
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    .line 2394
    :cond_0
    return-object p0

    .line 2386
    :catch_0
    move-exception v1

    .line 2387
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-object v2, v0

    .line 2388
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2390
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 2391
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 1
    .param p1, "other"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    .prologue
    .line 2399
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2417
    :cond_0
    :goto_0
    return-object p0

    .line 2402
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->hasAuthenticate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2403
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getAuthenticate()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->mergeAuthenticate(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    .line 2405
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->hasAuthenticateResponse()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2406
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getAuthenticateResponse()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->mergeAuthenticateResponse(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    .line 2408
    :cond_3
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->hasAuthenticateError()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2409
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getAuthenticateError()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->mergeAuthenticateError(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    .line 2411
    :cond_4
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->hasHeartbeat()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2412
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getHeartbeat()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->mergeHeartbeat(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    .line 2414
    :cond_5
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->hasHeartbeatResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2415
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command;->getHeartbeatResponse()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->mergeHeartbeatResponse(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;

    goto :goto_0
.end method

.method public mergeHeartbeat(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 2
    .param p1, "value"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    .prologue
    .line 2424
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2425
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    invoke-static {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;->newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v0

    .line 2426
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    move-result-object v0

    .line 2427
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    .line 2432
    :goto_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2433
    return-object p0

    .line 2429
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    goto :goto_0
.end method

.method public mergeHeartbeatResponse(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 2
    .param p1, "value"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    .prologue
    .line 2440
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2441
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    invoke-static {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;->newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    move-result-object v0

    .line 2442
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    move-result-object v0

    .line 2443
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    .line 2448
    :goto_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2449
    return-object p0

    .line 2445
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    goto :goto_0
.end method

.method public setAuthenticate(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;

    .prologue
    .line 2469
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    .line 2471
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2472
    return-object p0
.end method

.method public setAuthenticate(Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    .prologue
    .line 2456
    if-nez p1, :cond_0

    .line 2457
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2459
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticate_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Authenticate;

    .line 2461
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2462
    return-object p0
.end method

.method public setAuthenticateError(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    .prologue
    .line 2492
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    .line 2494
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2495
    return-object p0
.end method

.method public setAuthenticateError(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    .prologue
    .line 2479
    if-nez p1, :cond_0

    .line 2480
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2482
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateError_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    .line 2484
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2485
    return-object p0
.end method

.method public setAuthenticateResponse(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;

    .prologue
    .line 2515
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    .line 2517
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2518
    return-object p0
.end method

.method public setAuthenticateResponse(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    .prologue
    .line 2502
    if-nez p1, :cond_0

    .line 2503
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2505
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->authenticateResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateResponse;

    .line 2507
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2508
    return-object p0
.end method

.method public setHeartbeat(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;

    .prologue
    .line 2538
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    .line 2540
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2541
    return-object p0
.end method

.method public setHeartbeat(Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    .prologue
    .line 2525
    if-nez p1, :cond_0

    .line 2526
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2528
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeat_:Lcom/liquable/nemo/endpoint/record/LiteSecure$Heartbeat;

    .line 2530
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2531
    return-object p0
.end method

.method public setHeartbeatResponse(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;

    .prologue
    .line 2561
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    .line 2563
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2564
    return-object p0
.end method

.method public setHeartbeatResponse(Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;)Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    .prologue
    .line 2548
    if-nez p1, :cond_0

    .line 2549
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2551
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->heartbeatResponse_:Lcom/liquable/nemo/endpoint/record/LiteSecure$HeartbeatResponse;

    .line 2553
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$Command$Builder;->bitField0_:I

    .line 2554
    return-object p0
.end method
