.class final enum Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;
.super Ljava/lang/Enum;
.source "ChattingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/ChattingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LongPressAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

.field public static final enum ADD_FRIEND:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

.field public static final enum COPY:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

.field public static final enum DELETE:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

.field public static final enum EDIT:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

.field public static final enum FORWARD:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

.field public static final enum PASTE:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

.field public static final enum REPLY:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

.field public static final enum SAVE:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

.field public static final enum SAVE_CUSTOM_STICKER:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

.field public static final enum SHARE:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

.field public static final enum SHARE_FB:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;


# instance fields
.field stringRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 198
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    const-string/jumbo v1, "SAVE_CUSTOM_STICKER"

    const v2, 0x7f0d0459

    invoke-direct {v0, v1, v4, v2}, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->SAVE_CUSTOM_STICKER:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    .line 199
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    const-string/jumbo v1, "FORWARD"

    const v2, 0x7f0d02b6

    invoke-direct {v0, v1, v5, v2}, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->FORWARD:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    .line 200
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    const-string/jumbo v1, "ADD_FRIEND"

    const v2, 0x7f0d0054

    invoke-direct {v0, v1, v6, v2}, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->ADD_FRIEND:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    .line 201
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    const-string/jumbo v1, "REPLY"

    const v2, 0x7f0d03e8

    invoke-direct {v0, v1, v7, v2}, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->REPLY:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    .line 202
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    const-string/jumbo v1, "PASTE"

    const v2, 0x7f0d03e6

    invoke-direct {v0, v1, v8, v2}, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->PASTE:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    .line 203
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    const-string/jumbo v1, "EDIT"

    const/4 v2, 0x5

    const v3, 0x7f0d03e1

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->EDIT:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    .line 204
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    const-string/jumbo v1, "SAVE"

    const/4 v2, 0x6

    const v3, 0x7f0d03e9

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->SAVE:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    .line 205
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    const-string/jumbo v1, "COPY"

    const/4 v2, 0x7

    const v3, 0x7f0d03dd

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->COPY:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    .line 206
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    const-string/jumbo v1, "SHARE"

    const/16 v2, 0x8

    const v3, 0x7f0d03ed

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->SHARE:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    .line 207
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    const-string/jumbo v1, "SHARE_FB"

    const/16 v2, 0x9

    const v3, 0x7f0d03ec

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->SHARE_FB:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    .line 208
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    const-string/jumbo v1, "DELETE"

    const/16 v2, 0xa

    const v3, 0x7f0d0185

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->DELETE:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    .line 197
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    sget-object v1, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->SAVE_CUSTOM_STICKER:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->FORWARD:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->ADD_FRIEND:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->REPLY:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->PASTE:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->EDIT:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->SAVE:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->COPY:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->SHARE:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->SHARE_FB:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->DELETE:Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->$VALUES:[Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "stringRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 214
    iput p3, p0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->stringRes:I

    .line 215
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 197
    const-class v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->$VALUES:[Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    invoke-virtual {v0}, [Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;

    return-object v0
.end method


# virtual methods
.method public getLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "friendName"    # Ljava/lang/String;

    .prologue
    .line 218
    iget v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$LongPressAction;->stringRes:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
