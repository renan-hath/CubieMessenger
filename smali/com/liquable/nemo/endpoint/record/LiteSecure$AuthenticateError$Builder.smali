.class public final Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LiteSecure.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;",
        "Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private code_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

.field private error_:Ljava/lang/Object;

.field private serverVersion_:Ljava/lang/Object;

.field private sessionId_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 642
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->serverVersion_:Ljava/lang/Object;

    .line 645
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->PLATFORM_ERROR:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->code_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    .line 648
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->error_:Ljava/lang/Object;

    .line 653
    invoke-direct {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->maybeForceBuilderInitialization()V

    .line 654
    return-void
.end method

.method static synthetic access$1400()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    .locals 1

    .prologue
    .line 629
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    .locals 1

    .prologue
    .line 634
    new-instance v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    invoke-direct {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 727
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->build()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
    .locals 2

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-result-object v0

    .line 659
    .local v0, "result":Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
    invoke-virtual {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 660
    invoke-static {v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 662
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
    .locals 5

    .prologue
    .line 667
    new-instance v1, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/liquable/nemo/endpoint/record/LiteSecure$1;)V

    .line 668
    .local v1, "result":Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    .line 669
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 670
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 671
    or-int/lit8 v2, v2, 0x1

    .line 673
    :cond_0
    iget-wide v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->sessionId_:J

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->sessionId_:J
    invoke-static {v1, v3, v4}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->access$902(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;J)J

    .line 674
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 675
    or-int/lit8 v2, v2, 0x2

    .line 677
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->serverVersion_:Ljava/lang/Object;

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->serverVersion_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->access$1002(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 679
    or-int/lit8 v2, v2, 0x4

    .line 681
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->code_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->code_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->access$1102(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    .line 682
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 683
    or-int/lit8 v2, v2, 0x8

    .line 685
    :cond_3
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->error_:Ljava/lang/Object;

    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->error_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->access$1202(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    # setter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->bitField0_:I
    invoke-static {v1, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->access$1302(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;I)I

    .line 687
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    .locals 2

    .prologue
    .line 692
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 693
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->sessionId_:J

    .line 694
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    .line 695
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->serverVersion_:Ljava/lang/Object;

    .line 696
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    .line 697
    sget-object v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;->PLATFORM_ERROR:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->code_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    .line 698
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    .line 699
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->error_:Ljava/lang/Object;

    .line 700
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    .line 701
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    .locals 2

    .prologue
    .line 706
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->create()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->buildPartial()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

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
    .line 629
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->clone()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
    .locals 1

    .prologue
    .line 711
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 716
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eq v2, v1, :cond_1

    .line 724
    :cond_0
    :goto_0
    return v0

    .line 720
    :cond_1
    iget v2, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 724
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
    .line 629
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 629
    check-cast p1, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

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
    .line 629
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 733
    const/4 v2, 0x0

    .line 735
    .local v2, "parsedMessage":Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;
    :try_start_0
    sget-object v3, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    if-eqz v2, :cond_0

    .line 741
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    .line 744
    :cond_0
    return-object p0

    .line 736
    :catch_0
    move-exception v1

    .line 737
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-object v2, v0

    .line 738
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 740
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 741
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    .locals 2
    .param p1, "other"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    .prologue
    .line 749
    invoke-static {}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->getDefaultInstance()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-object p0

    .line 752
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 753
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->getSessionId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->setSessionId(J)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    .line 755
    :cond_2
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->hasServerVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 756
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    .line 757
    # getter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->serverVersion_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->access$1000(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->serverVersion_:Ljava/lang/Object;

    .line 760
    :cond_3
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 761
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->getCode()Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->setCode(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;

    .line 763
    :cond_4
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    .line 765
    # getter for: Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->error_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;->access$1200(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->error_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCode(Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    .locals 1
    .param p1, "value"    # Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    .prologue
    .line 775
    if-nez p1, :cond_0

    .line 776
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 778
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    .line 779
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->code_:Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Code;

    .line 781
    return-object p0
.end method

.method public setError(Ljava/lang/String;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 788
    if-nez p1, :cond_0

    .line 789
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 791
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    .line 792
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->error_:Ljava/lang/Object;

    .line 794
    return-object p0
.end method

.method public setErrorBytes(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 801
    if-nez p1, :cond_0

    .line 802
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 804
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    .line 805
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->error_:Ljava/lang/Object;

    .line 807
    return-object p0
.end method

.method public setServerVersion(Ljava/lang/String;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 814
    if-nez p1, :cond_0

    .line 815
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 817
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    .line 818
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->serverVersion_:Ljava/lang/Object;

    .line 820
    return-object p0
.end method

.method public setServerVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 827
    if-nez p1, :cond_0

    .line 828
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 830
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    .line 831
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->serverVersion_:Ljava/lang/Object;

    .line 833
    return-object p0
.end method

.method public setSessionId(J)Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 840
    iget v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->bitField0_:I

    .line 841
    iput-wide p1, p0, Lcom/liquable/nemo/endpoint/record/LiteSecure$AuthenticateError$Builder;->sessionId_:J

    .line 843
    return-object p0
.end method
