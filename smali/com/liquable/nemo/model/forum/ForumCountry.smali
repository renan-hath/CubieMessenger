.class public final enum Lcom/liquable/nemo/model/forum/ForumCountry;
.super Ljava/lang/Enum;
.source "ForumCountry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/model/forum/ForumCountry;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/model/forum/ForumCountry;

.field public static final enum CN:Lcom/liquable/nemo/model/forum/ForumCountry;

.field public static final enum DE:Lcom/liquable/nemo/model/forum/ForumCountry;

.field public static final enum FR:Lcom/liquable/nemo/model/forum/ForumCountry;

.field public static final enum GLOBAL:Lcom/liquable/nemo/model/forum/ForumCountry;

.field public static final enum HK:Lcom/liquable/nemo/model/forum/ForumCountry;

.field public static final enum ID:Lcom/liquable/nemo/model/forum/ForumCountry;

.field public static final enum IT:Lcom/liquable/nemo/model/forum/ForumCountry;

.field public static final enum JP:Lcom/liquable/nemo/model/forum/ForumCountry;

.field public static final enum KR:Lcom/liquable/nemo/model/forum/ForumCountry;

.field public static final enum MY:Lcom/liquable/nemo/model/forum/ForumCountry;

.field public static final enum RU:Lcom/liquable/nemo/model/forum/ForumCountry;

.field public static final enum TH:Lcom/liquable/nemo/model/forum/ForumCountry;

.field public static final enum TR:Lcom/liquable/nemo/model/forum/ForumCountry;

.field public static final enum TW:Lcom/liquable/nemo/model/forum/ForumCountry;

.field public static final enum US:Lcom/liquable/nemo/model/forum/ForumCountry;

