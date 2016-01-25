.class public Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "ApplyCustomStickerEffectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ViewHolder;,
        Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;,
        Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$ResultIntent;
    }
.end annotation


# static fields
.field private static final CROP_CODE:I = 0x1

.field private static final DEFAULT_EFFECTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private customStickerImageView:Landroid/widget/ImageView;

.field private effectImageView:Landroid/widget/ImageView;

.field private effectsAdapter:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;

.field private effectsListView:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

.field private imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private isReceiverRegistered:Z

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private selectedEffect:Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

.field private tempCustomStickerFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 72
    const/16 v0, 0x18

    new-array v6, v0, [Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    const/4 v0, 0x0

    new-instance v1, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect$NoneCustomStickerEffect;

    invoke-direct {v1}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect$NoneCustomStickerEffect;-><init>()V

    aput-object v1, v6, v0

    const/4 v7, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_100_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_100_02.png"

    aput-object v2, v0, v1

    .line 74
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x100

    const/16 v5, 0x100

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v7, 0x2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_aim_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_aim_02.png"

    aput-object v2, v0, v1

    .line 82
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x100

    const/16 v5, 0x100

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v7, 0x3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_beautiful_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_beautiful_02.png"

    aput-object v2, v0, v1

    .line 89
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x100

    const/16 v5, 0x100

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v7, 0x4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_dizzy_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_dizzy_02.png"

    aput-object v2, v0, v1

    .line 96
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x100

    const/16 v5, 0x100

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v7, 0x5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_garish_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_garish_02.png"

    aput-object v2, v0, v1

    .line 103
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x100

    const/16 v5, 0x100

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v7, 0x6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_glasses_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_glasses_02.png"

    aput-object v2, v0, v1

    .line 110
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x100

    const/16 v5, 0x100

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v7, 0x7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_lovelove_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_lovelove_02.png"

    aput-object v2, v0, v1

    .line 117
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/16 v2, 0xb

    const/16 v3, 0x2c

    const/16 v4, 0x116

    const/16 v5, 0x12c

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/16 v7, 0x8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_nono_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_nono_02.png"

    aput-object v2, v0, v1

    .line 124
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x100

    const/16 v5, 0x100

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/16 v7, 0x9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_ramen_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_ramen_02.png"

    aput-object v2, v0, v1

    .line 132
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x100

    const/16 v5, 0x100

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/16 v7, 0xa

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_yesyes_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_yesyes_02.png"

    aput-object v2, v0, v1

    .line 140
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x100

    const/16 v5, 0x100

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/16 v7, 0xb

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_shock_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_shock_02.png"

    aput-object v2, v0, v1

    .line 149
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x100

    const/16 v5, 0x100

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/16 v7, 0xc

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_love_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_love_02.png"

    aput-object v2, v0, v1

    .line 156
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x100

    const/16 v5, 0x100

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/16 v7, 0xd

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_brilliant_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_brilliant_02.png"

    aput-object v2, v0, v1

    .line 163
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x100

    const/16 v5, 0x100

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/16 v7, 0xe

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_booom_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_booom_02.png"

    aput-object v2, v0, v1

    .line 170
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/16 v2, 0x13

    const/16 v3, 0x26

    const/16 v4, 0x126

    const/16 v5, 0x126

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/16 v7, 0xf

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_bye_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_bye_02.png"

    aput-object v2, v0, v1

    .line 177
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/16 v2, 0x29

    const/16 v3, 0x2c

    const/16 v4, 0x152

    const/16 v5, 0x12c

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/16 v7, 0x10

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_ok_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_ok_02.png"

    aput-object v2, v0, v1

    .line 184
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/16 v2, 0xe

    const/16 v3, 0x26

    const/16 v4, 0x11c

    const/16 v5, 0x126

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/16 v7, 0x11

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_what_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_what_02.png"

    aput-object v2, v0, v1

    .line 191
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/16 v2, 0x16

    const/16 v3, 0x2c

    const/16 v4, 0x116

    const/16 v5, 0x12c

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/16 v7, 0x12

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_zzzz_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_zzzz_02.png"

    aput-object v2, v0, v1

    .line 198
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/16 v2, 0xe

    const/16 v3, 0x26

    const/16 v4, 0x11c

    const/16 v5, 0x126

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/16 v7, 0x13

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_morning_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_morning_02.png"

    aput-object v2, v0, v1

    .line 205
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/16 v2, 0x16

    const/16 v3, 0x2c

    const/16 v4, 0x116

    const/16 v5, 0x12c

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/16 v7, 0x14

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_no_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_no_02.png"

    aput-object v2, v0, v1

    .line 212
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/16 v2, 0xb

    const/16 v3, 0x2c

    const/16 v4, 0x116

    const/16 v5, 0x12c

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/16 v7, 0x15

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_omg_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_omg_02.png"

    aput-object v2, v0, v1

    .line 219
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/4 v2, 0x0

    const/16 v3, 0x2c

    const/16 v4, 0x118

    const/16 v5, 0x12c

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/16 v7, 0x16

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_romantic_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_romantic_02.png"

    aput-object v2, v0, v1

    .line 226
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x100

    const/16 v5, 0x100

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    const/16 v7, 0x17

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "custom_sticker_effect_yes_01.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "custom_sticker_effect_yes_02.png"

    aput-object v2, v0, v1

    .line 233
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "s3.amazonaws.com"

    const/16 v2, 0x13

    const/16 v3, 0x2c

    const/16 v4, 0x126

    const/16 v5, 0x12c

    invoke-static/range {v0 .. v5}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;->create(Ljava/util/List;Ljava/lang/String;IIII)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    move-result-object v0

    aput-object v0, v6, v7

    .line 72
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->DEFAULT_EFFECTS:Ljava/util/List;

    .line 240
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 312
    new-instance v0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$1;-><init>(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->effectsListView:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->effectsAdapter:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->selectedEffect:Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    return-object v0
.end method

.method static synthetic access$502(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;)Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->selectedEffect:Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    return-object p1
.end method

.method static synthetic access$600()Ljava/util/List;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->DEFAULT_EFFECTS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->effectImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->customStickerImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->tempCustomStickerFile:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method protected onLoggedInActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x80

    .line 367
    if-nez p2, :cond_1

    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->setResult(I)V

    .line 369
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->finish()V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->customStickerImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/liquable/nemo/util/PhotoThumbnail;

    iget-object v3, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->tempCustomStickerFile:Ljava/io/File;

    invoke-direct {v2, v3, v4, v4}, Lcom/liquable/nemo/util/PhotoThumbnail;-><init>(Ljava/io/File;II)V

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto :goto_0
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0d0350

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 384
    const v2, 0x7f03001d

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->setContentView(I)V

    .line 386
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 388
    const v2, 0x7f08005f

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->customStickerImageView:Landroid/widget/ImageView;

    .line 389
    const v2, 0x7f080060

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->effectImageView:Landroid/widget/ImageView;

    .line 390
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->customStickerDaemon:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    invoke-virtual {v2}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;->getTempFile()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->tempCustomStickerFile:Ljava/io/File;

    .line 391
    const v2, 0x7f080063

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 392
    .local v1, "okBtn":Landroid/view/View;
    const v2, 0x7f080062

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 394
    .local v0, "cancelBtn":Landroid/view/View;
    const v2, 0x7f080064

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    iput-object v2, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->effectsListView:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    .line 396
    iget-object v2, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->effectsListView:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    new-instance v3, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$2;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$2;-><init>(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)V

    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 416
    sget-object v2, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->DEFAULT_EFFECTS:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    iput-object v2, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->selectedEffect:Lcom/liquable/nemo/sticker/custom/model/CustomStickerEffect;

    .line 417
    new-instance v2, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;

    sget-object v3, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->DEFAULT_EFFECTS:Ljava/util/List;

    new-instance v4, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$3;-><init>(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)V

    invoke-direct {v2, p0, v3, v4}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;-><init>(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v2, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->effectsAdapter:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;

    .line 472
    iget-object v2, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->effectsListView:Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    iget-object v3, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->effectsAdapter:Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$EffectsAdapter;

    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 474
    new-instance v2, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$4;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$4;-><init>(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    new-instance v2, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$5;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$5;-><init>(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$6;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity$6;-><init>(Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 519
    return-void
.end method

.method protected onLoggedInStart()V
    .locals 2

    .prologue
    .line 523
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onLoggedInStart()V

    .line 525
    iget-boolean v1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->isReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 526
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->isReceiverRegistered:Z

    .line 527
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 528
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 531
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->isReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/sticker/custom/ApplyCustomStickerEffectActivity;->isReceiverRegistered:Z

    .line 539
    :cond_0
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onStop()V

    .line 540
    return-void
.end method
