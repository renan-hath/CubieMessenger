.class public final Lcom/liquable/nemo/voip/frame/Voip$StateChange;
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
    name = "StateChange"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;,
        Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;
    }
.end annotation


# static fields
.field public static final DIAL_ID_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$StateChange;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private dialId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5162
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$1;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->PARSER:Lcom/google/protobuf/Parser;

    .line 5184
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;-><init>(Z)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    .line 5185
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->initFields()V

    .line 5186
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

    .line 5197
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5179
    iput v6, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->memoizedSerializedSize:I

    .line 5191
    iput-byte v6, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->memoizedIsInitialized:B

    .line 5198
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->initFields()V

    .line 5199
    const/4 v2, 0x0

    .line 5201
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 5202
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 5203
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 5204
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 5209
    invoke-virtual {p0, p1, p2, v4}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5210
    const/4 v0, 0x1

    goto :goto_0

    .line 5206
    :sswitch_0
    const/4 v0, 0x1

    .line 5207
    goto :goto_0

    .line 5215
    :sswitch_1
    iget v6, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->bitField0_:I

    .line 5216
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->dialId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5230
    .end local v4    # "tag":I
    :catch_0
    move-exception v1

    .line 5231
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5235
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->makeExtensionsImmutable()V

    throw v6

    .line 5220
    .restart local v4    # "tag":I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 5221
    .local v3, "rawValue":I
    invoke-static {v3}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->valueOf(I)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    move-result-object v5

    .line 5222
    .local v5, "value":Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;
    if-eqz v5, :cond_0

    .line 5223
    iget v6, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->bitField0_:I

    .line 5224
    iput-object v5, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->type_:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 5232
    .end local v3    # "rawValue":I
    .end local v4    # "tag":I
    .end local v5    # "value":Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;
    :catch_1
    move-exception v1

    .line 5233
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

    .line 5235
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->makeExtensionsImmutable()V

    .line 5237
    return-void

    .line 5204
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
    .line 4840
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v0, -0x1

    .line 5241
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5179
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->memoizedSerializedSize:I

    .line 5191
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->memoizedIsInitialized:B

    .line 5243
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .param p2, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$1;

    .prologue
    .line 4840
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 5193
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5179
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->memoizedSerializedSize:I

    .line 5191
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->memoizedIsInitialized:B

    .line 5193
    return-void
.end method

.method static synthetic access$6500(Lcom/liquable/nemo/voip/frame/Voip$StateChange;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    .prologue
    .line 4840
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->dialId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/liquable/nemo/voip/frame/Voip$StateChange;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$StateChange;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 4840
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->dialId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6602(Lcom/liquable/nemo/voip/frame/Voip$StateChange;Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$StateChange;
    .param p1, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .prologue
    .line 4840
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->type_:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    return-object p1
.end method

.method static synthetic access$6702(Lcom/liquable/nemo/voip/frame/Voip$StateChange;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$StateChange;
    .param p1, "x1"    # I

    .prologue
    .line 4840
    iput p1, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$StateChange;
    .locals 1

    .prologue
    .line 5149
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 5326
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->dialId_:Ljava/lang/Object;

    .line 5327
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->REJECT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->type_:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .line 5328
    return-void
.end method

.method public static newBuilder()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;
    .locals 1

    .prologue
    .line 5153
    # invokes: Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->access$6800()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/liquable/nemo/voip/frame/Voip$StateChange;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    .prologue
    .line 5157
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$StateChange;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4840
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$StateChange;
    .locals 1

    .prologue
    .line 5247
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    return-object v0
.end method

.method public getDialId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5254
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->dialId_:Ljava/lang/Object;

    .line 5255
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5256
    check-cast v1, Ljava/lang/String;

    .line 5263
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 5258
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5259
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5260
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5261
    iput-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->dialId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5263
    goto :goto_0
.end method

.method public getDialIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5271
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->dialId_:Ljava/lang/Object;

    .line 5272
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5273
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5274
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->dialId_:Ljava/lang/Object;

    .line 5277
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
            "Lcom/liquable/nemo/voip/frame/Voip$StateChange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5283
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5288
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->memoizedSerializedSize:I

    .line 5289
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 5301
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 5293
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 5294
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 5295
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->getDialIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5297
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 5298
    iget-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->type_:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5300
    :cond_2
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->memoizedSerializedSize:I

    move v1, v0

    .line 5301
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getType()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;
    .locals 1

    .prologue
    .line 5308
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->type_:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    return-object v0
.end method

.method public hasDialId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5315
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    .line 5322
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->bitField0_:I

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

    .line 5332
    iget-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->memoizedIsInitialized:B

    .line 5333
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 5334
    if-ne v0, v1, :cond_0

    .line 5342
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 5334
    goto :goto_0

    .line 5337
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->hasDialId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5338
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->memoizedIsInitialized:B

    move v1, v2

    .line 5339
    goto :goto_0

    .line 5341
    :cond_2
    iput-byte v1, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4840
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;
    .locals 1

    .prologue
    .line 5347
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4840
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;
    .locals 1

    .prologue
    .line 5352
    invoke-static {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$StateChange;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

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
    .line 5357
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

    .line 5363
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->getSerializedSize()I

    .line 5364
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 5365
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->getDialIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5367
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 5368
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->type_:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5370
    :cond_1
    return-void
.end method
