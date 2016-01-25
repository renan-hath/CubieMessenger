.class public Lcom/liquable/nemo/main/artwork/ArtworkRecord;
.super Ljava/lang/Object;
.source "ArtworkRecord.java"


# static fields
.field public static final COLUMN_NAME_ARTWORK_ID:Ljava/lang/String; = "AR_ARTWORK_ID"

.field public static final COLUMN_NAME_LIKED_TIME:Ljava/lang/String; = "AR_LIKED_TIME"

.field public static final COLUMN_NAME_LIKE_COUNT:Ljava/lang/String; = "AR_LIKE_COUNT"

.field public static final COLUMN_NAME_REPLY_COUNT:Ljava/lang/String; = "AR_REPLY_COUNT"

.field public static final COLUMN_NAME_REPLY_TIME:Ljava/lang/String; = "AR_REPLY_TIME"

.field public static final LEGACY_TABLE_NAME:Ljava/lang/String; = "LIKED_ARTWORK"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "ARTWORK_RECORD"

.field public static final _ID:Ljava/lang/String; = "AR_UID"


# instance fields
.field private final artworkId:Ljava/lang/String;

.field private likeCount:I

.field private likedTime:J

.field private repliedTime:J

.field private replyCount:I

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "AR_UID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "AR_ARTWORK_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "AR_LIKE_COUNT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "AR_LIKED_TIME"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "AR_REPLY_COUNT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "AR_REPLY_TIME"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJIJ)V
    .locals 0
    .param p1, "artworkId"    # Ljava/lang/String;
    .param p2, "likeCount"    # I
    .param p3, "likedTime"    # J
    .param p5, "replyCount"    # I
    .param p6, "repliedTime"    # J

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->artworkId:Ljava/lang/String;

    .line 60
    iput p2, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->likeCount:I

    .line 61
    iput-wide p3, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->likedTime:J

    .line 62
    iput p5, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->replyCount:I

    .line 63
    iput-wide p6, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->repliedTime:J

    .line 64
    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/main/artwork/ArtworkRecord;
    .locals 10
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 9
    const-string/jumbo v8, "AR_ARTWORK_ID"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    .local v1, "artworkId":Ljava/lang/String;
    const-string/jumbo v8, "AR_LIKE_COUNT"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 11
    .local v2, "likeCount":I
    const-string/jumbo v8, "AR_LIKED_TIME"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 12
    .local v3, "likedTime":J
    const-string/jumbo v8, "AR_REPLY_COUNT"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 13
    .local v5, "replyCount":I
    const-string/jumbo v8, "AR_REPLY_TIME"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 14
    .local v6, "repliedTime":J
    new-instance v0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;

    invoke-direct/range {v0 .. v7}, Lcom/liquable/nemo/main/artwork/ArtworkRecord;-><init>(Ljava/lang/String;IJIJ)V

    .line 19
    .local v0, "likedArtwork":Lcom/liquable/nemo/main/artwork/ArtworkRecord;
    const-string/jumbo v8, "AR_UID"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->setUid(J)V

    .line 20
    return-object v0
.end method

.method private setLikeCount(I)V
    .locals 0
    .param p1, "likeCount"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->likeCount:I

    .line 112
    return-void
.end method

.method private setLikedTime(J)V
    .locals 0
    .param p1, "likedTime"    # J

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->likedTime:J

    .line 116
    return-void
.end method

.method private setRepliedTime(J)V
    .locals 0
    .param p1, "repliedTime"    # J

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->repliedTime:J

    .line 120
    return-void
.end method

.method private setReplyCount(I)V
    .locals 0
    .param p1, "replyCount"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->replyCount:I

    .line 124
    return-void
.end method


# virtual methods
.method public createContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 67
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 68
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "AR_ARTWORK_ID"

    invoke-virtual {p0}, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->getArtworkId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v1, "AR_LIKE_COUNT"

    invoke-virtual {p0}, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->getLikeCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    const-string/jumbo v1, "AR_LIKED_TIME"

    invoke-virtual {p0}, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->getLikedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    const-string/jumbo v1, "AR_REPLY_COUNT"

    invoke-virtual {p0}, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->getReplyCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string/jumbo v1, "AR_REPLY_TIME"

    invoke-virtual {p0}, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->getRepliedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    return-object v0
.end method

.method public getArtworkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->artworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getLikeCount()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->likeCount:I

    return v0
.end method

.method public getLikedTime()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->likedTime:J

    return-wide v0
.end method

.method public getRepliedTime()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->repliedTime:J

    return-wide v0
.end method

.method public getReplyCount()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->replyCount:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->uid:J

    return-wide v0
.end method

.method public like(IJ)V
    .locals 0
    .param p1, "likeCount"    # I
    .param p2, "likedTime"    # J

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->setLikeCount(I)V

    .line 102
    invoke-direct {p0, p2, p3}, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->setLikedTime(J)V

    .line 103
    return-void
.end method

.method public reply(IJ)V
    .locals 0
    .param p1, "replyCount"    # I
    .param p2, "replyTime"    # J

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->setReplyCount(I)V

    .line 107
    invoke-direct {p0, p2, p3}, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->setRepliedTime(J)V

    .line 108
    return-void
.end method

.method public setUid(J)V
    .locals 0
    .param p1, "uid"    # J

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->uid:J

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ArtworkRecord [artworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->artworkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", likeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->likeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", likedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->likedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", replyCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->replyCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", repliedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/main/artwork/ArtworkRecord;->repliedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
