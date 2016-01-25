.class final enum Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;
.super Ljava/lang/Enum;
.source "YoutubePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/YoutubePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

.field public static final enum FILM:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

.field public static final enum HOME:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

.field public static final enum MUSIC:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

.field public static final enum SEARCH:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

.field public static final enum SPORTS:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;


# instance fields
.field private final buttonResId:I

.field private final category:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    new-instance v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    const-string/jumbo v1, "HOME"

    const v2, 0x7f080124

    sget-object v3, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;->All:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;-><init>(Ljava/lang/String;IILcom/liquable/nemo/youtube/YoutubeApiClient$Category;)V

    sput-object v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->HOME:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    .line 65
    new-instance v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    const-string/jumbo v1, "SPORTS"

    const v2, 0x7f080126

    sget-object v3, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;->Sports:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;-><init>(Ljava/lang/String;IILcom/liquable/nemo/youtube/YoutubeApiClient$Category;)V

    sput-object v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->SPORTS:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    .line 66
    new-instance v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    const-string/jumbo v1, "MUSIC"

    const v2, 0x7f080125

    sget-object v3, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;->Music:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;-><init>(Ljava/lang/String;IILcom/liquable/nemo/youtube/YoutubeApiClient$Category;)V

    sput-object v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->MUSIC:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    .line 67
    new-instance v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    const-string/jumbo v1, "FILM"

    const v2, 0x7f080127

    sget-object v3, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;->Film:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;-><init>(Ljava/lang/String;IILcom/liquable/nemo/youtube/YoutubeApiClient$Category;)V

    sput-object v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->FILM:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    .line 68
    new-instance v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    const-string/jumbo v1, "SEARCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v8, v4, v2}, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;-><init>(Ljava/lang/String;IILcom/liquable/nemo/youtube/YoutubeApiClient$Category;)V

    sput-object v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->SEARCH:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    sget-object v1, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->HOME:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->SPORTS:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->MUSIC:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->FILM:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->SEARCH:Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    aput-object v1, v0, v8

    sput-object v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->$VALUES:[Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/liquable/nemo/youtube/YoutubeApiClient$Category;)V
    .locals 0
    .param p3, "buttonResId"    # I
    .param p4, "category"    # Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->buttonResId:I

    .line 75
    iput-object p4, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->category:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    .line 76
    return-void
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    .prologue
    .line 63
    iget v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->buttonResId:I

    return v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;)Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->category:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->$VALUES:[Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    invoke-virtual {v0}, [Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/chat/YoutubePickerActivity$Mode;

    return-object v0
.end method
