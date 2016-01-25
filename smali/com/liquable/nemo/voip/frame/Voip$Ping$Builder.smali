.class public final Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Voip.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/frame/Voip$Ping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/liquable/nemo/voip/frame/Voip$Ping;",
        "Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dialId_:Ljava/lang/Object;

.field private pingId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2944
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2938
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->pingId_:Ljava/lang/Object;

    .line 2941
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->dialId_:Ljava/lang/Object;

    .line 2945
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->maybeForceBuilderInitialization()V

    .line 2946
    return-void
.end method

.method static synthetic access$4200()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    .locals 1

    .prologue
    .line 2928
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    .locals 1

    .prologue
    .line 2933
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 3007
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2928
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/liquable/nemo/voip/frame/Voip$Ping;
    .locals 2

    .prologue
    .line 2950
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v0

    .line 2951
    .local v0, "result":Lcom/liquable/nemo/voip/frame/Voip$Ping;
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2952
    invoke-static {v0}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2954
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2928
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Ping;
    .locals 5

    .prologue
    .line 2959
    new-instance v1, Lcom/liquable/nemo/voip/frame/Voip$Ping;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/voip/frame/Voip$Ping;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V

    .line 2960
    .local v1, "result":Lcom/liquable/nemo/voip/frame/Voip$Ping;
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->bitField0_:I

    .line 2961
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 2962
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2963
    or-int/lit8 v2, v2, 0x1

    .line 2965
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->pingId_:Ljava/lang/Object;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Ping;->pingId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->access$3902(Lcom/liquable/nemo/voip/frame/Voip$Ping;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2966
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2967
    or-int/lit8 v2, v2, 0x2

    .line 2969
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->dialId_:Ljava/lang/Object;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Ping;->dialId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->access$4002(Lcom/liquable/nemo/voip/frame/Voip$Ping;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2970
    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Ping;->bitField0_:I
    invoke-static {v1, v2}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->access$4102(Lcom/liquable/nemo/voip/frame/Voip$Ping;I)I

    .line 2971
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2928
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2928
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    .locals 1

    .prologue
    .line 2976
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2977
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->pingId_:Ljava/lang/Object;

    .line 2978
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->bitField0_:I

    .line 2979
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->dialId_:Ljava/lang/Object;

    .line 2980
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->bitField0_:I

    .line 2981
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2928
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2928
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2928
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    .locals 2

    .prologue
    .line 2986
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

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
    .line 2928
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2928
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2928
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Ping;
    .locals 1

    .prologue
    .line 2991
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2996
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eq v2, v1, :cond_1

    .line 3004
    :cond_0
    :goto_0
    return v0

    .line 3000
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 3004
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
    .line 2928
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2928
    check-cast p1, Lcom/liquable/nemo/voip/frame/Voip$Ping;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

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
    .line 2928
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3013
    const/4 v2, 0x0

    .line 3015
    .local v2, "parsedMessage":Lcom/liquable/nemo/voip/frame/Voip$Ping;
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/voip/frame/Voip$Ping;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3020
    if-eqz v2, :cond_0

    .line 3021
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    .line 3024
    :cond_0
    return-object p0

    .line 3016
    :catch_0
    move-exception v1

    .line 3017
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-object v2, v0

    .line 3018
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3020
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 3021
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    .locals 1
    .param p1, "other"    # Lcom/liquable/nemo/voip/frame/Voip$Ping;

    .prologue
    .line 3029
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3042
    :cond_0
    :goto_0
    return-object p0

    .line 3032
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->hasPingId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3033
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->bitField0_:I

    .line 3034
    # getter for: Lcom/liquable/nemo/voip/frame/Voip$Ping;->pingId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->access$3900(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->pingId_:Ljava/lang/Object;

    .line 3037
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->hasDialId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3038
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->bitField0_:I

    .line 3039
    # getter for: Lcom/liquable/nemo/voip/frame/Voip$Ping;->dialId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->access$4000(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->dialId_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDialId(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3049
    if-nez p1, :cond_0

    .line 3050
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3052
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->bitField0_:I

    .line 3053
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->dialId_:Ljava/lang/Object;

    .line 3055
    return-object p0
.end method

.method public setDialIdBytes(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3062
    if-nez p1, :cond_0

    .line 3063
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3065
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->bitField0_:I

    .line 3066
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->dialId_:Ljava/lang/Object;

    .line 3068
    return-object p0
.end method

.method public setPingId(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3075
    if-nez p1, :cond_0

    .line 3076
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3078
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->bitField0_:I

    .line 3079
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->pingId_:Ljava/lang/Object;

    .line 3081
    return-object p0
.end method

.method public setPingIdBytes(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3088
    if-nez p1, :cond_0

    .line 3089
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3091
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->bitField0_:I

    .line 3092
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Ping$Builder;->pingId_:Ljava/lang/Object;

    .line 3094
    return-object p0
.end method
