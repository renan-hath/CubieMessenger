.class public Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;
.super Ljava/lang/Object;
.source "ArtworkReplyRecord.java"


# static fields
.field public static final COLUMN_NAME_ARTWORK_ID:Ljava/lang/String; = "ARR_ARTWORK_ID"

.field public static final COLUMN_NAME_DELETED:Ljava/lang/String; = "ARR_DELETED"

.field public static final COLUMN_NAME_EDIT_TIME:Ljava/lang/String; = "ARR_EDIT_TIME"

.field public static final COLUMN_NAME_REPLY_CONTENT:Ljava/lang/String; = "ARR_REPLY_CONTENT"

.field public static final COLUMN_NAME_REPLY_ID:Ljava/lang/String; = "ARR_REPLY_ID"

.field public static final COLUMN_NAME_REPLY_TIME:Ljava/lang/String; = "ARR_REPLY_TIME"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "ARTWORK_REPLY_RECORD"

.field public static final _ID:Ljava/lang/String; = "ARR_UID"


# instance fields
.field private final artworkId:Ljava/lang/String;

.field private deleted:Z

.field private final editTime:J

.field private final replyContent:Ljava/lang/String;

.field private final replyId:Ljava/lang/String;

.field private final replyTime:J

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ARR_UID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "ARR_ARTWORK_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "ARR_REPLY_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "ARR_REPLY_CONTENT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "ARR_REPLY_TIME"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "ARR_EDIT_TIME"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "ARR_DELETED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 0
    .param p1, "artworkId"    # Ljava/lang/String;
    .param p2, "replyId"    # Ljava/lang/String;
    .param p3, "replyContent"    # Ljava/lang/String;
    .param p4, "replyTime"    # J
    .param p6, "editTime"    # J
    .param p8, "deleted"    # Z

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->artworkId:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->replyId:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->replyContent:Ljava/lang/String;

    .line 68
    iput-wide p4, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->replyTime:J

    .line 69
    iput-wide p6, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->editTime:J

    .line 70
    iput-boolean p8, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->deleted:Z

    .line 71
    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;
    .locals 11
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 9
    const-string/jumbo v9, "ARR_ARTWORK_ID"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    .local v1, "artworkId":Ljava/lang/String;
    const-string/jumbo v9, "ARR_REPLY_ID"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 11
    .local v2, "replyId":Ljava/lang/String;
    const-string/jumbo v9, "ARR_REPLY_CONTENT"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 12
    .local v3, "replyContent":Ljava/lang/String;
    const-string/jumbo v9, "ARR_REPLY_TIME"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 13
    .local v4, "replyTime":J
    const-string/jumbo v9, "ARR_EDIT_TIME"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 14
    .local v6, "editTime":J
    const-string/jumbo v9, "ARR_DELETED"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-lez v9, :cond_0

    const/4 v8, 0x1

    .line 15
    .local v8, "deleted":Z
    :goto_0
    new-instance v0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;

    invoke-direct/range {v0 .. v8}, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 21
    .local v0, "repliedArtwork":Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;
    const-string/jumbo v9, "ARR_UID"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v0, v9, v10}, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->setUid(J)V

    .line 22
    return-object v0

    .line 14
    .end local v0    # "repliedArtwork":Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;
    .end local v8    # "deleted":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 75
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "ARR_ARTWORK_ID"

    invoke-virtual {p0}, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->getArtworkId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v1, "ARR_REPLY_ID"

    invoke-virtual {p0}, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->getReplyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v1, "ARR_REPLY_CONTENT"

    invoke-virtual {p0}, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->getReplyContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string/jumbo v1, "ARR_REPLY_TIME"

    invoke-virtual {p0}, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->getReplyTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    const-string/jumbo v1, "ARR_EDIT_TIME"

    invoke-virtual {p0}, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->getEditTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    const-string/jumbo v1, "ARR_DELETED"

    invoke-virtual {p0}, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->isDeleted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 81
    return-object v0
.end method

.method public getArtworkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->artworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getEditTime()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->editTime:J

    return-wide v0
.end method

.method public getReplyContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->replyContent:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->replyId:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyTime()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->replyTime:J

    return-wide v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->uid:J

    return-wide v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->deleted:Z

    return v0
.end method

.method public setDeleted(Z)V
    .locals 0
    .param p1, "deleted"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->deleted:Z

    .line 114
    return-void
.end method

.method public setUid(J)V
    .locals 0
    .param p1, "uid"    # J

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->uid:J

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ArtworkReplyRecord [artworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->artworkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", replyContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->replyContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", replyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->replyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", replyTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->replyTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", editTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->editTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/main/artwork/ArtworkReplyRecord;->deleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
