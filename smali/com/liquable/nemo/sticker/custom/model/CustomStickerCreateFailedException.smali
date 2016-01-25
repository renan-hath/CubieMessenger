.class public Lcom/liquable/nemo/sticker/custom/model/CustomStickerCreateFailedException;
.super Lcom/liquable/nemo/model/DomainException;
.source "CustomStickerCreateFailedException.java"


# static fields
.field private static final serialVersionUID:J = -0x501002d7b09968aaL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/liquable/nemo/model/DomainException;-><init>()V

    return-void
.end method


# virtual methods
.method public getI18nKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const-string/jumbo v0, "create_custom_sticker_failed"

    return-object v0
.end method
