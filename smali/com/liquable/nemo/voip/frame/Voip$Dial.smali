.class public final Lcom/liquable/nemo/voip/frame/Voip$Dial;
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
    name = "Dial"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    }
.end annotation


# static fields
.field public static final DIALER_UID_FIELD_NUMBER:I = 0x2

.field public static final DIAL_ID_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/voip/frame/Voip$Dial;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECEIVER_UID_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Dial;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private dialId_:Ljava/lang/Object;

.field private dialerUid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private receiverUid_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1240
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$Dial$1;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$Dial$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->PARSER:Lcom/google/protobuf/Parser;

    .line 1265
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$Dial;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$Dial;-><init>(Z)V

    sput-object v0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    .line 1266
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->initFields()V

    .line 1267
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 1279
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1258
    iput-byte v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->memoizedIsInitialized:B

    .line 1260
    iput v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->memoizedSerializedSize:I

    .line 1280
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->initFields()V

    .line 1281
    const/4 v2, 0x0

    .line 1283
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 1284
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1285
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1286
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1291
    invoke-virtual {p0, p1, p2, v3}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1292
    const/4 v0, 0x1

    goto :goto_0

    .line 1288
    :sswitch_0
    const/4 v0, 0x1

    .line 1289
    goto :goto_0

    .line 1297
    :sswitch_1
    iget v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->bitField0_:I

    .line 1298
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1313
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 1314
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1318
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->makeExtensionsImmutable()V

    throw v4

    .line 1302
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->bitField0_:I

    .line 1303
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialerUid_:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1315
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 1316
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1307
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "tag":I
    :sswitch_3
    :try_start_4
    iget v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->bitField0_:I

    .line 1308
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->receiverUid_:Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1318
    .end local v3    # "tag":I
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->makeExtensionsImmutable()V

    .line 1320
    return-void

    .line 1286
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 1001
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Dial;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v0, -0x1

    .line 1324
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1258
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->memoizedIsInitialized:B

    .line 1260
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->memoizedSerializedSize:I

    .line 1326
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .param p2, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$1;

    .prologue
    .line 1001
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$Dial;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 1275
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1258
    iput-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->memoizedIsInitialized:B

    .line 1260
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->memoizedSerializedSize:I

    .line 1275
    return-void
.end method

.method static synthetic access$1300(Lcom/liquable/nemo/voip/frame/Voip$Dial;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Dial;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/liquable/nemo/voip/frame/Voip$Dial;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Dial;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/liquable/nemo/voip/frame/Voip$Dial;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Dial;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialerUid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/liquable/nemo/voip/frame/Voip$Dial;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Dial;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialerUid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/liquable/nemo/voip/frame/Voip$Dial;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Dial;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->receiverUid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/liquable/nemo/voip/frame/Voip$Dial;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Dial;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->receiverUid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/liquable/nemo/voip/frame/Voip$Dial;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/frame/Voip$Dial;
    .param p1, "x1"    # I

    .prologue
    .line 1001
    iput p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Dial;
    .locals 1

    .prologue
    .line 1227
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1474
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialId_:Ljava/lang/Object;

    .line 1475
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialerUid_:Ljava/lang/Object;

    .line 1476
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->receiverUid_:Ljava/lang/Object;

    .line 1477
    return-void
.end method

.method public static newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    .locals 1

    .prologue
    .line 1231
    # invokes: Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->access$1700()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/liquable/nemo/voip/frame/Voip$Dial;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/liquable/nemo/voip/frame/Voip$Dial;

    .prologue
    .line 1235
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Dial;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1001
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Dial;
    .locals 1

    .prologue
    .line 1330
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->defaultInstance:Lcom/liquable/nemo/voip/frame/Voip$Dial;

    return-object v0
.end method

.method public getDialId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1368
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialId_:Ljava/lang/Object;

    .line 1369
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1370
    check-cast v1, Ljava/lang/String;

    .line 1377
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1372
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1373
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1374
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1375
    iput-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1377
    goto :goto_0
.end method

.method public getDialIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1385
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialId_:Ljava/lang/Object;

    .line 1386
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1387
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1388
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialId_:Ljava/lang/Object;

    .line 1391
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

.method public getDialerUid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1337
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialerUid_:Ljava/lang/Object;

    .line 1338
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1339
    check-cast v1, Ljava/lang/String;

    .line 1346
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1341
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1342
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1343
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1344
    iput-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialerUid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1346
    goto :goto_0
.end method

.method public getDialerUidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1354
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialerUid_:Ljava/lang/Object;

    .line 1355
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1356
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1357
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialerUid_:Ljava/lang/Object;

    .line 1360
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
            "Lcom/liquable/nemo/voip/frame/Voip$Dial;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1397
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getReceiverUid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1404
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->receiverUid_:Ljava/lang/Object;

    .line 1405
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1406
    check-cast v1, Ljava/lang/String;

    .line 1413
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1408
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1409
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1410
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1411
    iput-object v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->receiverUid_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1413
    goto :goto_0
.end method

.method public getReceiverUidBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1421
    iget-object v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->receiverUid_:Ljava/lang/Object;

    .line 1422
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1423
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1424
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->receiverUid_:Ljava/lang/Object;

    .line 1427
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

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1433
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->memoizedSerializedSize:I

    .line 1434
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1449
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 1438
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 1439
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 1440
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->getDialIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1442
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 1443
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->getDialerUidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1445
    :cond_2
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 1446
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->getReceiverUidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1448
    :cond_3
    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->memoizedSerializedSize:I

    move v1, v0

    .line 1449
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasDialId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1463
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDialerUid()Z
    .locals 2

    .prologue
    .line 1456
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->bitField0_:I

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

.method public hasReceiverUid()Z
    .locals 2

    .prologue
    .line 1470
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->bitField0_:I

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

    .line 1481
    iget-byte v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->memoizedIsInitialized:B

    .line 1482
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 1483
    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 1499
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 1483
    goto :goto_0

    .line 1486
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->hasDialId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1487
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->memoizedIsInitialized:B

    goto :goto_1

    .line 1490
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->hasDialerUid()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1491
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->memoizedIsInitialized:B

    goto :goto_1

    .line 1494
    :cond_3
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->hasReceiverUid()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1495
    iput-byte v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->memoizedIsInitialized:B

    goto :goto_1

    .line 1498
    :cond_4
    iput-byte v1, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->memoizedIsInitialized:B

    move v2, v1

    .line 1499
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1001
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    .locals 1

    .prologue
    .line 1504
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->newBuilder()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1001
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->toBuilder()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    .locals 1

    .prologue
    .line 1509
    invoke-static {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->newBuilder(Lcom/liquable/nemo/voip/frame/Voip$Dial;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

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
    .line 1514
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

    .line 1520
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->getSerializedSize()I

    .line 1521
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1522
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->getDialIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1524
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1525
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->getDialerUidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1527
    :cond_1
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1528
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->getReceiverUidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1530
    :cond_2
    return-void
.end method
