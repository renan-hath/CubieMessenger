.class public final enum Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;
.super Ljava/lang/Enum;
.source "ForumArticleDeleteReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

.field public static final enum BY_ABUSE_REPORT:Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

.field public static final enum BY_AUTHOR:Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

.field public static final enum BY_BOARD_CREATOR:Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

.field public static final enum UNKNOWN:Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    const-string/jumbo v1, "BY_BOARD_CREATOR"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->BY_BOARD_CREATOR:Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    new-instance v0, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    const-string/jumbo v1, "BY_AUTHOR"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->BY_AUTHOR:Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    new-instance v0, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    const-string/jumbo v1, "BY_ABUSE_REPORT"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->BY_ABUSE_REPORT:Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    new-instance v0, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->UNKNOWN:Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    sget-object v1, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->BY_BOARD_CREATOR:Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->BY_AUTHOR:Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->BY_ABUSE_REPORT:Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->UNKNOWN:Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    aput-object v1, v0, v5

    sput-object v0, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->$VALUES:[Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

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

.method public static tryParse(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 16
    if-nez p0, :cond_1

    .line 17
    const/4 v0, 0x0

    .line 24
    :cond_0
    :goto_0
    return-object v0

    .line 19
    :cond_1
    invoke-static {}, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->values()[Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 20
    .local v0, "reason":Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;
    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 24
    .end local v0    # "reason":Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;
    :cond_2
    sget-object v0, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->UNKNOWN:Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->$VALUES:[Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    invoke-virtual {v0}, [Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;

    return-object v0
.end method


# virtual methods
.method public i18NKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "article_delete_reason_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/model/forum/ForumArticleDeleteReason;->name()Ljava/lang/String;

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
