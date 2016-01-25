.class public final Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Voip.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/frame/Voip$StateChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/liquable/nemo/voip/frame/Voip$StateChange;",
        "Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dialId_:Ljava/lang/Object;

.field private type_:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4861
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4855
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->dialId_:Ljava/lang/Object;

    .line 4858
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->REJECT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->type_:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .line 4862
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->maybeForceBuilderInitialization()V

    .line 4863
    return-void
.end method

.method static synthetic access$6800()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;
    .locals 1

    .prologue
    .line 4845
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;
    .locals 1

    .prologue
    .line 4850
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 4920
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4845
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/liquable/nemo/voip/frame/Voip$StateChange;
    .locals 2

    .prologue
    .line 4867
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v0

    .line 4868
    .local v0, "result":Lcom/liquable/nemo/voip/frame/Voip$StateChange;
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4869
    invoke-static {v0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4871
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4845
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/liquable/nemo/voip/frame/Voip$StateChange;
    .locals 5

    .prologue
    .line 4876
    new-instance v1, Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V

    .line 4877
    .local v1, "result":Lcom/liquable/nemo/voip/frame/Voip$StateChange;
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->bitField0_:I

    .line 4878
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 4879
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4880
    or-int/lit8 v2, v2, 0x1

    .line 4882
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->dialId_:Ljava/lang/Object;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$StateChange;->dialId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->access$6502(Lcom/liquable/nemo/voip/frame/Voip$StateChange;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4883
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4884
    or-int/lit8 v2, v2, 0x2

    .line 4886
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->type_:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$StateChange;->type_:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->access$6602(Lcom/liquable/nemo/voip/frame/Voip$StateChange;Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .line 4887
    # setter for: Lcom/liquable/nemo/voip/frame/Voip$StateChange;->bitField0_:I
    invoke-static {v1, v2}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->access$6702(Lcom/liquable/nemo/voip/frame/Voip$StateChange;I)I

    .line 4888
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4845
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4845
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;
    .locals 1

    .prologue
    .line 4893
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4894
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->dialId_:Ljava/lang/Object;

    .line 4895
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->bitField0_:I

    .line 4896
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->REJECT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->type_:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .line 4897
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->bitField0_:I

    .line 4898
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4845
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4845
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4845
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;
    .locals 2

    .prologue
    .line 4903
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$StateChange;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

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
    .line 4845
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 4845
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4845
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$StateChange;
    .locals 1

    .prologue
    .line 4908
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4913
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eq v1, v0, :cond_0

    .line 4915
    const/4 v0, 0x0

    .line 4917
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
    .line 4845
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4845
    check-cast p1, Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$StateChange;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

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
    .line 4845
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4926
    const/4 v2, 0x0

    .line 4928
    .local v2, "parsedMessage":Lcom/liquable/nemo/voip/frame/Voip$StateChange;
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4933
    if-eqz v2, :cond_0

    .line 4934
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$StateChange;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    .line 4937
    :cond_0
    return-object p0

    .line 4929
    :catch_0
    move-exception v1

    .line 4930
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-object v2, v0

    .line 4931
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4933
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 4934
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$StateChange;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$StateChange;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;
    .locals 1
    .param p1, "other"    # Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    .prologue
    .line 4942
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4953
    :cond_0
    :goto_0
    return-object p0

    .line 4945
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->hasDialId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4946
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->bitField0_:I

    .line 4947
    # getter for: Lcom/liquable/nemo/voip/frame/Voip$StateChange;->dialId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->access$6500(Lcom/liquable/nemo/voip/frame/Voip$StateChange;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->dialId_:Ljava/lang/Object;

    .line 4950
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4951
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->getType()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->setType(Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;

    goto :goto_0
.end method

.method public setDialId(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4960
    if-nez p1, :cond_0

    .line 4961
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4963
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->bitField0_:I

    .line 4964
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->dialId_:Ljava/lang/Object;

    .line 4966
    return-object p0
.end method

.method public setDialIdBytes(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 4973
    if-nez p1, :cond_0

    .line 4974
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4976
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->bitField0_:I

    .line 4977
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->dialId_:Ljava/lang/Object;

    .line 4979
    return-object p0
.end method

.method public setType(Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;)Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .prologue
    .line 4986
    if-nez p1, :cond_0

    .line 4987
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4989
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->bitField0_:I

    .line 4990
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Builder;->type_:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    .line 4992
    return-object p0
.end method
