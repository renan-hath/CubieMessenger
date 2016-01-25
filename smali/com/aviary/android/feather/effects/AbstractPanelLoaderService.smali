.class public Lcom/aviary/android/feather/effects/AbstractPanelLoaderService;
.super Lcom/aviary/android/feather/library/services/BaseContextService;
.source "AbstractPanelLoaderService.java"


# static fields
.field static final mAllEntries:[Lcom/aviary/android/feather/library/content/ToolEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 129
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/aviary/android/feather/library/content/ToolEntry;

    const/4 v1, 0x0

    new-instance v2, Lcom/aviary/android/feather/library/content/ToolEntry;

    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ENHANCE:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget v4, Lcom/aviary/android/feather/R$drawable;->aviary_tool_ic_enhance:I

    sget v5, Lcom/aviary/android/feather/R$string;->feather_enhance:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/content/ToolEntry;-><init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/aviary/android/feather/library/content/ToolEntry;

    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->TILT_SHIFT:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget v4, Lcom/aviary/android/feather/R$drawable;->aviary_tool_ic_focus:I

    sget v5, Lcom/aviary/android/feather/R$string;->feather_tool_tiltshift:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/content/ToolEntry;-><init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/aviary/android/feather/library/content/ToolEntry;

    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->EFFECTS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget v4, Lcom/aviary/android/feather/R$drawable;->aviary_tool_ic_effects:I

    sget v5, Lcom/aviary/android/feather/R$string;->feather_effects:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/content/ToolEntry;-><init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/aviary/android/feather/library/content/ToolEntry;

    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->BORDERS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget v4, Lcom/aviary/android/feather/R$drawable;->aviary_tool_ic_frames:I

    sget v5, Lcom/aviary/android/feather/R$string;->feather_borders:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/content/ToolEntry;-><init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/aviary/android/feather/library/content/ToolEntry;

    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->STICKERS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget v4, Lcom/aviary/android/feather/R$drawable;->aviary_tool_ic_stickers:I

    sget v5, Lcom/aviary/android/feather/R$string;->feather_stickers:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/content/ToolEntry;-><init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/aviary/android/feather/library/content/ToolEntry;

    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->CROP:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget v4, Lcom/aviary/android/feather/R$drawable;->aviary_tool_ic_crop:I

    sget v5, Lcom/aviary/android/feather/R$string;->feather_crop:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/content/ToolEntry;-><init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/aviary/android/feather/library/content/ToolEntry;

    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ADJUST:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget v4, Lcom/aviary/android/feather/R$drawable;->aviary_tool_ic_orientation:I

    sget v5, Lcom/aviary/android/feather/R$string;->feather_adjust:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/content/ToolEntry;-><init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/aviary/android/feather/library/content/ToolEntry;

    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->BRIGHTNESS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget v4, Lcom/aviary/android/feather/R$drawable;->aviary_tool_ic_brightness:I

    sget v5, Lcom/aviary/android/feather/R$string;->feather_brightness:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/content/ToolEntry;-><init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/aviary/android/feather/library/content/ToolEntry;

    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->CONTRAST:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget v4, Lcom/aviary/android/feather/R$drawable;->aviary_tool_ic_contrast:I

    sget v5, Lcom/aviary/android/feather/R$string;->feather_contrast:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/content/ToolEntry;-><init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/aviary/android/feather/library/content/ToolEntry;

    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->SATURATION:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget v4, Lcom/aviary/android/feather/R$drawable;->aviary_tool_ic_saturation:I

    sget v5, Lcom/aviary/android/feather/R$string;->feather_saturation:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/content/ToolEntry;-><init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/aviary/android/feather/library/content/ToolEntry;

    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->COLORTEMP:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget v4, Lcom/aviary/android/feather/R$drawable;->aviary_tool_ic_warmth:I

    sget v5, Lcom/aviary/android/feather/R$string;->feather_tool_temperature:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/content/ToolEntry;-><init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/aviary/android/feather/library/content/ToolEntry;

    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->SHARPNESS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget v4, Lcom/aviary/android/feather/R$drawable;->aviary_tool_ic_sharpen:I

    sget v5, Lcom/aviary/android/feather/R$string;->feather_sharpen:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/content/ToolEntry;-><init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/aviary/android/feather/library/content/ToolEntry;

    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->COLOR_SPLASH:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget v4, Lcom/aviary/android/feather/R$drawable;->aviary_tool_ic_colorsplash:I

    sget v5, Lcom/aviary/android/feather/R$string;->feather_tool_colorsplash:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/content/ToolEntry;-><init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/aviary/android/feather/library/content/ToolEntry;

    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->DRAWING:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget v4, Lcom/aviary/android/feather/R$drawable;->aviary_tool_ic_draw:I

    sget v5, Lcom/aviary/android/feather/R$string;->feather_draw:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/content/ToolEntry;-><init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/aviary/android/feather/library/content/ToolEntry;

    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->TEXT:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget v4, Lcom/aviary/android/feather/R$drawable;->aviary_tool_ic_text:I

    sget v5, Lcom/aviary/android/feather/R$string;->feather_text:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/content/ToolEntry;-><init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/aviary/android/feather/library/content/ToolEntry;

    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->RED_EYE:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget v4, Lcom/aviary/android/feather/R$drawable;->aviary_tool_ic_redeye:I

    sget v5, Lcom/aviary/android/feather/R$string;->feather_red_eye:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/content/ToolEntry;-><init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/aviary/android/feather/library/content/ToolEntry;

    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->WHITEN:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget v4, Lcom/aviary/android/feather/R$drawable;->aviary_tool_ic_whiten:I

    sget v5, Lcom/aviary/android/feather/R$string;->feather_whiten:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/content/ToolEntry;-><init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/aviary/android/feather/library/content/ToolEntry;

    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->BLEMISH:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget v4, Lcom/aviary/android/feather/R$drawable;->aviary_tool_ic_blemish:I

    sget v5, Lcom/aviary/android/feather/R$string;->feather_blemish:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/content/ToolEntry;-><init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/aviary/android/feather/library/content/ToolEntry;

    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->MEME:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    sget v4, Lcom/aviary/android/feather/R$drawable;->aviary_tool_ic_meme:I

    sget v5, Lcom/aviary/android/feather/R$string;->feather_meme:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aviary/android/feather/library/content/ToolEntry;-><init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/aviary/android/feather/effects/AbstractPanelLoaderService;->mAllEntries:[Lcom/aviary/android/feather/library/content/ToolEntry;

    .line 168
    return-void
.end method

.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V
    .locals 0
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/services/BaseContextService;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V

    .line 26
    return-void
.end method


# virtual methods
.method public createNew(Lcom/aviary/android/feather/library/content/ToolEntry;)Lcom/aviary/android/feather/effects/AbstractPanel;
    .locals 7
    .param p1, "entry"    # Lcom/aviary/android/feather/library/content/ToolEntry;

    .prologue
    const/4 v6, 0x0

    .line 37
    const/4 v2, 0x0

    .line 38
    .local v2, "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    invoke-virtual {p0}, Lcom/aviary/android/feather/effects/AbstractPanelLoaderService;->getContext()Lcom/aviary/android/feather/library/services/IAviaryController;

    move-result-object v0

    .line 40
    .local v0, "context":Lcom/aviary/android/feather/library/services/IAviaryController;
    sget-object v3, Lcom/aviary/android/feather/effects/AbstractPanelLoaderService$1;->$SwitchMap$com$aviary$android$feather$library$filters$FilterLoaderFactory$Filters:[I

    iget-object v4, p1, Lcom/aviary/android/feather/library/content/ToolEntry;->name:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v4}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 118
    const-string/jumbo v3, "EffectLoaderService"

    sget-object v4, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory;->getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v1

    .line 119
    .local v1, "logger":Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Effect with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/aviary/android/feather/library/content/ToolEntry;->name:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " could not be found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v3}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    .line 122
    .end local v1    # "logger":Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    :goto_0
    return-object v2

    .line 42
    :pswitch_0
    new-instance v2, Lcom/aviary/android/feather/effects/AdjustEffectPanel;

    .end local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ADJUST:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-direct {v2, v0, p1, v3}, Lcom/aviary/android/feather/effects/AdjustEffectPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;)V

    .line 43
    .restart local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    goto :goto_0

    .line 46
    :pswitch_1
    new-instance v2, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    .end local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->BRIGHTNESS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v4, "brightness"

    invoke-direct {v2, v0, p1, v3, v4}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;Ljava/lang/String;)V

    .line 47
    .restart local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    goto :goto_0

    .line 50
    :pswitch_2
    new-instance v2, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    .end local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->SATURATION:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v4, "saturation"

    invoke-direct {v2, v0, p1, v3, v4}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;Ljava/lang/String;)V

    .line 51
    .restart local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    goto :goto_0

    .line 54
    :pswitch_3
    new-instance v2, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    .end local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->CONTRAST:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v4, "contrast"

    invoke-direct {v2, v0, p1, v3, v4}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;Ljava/lang/String;)V

    .line 55
    .restart local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    goto :goto_0

    .line 58
    :pswitch_4
    new-instance v2, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    .end local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->SHARPNESS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v4, "sharpen"

    invoke-direct {v2, v0, p1, v3, v4}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;Ljava/lang/String;)V

    .line 59
    .restart local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    goto :goto_0

    .line 62
    :pswitch_5
    new-instance v2, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;

    .end local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->COLORTEMP:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    const-string/jumbo v4, "temperature"

    invoke-direct {v2, v0, p1, v3, v4}, Lcom/aviary/android/feather/effects/NativeEffectRangePanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;Ljava/lang/String;)V

    .line 63
    .restart local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    goto :goto_0

    .line 66
    :pswitch_6
    new-instance v2, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;

    .end local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ENHANCE:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-direct {v2, v0, p1, v3}, Lcom/aviary/android/feather/effects/EnhanceEffectPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;)V

    .line 67
    .restart local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    goto :goto_0

    .line 70
    :pswitch_7
    new-instance v2, Lcom/aviary/android/feather/effects/EffectsPanel;

    .end local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    invoke-direct {v2, v0, p1}, Lcom/aviary/android/feather/effects/EffectsPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 71
    .restart local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    goto :goto_0

    .line 74
    :pswitch_8
    new-instance v2, Lcom/aviary/android/feather/effects/BordersPanel;

    .end local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    invoke-direct {v2, v0, p1}, Lcom/aviary/android/feather/effects/BordersPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 75
    .restart local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    goto :goto_0

    .line 78
    :pswitch_9
    new-instance v2, Lcom/aviary/android/feather/effects/CropPanel;

    .end local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    invoke-direct {v2, v0, p1}, Lcom/aviary/android/feather/effects/CropPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 79
    .restart local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    goto :goto_0

    .line 82
    :pswitch_a
    new-instance v2, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    .end local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->RED_EYE:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-direct {v2, v0, p1, v3, v6}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;Z)V

    .line 83
    .restart local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    goto :goto_0

    .line 86
    :pswitch_b
    new-instance v2, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    .end local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->WHITEN:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-direct {v2, v0, p1, v3, v6}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;Z)V

    .line 87
    .restart local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    goto :goto_0

    .line 90
    :pswitch_c
    new-instance v2, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;

    .end local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    sget-object v3, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->BLEMISH:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-direct {v2, v0, p1, v3, v6}, Lcom/aviary/android/feather/effects/DelayedSpotDrawPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;Z)V

    .line 91
    .restart local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    goto :goto_0

    .line 94
    :pswitch_d
    new-instance v2, Lcom/aviary/android/feather/effects/DrawingPanel;

    .end local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    invoke-direct {v2, v0, p1}, Lcom/aviary/android/feather/effects/DrawingPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 95
    .restart local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    goto :goto_0

    .line 98
    :pswitch_e
    new-instance v2, Lcom/aviary/android/feather/effects/StickersPanel;

    .end local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    invoke-direct {v2, v0, p1}, Lcom/aviary/android/feather/effects/StickersPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 99
    .restart local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    goto :goto_0

    .line 102
    :pswitch_f
    new-instance v2, Lcom/aviary/android/feather/effects/TextPanel;

    .end local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    invoke-direct {v2, v0, p1}, Lcom/aviary/android/feather/effects/TextPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 103
    .restart local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    goto/16 :goto_0

    .line 106
    :pswitch_10
    new-instance v2, Lcom/aviary/android/feather/effects/MemePanel;

    .end local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    invoke-direct {v2, v0, p1}, Lcom/aviary/android/feather/effects/MemePanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 107
    .restart local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    goto/16 :goto_0

    .line 110
    :pswitch_11
    new-instance v2, Lcom/aviary/android/feather/effects/ColorSplashPanel;

    .end local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    invoke-direct {v2, v0, p1}, Lcom/aviary/android/feather/effects/ColorSplashPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 111
    .restart local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    goto/16 :goto_0

    .line 114
    :pswitch_12
    new-instance v2, Lcom/aviary/android/feather/effects/TiltShiftPanel;

    .end local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    invoke-direct {v2, v0, p1}, Lcom/aviary/android/feather/effects/TiltShiftPanel;-><init>(Lcom/aviary/android/feather/library/services/IAviaryController;Lcom/aviary/android/feather/library/content/ToolEntry;)V

    .line 115
    .restart local v2    # "panel":Lcom/aviary/android/feather/effects/AbstractPanel;
    goto/16 :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public getToolsEntries()[Lcom/aviary/android/feather/library/content/ToolEntry;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/aviary/android/feather/effects/AbstractPanelLoaderService;->mAllEntries:[Lcom/aviary/android/feather/library/content/ToolEntry;

    return-object v0
.end method
