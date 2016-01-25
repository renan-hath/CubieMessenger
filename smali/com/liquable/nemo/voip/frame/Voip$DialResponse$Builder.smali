.class public final Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Voip.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/liquable/nemo/voip/frame/Voip$DialResponse;",
        "Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dialId_:Ljava/lang/Object;

.field private status_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1561
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->dialId_:Ljava/lang/Object;

    .line 1564
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;->OK:Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->status_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    .line 1568
    invoke-direct {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->maybeForceBuilderInitialization()V

    .line 1569
    return-void
.end method

.method static synthetic access$2300()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;
    .locals 1

    .prologue
    .line 1551
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;
    .locals 1

    .prologue
    .line 1556
    new-instance v0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1626
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->build()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    .locals 2

    .prologue
    .line 1573
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v0

    .line 1574
    .local v0, "result":Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1575
    invoke-static {v0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1577
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    .locals 5

    .prologue
    .line 1582
    new-instance v1, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/voip/frame/Voip$1;)V

    .line 1583
    .local v1, "result":Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->bitField0_:I

    .line 1584
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1585
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1586
    or-int/lit8 v2, v2, 0x1

    .line 1588
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->dialId_:Ljava/lang/Object;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->dialId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->access$2002(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1590
    or-int/lit8 v2, v2, 0x2

    .line 1592
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->status_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    # setter for: Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->status_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;
    invoke-static {v1, v3}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->access$2102(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    .line 1593
    # setter for: Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->access$2202(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;I)I

    .line 1594
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->clear()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;
    .locals 1

    .prologue
    .line 1599
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1600
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->dialId_:Ljava/lang/Object;

    .line 1601
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->bitField0_:I

    .line 1602
    sget-object v0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;->OK:Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->status_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    .line 1603
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->bitField0_:I

    .line 1604
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;
    .locals 2

    .prologue
    .line 1609
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->create()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->buildPartial()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

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
    .line 1551
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->clone()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    .locals 1

    .prologue
    .line 1614
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1619
    iget v1, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eq v1, v0, :cond_0

    .line 1621
    const/4 v0, 0x0

    .line 1623
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
    .line 1551
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1551
    check-cast p1, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

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
    .line 1551
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1632
    const/4 v2, 0x0

    .line 1634
    .local v2, "parsedMessage":Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1639
    if-eqz v2, :cond_0

    .line 1640
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    .line 1643
    :cond_0
    return-object p0

    .line 1635
    :catch_0
    move-exception v1

    .line 1636
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-object v2, v0

    .line 1637
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1639
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1640
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;
    .locals 1
    .param p1, "other"    # Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    .prologue
    .line 1648
    invoke-static {}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->getDefaultInstance()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1659
    :cond_0
    :goto_0
    return-object p0

    .line 1651
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->hasDialId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1652
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->bitField0_:I

    .line 1653
    # getter for: Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->dialId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->access$2000(Lcom/liquable/nemo/voip/frame/Voip$DialResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->dialId_:Ljava/lang/Object;

    .line 1656
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1657
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->getStatus()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->setStatus(Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;

    goto :goto_0
.end method

.method public setDialId(Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1666
    if-nez p1, :cond_0

    .line 1667
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1669
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->bitField0_:I

    .line 1670
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->dialId_:Ljava/lang/Object;

    .line 1672
    return-object p0
.end method

.method public setDialIdBytes(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1679
    if-nez p1, :cond_0

    .line 1680
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1682
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->bitField0_:I

    .line 1683
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->dialId_:Ljava/lang/Object;

    .line 1685
    return-object p0
.end method

.method public setStatus(Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;)Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    .prologue
    .line 1692
    if-nez p1, :cond_0

    .line 1693
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1695
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->bitField0_:I

    .line 1696
    iput-object p1, p0, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Builder;->status_:Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    .line 1698
    return-object p0
.end method
