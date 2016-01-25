.class public final enum Lcom/liquable/nemo/chat/widget/MediaWidget$Action;
.super Ljava/lang/Enum;
.source "MediaWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/widget/MediaWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/chat/widget/MediaWidget$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

.field public static final enum CAMERA:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

.field public static final enum GALLERY:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

.field public static final enum LOCATION:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

.field public static final enum MUSIC:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

.field public static final enum PAINT:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

.field public static final enum VIDEO:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

.field public static final enum VOICE:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

.field public static final enum VOIP:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

.field public static final enum YOUTUBE:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;


# instance fields
.field private final iconRes:I

.field private final supportSecret:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    new-instance v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    const-string/jumbo v1, "PAINT"

    const v2, 0x7f0201ab

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->PAINT:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    .line 29
    new-instance v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    const-string/jumbo v1, "GALLERY"

    const v2, 0x7f0201a8

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->GALLERY:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    .line 30
    new-instance v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    const-string/jumbo v1, "CAMERA"

    const v2, 0x7f0201a6

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->CAMERA:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    .line 31
    new-instance v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    const-string/jumbo v1, "YOUTUBE"

    const v2, 0x7f0201af

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->YOUTUBE:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    .line 32
    new-instance v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    const-string/jumbo v1, "VOICE"

    const v2, 0x7f0201ad

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->VOICE:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    .line 33
    new-instance v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    const-string/jumbo v1, "VOIP"

    const/4 v2, 0x5

    const v3, 0x7f0201ae

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->VOIP:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    .line 34
    new-instance v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    const-string/jumbo v1, "LOCATION"

    const/4 v2, 0x6

    const v3, 0x7f0201a9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->LOCATION:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    .line 35
    new-instance v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    const-string/jumbo v1, "VIDEO"

    const/4 v2, 0x7

    const v3, 0x7f0201ac

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->VIDEO:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    .line 36
    new-instance v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    const-string/jumbo v1, "MUSIC"

    const/16 v2, 0x8

    const v3, 0x7f0201aa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->MUSIC:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    .line 27
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    sget-object v1, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->PAINT:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->GALLERY:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->CAMERA:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->YOUTUBE:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    aput-object v1, v0, v7

    sget-object v1, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->VOICE:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->VOIP:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->LOCATION:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->VIDEO:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->MUSIC:Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->$VALUES:[Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p3, "iconRes"    # I
    .param p4, "supportSecret"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->iconRes:I

    .line 43
    iput-boolean p4, p0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->supportSecret:Z

    .line 44
    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/widget/MediaWidget$Action;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    .prologue
    .line 27
    iget v0, p0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->iconRes:I

    return v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/widget/MediaWidget$Action;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->supportSecret:Z

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/chat/widget/MediaWidget$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/chat/widget/MediaWidget$Action;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->$VALUES:[Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    invoke-virtual {v0}, [Lcom/liquable/nemo/chat/widget/MediaWidget$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/chat/widget/MediaWidget$Action;

    return-object v0
.end method
