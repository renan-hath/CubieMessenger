.class public final enum Lcom/liquable/nemo/model/forum/BoardCategory;
.super Ljava/lang/Enum;
.source "BoardCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/model/forum/BoardCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/model/forum/BoardCategory;

.field public static final enum ANIME_MANGA:Lcom/liquable/nemo/model/forum/BoardCategory;

.field public static final enum ENTERTAINMENT:Lcom/liquable/nemo/model/forum/BoardCategory;

.field public static final enum GAME:Lcom/liquable/nemo/model/forum/BoardCategory;

.field public static final enum LATEST:Lcom/liquable/nemo/model/forum/BoardCategory;

.field public static final enum LIFE:Lcom/liquable/nemo/model/forum/BoardCategory;

.field public static final enum MOVIE_DRAMA:Lcom/liquable/nemo/model/forum/BoardCategory;

.field public static final enum NEWS:Lcom/liquable/nemo/model/forum/BoardCategory;

.field public static final enum OTHERS:Lcom/liquable/nemo/model/forum/BoardCategory;

.field public static final enum PICTURES_IMAGES:Lcom/liquable/nemo/model/forum/BoardCategory;

.field public static final enum SPORTS:Lcom/liquable/nemo/model/forum/BoardCategory;

.field public static final enum UNKNOWN:Lcom/liquable/nemo/model/forum/BoardCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/liquable/nemo/model/forum/BoardCategory;

    const-string/jumbo v1, "GAME"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/model/forum/BoardCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/BoardCategory;->GAME:Lcom/liquable/nemo/model/forum/BoardCategory;

    new-instance v0, Lcom/liquable/nemo/model/forum/BoardCategory;

    const-string/jumbo v1, "ANIME_MANGA"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/model/forum/BoardCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/BoardCategory;->ANIME_MANGA:Lcom/liquable/nemo/model/forum/BoardCategory;

    new-instance v0, Lcom/liquable/nemo/model/forum/BoardCategory;

    const-string/jumbo v1, "PICTURES_IMAGES"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/model/forum/BoardCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/BoardCategory;->PICTURES_IMAGES:Lcom/liquable/nemo/model/forum/BoardCategory;

    new-instance v0, Lcom/liquable/nemo/model/forum/BoardCategory;

    const-string/jumbo v1, "NEWS"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/model/forum/BoardCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/BoardCategory;->NEWS:Lcom/liquable/nemo/model/forum/BoardCategory;

    new-instance v0, Lcom/liquable/nemo/model/forum/BoardCategory;

    const-string/jumbo v1, "MOVIE_DRAMA"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/model/forum/BoardCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/BoardCategory;->MOVIE_DRAMA:Lcom/liquable/nemo/model/forum/BoardCategory;

    new-instance v0, Lcom/liquable/nemo/model/forum/BoardCategory;

    const-string/jumbo v1, "SPORTS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/forum/BoardCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/BoardCategory;->SPORTS:Lcom/liquable/nemo/model/forum/BoardCategory;

    new-instance v0, Lcom/liquable/nemo/model/forum/BoardCategory;

    const-string/jumbo v1, "ENTERTAINMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/forum/BoardCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/BoardCategory;->ENTERTAINMENT:Lcom/liquable/nemo/model/forum/BoardCategory;

    new-instance v0, Lcom/liquable/nemo/model/forum/BoardCategory;

    const-string/jumbo v1, "LIFE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/forum/BoardCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/BoardCategory;->LIFE:Lcom/liquable/nemo/model/forum/BoardCategory;

    new-instance v0, Lcom/liquable/nemo/model/forum/BoardCategory;

    const-string/jumbo v1, "OTHERS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/forum/BoardCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/BoardCategory;->OTHERS:Lcom/liquable/nemo/model/forum/BoardCategory;

    .line 9
    new-instance v0, Lcom/liquable/nemo/model/forum/BoardCategory;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/forum/BoardCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/BoardCategory;->UNKNOWN:Lcom/liquable/nemo/model/forum/BoardCategory;

    new-instance v0, Lcom/liquable/nemo/model/forum/BoardCategory;

    const-string/jumbo v1, "LATEST"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/forum/BoardCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/BoardCategory;->LATEST:Lcom/liquable/nemo/model/forum/BoardCategory;

    .line 7
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/liquable/nemo/model/forum/BoardCategory;

    sget-object v1, Lcom/liquable/nemo/model/forum/BoardCategory;->GAME:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/model/forum/BoardCategory;->ANIME_MANGA:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/model/forum/BoardCategory;->PICTURES_IMAGES:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/model/forum/BoardCategory;->NEWS:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/model/forum/BoardCategory;->MOVIE_DRAMA:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->SPORTS:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->ENTERTAINMENT:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->LIFE:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->OTHERS:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->UNKNOWN:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->LATEST:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/model/forum/BoardCategory;->$VALUES:[Lcom/liquable/nemo/model/forum/BoardCategory;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static availableValues()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/forum/BoardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/liquable/nemo/model/forum/BoardCategory;

    const/4 v1, 0x0

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->GAME:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->ANIME_MANGA:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->PICTURES_IMAGES:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->NEWS:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->MOVIE_DRAMA:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->SPORTS:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->ENTERTAINMENT:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->LIFE:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->OTHERS:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/BoardCategory;
    .locals 2
    .param p0, "category"    # Ljava/lang/String;

    .prologue
    .line 25
    :try_start_0
    invoke-static {p0}, Lcom/liquable/nemo/model/forum/BoardCategory;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/BoardCategory;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 27
    :goto_0
    return-object v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/liquable/nemo/model/forum/BoardCategory;->UNKNOWN:Lcom/liquable/nemo/model/forum/BoardCategory;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/BoardCategory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/liquable/nemo/model/forum/BoardCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/forum/BoardCategory;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/model/forum/BoardCategory;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/liquable/nemo/model/forum/BoardCategory;->$VALUES:[Lcom/liquable/nemo/model/forum/BoardCategory;

    invoke-virtual {v0}, [Lcom/liquable/nemo/model/forum/BoardCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/model/forum/BoardCategory;

    return-object v0
.end method


# virtual methods
.method public i18NKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "board_category_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/model/forum/BoardCategory;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
