.class public Lcom/liquable/nemo/friend/model/MutualFriendRelationship;
.super Ljava/lang/Object;
.source "MutualFriendRelationship.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final COLUMN_NAME_MUTUAL_FRIEND_ID:Ljava/lang/String; = "MFR_MUTUAL_FRIEND_ID"

.field public static final COLUMN_NAME_RECOMMEND_FRIEND_ID:Ljava/lang/String; = "MFR_RECOMMEND_FRIEND_ID"

.field public static PROJECTION:[Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "MUTUAL_FRIEND_RELATIONSHIP"

.field private static final serialVersionUID:J = -0x75e4c798ca9d340eL


# instance fields
.field private final mutualFriendId:Ljava/lang/String;

.field private final recommendFriendId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "MFR_RECOMMEND_FRIEND_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "MFR_MUTUAL_FRIEND_ID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/friend/model/MutualFriendRelationship;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "recommendFriendId"    # Ljava/lang/String;
    .param p2, "mutualFriendId"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/MutualFriendRelationship;->recommendFriendId:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/liquable/nemo/friend/model/MutualFriendRelationship;->mutualFriendId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static createContentValues(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .param p0, "recommendFriendId"    # Ljava/lang/String;
    .param p1, "mutualFriendId"    # Ljava/lang/String;

    .prologue
    .line 12
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 13
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "MFR_RECOMMEND_FRIEND_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string/jumbo v1, "MFR_MUTUAL_FRIEND_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-object v0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/friend/model/MutualFriendRelationship;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 19
    new-instance v0, Lcom/liquable/nemo/friend/model/MutualFriendRelationship;

    const-string/jumbo v1, "MFR_RECOMMEND_FRIEND_ID"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MFR_MUTUAL_FRIEND_ID"

    .line 20
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/friend/model/MutualFriendRelationship;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createContentValues()Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/MutualFriendRelationship;->recommendFriendId:Ljava/lang/String;

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/MutualFriendRelationship;->mutualFriendId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/liquable/nemo/friend/model/MutualFriendRelationship;->createContentValues(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMutualFriendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/MutualFriendRelationship;->mutualFriendId:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendFriendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/MutualFriendRelationship;->recommendFriendId:Ljava/lang/String;

    return-object v0
.end method
