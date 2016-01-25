.class public abstract Lcom/liquable/nemo/notice/BaseNotice;
.super Ljava/lang/Object;
.source "BaseNotice.java"

# interfaces
.implements Lcom/liquable/nemo/notice/INotice;


# static fields
.field public static final COLUMN_NAME_CONTENT:Ljava/lang/String; = "NTC_CONTENT"

.field public static final COLUMN_NAME_READ:Ljava/lang/String; = "NTC_READ"

.field public static final COLUMN_NAME_TYPE:Ljava/lang/String; = "NTC_TYPE"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "NOTICE"

.field public static final _ID:Ljava/lang/String; = "NTC_ID"


# instance fields
.field private id:J

.field private read:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "NTC_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "NTC_CONTENT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "NTC_READ"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "NTC_TYPE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/notice/BaseNotice;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;Lcom/liquable/nemo/notice/NoticeMapper;)Lcom/liquable/nemo/notice/BaseNotice;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "noticeMapper"    # Lcom/liquable/nemo/notice/NoticeMapper;

    .prologue
    .line 17
    const-string/jumbo v1, "NTC_CONTENT"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/liquable/nemo/notice/NoticeMapper;->decode(Ljava/lang/String;)Lcom/liquable/nemo/notice/INotice;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/notice/BaseNotice;

    .line 19
    .local v0, "notice":Lcom/liquable/nemo/notice/BaseNotice;
    const-string/jumbo v1, "NTC_ID"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/notice/BaseNotice;->setId(J)V

    .line 20
    const-string/jumbo v1, "NTC_READ"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/notice/BaseNotice;->setRead(Z)V

    .line 22
    return-object v0

    .line 20
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/liquable/nemo/notice/BaseNotice;->id:J

    .line 61
    return-void
.end method


# virtual methods
.method public createContentValues(Lcom/liquable/nemo/notice/NoticeMapper;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "noticeMapper"    # Lcom/liquable/nemo/notice/NoticeMapper;

    .prologue
    .line 30
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 31
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "NTC_CONTENT"

    invoke-virtual {p1, p0}, Lcom/liquable/nemo/notice/NoticeMapper;->encode(Lcom/liquable/nemo/notice/INotice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v1, "NTC_READ"

    iget-boolean v2, p0, Lcom/liquable/nemo/notice/BaseNotice;->read:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 33
    const-string/jumbo v1, "NTC_TYPE"

    invoke-virtual {p0}, Lcom/liquable/nemo/notice/BaseNotice;->getNoticeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    if-ne p0, p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v1

    .line 42
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 46
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 48
    check-cast v0, Lcom/liquable/nemo/notice/BaseNotice;

    .line 49
    .local v0, "other":Lcom/liquable/nemo/notice/BaseNotice;
    iget-wide v3, p0, Lcom/liquable/nemo/notice/BaseNotice;->id:J

    iget-wide v5, v0, Lcom/liquable/nemo/notice/BaseNotice;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    .line 50
    goto :goto_0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/liquable/nemo/notice/BaseNotice;->id:J

    return-wide v0
.end method

.method protected final getNoticeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 69
    const/16 v0, 0x1f

    .line 70
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 71
    .local v1, "result":I
    iget-wide v2, p0, Lcom/liquable/nemo/notice/BaseNotice;->id:J

    iget-wide v4, p0, Lcom/liquable/nemo/notice/BaseNotice;->id:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 72
    return v1
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/liquable/nemo/notice/BaseNotice;->read:Z

    return v0
.end method

.method public isType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/notice/INotice;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "noticeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/liquable/nemo/notice/INotice;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setRead(Z)V
    .locals 0
    .param p1, "read"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/liquable/nemo/notice/BaseNotice;->read:Z

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BaseNotice [read="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/notice/BaseNotice;->read:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/notice/BaseNotice;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getNoticeType()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/BaseNotice;->getNoticeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isHidden()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/BaseNotice;->isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
