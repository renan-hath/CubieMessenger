.class public final enum Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;
.super Ljava/lang/Enum;
.source "ProfileDtoMapper.java"

# interfaces
.implements Lcom/liquable/nemo/client/mapper/ResultMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;",
        ">;",
        "Lcom/liquable/nemo/client/mapper/ResultMapper",
        "<",
        "Lcom/liquable/nemo/model/account/ProfileDto;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;

    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;

    sget-object v1, Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;

    return-object v0
.end method


# virtual methods
.method public map(Ljava/lang/Object;)Lcom/liquable/nemo/model/account/ProfileDto;
    .locals 30
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 13
    if-nez p1, :cond_0

    .line 14
    const/4 v2, 0x0

    .line 50
    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v26, p1

    .line 17
    check-cast v26, Ljava/util/Map;

    .line 19
    .local v26, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v2, Lcom/liquable/nemo/client/mapper/AccountDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AccountDtoMapper;

    const-string/jumbo v4, "account"

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/client/mapper/AccountDtoMapper;->map(Ljava/lang/Object;)Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v3

    .line 21
    .local v3, "accountDto":Lcom/liquable/nemo/model/account/AccountDto;
    const-string/jumbo v2, "excludeInMutualFriends"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Boolean;

    .line 22
    .local v24, "excludeInMutualFriends":Ljava/lang/Boolean;
    const-string/jumbo v2, "excludeInRecommendFriends"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Boolean;

    .line 23
    .local v25, "excludeInRecommendFriends":Ljava/lang/Boolean;
    const-string/jumbo v2, "disabled"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Boolean;

    .line 24
    .local v23, "disabled":Ljava/lang/Boolean;
    const-string/jumbo v2, "publicProfile"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Boolean;

    .line 25
    .local v27, "publicProfile":Ljava/lang/Boolean;
    const-string/jumbo v2, "useOfflineSequence"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Boolean;

    .line 26
    .local v29, "useOfflineSequence":Ljava/lang/Boolean;
    const-string/jumbo v2, "createTime"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Number;

    .line 27
    .local v22, "createTime":Ljava/lang/Number;
    const-string/jumbo v2, "twitterId"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Number;

    .line 28
    .local v28, "twitterIdNum":Ljava/lang/Number;
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 29
    .local v13, "twitterId":Ljava/lang/Long;
    if-eqz v28, :cond_1

    .line 30
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 33
    :cond_1
    new-instance v2, Lcom/liquable/nemo/model/account/ProfileDto;

    .line 34
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-string/jumbo v6, "c2dmRegistrationId"

    .line 35
    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, "apnsDeviceToken"

    .line 36
    move-object/from16 v0, v26

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v8, "apnsSound"

    .line 37
    move-object/from16 v0, v26

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 38
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 39
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 40
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    const-string/jumbo v12, "fbuid"

    .line 41
    move-object/from16 v0, v26

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string/jumbo v14, "osType"

    .line 43
    move-object/from16 v0, v26

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string/jumbo v15, "osVersion"

    .line 44
    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string/jumbo v16, "phoneModel"

    .line 45
    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const-string/jumbo v17, "gcmRegistrationId"

    .line 46
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const-string/jumbo v18, "rpcAccessToken"

    .line 47
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    if-eqz v27, :cond_2

    .line 48
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    :goto_1
    const-string/jumbo v20, "email"

    .line 49
    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    if-eqz v29, :cond_3

    .line 50
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    :goto_2
    invoke-direct/range {v2 .. v21}, Lcom/liquable/nemo/model/account/ProfileDto;-><init>(Lcom/liquable/nemo/model/account/AccountDto;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    goto/16 :goto_0

    .line 48
    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    .line 50
    :cond_3
    const/16 v21, 0x0

    goto :goto_2
.end method

.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/mapper/ProfileDtoMapper;->map(Ljava/lang/Object;)Lcom/liquable/nemo/model/account/ProfileDto;

    move-result-object v0

    return-object v0
.end method
