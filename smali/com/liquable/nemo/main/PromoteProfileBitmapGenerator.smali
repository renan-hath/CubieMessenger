.class public Lcom/liquable/nemo/main/PromoteProfileBitmapGenerator;
.super Ljava/lang/Object;
.source "PromoteProfileBitmapGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 28
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v22, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual/range {v22 .. v22}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/liquable/nemo/friend/model/Account;->createCoverLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v8

    .line 30
    .local v8, "coverLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v22, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v7

    .line 32
    .local v7, "coverFile":Ljava/io/File;
    invoke-static {v7}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_1

    .line 33
    :cond_0
    const/4 v9, 0x0

    .line 110
    :goto_0
    return-object v9

    .line 36
    :cond_1
    const/16 v22, 0x280

    const/16 v23, 0x280

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v22 .. v24}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 39
    .local v9, "createBitmap":Landroid/graphics/Bitmap;
    const/16 v22, 0xf0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 41
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 42
    .local v6, "coverBitmap":Landroid/graphics/Bitmap;
    if-nez v6, :cond_2

    .line 43
    const/4 v9, 0x0

    goto :goto_0

    .line 46
    :cond_2
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    .local v5, "canvas":Landroid/graphics/Canvas;
    new-instance v21, Landroid/graphics/Paint;

    const/16 v22, 0x3

    invoke-direct/range {v21 .. v22}, Landroid/graphics/Paint;-><init>(I)V

    .line 50
    .local v21, "whitePaint":Landroid/graphics/Paint;
    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    new-instance v22, Landroid/graphics/RectF;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/high16 v25, 0x44200000    # 640.0f

    const/high16 v26, 0x44200000    # 640.0f

    invoke-direct/range {v22 .. v26}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 52
    const/16 v4, 0xa7

    .line 53
    .local v4, "bottomWhiteHeight":I
    new-instance v22, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x53

    const/16 v25, 0x280

    const/16 v26, 0x22d

    invoke-direct/range {v22 .. v26}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v23, Landroid/graphics/RectF;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v26, 0x44200000    # 640.0f

    const v27, 0x43ec8000    # 473.0f

    invoke-direct/range {v23 .. v27}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v24, Landroid/graphics/Paint;

    const/16 v25, 0x3

    invoke-direct/range {v24 .. v25}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 62
    const/16 v14, 0xa

    .line 63
    .local v14, "iconPadding":I
    const/16 v15, 0xb6

    .line 64
    .local v15, "iconSide":I
    const/16 v20, 0x148

    .line 65
    .local v20, "whiteBgY":I
    const/16 v19, 0xc0

    .line 66
    .local v19, "whiteBgSide":I
    new-instance v22, Landroid/graphics/RectF;

    const/high16 v23, 0x43600000    # 224.0f

    const/high16 v24, 0x43a40000    # 328.0f

    const/high16 v25, 0x43d00000    # 416.0f

    const/high16 v26, 0x44020000    # 520.0f

    invoke-direct/range {v22 .. v26}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 72
    invoke-static/range {p0 .. p0}, Lcom/liquable/nemo/main/PromoteProfileBitmapGenerator;->getUserIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 73
    .local v11, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .line 74
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 73
    invoke-static/range {v22 .. v24}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 76
    .local v12, "iconBitmap":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 77
    .local v13, "iconCanvas":Landroid/graphics/Canvas;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f020518

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 78
    .local v16, "mask":Landroid/graphics/drawable/Drawable;
    new-instance v22, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-direct/range {v22 .. v26}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 79
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 80
    new-instance v18, Landroid/graphics/Paint;

    const/16 v22, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 81
    .local v18, "paint":Landroid/graphics/Paint;
    new-instance v22, Landroid/graphics/PorterDuffXfermode;

    sget-object v23, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v22 .. v23}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 82
    new-instance v22, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-direct/range {v22 .. v26}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v23, Landroid/graphics/Rect;

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 84
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    .line 85
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    invoke-direct/range {v23 .. v27}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 82
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v13, v11, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 88
    new-instance v22, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 89
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-direct/range {v22 .. v26}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v23, Landroid/graphics/Rect;

    const/16 v24, 0xe5

    const/16 v25, 0x14d

    const/16 v26, 0x19b

    const/16 v27, 0x203

    invoke-direct/range {v23 .. v27}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v24, Landroid/graphics/Paint;

    const/16 v25, 0x3

    invoke-direct/range {v24 .. v25}, Landroid/graphics/Paint;-><init>(I)V

    .line 88
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v5, v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 96
    const v22, 0x7f020515

    const/16 v23, 0xdc

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v5, v0, v1, v2}, Lcom/liquable/nemo/main/PromoteProfileBitmapGenerator;->drawBitmapFromResource(Landroid/graphics/Canvas;Landroid/content/Context;II)V

    .line 97
    const v22, 0x7f020517

    const/16 v23, 0x112

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v5, v0, v1, v2}, Lcom/liquable/nemo/main/PromoteProfileBitmapGenerator;->drawBitmapFromResource(Landroid/graphics/Canvas;Landroid/content/Context;II)V

    .line 98
    const v22, 0x7f020516

    const/16 v23, 0x23e

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v5, v0, v1, v2}, Lcom/liquable/nemo/main/PromoteProfileBitmapGenerator;->drawBitmapFromResource(Landroid/graphics/Canvas;Landroid/content/Context;II)V

    .line 101
    sget-object v22, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual/range {v22 .. v22}, Lcom/liquable/nemo/util/Pref;->getNickname()Ljava/lang/String;

    move-result-object v17

    .line 102
    .local v17, "nickname":Ljava/lang/String;
    const v22, -0x9e3b43    # -3.0009782E38f

    const/16 v23, 0x1e

    const/16 v24, 0x22e

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v5, v0, v1, v2, v3}, Lcom/liquable/nemo/main/PromoteProfileBitmapGenerator;->drawTextOnBitmap(Landroid/graphics/Canvas;Ljava/lang/String;III)V

    .line 105
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Cubie ID : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual/range {v23 .. v23}, Lcom/liquable/nemo/util/Pref;->getUsername()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 106
    .local v10, "cubieId":Ljava/lang/String;
    const v22, -0x5a5c63

    const/16 v23, 0x18

    const/16 v24, 0x25d

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v5, v10, v0, v1, v2}, Lcom/liquable/nemo/main/PromoteProfileBitmapGenerator;->drawTextOnBitmap(Landroid/graphics/Canvas;Ljava/lang/String;III)V

    .line 108
    const v22, 0x7f020514

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v5, v0, v1, v2}, Lcom/liquable/nemo/main/PromoteProfileBitmapGenerator;->drawBitmapFromResource(Landroid/graphics/Canvas;Landroid/content/Context;II)V

    goto/16 :goto_0
.end method

.method private static drawBitmapFromResource(Landroid/graphics/Canvas;Landroid/content/Context;II)V
    .locals 6
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "y"    # I

    .prologue
    .line 117
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 118
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    rsub-int v2, v2, 0x280

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v3, p3

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 120
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    return-void
.end method

.method private static drawTextOnBitmap(Landroid/graphics/Canvas;Ljava/lang/String;III)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "textSize"    # I
    .param p4, "y"    # I

    .prologue
    .line 131
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 132
    .local v0, "textPaint":Landroid/graphics/Paint;
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 134
    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 135
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 136
    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    int-to-float v2, p4

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 137
    return-void
.end method

.method private static getUserIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/friend/model/Account;->createIconLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    .line 141
    .local v1, "iconLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 143
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 144
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202a9

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 147
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method
