.class Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;
.super Ljava/lang/Object;
.source "StickersPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/StickersPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StickerEffectPack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;
    }
.end annotation


# instance fields
.field mPackageName:Ljava/lang/CharSequence;

.field mPluginRef:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

.field mPluginStatus:I

.field mTitle:Ljava/lang/CharSequence;

.field mType:Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;)V
    .locals 0
    .param p1, "type"    # Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;

    .prologue
    .line 1702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1703
    iput-object p1, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;->mType:Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;

    .line 1704
    return-void
.end method

.method public constructor <init>(Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;)V
    .locals 0
    .param p1, "type"    # Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;
    .param p2, "packageName"    # Ljava/lang/CharSequence;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "status"    # I
    .param p5, "plugin"    # Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    .prologue
    .line 1707
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;-><init>(Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack$StickerEffectPackType;)V

    .line 1708
    iput-object p2, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;->mPackageName:Ljava/lang/CharSequence;

    .line 1709
    iput p4, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;->mPluginStatus:I

    .line 1710
    iput-object p5, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;->mPluginRef:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    .line 1711
    iput-object p3, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;->mTitle:Ljava/lang/CharSequence;

    .line 1712
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1716
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/effects/StickersPanel$StickerEffectPack;->mPluginRef:Lcom/aviary/android/feather/library/plugins/PluginFactory$IPlugin;

    .line 1717
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1718
    return-void
.end method
