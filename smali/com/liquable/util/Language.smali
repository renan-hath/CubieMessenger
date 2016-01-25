.class public final enum Lcom/liquable/util/Language;
.super Ljava/lang/Enum;
.source "Language.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/util/Language;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/util/Language;

.field public static final enum DEFAULT:Lcom/liquable/util/Language;

.field public static final enum ENGLISH:Lcom/liquable/util/Language;

.field public static final enum GERMAN:Lcom/liquable/util/Language;

.field public static final enum JAPANESE:Lcom/liquable/util/Language;

.field public static final enum MALAYSIA:Lcom/liquable/util/Language;

.field public static final enum SIMPLIFIED_CHINESE:Lcom/liquable/util/Language;

.field public static final enum SPANISH:Lcom/liquable/util/Language;

.field public static final enum THAI:Lcom/liquable/util/Language;

.field public static final enum TRADITIONAL_CHINESE:Lcom/liquable/util/Language;


# instance fields
.field private final excludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final includes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/liquable/util/Language;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v5, v4, v4}, Lcom/liquable/util/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/util/Language;->DEFAULT:Lcom/liquable/util/Language;

    .line 14
    new-instance v0, Lcom/liquable/util/Language;

    const-string/jumbo v1, "TRADITIONAL_CHINESE"

    const-string/jumbo v2, "zh_TW,zh_HK,zh_SG"

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/liquable/util/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/util/Language;->TRADITIONAL_CHINESE:Lcom/liquable/util/Language;

    .line 15
    new-instance v0, Lcom/liquable/util/Language;

    const-string/jumbo v1, "SIMPLIFIED_CHINESE"

    const-string/jumbo v2, "zh_CN"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/liquable/util/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/util/Language;->SIMPLIFIED_CHINESE:Lcom/liquable/util/Language;

    .line 16
    new-instance v0, Lcom/liquable/util/Language;

    const-string/jumbo v1, "JAPANESE"

    const-string/jumbo v2, "ja_JP"

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/liquable/util/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/util/Language;->JAPANESE:Lcom/liquable/util/Language;

    .line 17
    new-instance v0, Lcom/liquable/util/Language;

    const-string/jumbo v1, "MALAYSIA"

    const/4 v2, 0x4

    const-string/jumbo v3, "ms_MY,en_MY"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/util/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/util/Language;->MALAYSIA:Lcom/liquable/util/Language;

    .line 18
    new-instance v0, Lcom/liquable/util/Language;

    const-string/jumbo v1, "THAI"

    const/4 v2, 0x5

    const-string/jumbo v3, "th_TH,en_TH"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/util/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/util/Language;->THAI:Lcom/liquable/util/Language;

    .line 22
    new-instance v0, Lcom/liquable/util/Language;

    const-string/jumbo v1, "SPANISH"

    const/4 v2, 0x6

    const-string/jumbo v3, "es_ES,es_US,es_MX,es_AR,es_BO,es_CA,es_CH,es_CL,es_CO,es_CR,es_DO,es_EC,es_FR,es_GB,es_GT,es_HN,es_NI,es_PA,es_PE,es_PR,es_PY,es_SA,es_SV,es_UY,es_VE"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/util/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/util/Language;->SPANISH:Lcom/liquable/util/Language;

    .line 26
    new-instance v0, Lcom/liquable/util/Language;

    const-string/jumbo v1, "ENGLISH"

    const/4 v2, 0x7

    const-string/jumbo v3, "en_US"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/util/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/util/Language;->ENGLISH:Lcom/liquable/util/Language;

    .line 29
    new-instance v0, Lcom/liquable/util/Language;

    const-string/jumbo v1, "GERMAN"

    const/16 v2, 0x8

    const-string/jumbo v3, "de_AT,de_BE,de_CH,de_DE,de_FR,de_GB,de_IE,de_IT,de_LI,de_LU,de_NL,de_PT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/util/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/liquable/util/Language;->GERMAN:Lcom/liquable/util/Language;

    .line 12
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/liquable/util/Language;

    sget-object v1, Lcom/liquable/util/Language;->DEFAULT:Lcom/liquable/util/Language;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/util/Language;->TRADITIONAL_CHINESE:Lcom/liquable/util/Language;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/util/Language;->SIMPLIFIED_CHINESE:Lcom/liquable/util/Language;

    aput-object v1, v0, v7

    sget-object v1, Lcom/liquable/util/Language;->JAPANESE:Lcom/liquable/util/Language;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/liquable/util/Language;->MALAYSIA:Lcom/liquable/util/Language;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/util/Language;->THAI:Lcom/liquable/util/Language;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/util/Language;->SPANISH:Lcom/liquable/util/Language;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/util/Language;->ENGLISH:Lcom/liquable/util/Language;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/util/Language;->GERMAN:Lcom/liquable/util/Language;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/util/Language;->$VALUES:[Lcom/liquable/util/Language;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3, "includeStr"    # Ljava/lang/String;
    .param p4, "excludeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    if-nez p3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 38
    :goto_0
    iput-object v0, p0, Lcom/liquable/util/Language;->includes:Ljava/util/List;

    .line 39
    if-nez p4, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 40
    :goto_1
    iput-object v0, p0, Lcom/liquable/util/Language;->excludes:Ljava/util/List;

    .line 41
    return-void

    .line 37
    :cond_0
    const-string/jumbo v0, ","

    .line 38
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_1
    const-string/jumbo v0, ","

    .line 40
    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/util/Language;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/liquable/util/Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/util/Language;

    return-object v0
.end method

.method public static values()[Lcom/liquable/util/Language;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/liquable/util/Language;->$VALUES:[Lcom/liquable/util/Language;

    invoke-virtual {v0}, [Lcom/liquable/util/Language;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/util/Language;

    return-object v0
.end method


# virtual methods
.method public getExcludes()Ljava/util/List;
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

    .prologue
    .line 44
    iget-object v0, p0, Lcom/liquable/util/Language;->excludes:Ljava/util/List;

    return-object v0
.end method

.method public getIncludes()Ljava/util/List;
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

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/util/Language;->includes:Ljava/util/List;

    return-object v0
.end method
