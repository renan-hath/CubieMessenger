.class final enum Lcom/liquable/nemo/sticker/StickerInAppBilling$State;
.super Ljava/lang/Enum;
.source "StickerInAppBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sticker/StickerInAppBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/sticker/StickerInAppBilling$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

.field public static final enum DISPOSED:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

.field public static final enum FAIL:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

.field public static final enum STARTING:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

.field public static final enum SUCCESS:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    const-string/jumbo v1, "STARTING"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;->STARTING:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;->SUCCESS:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    const-string/jumbo v1, "FAIL"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;->FAIL:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    new-instance v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    const-string/jumbo v1, "DISPOSED"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;->DISPOSED:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    sget-object v1, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;->STARTING:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;->SUCCESS:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;->FAIL:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;->DISPOSED:Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;->$VALUES:[Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/sticker/StickerInAppBilling$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/sticker/StickerInAppBilling$State;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/liquable/nemo/sticker/StickerInAppBilling$State;->$VALUES:[Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    invoke-virtual {v0}, [Lcom/liquable/nemo/sticker/StickerInAppBilling$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/sticker/StickerInAppBilling$State;

    return-object v0
.end method
