.class public Lcom/liquable/nemo/model/sticker/StickerItemDto;
.super Ljava/lang/Object;
.source "StickerItemDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonSerialize;
    include = .enum Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x43645a0dd081ea65L


# instance fields
.field private final canBuy:Z

.field private final canFree:Z

.field private final canGift:Z

.field private final canLimitedTimeOffer:Z

.field private final code:Ljava/lang/String;

.field private final fortumoInAppSecret:Ljava/lang/String;

.field private final fortumoNameSuffix:Ljava/lang/String;

.field private final fortumoServiceId:Ljava/lang/String;

.field private final newPackage:Z

.field private final owned:Z

.field private final ownedStartDate:Ljava/lang/Long;

.field private final owner:Ljava/lang/String;

.field private final price:Ljava/lang/String;

.field private final priceCurrency:Ljava/lang/String;

.field private final priceTier:Ljava/lang/String;

.field private final productId:Ljava/lang/String;

.field private final purchased:Z

.field private final revision:J

.field private final sampleImagePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final shopNote:Ljava/lang/String;

.field private final summary:Ljava/lang/String;

.field private final tabCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final thumbnailPath:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final validDays:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "code"
        .end annotation
    .end param
    .param p2, "revision"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "revision"
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "tabCodes"
        .end annotation
    .end param
    .param p5, "title"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "title"
        .end annotation
    .end param
    .param p6, "summary"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "summary"
        .end annotation
    .end param
    .param p7, "owner"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "owner"
        .end annotation
    .end param
    .param p8, "thumbnailPath"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "thumbnailPath"
        .end annotation
    .end param
    .param p9    # Ljava/util/List;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "sampleImagePaths"
        .end annotation
    .end param
    .param p10, "newPackage"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "newPackage"
        .end annotation
    .end param
    .param p11, "canBuy"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "canBuy"
        .end annotation
    .end param
    .param p12, "canFree"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "canFree"
        .end annotation
    .end param
    .param p13, "canGift"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "canGift"
        .end annotation
    .end param
    .param p14, "canLimitedTimeOffer"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "canLimitedTimeOffer"
        .end annotation
    .end param
    .param p15, "shopNote"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "shopNote"
        .end annotation
    .end param
    .param p16, "productId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "productId"
        .end annotation
    .end param
    .param p17, "priceTier"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "priceTier"
        .end annotation
    .end param
    .param p18, "priceCurrency"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "priceCurrency"
        .end annotation
    .end param
    .param p19, "price"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "price"
        .end annotation
    .end param
    .param p20, "purchased"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "purchased"
        .end annotation
    .end param
    .param p21, "owned"    # Z
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "owned"
        .end annotation
    .end param
    .param p22, "ownedStartDate"    # Ljava/lang/Long;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "ownedStartDate"
        .end annotation
    .end param
    .param p23, "validDays"    # Ljava/lang/Integer;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "validDays"
        .end annotation
    .end param
    .param p24, "fortumoNameSuffix"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "fortumoNameSuffix"
        .end annotation
    .end param
    .param p25, "fortumoServiceId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "fortumoServiceId"
        .end annotation
    .end param
    .param p26, "fortumoInAppSecret"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "fortumoInAppSecret"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 154
    .local p4, "tabCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "sampleImagePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->code:Ljava/lang/String;

    .line 156
    iput-object p4, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->tabCodes:Ljava/util/List;

    .line 157
    iput-wide p2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->revision:J

    .line 158
    iput-object p5, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->title:Ljava/lang/String;

    .line 159
    iput-object p6, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->summary:Ljava/lang/String;

    .line 160
    iput-object p7, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->owner:Ljava/lang/String;

    .line 161
    iput-object p8, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->thumbnailPath:Ljava/lang/String;

    .line 162
    iput-object p9, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->sampleImagePaths:Ljava/util/List;

    .line 163
    iput-boolean p10, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->newPackage:Z

    .line 164
    iput-boolean p11, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canBuy:Z

    .line 165
    iput-boolean p12, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canFree:Z

    .line 166
    iput-boolean p13, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canGift:Z

    .line 167
    iput-boolean p14, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canLimitedTimeOffer:Z

    .line 168
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->shopNote:Ljava/lang/String;

    .line 169
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->productId:Ljava/lang/String;

    .line 170
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->priceTier:Ljava/lang/String;

    .line 171
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->priceCurrency:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->price:Ljava/lang/String;

    .line 173
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->purchased:Z

    .line 174
    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->owned:Z

    .line 175
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->ownedStartDate:Ljava/lang/Long;

    .line 176
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->validDays:Ljava/lang/Integer;

    .line 177
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoNameSuffix:Ljava/lang/String;

    .line 178
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoServiceId:Ljava/lang/String;

    .line 179
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoInAppSecret:Ljava/lang/String;

    .line 180
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 184
    if-ne p0, p1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v1

    .line 187
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 188
    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 191
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 193
    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 194
    .local v0, "other":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    iget-boolean v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canBuy:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canBuy:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 195
    goto :goto_0

    .line 197
    :cond_4
    iget-boolean v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canFree:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canFree:Z

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 198
    goto :goto_0

    .line 200
    :cond_5
    iget-boolean v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canGift:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canGift:Z

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 201
    goto :goto_0

    .line 203
    :cond_6
    iget-boolean v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canLimitedTimeOffer:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canLimitedTimeOffer:Z

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 204
    goto :goto_0

    .line 206
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->code:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 207
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->code:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 208
    goto :goto_0

    .line 210
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->code:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 211
    goto :goto_0

    .line 213
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoInAppSecret:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 214
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoInAppSecret:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    .line 215
    goto :goto_0

    .line 217
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoInAppSecret:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoInAppSecret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 218
    goto :goto_0

    .line 220
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoNameSuffix:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 221
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoNameSuffix:Ljava/lang/String;

    if-eqz v3, :cond_d

    move v1, v2

    .line 222
    goto :goto_0

    .line 224
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoNameSuffix:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoNameSuffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 225
    goto :goto_0

    .line 227
    :cond_d
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoServiceId:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 228
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoServiceId:Ljava/lang/String;

    if-eqz v3, :cond_f

    move v1, v2

    .line 229
    goto :goto_0

    .line 231
    :cond_e
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoServiceId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoServiceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move v1, v2

    .line 232
    goto/16 :goto_0

    .line 234
    :cond_f
    iget-boolean v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->newPackage:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->newPackage:Z

    if-eq v3, v4, :cond_10

    move v1, v2

    .line 235
    goto/16 :goto_0

    .line 237
    :cond_10
    iget-boolean v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->owned:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->owned:Z

    if-eq v3, v4, :cond_11

    move v1, v2

    .line 238
    goto/16 :goto_0

    .line 240
    :cond_11
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->ownedStartDate:Ljava/lang/Long;

    if-nez v3, :cond_12

    .line 241
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->ownedStartDate:Ljava/lang/Long;

    if-eqz v3, :cond_13

    move v1, v2

    .line 242
    goto/16 :goto_0

    .line 244
    :cond_12
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->ownedStartDate:Ljava/lang/Long;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->ownedStartDate:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    move v1, v2

    .line 245
    goto/16 :goto_0

    .line 247
    :cond_13
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->owner:Ljava/lang/String;

    if-nez v3, :cond_14

    .line 248
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->owner:Ljava/lang/String;

    if-eqz v3, :cond_15

    move v1, v2

    .line 249
    goto/16 :goto_0

    .line 251
    :cond_14
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->owner:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->owner:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move v1, v2

    .line 252
    goto/16 :goto_0

    .line 254
    :cond_15
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->price:Ljava/lang/String;

    if-nez v3, :cond_16

    .line 255
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->price:Ljava/lang/String;

    if-eqz v3, :cond_17

    move v1, v2

    .line 256
    goto/16 :goto_0

    .line 258
    :cond_16
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->price:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->price:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    move v1, v2

    .line 259
    goto/16 :goto_0

    .line 261
    :cond_17
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->priceCurrency:Ljava/lang/String;

    if-nez v3, :cond_18

    .line 262
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->priceCurrency:Ljava/lang/String;

    if-eqz v3, :cond_19

    move v1, v2

    .line 263
    goto/16 :goto_0

    .line 265
    :cond_18
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->priceCurrency:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->priceCurrency:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    move v1, v2

    .line 266
    goto/16 :goto_0

    .line 268
    :cond_19
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->priceTier:Ljava/lang/String;

    if-nez v3, :cond_1a

    .line 269
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->priceTier:Ljava/lang/String;

    if-eqz v3, :cond_1b

    move v1, v2

    .line 270
    goto/16 :goto_0

    .line 272
    :cond_1a
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->priceTier:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->priceTier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    move v1, v2

    .line 273
    goto/16 :goto_0

    .line 275
    :cond_1b
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->productId:Ljava/lang/String;

    if-nez v3, :cond_1c

    .line 276
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->productId:Ljava/lang/String;

    if-eqz v3, :cond_1d

    move v1, v2

    .line 277
    goto/16 :goto_0

    .line 279
    :cond_1c
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->productId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->productId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    move v1, v2

    .line 280
    goto/16 :goto_0

    .line 282
    :cond_1d
    iget-boolean v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->purchased:Z

    iget-boolean v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->purchased:Z

    if-eq v3, v4, :cond_1e

    move v1, v2

    .line 283
    goto/16 :goto_0

    .line 285
    :cond_1e
    iget-wide v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->revision:J

    iget-wide v5, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->revision:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1f

    move v1, v2

    .line 286
    goto/16 :goto_0

    .line 288
    :cond_1f
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->sampleImagePaths:Ljava/util/List;

    if-nez v3, :cond_20

    .line 289
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->sampleImagePaths:Ljava/util/List;

    if-eqz v3, :cond_21

    move v1, v2

    .line 290
    goto/16 :goto_0

    .line 292
    :cond_20
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->sampleImagePaths:Ljava/util/List;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->sampleImagePaths:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    move v1, v2

    .line 293
    goto/16 :goto_0

    .line 295
    :cond_21
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->shopNote:Ljava/lang/String;

    if-nez v3, :cond_22

    .line 296
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->shopNote:Ljava/lang/String;

    if-eqz v3, :cond_23

    move v1, v2

    .line 297
    goto/16 :goto_0

    .line 299
    :cond_22
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->shopNote:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->shopNote:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    move v1, v2

    .line 300
    goto/16 :goto_0

    .line 302
    :cond_23
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->summary:Ljava/lang/String;

    if-nez v3, :cond_24

    .line 303
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->summary:Ljava/lang/String;

    if-eqz v3, :cond_25

    move v1, v2

    .line 304
    goto/16 :goto_0

    .line 306
    :cond_24
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->summary:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->summary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    move v1, v2

    .line 307
    goto/16 :goto_0

    .line 309
    :cond_25
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->tabCodes:Ljava/util/List;

    if-nez v3, :cond_26

    .line 310
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->tabCodes:Ljava/util/List;

    if-eqz v3, :cond_27

    move v1, v2

    .line 311
    goto/16 :goto_0

    .line 313
    :cond_26
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->tabCodes:Ljava/util/List;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->tabCodes:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    move v1, v2

    .line 314
    goto/16 :goto_0

    .line 316
    :cond_27
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->thumbnailPath:Ljava/lang/String;

    if-nez v3, :cond_28

    .line 317
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->thumbnailPath:Ljava/lang/String;

    if-eqz v3, :cond_29

    move v1, v2

    .line 318
    goto/16 :goto_0

    .line 320
    :cond_28
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->thumbnailPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    move v1, v2

    .line 321
    goto/16 :goto_0

    .line 323
    :cond_29
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->title:Ljava/lang/String;

    if-nez v3, :cond_2a

    .line 324
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->title:Ljava/lang/String;

    if-eqz v3, :cond_2b

    move v1, v2

    .line 325
    goto/16 :goto_0

    .line 327
    :cond_2a
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    move v1, v2

    .line 328
    goto/16 :goto_0

    .line 330
    :cond_2b
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->validDays:Ljava/lang/Integer;

    if-nez v3, :cond_2c

    .line 331
    iget-object v3, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->validDays:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move v1, v2

    .line 332
    goto/16 :goto_0

    .line 334
    :cond_2c
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->validDays:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->validDays:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 335
    goto/16 :goto_0
