.class public Lcom/liquable/nemo/message/model/ReadedAck;
.super Ljava/lang/Object;
.source "ReadedAck.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final COLUMN_NAME_MESSAGE_ID:Ljava/lang/String; = "RA_MESSAGE_ID"

.field public static final COLUMN_NAME_RECEIVER_UID:Ljava/lang/String; = "RA_RECEIVER_UID"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "READED_ACK"

.field private static final serialVersionUID:J = 0x50b17912e9bb4451L


# instance fields
.field final messageId:Ljava/lang/String;

.field final receiverUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "RA_MESSAGE_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "RA_RECEIVER_UID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/message/model/ReadedAck;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "receiverUid"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/liquable/nemo/message/model/ReadedAck;->messageId:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/liquable/nemo/message/model/ReadedAck;->receiverUid:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/message/model/ReadedAck;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 11
    new-instance v0, Lcom/liquable/nemo/message/model/ReadedAck;

    const-string/jumbo v1, "RA_MESSAGE_ID"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RA_RECEIVER_UID"

    .line 12
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/message/model/ReadedAck;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 38
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "RA_MESSAGE_ID"

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/ReadedAck;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v1, "RA_RECEIVER_UID"

    invoke-virtual {p0}, Lcom/liquable/nemo/message/model/ReadedAck;->getReceiverUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    if-ne p0, p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 48
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 52
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 54
    check-cast v0, Lcom/liquable/nemo/message/model/ReadedAck;

    .line 55
    .local v0, "other":Lcom/liquable/nemo/message/model/ReadedAck;
    iget-object v3, p0, Lcom/liquable/nemo/message/model/ReadedAck;->messageId:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 56
    iget-object v3, v0, Lcom/liquable/nemo/message/model/ReadedAck;->messageId:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 57
    goto :goto_0

    .line 59
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/message/model/ReadedAck;->messageId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/message/model/ReadedAck;->messageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 60
    goto :goto_0

    .line 62
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/message/model/ReadedAck;->receiverUid:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 63
    iget-object v3, v0, Lcom/liquable/nemo/message/model/ReadedAck;->receiverUid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 64
    goto :goto_0

    .line 66
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/message/model/ReadedAck;->receiverUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/message/model/ReadedAck;->receiverUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 67
    goto :goto_0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/liquable/nemo/message/model/ReadedAck;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/liquable/nemo/message/model/ReadedAck;->receiverUid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 82
    const/16 v0, 0x1f

    .line 83
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 84
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/message/model/ReadedAck;->messageId:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 85
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/message/model/ReadedAck;->receiverUid:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 86
    return v1

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/message/model/ReadedAck;->messageId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 85
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/message/model/ReadedAck;->receiverUid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method
