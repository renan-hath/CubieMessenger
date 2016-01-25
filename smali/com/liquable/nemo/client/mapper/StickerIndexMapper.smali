.class public final enum Lcom/liquable/nemo/client/mapper/StickerIndexMapper;
.super Ljava/lang/Enum;
.source "StickerIndexMapper.java"

# interfaces
.implements Lcom/liquable/nemo/client/mapper/ResultMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/mapper/StickerIndexMapper;",
        ">;",
        "Lcom/liquable/nemo/client/mapper/ResultMapper",
        "<",
        "Lcom/liquable/nemo/setting/sticker/model/StickerIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/mapper/StickerIndexMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/mapper/StickerIndexMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/liquable/nemo/client/mapper/StickerIndexMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/mapper/StickerIndexMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/mapper/StickerIndexMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/StickerIndexMapper;

    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/mapper/StickerIndexMapper;

    sget-object v1, Lcom/liquable/nemo/client/mapper/StickerIndexMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/StickerIndexMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/mapper/StickerIndexMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/StickerIndexMapper;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/mapper/StickerIndexMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/liquable/nemo/client/mapper/StickerIndexMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/mapper/StickerIndexMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/mapper/StickerIndexMapper;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/liquable/nemo/client/mapper/StickerIndexMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/StickerIndexMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/mapper/StickerIndexMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/mapper/StickerIndexMapper;

    return-object v0
.end method


# virtual methods
.method public map(Ljava/lang/Object;)Lcom/liquable/nemo/setting/sticker/model/StickerIndex;
    .locals 10
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 16
    if-nez p1, :cond_0

    .line 17
    const/4 v5, 0x0

    .line 35
    :goto_0
    return-object v5

    :cond_0
    move-object v1, p1

    .line 20
    check-cast v1, Ljava/util/Map;

    .line 23
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "stickerPackages"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 25
    .local v3, "stickerNodes":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v4, "stickerPackages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/setting/sticker/model/StickerPackage;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 28
    .local v2, "node":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "stickerCodes"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 29
    .local v0, "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Lcom/liquable/nemo/setting/sticker/model/StickerPackage;

    const-string/jumbo v5, "category"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "summary"

    .line 30
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, "newSticker"

    .line 31
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct {v9, v5, v6, v7, v0}, Lcom/liquable/nemo/setting/sticker/model/StickerPackage;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 29
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35
    .end local v0    # "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "node":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    new-instance v5, Lcom/liquable/nemo/setting/sticker/model/StickerIndex;

    invoke-direct {v5, v4}, Lcom/liquable/nemo/setting/sticker/model/StickerIndex;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/mapper/StickerIndexMapper;->map(Ljava/lang/Object;)Lcom/liquable/nemo/setting/sticker/model/StickerIndex;

    move-result-object v0

    return-object v0
.end method
