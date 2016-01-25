.class public Lcom/liquable/nemo/group/model/ChatGroupMember;
.super Ljava/lang/Object;
.source "ChatGroupMember.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final COLUMN_NAME_CHAT_GROUP_TOPIC:Ljava/lang/String; = "CGM_CHAT_GROUP_TOPIC"

.field public static final COLUMN_NAME_FRIEND_ID:Ljava/lang/String; = "CGM_FRIEND_ID"

.field public static final COLUMN_NAME_IS_ACTIVE:Ljava/lang/String; = "CGM_IS_ACTIVE"

.field public static PROJECTION:[Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "CHAT_GROUP_MEMBERS"

.field private static final serialVersionUID:J = 0x177744352dd8c89fL


# instance fields
.field private final accountUid:Ljava/lang/String;

.field private final active:Z

.field private final topic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "CGM_CHAT_GROUP_TOPIC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "CGM_FRIEND_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "CGM_IS_ACTIVE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroupMember;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "friendUid"    # Ljava/lang/String;
    .param p3, "active"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/liquable/nemo/group/model/ChatGroupMember;->topic:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/liquable/nemo/group/model/ChatGroupMember;->accountUid:Ljava/lang/String;

    .line 46
    iput-boolean p3, p0, Lcom/liquable/nemo/group/model/ChatGroupMember;->active:Z

    .line 47
    return-void
.end method

.method public static createContentValues(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/ContentValues;
    .locals 3
    .param p0, "topic"    # Ljava/lang/String;
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "active"    # Z

    .prologue
    .line 13
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 14
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "CGM_CHAT_GROUP_TOPIC"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string/jumbo v1, "CGM_FRIEND_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string/jumbo v1, "CGM_IS_ACTIVE"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 17
    return-object v0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/group/model/ChatGroupMember;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 21
    new-instance v1, Lcom/liquable/nemo/group/model/ChatGroupMember;

    const-string/jumbo v0, "CGM_CHAT_GROUP_TOPIC"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "CGM_FRIEND_ID"

    .line 22
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "CGM_IS_ACTIVE"

    .line 23
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v3, v0}, Lcom/liquable/nemo/group/model/ChatGroupMember;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupMember;->topic:Ljava/lang/String;

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroupMember;->accountUid:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/liquable/nemo/group/model/ChatGroupMember;->active:Z

    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupMember;->createContentValues(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getAccountUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupMember;->accountUid:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroupMember;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/liquable/nemo/group/model/ChatGroupMember;->active:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ChatGroupMember [topic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroupMember;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", accountUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroupMember;->accountUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/group/model/ChatGroupMember;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
