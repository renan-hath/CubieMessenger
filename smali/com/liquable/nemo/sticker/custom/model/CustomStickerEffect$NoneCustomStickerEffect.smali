.class public Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect$NoneCustomStickerEffect;
.super Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
.source "CustomStickerEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoneCustomStickerEffect"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4b422382b2aa1a45L


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0x100

    const/4 v3, 0x0

    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v0, p0

    move v4, v3

    move v6, v5

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;-><init>(Ljava/util/List;Ljava/lang/String;IIIILcom/liquable/nemo/sticker/custom/model/CustomStickerEffect$1;)V

    .line 38
    return-void
.end method


# virtual methods
.method public createAnimatedFiles(Landroid/content/Context;Ljava/io/File;II)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tempCustomStickerFile"    # Ljava/io/File;
    .param p3, "stickerWidth"    # I
    .param p4, "stickerHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createCoverImage(Landroid/content/Context;)Lcom/liquable/nemo/util/LoadableImage;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    new-instance v0, Lcom/liquable/nemo/message/view/ResourceDrawable;

    const v1, 0x7f0202a4

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/ResourceDrawable;-><init>(I)V

    return-object v0
.end method

.method public isAllAnimationFileCreated(I)Z
    .locals 1
    .param p1, "fileCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 55
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
