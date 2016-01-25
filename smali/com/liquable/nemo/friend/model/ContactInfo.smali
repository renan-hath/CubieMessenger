.class public Lcom/liquable/nemo/friend/model/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"


# static fields
.field public static final COLUMN_NAME_NAME:Ljava/lang/String; = "CI_NAME"

.field public static final COLUMN_NAME_PHONE_NUMBER:Ljava/lang/String; = "CI_PHONE_NUMBER"

.field public static final COLUMN_NAME_PHOTO_ID:Ljava/lang/String; = "CI_PHOTO_ID"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "CONTACT_INFOS"


# instance fields
.field private final lookupKey:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final phoneNumber:Ljava/lang/String;

.field private final photoId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "CI_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "CI_PHONE_NUMBER"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "CI_PHOTO_ID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/friend/model/ContactInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "photoId"    # J

    .prologue
    .line 34
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/friend/model/ContactInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "photoId"    # J
    .param p5, "lookupKey"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/ContactInfo;->name:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/liquable/nemo/friend/model/ContactInfo;->phoneNumber:Ljava/lang/String;

    .line 43
    iput-wide p3, p0, Lcom/liquable/nemo/friend/model/ContactInfo;->photoId:J

    .line 44
    iput-object p5, p0, Lcom/liquable/nemo/friend/model/ContactInfo;->lookupKey:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/friend/model/ContactInfo;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 8
    const-string/jumbo v3, "CI_NAME"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 9
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v3, "CI_PHONE_NUMBER"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    .local v1, "phoneNumber":Ljava/lang/String;
    const-string/jumbo v3, "CI_PHOTO_ID"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 11
    .local v2, "photoId":Ljava/lang/Long;
    new-instance v3, Lcom/liquable/nemo/friend/model/ContactInfo;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/liquable/nemo/friend/model/ContactInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v3
.end method


# virtual methods
.method public createContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 49
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "CI_NAME"

    invoke-virtual {p0}, Lcom/liquable/nemo/friend/model/ContactInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v1, "CI_PHOTO_ID"

    iget-wide v2, p0, Lcom/liquable/nemo/friend/model/ContactInfo;->photoId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    const-string/jumbo v1, "CI_PHONE_NUMBER"

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/ContactInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    if-ne p0, p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 61
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 65
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 67
    check-cast v0, Lcom/liquable/nemo/friend/model/ContactInfo;

    .line 68
    .local v0, "other":Lcom/liquable/nemo/friend/model/ContactInfo;
    iget-object v3, p0, Lcom/liquable/nemo/friend/model/ContactInfo;->phoneNumber:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 69
    iget-object v3, v0, Lcom/liquable/nemo/friend/model/ContactInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 70
    goto :goto_0

    .line 72
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/friend/model/ContactInfo;->phoneNumber:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/friend/model/ContactInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 73
    goto :goto_0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/ContactInfo;->lookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/ContactInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/ContactInfo;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/liquable/nemo/friend/model/ContactInfo;->photoId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 96
    const/16 v0, 0x1f

    .line 97
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 98
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/ContactInfo;->phoneNumber:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 99
    return v1

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/ContactInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ContactInfo [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/ContactInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", photoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/friend/model/ContactInfo;->photoId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
