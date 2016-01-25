.class public final enum Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;
.super Ljava/lang/Enum;
.source "YoutubeApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/youtube/YoutubeApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

.field public static final enum All:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

.field public static final enum Film:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

.field public static final enum Music:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

.field public static final enum Sports:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    const-string/jumbo v1, "All"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;->All:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    new-instance v0, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    const-string/jumbo v1, "Music"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;->Music:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    new-instance v0, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    const-string/jumbo v1, "Film"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;->Film:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    new-instance v0, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    const-string/jumbo v1, "Sports"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;->Sports:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    sget-object v1, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;->All:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;->Music:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;->Film:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;->Sports:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    aput-object v1, v0, v5

    sput-object v0, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;->$VALUES:[Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;->$VALUES:[Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    invoke-virtual {v0}, [Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    return-object v0
.end method


# virtual methods
.method public getSuffix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;->All:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    if-ne p0, v0, :cond_0

    .line 28
    const-string/jumbo v0, ""

    .line 30
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