.end method

.method public final getCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getFortumoInAppSecret()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoInAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getFortumoNameSuffix()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoNameSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getFortumoServiceId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOwnedStartDate()Ljava/lang/Long;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->ownedStartDate:Ljava/lang/Long;

    return-object v0
.end method

.method public final getOwner()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->price:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriceCurrency()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->priceCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriceTier()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->priceTier:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRevision()J
    .locals 2
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 392
    iget-wide v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->revision:J

    return-wide v0
.end method

.method public final getSampleImagePaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->sampleImagePaths:Ljava/util/List;

    return-object v0
.end method

.method public getShopNote()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->shopNote:Ljava/lang/String;

    return-object v0
.end method

.method public final getSummary()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public final getTabCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->tabCodes:Ljava/util/List;

    return-object v0
.end method

.method public final getThumbnailPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->thumbnailPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getValidDays()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->validDays:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v4, 0x4d5

    const/16 v3, 0x4cf

    const/4 v5, 0x0

    .line 432
    const/16 v0, 0x1f

    .line 433
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 434
    .local v1, "result":I
    iget-boolean v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canBuy:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 435
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canFree:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v6, v2

    .line 436
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canGift:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v6, v2

    .line 437
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canLimitedTimeOffer:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v6, v2

    .line 438
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->code:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v5

    :goto_4
    add-int v1, v6, v2

    .line 439
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoInAppSecret:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v5

    :goto_5
    add-int v1, v6, v2

    .line 440
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoNameSuffix:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v5

    :goto_6
    add-int v1, v6, v2

    .line 441
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoServiceId:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v5

    :goto_7
    add-int v1, v6, v2

    .line 442
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->newPackage:Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_8
    add-int v1, v6, v2

    .line 443
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->owned:Z

    if-eqz v2, :cond_9

    move v2, v3

    :goto_9
    add-int v1, v6, v2

    .line 444
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->ownedStartDate:Ljava/lang/Long;

    if-nez v2, :cond_a

    move v2, v5

    :goto_a
    add-int v1, v6, v2

    .line 445
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->owner:Ljava/lang/String;

    if-nez v2, :cond_b

    move v2, v5

    :goto_b
    add-int v1, v6, v2

    .line 446
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->price:Ljava/lang/String;

    if-nez v2, :cond_c

    move v2, v5

    :goto_c
    add-int v1, v6, v2

    .line 447
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->priceCurrency:Ljava/lang/String;

    if-nez v2, :cond_d

    move v2, v5

    :goto_d
    add-int v1, v6, v2

    .line 448
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->priceTier:Ljava/lang/String;

    if-nez v2, :cond_e

    move v2, v5

    :goto_e
    add-int v1, v6, v2

    .line 449
    mul-int/lit8 v6, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->productId:Ljava/lang/String;

    if-nez v2, :cond_f

    move v2, v5

    :goto_f
    add-int v1, v6, v2

    .line 450
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v6, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->purchased:Z

    if-eqz v6, :cond_10

    :goto_10
    add-int v1, v2, v3

    .line 451
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->revision:J

    iget-wide v6, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->revision:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v3, v6

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 452
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->sampleImagePaths:Ljava/util/List;

    if-nez v2, :cond_11

    move v2, v5

    :goto_11
    add-int v1, v3, v2

    .line 453
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->shopNote:Ljava/lang/String;

    if-nez v2, :cond_12

    move v2, v5

    :goto_12
    add-int v1, v3, v2

    .line 454
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->summary:Ljava/lang/String;

    if-nez v2, :cond_13

    move v2, v5

    :goto_13
    add-int v1, v3, v2

    .line 455
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->tabCodes:Ljava/util/List;

    if-nez v2, :cond_14

    move v2, v5

    :goto_14
    add-int v1, v3, v2

    .line 456
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->thumbnailPath:Ljava/lang/String;

    if-nez v2, :cond_15

    move v2, v5

    :goto_15
    add-int v1, v3, v2

    .line 457
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->title:Ljava/lang/String;

    if-nez v2, :cond_16

    move v2, v5

    :goto_16
    add-int v1, v3, v2

    .line 458
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->validDays:Ljava/lang/Integer;

    if-nez v3, :cond_17

    :goto_17
    add-int v1, v2, v5

    .line 459
    return v1

    :cond_0
    move v2, v4

    .line 434
    goto/16 :goto_0

    :cond_1
    move v2, v4

    .line 435
    goto/16 :goto_1

    :cond_2
    move v2, v4

    .line 436
    goto/16 :goto_2

    :cond_3
    move v2, v4

    .line 437
    goto/16 :goto_3

    .line 438
    :cond_4
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->code:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 439
    :cond_5
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoInAppSecret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 440
    :cond_6
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoNameSuffix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 441
    :cond_7
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoServiceId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_7

    :cond_8
    move v2, v4

    .line 442
    goto/16 :goto_8

    :cond_9
    move v2, v4

    .line 443
    goto/16 :goto_9

    .line 444
    :cond_a
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->ownedStartDate:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 445
    :cond_b
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->owner:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 446
    :cond_c
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->price:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 447
    :cond_d
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->priceCurrency:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 448
    :cond_e
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->priceTier:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_e

    .line 449
    :cond_f
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->productId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_f

    :cond_10
    move v3, v4

    .line 450
    goto/16 :goto_10

    .line 452
    :cond_11
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->sampleImagePaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto/16 :goto_11

    .line 453
    :cond_12
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->shopNote:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_12

    .line 454
    :cond_13
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->summary:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_13

    .line 455
    :cond_14
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->tabCodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto/16 :goto_14

    .line 456
    :cond_15
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_15

    .line 457
    :cond_16
    iget-object v2, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_16

    .line 458
    :cond_17
    iget-object v3, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->validDays:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v5

    goto/16 :goto_17
.end method

.method public final isCanBuy()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canBuy:Z

    return v0
.end method

.method public final isCanFree()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canFree:Z

    return v0
.end method

.method public final isCanGift()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canGift:Z

    return v0
.end method

.method public isCanLimitedTimeOffer()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canLimitedTimeOffer:Z

    return v0
.end method

.method public final isNewPackage()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->newPackage:Z

    return v0
.end method

.method public final isOwned()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->owned:Z

    return v0
.end method

.method public final isPurchased()Z
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->purchased:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StickerItemDto [revision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->revision:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tabCodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->tabCodes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbnailPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sampleImagePaths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->sampleImagePaths:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", newPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->newPackage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", canBuy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canBuy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", canFree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canFree:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", canGift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canGift:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", canLimitedTimeOffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->canLimitedTimeOffer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", priceTier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->priceTier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", priceCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->priceCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", purchased="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->purchased:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", owned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->owned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ownedStartDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->ownedStartDate:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", validDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->validDays:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", shopNote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->shopNote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fortumoNameSuffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoNameSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fortumoServiceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fortumoInAppSecret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/sticker/StickerItemDto;->fortumoInAppSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
