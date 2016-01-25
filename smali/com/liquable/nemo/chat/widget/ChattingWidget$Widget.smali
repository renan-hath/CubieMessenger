.class public final enum Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;
.super Ljava/lang/Enum;
.source "ChattingWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/widget/ChattingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Widget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

.field public static final enum EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

.field public static final enum INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

.field public static final enum MEDIA:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

.field public static final enum PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

.field public static final enum PAINT_EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

.field public static final enum PAINT_STICKER:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

.field public static final enum PAINT_TEXT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

.field public static final enum VOICE_RECORDER:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

.field public static final enum YOUTUBE:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    const-string/jumbo v1, "EMOJI"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .line 10
    new-instance v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    const-string/jumbo v1, "PAINT"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .line 11
    new-instance v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    const-string/jumbo v1, "VOICE_RECORDER"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->VOICE_RECORDER:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .line 12
    new-instance v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    const-string/jumbo v1, "PAINT_TEXT"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT_TEXT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .line 13
    new-instance v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    const-string/jumbo v1, "PAINT_STICKER"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT_STICKER:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .line 14
    new-instance v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    const-string/jumbo v1, "PAINT_EMOJI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT_EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .line 15
    new-instance v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    const-string/jumbo v1, "INPUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .line 16
    new-instance v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    const-string/jumbo v1, "MEDIA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->MEDIA:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .line 17
    new-instance v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    const-string/jumbo v1, "YOUTUBE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->YOUTUBE:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    .line 8
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->VOICE_RECORDER:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT_TEXT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT_STICKER:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT_EMOJI:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->MEDIA:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->YOUTUBE:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->$VALUES:[Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->$VALUES:[Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0}, [Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    return-object v0
.end method
