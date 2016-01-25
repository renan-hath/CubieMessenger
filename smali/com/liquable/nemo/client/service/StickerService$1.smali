.class Lcom/liquable/nemo/client/service/StickerService$1;
.super Lorg/codehaus/jackson/type/TypeReference;
.source "StickerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/client/service/StickerService;->listStickerItems(Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerClientContext;Ljava/lang/String;II)Ljava/util/List;
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
        "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/client/service/StickerService;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/client/service/StickerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/client/service/StickerService;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/liquable/nemo/client/service/StickerService$1;->this$0:Lcom/liquable/nemo/client/service/StickerService;

    invoke-direct {p0}, Lorg/codehaus/jackson/type/TypeReference;-><init>()V

    return-void
.end method
