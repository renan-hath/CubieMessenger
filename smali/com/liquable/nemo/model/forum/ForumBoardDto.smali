.class public Lcom/liquable/nemo/model/forum/ForumBoardDto;
.super Ljava/lang/Object;
.source "ForumBoardDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1ce2dfa52689a127L


# instance fields
.field private final androidPackageName:Ljava/lang/String;

.field private final appId:Ljava/lang/String;

.field private final category:Ljava/lang/String;

.field private final certified:Z

.field private final country:Ljava/lang/String;

.field private final createTime:J

.field private final creatorNickname:Ljava/lang/String;

.field private final creatorUid:Ljava/lang/String;

.field private final deleted:Z

.field private final description:Ljava/lang/String;

.field private final favoriteCount:J

.field private final icon:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final iosAppleId:Ljava/lang/String;

.field private final lastArticle:Lcom/liquable/nemo/model/forum/ForumArticleDto;

.field private final lastUpdateTime:J

.field private final title:Ljava/lang/String;

.field private final wallpaper:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/model/forum/ForumArticleDto;JJJLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "id"
        .end annotation
    .end param
    .param p2, "appId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "appId"
        .end annotation
    .end param
    .param p3, "title"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "title"
        .end annotation
    .end param
    .param p4, "description"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "description"
        .end annotation
    .end param
    .param p5, "category"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "category"
        .end annotation
    .end param
    .param p6, "icon"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "icon"
        .end annotation
    .end param
    .param p7, "wallpaper"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "wallpaper"
        .end annotation
    .end param
    .param p8, "androidPackageName"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "androidPackageName"
        .end annotation
    .end param
    .param p9, "iosAppleId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "iosAppleId"
        .end annotation
    .end param
    .param p10, "country"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "country"
        .end annotation
    .end param
    .param p11, "lastArticle"    # Lcom/liquable/nemo/model/forum/ForumArticleDto;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "lastArticle"
        .end annotation
    .end param
    .param p12, "createTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "createTime"
        .end annotation
    .end param
    .param p14, "lastUpdateTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "lastUpdateTime"
        .end annotation
    .end param
    .param p16, "favoriteCount"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "favoriteCount"
        .end annotation
    .end param
    .param p18, "creatorUid"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "creatorUid"
        .end annotation
    .end param
    .param p19, "creatorNickname"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "creatorNickname"
        .end annotation
    .end param
    .param p20, "certified"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "certified"
        .end annotation
    .end param
    .param p21, "deleted"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "deleted"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->id:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->appId:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->title:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->description:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->category:Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->icon:Ljava/lang/String;

    .line 59
    iput-object p7, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->wallpaper:Ljava/lang/String;

    .line 60
    iput-object p8, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->androidPackageName:Ljava/lang/String;

    .line 61
    iput-object p9, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->iosAppleId:Ljava/lang/String;

    .line 62
    iput-object p10, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->country:Ljava/lang/String;

    .line 63
    iput-object p11, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->lastArticle:Lcom/liquable/nemo/model/forum/ForumArticleDto;

    .line 64
    iput-wide p12, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->createTime:J

    .line 65
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->lastUpdateTime:J

    .line 66
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->favoriteCount:J

    .line 67
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->creatorUid:Ljava/lang/String;

    .line 68
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->creatorNickname:Ljava/lang/String;

    .line 69
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->certified:Z

    .line 70
    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->deleted:Z

    .line 71
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    if-ne p0, p1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v1

    .line 150
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 151
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 154
    check-cast v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 156
    .local v0, "that":Lcom/liquable/nemo/model/forum/ForumBoardDto;
    iget-boolean v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->certified:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->certified:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 157
    goto :goto_0

    .line 159
    :cond_4
    iget-wide v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->createTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->createTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    move v1, v2

    .line 160
    goto :goto_0

    .line 162
    :cond_5
    iget-boolean v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->deleted:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->deleted:Z

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 163
    goto :goto_0

    .line 165
    :cond_6
    iget-wide v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->favoriteCount:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->favoriteCount:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    move v1, v2

    .line 166
    goto :goto_0

    .line 168
    :cond_7
    iget-wide v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->lastUpdateTime:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->lastUpdateTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    move v1, v2

    .line 169
    goto :goto_0

    .line 171
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->androidPackageName:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->androidPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->androidPackageName:Ljava/lang/String;

    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v1, v2

    .line 174
    goto :goto_0

    .line 172
    :cond_a
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->androidPackageName:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 176
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->appId:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->appId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    .line 177
    goto :goto_0

    .line 176
    :cond_d
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->appId:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 179
    :cond_e
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->category:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->category:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->category:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    move v1, v2

    .line 180
    goto :goto_0

    .line 179
    :cond_10
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->category:Ljava/lang/String;

    if-nez v3, :cond_f

    .line 182
    :cond_11
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->country:Ljava/lang/String;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->country:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->country:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    :cond_12
    move v1, v2

    .line 183
    goto/16 :goto_0

    .line 182
    :cond_13
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->country:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 185
    :cond_14
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->creatorNickname:Ljava/lang/String;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->creatorNickname:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->creatorNickname:Ljava/lang/String;

    .line 186
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    :cond_15
    move v1, v2

    .line 188
    goto/16 :goto_0

    .line 186
    :cond_16
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->creatorNickname:Ljava/lang/String;

    if-nez v3, :cond_15

    .line 190
    :cond_17
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->creatorUid:Ljava/lang/String;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->creatorUid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->creatorUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_18
    move v1, v2

    .line 191
    goto/16 :goto_0

    .line 190
    :cond_19
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->creatorUid:Ljava/lang/String;

    if-nez v3, :cond_18

    .line 193
    :cond_1a
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->description:Ljava/lang/String;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->description:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    :cond_1b
    move v1, v2

    .line 194
    goto/16 :goto_0

    .line 193
    :cond_1c
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->description:Ljava/lang/String;

    if-nez v3, :cond_1b

    .line 196
    :cond_1d
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->icon:Ljava/lang/String;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->icon:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->icon:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    :cond_1e
    move v1, v2

    .line 197
    goto/16 :goto_0

    .line 196
    :cond_1f
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->icon:Ljava/lang/String;

    if-nez v3, :cond_1e

    .line 199
    :cond_20
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->id:Ljava/lang/String;

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    :cond_21
    move v1, v2

    .line 200
    goto/16 :goto_0

    .line 199
    :cond_22
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->id:Ljava/lang/String;

    if-nez v3, :cond_21

    .line 202
    :cond_23
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->iosAppleId:Ljava/lang/String;

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->iosAppleId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->iosAppleId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    :cond_24
    move v1, v2

    .line 203
    goto/16 :goto_0

    .line 202
    :cond_25
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->iosAppleId:Ljava/lang/String;

    if-nez v3, :cond_24

    .line 205
    :cond_26
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->lastArticle:Lcom/liquable/nemo/model/forum/ForumArticleDto;

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->lastArticle:Lcom/liquable/nemo/model/forum/ForumArticleDto;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->lastArticle:Lcom/liquable/nemo/model/forum/ForumArticleDto;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    :cond_27
    move v1, v2

    .line 206
    goto/16 :goto_0

    .line 205
    :cond_28
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->lastArticle:Lcom/liquable/nemo/model/forum/ForumArticleDto;

    if-nez v3, :cond_27

    .line 208
    :cond_29
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->title:Ljava/lang/String;

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    :cond_2a
    move v1, v2

    .line 209
    goto/16 :goto_0

    .line 208
    :cond_2b
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->title:Ljava/lang/String;

    if-nez v3, :cond_2a

    .line 211
    :cond_2c
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->wallpaper:Ljava/lang/String;

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->wallpaper:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->wallpaper:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 212
    goto/16 :goto_0

    .line 211
    :cond_2d
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->wallpaper:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getAndroidPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->androidPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->createTime:J

    return-wide v0