.field private static final supported:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/forum/ForumCountry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/liquable/nemo/model/forum/ForumCountry;

    const-string/jumbo v1, "GLOBAL"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/model/forum/ForumCountry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->GLOBAL:Lcom/liquable/nemo/model/forum/ForumCountry;

    .line 17
    new-instance v0, Lcom/liquable/nemo/model/forum/ForumCountry;

    const-string/jumbo v1, "TW"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/model/forum/ForumCountry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->TW:Lcom/liquable/nemo/model/forum/ForumCountry;

    .line 18
    new-instance v0, Lcom/liquable/nemo/model/forum/ForumCountry;

    const-string/jumbo v1, "US"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/model/forum/ForumCountry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->US:Lcom/liquable/nemo/model/forum/ForumCountry;

    .line 19
    new-instance v0, Lcom/liquable/nemo/model/forum/ForumCountry;

    const-string/jumbo v1, "JP"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/model/forum/ForumCountry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->JP:Lcom/liquable/nemo/model/forum/ForumCountry;

    .line 20
    new-instance v0, Lcom/liquable/nemo/model/forum/ForumCountry;

    const-string/jumbo v1, "HK"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/model/forum/ForumCountry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->HK:Lcom/liquable/nemo/model/forum/ForumCountry;

    .line 21
    new-instance v0, Lcom/liquable/nemo/model/forum/ForumCountry;

    const-string/jumbo v1, "CN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/forum/ForumCountry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->CN:Lcom/liquable/nemo/model/forum/ForumCountry;

    .line 22
    new-instance v0, Lcom/liquable/nemo/model/forum/ForumCountry;

    const-string/jumbo v1, "MY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/forum/ForumCountry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->MY:Lcom/liquable/nemo/model/forum/ForumCountry;

    .line 23
    new-instance v0, Lcom/liquable/nemo/model/forum/ForumCountry;

    const-string/jumbo v1, "TH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/forum/ForumCountry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->TH:Lcom/liquable/nemo/model/forum/ForumCountry;

    .line 24
    new-instance v0, Lcom/liquable/nemo/model/forum/ForumCountry;

    const-string/jumbo v1, "DE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/forum/ForumCountry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->DE:Lcom/liquable/nemo/model/forum/ForumCountry;

    .line 25
    new-instance v0, Lcom/liquable/nemo/model/forum/ForumCountry;

    const-string/jumbo v1, "FR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/forum/ForumCountry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->FR:Lcom/liquable/nemo/model/forum/ForumCountry;

    .line 26
    new-instance v0, Lcom/liquable/nemo/model/forum/ForumCountry;

    const-string/jumbo v1, "ID"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/forum/ForumCountry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->ID:Lcom/liquable/nemo/model/forum/ForumCountry;

    .line 27
    new-instance v0, Lcom/liquable/nemo/model/forum/ForumCountry;

    const-string/jumbo v1, "IT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/forum/ForumCountry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->IT:Lcom/liquable/nemo/model/forum/ForumCountry;

    .line 28
    new-instance v0, Lcom/liquable/nemo/model/forum/ForumCountry;

    const-string/jumbo v1, "KR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/forum/ForumCountry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->KR:Lcom/liquable/nemo/model/forum/ForumCountry;

    .line 29
    new-instance v0, Lcom/liquable/nemo/model/forum/ForumCountry;

    const-string/jumbo v1, "TR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/forum/ForumCountry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->TR:Lcom/liquable/nemo/model/forum/ForumCountry;

    .line 30
    new-instance v0, Lcom/liquable/nemo/model/forum/ForumCountry;

    const-string/jumbo v1, "RU"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/forum/ForumCountry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->RU:Lcom/liquable/nemo/model/forum/ForumCountry;

    .line 12
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/liquable/nemo/model/forum/ForumCountry;

    sget-object v1, Lcom/liquable/nemo/model/forum/ForumCountry;->GLOBAL:Lcom/liquable/nemo/model/forum/ForumCountry;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/model/forum/ForumCountry;->TW:Lcom/liquable/nemo/model/forum/ForumCountry;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/model/forum/ForumCountry;->US:Lcom/liquable/nemo/model/forum/ForumCountry;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/model/forum/ForumCountry;->JP:Lcom/liquable/nemo/model/forum/ForumCountry;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/model/forum/ForumCountry;->HK:Lcom/liquable/nemo/model/forum/ForumCountry;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/model/forum/ForumCountry;->CN:Lcom/liquable/nemo/model/forum/ForumCountry;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/model/forum/ForumCountry;->MY:Lcom/liquable/nemo/model/forum/ForumCountry;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/model/forum/ForumCountry;->TH:Lcom/liquable/nemo/model/forum/ForumCountry;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/model/forum/ForumCountry;->DE:Lcom/liquable/nemo/model/forum/ForumCountry;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/liquable/nemo/model/forum/ForumCountry;->FR:Lcom/liquable/nemo/model/forum/ForumCountry;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/liquable/nemo/model/forum/ForumCountry;->ID:Lcom/liquable/nemo/model/forum/ForumCountry;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/liquable/nemo/model/forum/ForumCountry;->IT:Lcom/liquable/nemo/model/forum/ForumCountry;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/liquable/nemo/model/forum/ForumCountry;->KR:Lcom/liquable/nemo/model/forum/ForumCountry;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/liquable/nemo/model/forum/ForumCountry;->TR:Lcom/liquable/nemo/model/forum/ForumCountry;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/liquable/nemo/model/forum/ForumCountry;->RU:Lcom/liquable/nemo/model/forum/ForumCountry;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->$VALUES:[Lcom/liquable/nemo/model/forum/ForumCountry;

    .line 62
    new-array v0, v5, [Lcom/liquable/nemo/model/forum/ForumCountry;

    sget-object v1, Lcom/liquable/nemo/model/forum/ForumCountry;->TW:Lcom/liquable/nemo/model/forum/ForumCountry;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/model/forum/ForumCountry;->TH:Lcom/liquable/nemo/model/forum/ForumCountry;

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->supported:Ljava/util/List;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static belong(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumCountry;
    .locals 5
    .param p0, "iso3166_1_alpha_2"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {}, Lcom/liquable/nemo/model/forum/ForumCountry;->values()[Lcom/liquable/nemo/model/forum/ForumCountry;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 42
    .local v0, "item":Lcom/liquable/nemo/model/forum/ForumCountry;
    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumCountry;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    .end local v0    # "item":Lcom/liquable/nemo/model/forum/ForumCountry;
    :goto_1
    return-object v0

    .line 41
    .restart local v0    # "item":Lcom/liquable/nemo/model/forum/ForumCountry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "item":Lcom/liquable/nemo/model/forum/ForumCountry;
    :cond_1
    sget-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->GLOBAL:Lcom/liquable/nemo/model/forum/ForumCountry;

    goto :goto_1
.end method

.method public static listSupported()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/forum/ForumCountry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->supported:Ljava/util/List;

    return-object v0
.end method

.method public static trySupport(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumCountry;
    .locals 2
    .param p0, "iso3166_1_alpha_2"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/liquable/nemo/model/forum/ForumCountry;->belong(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumCountry;

    move-result-object v0

    .line 59
    .local v0, "belong":Lcom/liquable/nemo/model/forum/ForumCountry;
    sget-object v1, Lcom/liquable/nemo/model/forum/ForumCountry;->supported:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "belong":Lcom/liquable/nemo/model/forum/ForumCountry;
    :goto_0
    return-object v0

    .restart local v0    # "belong":Lcom/liquable/nemo/model/forum/ForumCountry;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumCountry;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/liquable/nemo/model/forum/ForumCountry;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/forum/ForumCountry;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/model/forum/ForumCountry;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/liquable/nemo/model/forum/ForumCountry;->$VALUES:[Lcom/liquable/nemo/model/forum/ForumCountry;

    invoke-virtual {v0}, [Lcom/liquable/nemo/model/forum/ForumCountry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/model/forum/ForumCountry;

    return-object v0
.end method
