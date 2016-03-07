.class public final enum Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;
.super Ljava/lang/Enum;
.source "EmojiUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/EmojiUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmojiType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

.field public static final enum FACE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

.field public static final enum LINE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

.field public static final enum MSN:Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    const-string/jumbo v1, "FACE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->FACE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    new-instance v0, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    const-string/jumbo v1, "MSN"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->MSN:Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    new-instance v0, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    const-string/jumbo v1, "LINE"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->LINE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    sget-object v1, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->FACE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->MSN:Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->LINE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->$VALUES:[Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->$VALUES:[Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    invoke-virtual {v0}, [Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/chat/EmojiUtil$EmojiType;

    return-object v0
.end method