.end method

.method public getCreatorNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->creatorNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->creatorUid:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFavoriteCount()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->favoriteCount:J

    return-wide v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIosAppleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->iosAppleId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastArticle()Lcom/liquable/nemo/model/forum/ForumArticleDto;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->lastArticle:Lcom/liquable/nemo/model/forum/ForumArticleDto;

    return-object v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->lastUpdateTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWallpaper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->wallpaper:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/16 v8, 0x20

    const/4 v1, 0x0

    .line 220
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 221
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->appId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->appId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v4, v2

    .line 222
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v4, v2

    .line 223
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->description:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v4, v2

    .line 224
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->category:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->category:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v4, v2

    .line 225
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->icon:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->icon:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v4, v2

    .line 226
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->wallpaper:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->wallpaper:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v4, v2

    .line 227
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->androidPackageName:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->androidPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v4, v2

    .line 228
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->iosAppleId:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->iosAppleId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v4, v2

    .line 229
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->country:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->country:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int v0, v4, v2

    .line 230
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->lastArticle:Lcom/liquable/nemo/model/forum/ForumArticleDto;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->lastArticle:Lcom/liquable/nemo/model/forum/ForumArticleDto;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->hashCode()I

    move-result v2

    :goto_a
    add-int v0, v4, v2

    .line 231
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v4, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->createTime:J

    iget-wide v6, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->createTime:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v2, v4

    .line 232
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v4, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->lastUpdateTime:J

    iget-wide v6, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->lastUpdateTime:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v2, v4

    .line 233
    mul-int/lit8 v2, v0, 0x1f

    iget-wide v4, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->favoriteCount:J

    iget-wide v6, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->favoriteCount:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v2, v4

    .line 234
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->creatorUid:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->creatorUid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b
    add-int v0, v4, v2

    .line 235
    mul-int/lit8 v4, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->creatorNickname:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->creatorNickname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_c
    add-int v0, v4, v2

    .line 236
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->certified:Z

    if-eqz v2, :cond_d

    move v2, v3

    :goto_d
    add-int v0, v4, v2

    .line 237
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v4, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->deleted:Z

    if-eqz v4, :cond_e

    :goto_e
    add-int v0, v2, v3

    .line 238
    return v0

    .end local v0    # "result":I
    :cond_0
    move v0, v1

    .line 220
    goto/16 :goto_0

    .restart local v0    # "result":I
    :cond_1
    move v2, v1

    .line 221
    goto/16 :goto_1

    :cond_2
    move v2, v1

    .line 222
    goto/16 :goto_2

    :cond_3
    move v2, v1

    .line 223
    goto/16 :goto_3

    :cond_4
    move v2, v1

    .line 224
    goto/16 :goto_4

    :cond_5
    move v2, v1

    .line 225
    goto/16 :goto_5

    :cond_6
    move v2, v1

    .line 226
    goto/16 :goto_6

    :cond_7
    move v2, v1

    .line 227
    goto/16 :goto_7

    :cond_8
    move v2, v1

    .line 228
    goto/16 :goto_8

    :cond_9
    move v2, v1

    .line 229
    goto :goto_9

    :cond_a
    move v2, v1

    .line 230
    goto :goto_a

    :cond_b
    move v2, v1

    .line 234
    goto :goto_b

    :cond_c
    move v2, v1

    .line 235
    goto :goto_c

    :cond_d
    move v2, v1

    .line 236
    goto :goto_d

    :cond_e
    move v3, v1

    .line 237
    goto :goto_e
.end method

.method public isCertified()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->certified:Z

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->deleted:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ForumBoardDto{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", category=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", icon=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", wallpaper=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->wallpaper:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", androidPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->androidPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iosAppleId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->iosAppleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", country=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastArticle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->lastArticle:Lcom/liquable/nemo/model/forum/ForumArticleDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->lastUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", favoriteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->favoriteCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", creatorUid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->creatorUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", creatorNickname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->creatorNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", certified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->certified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/forum/ForumBoardDto;->deleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
