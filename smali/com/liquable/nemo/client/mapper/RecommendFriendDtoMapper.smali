.class public final enum Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;
.super Ljava/lang/Enum;
.source "RecommendFriendDtoMapper.java"

# interfaces
.implements Lcom/liquable/nemo/client/mapper/ResultMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;",
        ">;",
        "Lcom/liquable/nemo/client/mapper/ResultMapper",
        "<",
        "Lcom/liquable/nemo/model/account/RecommendFriendDto;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;

    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;

    sget-object v1, Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;

    return-object v0
.end method


# virtual methods
.method public map(Ljava/lang/Object;)Lcom/liquable/nemo/model/account/RecommendFriendDto;
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 15
    if-nez p1, :cond_0

    .line 16
    const/4 v3, 0x0

    .line 24
    :goto_0
    return-object v3

    :cond_0
    move-object v0, p1

    .line 19
    check-cast v0, Ljava/util/Map;

    .line 21
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v3, Lcom/liquable/nemo/client/mapper/AccountDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoMapper;

    const-string/jumbo v4, "recommendFriend"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/client/mapper/AccountDtoMapper;->map(Ljava/lang/Object;)Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v2

    .line 22
    .local v2, "recommendFriend":Lcom/liquable/nemo/model/account/AccountDto;
    sget-object v3, Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;

    const-string/jumbo v4, "mutualFriends"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/client/mapper/AccountDtoListMapper;->map(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 24
    .local v1, "mutualFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/AccountDto;>;"
    new-instance v3, Lcom/liquable/nemo/model/account/RecommendFriendDto;

    invoke-direct {v3, v2, v1}, Lcom/liquable/nemo/model/account/RecommendFriendDto;-><init>(Lcom/liquable/nemo/model/account/AccountDto;Ljava/util/List;)V

    goto :goto_0
.end method

.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/mapper/RecommendFriendDtoMapper;->map(Ljava/lang/Object;)Lcom/liquable/nemo/model/account/RecommendFriendDto;

    move-result-object v0

    return-object v0
.end method
