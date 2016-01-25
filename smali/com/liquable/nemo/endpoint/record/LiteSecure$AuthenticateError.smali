.class public final Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
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
    name = "AuthenticateError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;,
        Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x3

.field public static final ERROR_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVER_VERSION_FIELD_NUMBER:I = 0x2

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private code_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

.field private error_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private serverVersion_:Ljava/lang/Object;

.field private sessionId_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 943
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$1;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->PARSER:Lcom/google/protobuf/Parser;

    .line 968
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;-><init>(Z)V

    sput-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    .line 969
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->initFields()V

    .line 970
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

    .line 985
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 961
    iput-byte v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->memoizedIsInitialized:B

    .line 963
    iput v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->memoizedSerializedSize:I

    .line 986
    invoke-direct {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->initFields()V

    .line 987
    const/4 v2, 0x0

    .line 989
    .local v2, "mutable_bitField0_":I
    const/4 v0, 0x0

    .line 990
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 991
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 992
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 997
    invoke-virtual {p0, p1, p2, v4}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 998
    const/4 v0, 0x1

    goto :goto_0

    .line 994
    :sswitch_0
    const/4 v0, 0x1

    .line 995
    goto :goto_0

    .line 1003
    :sswitch_1
    iget v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

    .line 1004
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->sessionId_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1028
    .end local v4    # "tag":I
    :catch_0
    move-exception v1

    .line 1029
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1033
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->makeExtensionsImmutable()V

    throw v6

    .line 1008
    .restart local v4    # "tag":I
    :sswitch_2
    :try_start_2
    iget v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

    .line 1009
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->serverVersion_:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1030
    .end local v4    # "tag":I
    :catch_1
    move-exception v1

    .line 1031
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

    .line 1013
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "tag":I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 1014
    .local v3, "rawValue":I
    invoke-static {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->valueOf(I)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    move-result-object v5

    .line 1015
    .local v5, "value":Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;
    if-eqz v5, :cond_0

    .line 1016
    iget v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

    .line 1017
    iput-object v5, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->code_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    goto :goto_0

    .line 1022
    .end local v3    # "rawValue":I
    .end local v5    # "value":Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;
    :sswitch_4
    iget v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

    .line 1023
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->error_:Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1033
    .end local v4    # "tag":I
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->makeExtensionsImmutable()V

    .line 1035
    return-void

    .line 992
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 624
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .prologue
    const/4 v0, -0x1

    .line 1039
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 961
    iput-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->memoizedIsInitialized:B

    .line 963
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->memoizedSerializedSize:I

    .line 1041
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/endpoint/record/LiteSecure$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .param p2, "x1"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$1;

    .prologue
    .line 624
    invoke-direct {p0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 981
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 961
    iput-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->memoizedIsInitialized:B

    .line 963
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->memoizedSerializedSize:I

    .line 981
    return-void
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->serverVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->serverVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
    .param p1, "x1"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->code_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    .prologue
    .line 624
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->error_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->error_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
    .param p1, "x1"    # I

    .prologue
    .line 624
    iput p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

    return p1
.end method

.method static synthetic access$902(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;J)J
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
    .param p1, "x1"    # J

    .prologue
    .line 624
    iput-wide p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->sessionId_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
    .locals 1

    .prologue
    .line 930
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 1182
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->sessionId_:J

    .line 1183
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->serverVersion_:Ljava/lang/Object;

    .line 1184
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->PLATFORM_ERROR:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->code_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    .line 1185
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->error_:Ljava/lang/Object;

    .line 1186
    return-void
.end method

.method public static newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    .locals 1

    .prologue
    .line 934
    # invokes: Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->access$1400()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    .prologue
    .line 938
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCode()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->code_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
    .locals 1

    .prologue
    .line 1052
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->defaultInstance:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->error_:Ljava/lang/Object;

    .line 1060
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1061
    check-cast v1, Ljava/lang/String;

    .line 1068
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1063
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1064
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1065
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1066
    iput-object v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->error_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1068
    goto :goto_0
.end method

.method public getErrorBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->error_:Ljava/lang/Object;

    .line 1077
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1078
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1079
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->error_:Ljava/lang/Object;

    .line 1082
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
            "Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1088
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1093
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->memoizedSerializedSize:I

    .line 1094
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1112
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 1098
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 1099
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 1100
    iget-wide v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->sessionId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1102
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 1103
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->getServerVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1105
    :cond_2
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 1106
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->code_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1108
    :cond_3
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 1109
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->getErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1111
    :cond_4
    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->memoizedSerializedSize:I

    move v1, v0

    .line 1112
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getServerVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1119
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->serverVersion_:Ljava/lang/Object;

    .line 1120
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1121
    check-cast v1, Ljava/lang/String;

    .line 1128
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1123
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1124
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1125
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1126
    iput-object v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->serverVersion_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1128
    goto :goto_0
.end method

.method public getServerVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1136
    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->serverVersion_:Ljava/lang/Object;

    .line 1137
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1138
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1139
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->serverVersion_:Ljava/lang/Object;

    .line 1142
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

.method public getSessionId()J
    .locals 2

    .prologue
    .line 1150
    iget-wide v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->sessionId_:J

    return-wide v0
.end method

.method public hasCode()Z
    .locals 2

    .prologue
    .line 1157
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

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

.method public hasError()Z
    .locals 2

    .prologue
    .line 1164
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServerVersion()Z
    .locals 2

    .prologue
    .line 1171
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

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

.method public hasSessionId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1178
    iget v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

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

    .line 1190
    iget-byte v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->memoizedIsInitialized:B

    .line 1191
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 1192
    if-ne v0, v1, :cond_0

    .line 1204
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1192
    goto :goto_0

    .line 1195
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->hasSessionId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1196
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->memoizedIsInitialized:B

    move v1, v2

    .line 1197
    goto :goto_0

    .line 1199
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->hasServerVersion()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1200
    iput-byte v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->memoizedIsInitialized:B

    move v1, v2

    .line 1201
    goto :goto_0

    .line 1203
    :cond_3
    iput-byte v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->newBuilderForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    .locals 1

    .prologue
    .line 1209
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->newBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    .locals 1

    .prologue
    .line 1214
    invoke-static {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->newBuilder(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

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
    .line 1219
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1225
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->getSerializedSize()I

    .line 1226
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 1227
    iget-wide v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->sessionId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeSInt64(IJ)V

    .line 1229
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 1230
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->getServerVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1232
    :cond_1
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 1233
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->code_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1235
    :cond_2
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 1236
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->getErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1238
    :cond_3
    return-void
.end method
