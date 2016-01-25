.class public Lcom/aviary/android/feather/library/filters/FilterLoaderFactory;
.super Ljava/lang/Object;
.source "FilterLoaderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$aviary$android$feather$library$filters$FilterLoaderFactory$Filters:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$aviary$android$feather$library$filters$FilterLoaderFactory$Filters()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory;->$SWITCH_TABLE$com$aviary$android$feather$library$filters$FilterLoaderFactory$Filters:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->values()[Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ADJUST:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_12

    :goto_1
    :try_start_1
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->BLEMISH:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_11

    :goto_2
    :try_start_2
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->BORDERS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_10

    :goto_3
    :try_start_3
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->BRIGHTNESS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_f

    :goto_4
    :try_start_4
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->COLORTEMP:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_e

    :goto_5
    :try_start_5
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->COLOR_SPLASH:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_d

    :goto_6
    :try_start_6
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->CONTRAST:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_c

    :goto_7
    :try_start_7
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->CROP:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_b

    :goto_8
    :try_start_8
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->DRAWING:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_a

    :goto_9
    :try_start_9
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->EFFECTS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :goto_a
    :try_start_a
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ENHANCE:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_8

    :goto_b
    :try_start_b
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->MEME:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_7

    :goto_c
    :try_start_c
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->RED_EYE:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_6

    :goto_d
    :try_start_d
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->SATURATION:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_5

    :goto_e
    :try_start_e
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->SHARPNESS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_4

    :goto_f
    :try_start_f
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->STICKERS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_3

    :goto_10
    :try_start_10
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->TEXT:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2

    :goto_11
    :try_start_11
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->TILT_SHIFT:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_1

    :goto_12
    :try_start_12
    sget-object v1, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->WHITEN:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_0

    :goto_13
    sput-object v0, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory;->$SWITCH_TABLE$com$aviary$android$feather$library$filters$FilterLoaderFactory$Filters:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_13

    :catch_1
    move-exception v1

    goto :goto_12

    :catch_2
    move-exception v1

    goto :goto_11

    :catch_3
    move-exception v1

    goto :goto_10

    :catch_4
    move-exception v1

    goto :goto_f

    :catch_5
    move-exception v1

    goto :goto_e

    :catch_6
    move-exception v1

    goto :goto_d

    :catch_7
    move-exception v1

    goto :goto_c

    :catch_8
    move-exception v1

    goto :goto_b

    :catch_9
    move-exception v1

    goto :goto_a

    :catch_a
    move-exception v1

    goto :goto_9

    :catch_b
    move-exception v1

    goto/16 :goto_8

    :catch_c
    move-exception v1

    goto/16 :goto_7

    :catch_d
    move-exception v1

    goto/16 :goto_6

    :catch_e
    move-exception v1

    goto/16 :goto_5

    :catch_f
    move-exception v1

    goto/16 :goto_4

    :catch_10
    move-exception v1

    goto/16 :goto_3

    :catch_11
    move-exception v1

    goto/16 :goto_2

    :catch_12
    move-exception v1

    goto/16 :goto_1
.end method

