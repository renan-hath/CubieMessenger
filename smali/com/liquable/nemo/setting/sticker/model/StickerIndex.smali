.class public Lcom/liquable/nemo/setting/sticker/model/StickerIndex;
.super Ljava/lang/Object;
.source "StickerIndex.java"


# instance fields
.field private final stickerPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/setting/sticker/model/StickerPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/setting/sticker/model/StickerPackage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8
    .local p1, "stickerPackages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/setting/sticker/model/StickerPackage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/liquable/nemo/setting/sticker/model/StickerIndex;->stickerPackages:Ljava/util/List;

    .line 10
    return-void
.end method


# virtual methods
.method public getStickerPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/setting/sticker/model/StickerPackage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/liquable/nemo/setting/sticker/model/StickerIndex;->stickerPackages:Ljava/util/List;

    return-object v0
.end method
