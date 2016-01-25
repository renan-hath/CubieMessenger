.class public final Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Voip.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/frame/Voip$Dial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/liquable/nemo/voip/frame/Voip$Dial;",
        "Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dialId_:Ljava/lang/Object;

.field private dialerUid_:Ljava/lang/Object;

.field private receiverUid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1029
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1020
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->dialId_:Ljava/lang/Object;

    .line 1023
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->dialerUid_:Ljava/lang/Object;

    .line 1026
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->receiverUid_:Ljava/lang/Object;

    .line 1030
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->maybeForceBuilderInitialization()V

    .line 1031
    return-void
.end method

.method static synthetic access$1700()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    .locals 1

    .prologue
    .line 1010
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    .locals 1

    .prologue
    .line 1015
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1102
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/liquable/nemo/voip/frame/Voip$Dial;
    .locals 2

    .prologue
    .line 1035
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-result-object v0

    .line 1036
    .local v0, "result":Lcom/liquable/nemo/voip/frame/Voip$Dial;
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1037
    invoke-static {v0}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1039
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Dial;
    .locals 5

    .prologue
    .line 1044
    new-instance v1, Lcom/liquable/nemo/voip/frame/Voip$Dial;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/voip/frame/Voip$Dial;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V

    .line 1045
    .local v1, "result":Lcom/liquable/nemo/voip/frame/Voip$Dial;
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    .line 1046
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1047
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1048
    or-int/lit8 v2, v2, 0x1

    .line 1050
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->dialId_:Ljava/lang/Object;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->access$1302(Lcom/liquable/nemo/voip/frame/Voip$Dial;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1052
    or-int/lit8 v2, v2, 0x2

    .line 1054
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->dialerUid_:Ljava/lang/Object;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialerUid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->access$1402(Lcom/liquable/nemo/voip/frame/Voip$Dial;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1056
    or-int/lit8 v2, v2, 0x4

    .line 1058
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->receiverUid_:Ljava/lang/Object;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Dial;->receiverUid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->access$1502(Lcom/liquable/nemo/voip/frame/Voip$Dial;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    # setter for: Lcom/liquable/nemo/voip/frame/Voip$Dial;->bitField0_:I
    invoke-static {v1, v2}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->access$1602(Lcom/liquable/nemo/voip/frame/Voip$Dial;I)I

    .line 1060
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    .locals 1

    .prologue
    .line 1065
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1066
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->dialId_:Ljava/lang/Object;

    .line 1067
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    .line 1068
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->dialerUid_:Ljava/lang/Object;

    .line 1069
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    .line 1070
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->receiverUid_:Ljava/lang/Object;

    .line 1071
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    .line 1072
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    .locals 2

    .prologue
    .line 1077
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Dial;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

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
    .line 1010
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$Dial;
    .locals 1

    .prologue
    .line 1082
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1087
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eq v2, v1, :cond_1

    .line 1099
    :cond_0
    :goto_0
    return v0

    .line 1091
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1095
    iget v2, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 1099
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
    .line 1010
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1010
    check-cast p1, Lcom/liquable/nemo/voip/frame/Voip$Dial;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Dial;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

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
    .line 1010
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1108
    const/4 v2, 0x0

    .line 1110
    .local v2, "parsedMessage":Lcom/liquable/nemo/voip/frame/Voip$Dial;
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/voip/frame/Voip$Dial;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    if-eqz v2, :cond_0

    .line 1116
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Dial;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    .line 1119
    :cond_0
    return-object p0

    .line 1111
    :catch_0
    move-exception v1

    .line 1112
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-object v2, v0

    .line 1113
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1115
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1116
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Dial;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$Dial;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    .locals 1
    .param p1, "other"    # Lcom/liquable/nemo/voip/frame/Voip$Dial;

    .prologue
    .line 1124
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$Dial;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1142
    :cond_0
    :goto_0
    return-object p0

    .line 1127
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->hasDialId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1128
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    .line 1129
    # getter for: Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->access$1300(Lcom/liquable/nemo/voip/frame/Voip$Dial;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->dialId_:Ljava/lang/Object;

    .line 1132
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->hasDialerUid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1133
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    .line 1134
    # getter for: Lcom/liquable/nemo/voip/frame/Voip$Dial;->dialerUid_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->access$1400(Lcom/liquable/nemo/voip/frame/Voip$Dial;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->dialerUid_:Ljava/lang/Object;

    .line 1137
    :cond_3
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->hasReceiverUid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    .line 1139
    # getter for: Lcom/liquable/nemo/voip/frame/Voip$Dial;->receiverUid_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/liquable/nemo/voip/frame/Voip$Dial;->access$1500(Lcom/liquable/nemo/voip/frame/Voip$Dial;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->receiverUid_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDialId(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1175
    if-nez p1, :cond_0

    .line 1176
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1178
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    .line 1179
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->dialId_:Ljava/lang/Object;

    .line 1181
    return-object p0
.end method

.method public setDialIdBytes(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1188
    if-nez p1, :cond_0

    .line 1189
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1191
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    .line 1192
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->dialId_:Ljava/lang/Object;

    .line 1194
    return-object p0
.end method

.method public setDialerUid(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1149
    if-nez p1, :cond_0

    .line 1150
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1152
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    .line 1153
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->dialerUid_:Ljava/lang/Object;

    .line 1155
    return-object p0
.end method

.method public setDialerUidBytes(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1162
    if-nez p1, :cond_0

    .line 1163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1165
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    .line 1166
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->dialerUid_:Ljava/lang/Object;

    .line 1168
    return-object p0
.end method

.method public setReceiverUid(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1201
    if-nez p1, :cond_0

    .line 1202
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1204
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    .line 1205
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->receiverUid_:Ljava/lang/Object;

    .line 1207
    return-object p0
.end method

.method public setReceiverUidBytes(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1214
    if-nez p1, :cond_0

    .line 1215
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1217
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->bitField0_:I

    .line 1218
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$Dial$Builder;->receiverUid_:Ljava/lang/Object;

    .line 1220
    return-object p0
.end method