.method public static get(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;)Lcom/aviary/android/feather/headless/filters/IFilter;
    .locals 3
    .param p0, "type"    # Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-static {}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory;->$SWITCH_TABLE$com$aviary$android$feather$library$filters$FilterLoaderFactory$Filters()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 158
    :goto_0
    :pswitch_0
    return-object v0

    .line 102
    :pswitch_1
    new-instance v0, Lcom/aviary/android/feather/headless/filters/impl/CropFilter;

    invoke-direct {v0}, Lcom/aviary/android/feather/headless/filters/impl/CropFilter;-><init>()V

    goto :goto_0

    .line 105
    :pswitch_2
    new-instance v0, Lcom/aviary/android/feather/library/filters/MemeFilter;

    invoke-direct {v0}, Lcom/aviary/android/feather/library/filters/MemeFilter;-><init>()V

    goto :goto_0

    .line 108
    :pswitch_3
    new-instance v0, Lcom/aviary/android/feather/library/filters/EnhanceFilter;

    invoke-direct {v0}, Lcom/aviary/android/feather/library/filters/EnhanceFilter;-><init>()V

    goto :goto_0

    .line 111
    :pswitch_4
    new-instance v0, Lcom/aviary/android/feather/library/filters/AdjustFilter;

    invoke-direct {v0}, Lcom/aviary/android/feather/library/filters/AdjustFilter;-><init>()V

    goto :goto_0

    .line 114
    :pswitch_5
    new-instance v0, Lcom/aviary/android/feather/headless/filters/NativeRangeFilter;

    const-string/jumbo v1, "sharpness"

    const-string/jumbo v2, "value"

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/headless/filters/NativeRangeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :pswitch_6
    new-instance v0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;

    const-string/jumbo v1, "whiten2"

    invoke-direct {v0, v1}, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :pswitch_7
    new-instance v0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;

    const-string/jumbo v1, "redeye2"

    invoke-direct {v0, v1}, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :pswitch_8
    new-instance v0, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;

    const-string/jumbo v1, "selectiveblur"

    invoke-direct {v0, v1}, Lcom/aviary/android/feather/library/filters/SpotBrushFilter;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :pswitch_9
    new-instance v0, Lcom/aviary/android/feather/library/filters/SaturationFilter;

    invoke-direct {v0}, Lcom/aviary/android/feather/library/filters/SaturationFilter;-><init>()V

    goto :goto_0

    .line 129
    :pswitch_a
    new-instance v0, Lcom/aviary/android/feather/headless/filters/NativeRangeFilter;

    const-string/jumbo v1, "brightness"

    const-string/jumbo v2, "value"

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/headless/filters/NativeRangeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :pswitch_b
    new-instance v0, Lcom/aviary/android/feather/headless/filters/NativeRangeFilter;

    const-string/jumbo v1, "contrast"

    const-string/jumbo v2, "value"

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/headless/filters/NativeRangeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_c
    new-instance v0, Lcom/aviary/android/feather/headless/filters/NativeRangeFilter;

    const-string/jumbo v1, "colortemp"

    const-string/jumbo v2, "value"

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/headless/filters/NativeRangeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :pswitch_d
    new-instance v0, Lcom/aviary/android/feather/headless/filters/impl/EffectFilter;

    invoke-direct {v0}, Lcom/aviary/android/feather/headless/filters/impl/EffectFilter;-><init>()V

    goto :goto_0

    .line 141
    :pswitch_e
    new-instance v0, Lcom/aviary/android/feather/library/filters/BorderFilter;

    invoke-direct {v0}, Lcom/aviary/android/feather/library/filters/BorderFilter;-><init>()V

    goto :goto_0

    .line 144
    :pswitch_f
    new-instance v0, Lcom/aviary/android/feather/library/filters/ColorSplashFilter;

    invoke-direct {v0}, Lcom/aviary/android/feather/library/filters/ColorSplashFilter;-><init>()V

    goto :goto_0

    .line 147
    :pswitch_10
    new-instance v0, Lcom/aviary/android/feather/library/filters/TiltShiftFilter;

    invoke-direct {v0}, Lcom/aviary/android/feather/library/filters/TiltShiftFilter;-><init>()V

    goto/16 :goto_0

    .line 150
    :pswitch_11
    new-instance v0, Lcom/aviary/android/feather/library/filters/TextFilter;

    invoke-direct {v0}, Lcom/aviary/android/feather/library/filters/TextFilter;-><init>()V

    goto/16 :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_d
        :pswitch_7
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_8
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public static getDefaultFilters()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 31
    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ENHANCE:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 32
    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->EFFECTS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 33
    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->BORDERS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 34
    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->STICKERS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 35
    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->CROP:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 36
    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->TILT_SHIFT:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 37
    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->ADJUST:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 38
    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->BRIGHTNESS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 39
    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->CONTRAST:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 40
    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->SATURATION:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 41
    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->COLORTEMP:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 42
    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->SHARPNESS:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 43
    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->COLOR_SPLASH:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 44
    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->DRAWING:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 45
    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->TEXT:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 46
    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->RED_EYE:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 47
    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->WHITEN:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 48
    sget-object v2, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->BLEMISH:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    invoke-virtual {v2}, Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 30
    return-object v0
.end method
