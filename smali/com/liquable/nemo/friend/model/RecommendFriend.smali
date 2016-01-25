.class public Lcom/liquable/nemo/friend/model/RecommendFriend;
.super Ljava/lang/Object;
.source "RecommendFriend.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final COLUMN_NAME_EMAIL:Ljava/lang/String; = "RF_EMAIL"

.field public static final COLUMN_NAME_ICON_EXISTS:Ljava/lang/String; = "RF_ICON_EXISTS"

.field public static final COLUMN_NAME_LAST_UPDATE_TIME:Ljava/lang/String; = "RF_LAST_UPDATE_TIME"

.field public static final COLUMN_NAME_NAME:Ljava/lang/String; = "RF_NAME"

.field public static final COLUMN_NAME_PHONE_NUMBER:Ljava/lang/String; = "RF_PHONE_NUMBER"

.field public static final COLUMN_NAME_USER_NAME:Ljava/lang/String; = "RF_USER_NAME"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "RECOMMEND_FRIEND"

.field public static final _ID:Ljava/lang/String; = "RF_UID"

.field private static final serialVersionUID:J = -0x1a69acd04be25c09L


# instance fields
.field private final email:Ljava/lang/String;

.field private final iconExists:Z

.field private final lastUpdateTime:J

.field private final nickname:Ljava/lang/String;

.field private final phone:Ljava/lang/String;

.field private final uid:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "RF_UID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "RF_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "RF_PHONE_NUMBER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "RF_EMAIL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "RF_ICON_EXISTS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "RF_USER_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "RF_LAST_UPDATE_TIME"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/friend/model/RecommendFriend;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/model/account/AccountDto;)V
    .locals 2
    .param p1, "accountDto"    # Lcom/liquable/nemo/model/account/AccountDto;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->uid:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getPhone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->phone:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->email:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->nickname:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->username:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->isIconExists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->iconExists:Z

    .line 76
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getLastUpdateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->lastUpdateTime:J

    .line 77
    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/friend/model/RecommendFriend;
    .locals 10
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v9, 0x0

    .line 20
    new-instance v0, Lcom/liquable/nemo/model/account/AccountDto;

    const-string/jumbo v1, "RF_UID"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RF_PHONE_NUMBER"

    .line 21
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "RF_EMAIL"

    .line 22
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "RF_NAME"

    .line 23
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RF_USER_NAME"

    .line 24
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "RF_ICON_EXISTS"

    .line 25
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    const-string/jumbo v7, "RF_LAST_UPDATE_TIME"

    .line 26
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct/range {v0 .. v9}, Lcom/liquable/nemo/model/account/AccountDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZ)V

    .line 29
    .local v0, "accountDto":Lcom/liquable/nemo/model/account/AccountDto;
    new-instance v1, Lcom/liquable/nemo/friend/model/RecommendFriend;

    invoke-direct {v1, v0}, Lcom/liquable/nemo/friend/model/RecommendFriend;-><init>(Lcom/liquable/nemo/model/account/AccountDto;)V

    return-object v1

    .end local v0    # "accountDto":Lcom/liquable/nemo/model/account/AccountDto;
    :cond_0
    move v6, v9

    .line 25
    goto :goto_0
.end method


# virtual methods
.method public createContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 80
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 81
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "RF_NAME"

    invoke-virtual {p0}, Lcom/liquable/nemo/friend/model/RecommendFriend;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v1, "RF_UID"

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "RF_PHONE_NUMBER"

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v1, "RF_USER_NAME"

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string/jumbo v1, "RF_LAST_UPDATE_TIME"

    iget-wide v2, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    const-string/jumbo v1, "RF_ICON_EXISTS"

    iget-boolean v2, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->iconExists:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 88
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    if-ne p0, p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 96
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 97
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 100
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 102
    check-cast v0, Lcom/liquable/nemo/friend/model/RecommendFriend;

    .line 103
    .local v0, "other":Lcom/liquable/nemo/friend/model/RecommendFriend;
    iget-object v3, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->uid:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 104
    iget-object v3, v0, Lcom/liquable/nemo/friend/model/RecommendFriend;->uid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 105
    goto :goto_0

    .line 107
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->uid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/friend/model/RecommendFriend;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 108
    goto :goto_0
.end method

.method public getAccountDto()Lcom/liquable/nemo/model/account/AccountDto;
    .locals 10

    .prologue
    .line 115
    new-instance v0, Lcom/liquable/nemo/model/account/AccountDto;

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->phone:Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->email:Ljava/lang/String;

    iget-object v4, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->nickname:Ljava/lang/String;

    iget-object v5, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->username:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->iconExists:Z

    iget-wide v7, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->lastUpdateTime:J

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/liquable/nemo/model/account/AccountDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZ)V

    .line 123
    .local v0, "accountDto":Lcom/liquable/nemo/model/account/AccountDto;
    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->lastUpdateTime:J

    return-wide v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 152
    const/16 v0, 0x1f

    .line 153
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 154
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->uid:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 155
    return v1

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->uid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isIconExists()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/liquable/nemo/friend/model/RecommendFriend;->iconExists:Z

    return v0
.end method
