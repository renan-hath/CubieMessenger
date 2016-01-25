.class Lcom/liquable/nemo/sticker/model/StickerManager$8;
.super Lorg/codehaus/jackson/type/TypeReference;
.source "StickerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/sticker/model/StickerManager;->loadStickerConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/type/TypeReference",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/model/sticker/StickerPackageDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/model/StickerManager;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/model/StickerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/model/StickerManager;

    .prologue
    .line 963
    iput-object p1, p0, Lcom/liquable/nemo/sticker/model/StickerManager$8;->this$0:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-direct {p0}, Lorg/codehaus/jackson/type/TypeReference;-><init>()V

    return-void
.end method
