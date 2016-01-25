.class public Lcom/liquable/nemo/util/crop/CropImageActivity;
.super Lcom/liquable/nemo/util/crop/MonitoredActivity;
.source "CropImageActivity.java"


# static fields
.field public static final ADD_BG_COLOR:Ljava/lang/String; = "ADD_BG_COLOR"

.field public static final CROP_MSG:I = 0xa

.field public static final CROP_MSG_INTERNAL:I = 0x64

.field public static final NEED_PICK_PHOTO:Ljava/lang/String; = "NEED_PICK_PHOTO"

.field private static final PICK_PHOTO_CODE:I = 0x4

.field public static final RESULT_FILE_PATH:Ljava/lang/String; = "PATH"


# instance fields
.field private mAddBgColor:Z

.field private mApp:Lcom/liquable/nemo/util/crop/App;

.field private mAspectX:I

.field private mAspectY:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCircleCrop:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field mCrop:Lcom/liquable/nemo/util/crop/HighlightView;

.field private final mDecodingThreads:Lcom/liquable/nemo/util/crop/BitmapManager$ThreadSet;

.field private mDoFaceDetection:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImageView:Lcom/liquable/nemo/util/crop/CropImageView;

.field private mItem:Lcom/liquable/nemo/util/crop/MediaItem;

.field private mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mOutputX:I

.field private mOutputY:I

.field mRunFaceDetection:Ljava/lang/Runnable;

.field private mSaveUri:Landroid/net/Uri;

.field mSaving:Z

.field private mScale:Z

.field private mScaleUp:Z

.field mWaitingToPick:Z

.field private resultFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/MonitoredActivity;-><init>()V

    .line 96
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mSaveUri:Landroid/net/Uri;

    .line 108
    iput-boolean v2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mDoFaceDetection:Z

    .line 109
    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mCircleCrop:Z

    .line 110
    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mAddBgColor:Z

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mHandler:Landroid/os/Handler;

    .line 117
    iput-boolean v2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mScaleUp:Z

    .line 125
    new-instance v0, Lcom/liquable/nemo/util/crop/BitmapManager$ThreadSet;

    invoke-direct {v0}, Lcom/liquable/nemo/util/crop/BitmapManager$ThreadSet;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mDecodingThreads:Lcom/liquable/nemo/util/crop/BitmapManager$ThreadSet;

    .line 130
    new-instance v0, Lcom/liquable/nemo/util/crop/CropImageActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/util/crop/CropImageActivity$1;-><init>(Lcom/liquable/nemo/util/crop/CropImageActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mRunFaceDetection:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/util/crop/CropImageActivity;)Lcom/liquable/nemo/util/crop/CropImageView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/CropImageActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mImageView:Lcom/liquable/nemo/util/crop/CropImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/util/crop/CropImageActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/CropImageActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/util/crop/CropImageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/CropImageActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$102(Lcom/liquable/nemo/util/crop/CropImageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/CropImageActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/liquable/nemo/util/crop/CropImageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/CropImageActivity;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mCircleCrop:Z

    return v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/util/crop/CropImageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/CropImageActivity;

    .prologue
    .line 61
    iget v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mAspectX:I

    return v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/util/crop/CropImageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/CropImageActivity;

    .prologue
    .line 61
    iget v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mAspectY:I

    return v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/util/crop/CropImageActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/CropImageActivity;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mDoFaceDetection:Z

    return v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/util/crop/CropImageActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/CropImageActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/util/crop/CropImageActivity;Landroid/content/Intent;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/CropImageActivity;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/util/crop/CropImageActivity;->decodeBitmap(Landroid/content/Intent;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static createStartActivityIntent(Landroid/app/Activity;IIIILjava/lang/String;ZLjava/io/File;)Landroid/content/Intent;
    .locals 3
    .param p0, "fromActivity"    # Landroid/app/Activity;
    .param p1, "aspectX"    # I
    .param p2, "aspectY"    # I
    .param p3, "outputX"    # I
    .param p4, "outputY"    # I
    .param p5, "outputFormat"    # Ljava/lang/String;
    .param p6, "returnData"    # Z
    .param p7, "outputFile"    # Ljava/io/File;

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/util/crop/CropImageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "crop"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string/jumbo v1, "aspectX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const-string/jumbo v1, "aspectY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string/jumbo v1, "outputX"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string/jumbo v1, "outputY"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    const-string/jumbo v1, "scale"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    const-string/jumbo v1, "return-data"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    const-string/jumbo v1, "outputFormat"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string/jumbo v1, "PATH"

    invoke-virtual {p7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    return-object v0
.end method

.method private decodeBitmap(Landroid/content/Intent;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 283
    if-eqz p2, :cond_0

    .line 284
    iput-object p2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 287
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->startFaceDetection()V

    .line 288
    return-void
.end method

.method private decodeFileToBitmap(Landroid/net/Uri;Lcom/liquable/nemo/android/provider/PictureInfo;)V
    .locals 2
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "mediaInfo"    # Lcom/liquable/nemo/android/provider/PictureInfo;

    .prologue
    .line 291
    new-instance v0, Lcom/liquable/nemo/util/crop/CropImageActivity$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/liquable/nemo/util/crop/CropImageActivity$2;-><init>(Lcom/liquable/nemo/util/crop/CropImageActivity;Lcom/liquable/nemo/android/provider/PictureInfo;Landroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 324
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/crop/CropImageActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 325
    return-void
.end method

.method private initialCropData(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 333
    if-eqz p1, :cond_2

    .line 334
    const-string/jumbo v1, "circleCrop"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 335
    iput-boolean v2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mCircleCrop:Z

    .line 336
    iput v2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mAspectX:I

    .line 337
    iput v2, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mAspectY:I

    .line 339
    :cond_0
    const-string/jumbo v1, "output"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mSaveUri:Landroid/net/Uri;

    .line 341
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mSaveUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 342
    const-string/jumbo v1, "outputFormat"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "outputFormatString":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 344
    invoke-static {v0}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 347
    .end local v0    # "outputFormatString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "ADD_BG_COLOR"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mAddBgColor:Z

    .line 348
    const-string/jumbo v1, "aspectX"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mAspectX:I

    .line 349
    const-string/jumbo v1, "aspectY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mAspectY:I

    .line 350
    const-string/jumbo v1, "outputX"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mOutputX:I

    .line 351
    const-string/jumbo v1, "outputY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mOutputY:I

    .line 352
    const-string/jumbo v1, "scale"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mScale:Z

    .line 353
    const-string/jumbo v1, "scaleUpIfNeeded"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mScaleUp:Z

    .line 354
    const-string/jumbo v1, "noFaceDetection"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "noFaceDetection"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mDoFaceDetection:Z

    .line 357
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 354
    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method private onSaveClicked()V
    .locals 26

    .prologue
    .line 452
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mSaving:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mCrop:Lcom/liquable/nemo/util/crop/HighlightView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 460
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/liquable/nemo/util/crop/CropImageActivity;->mSaving:Z

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mCrop:Lcom/liquable/nemo/util/crop/HighlightView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/liquable/nemo/util/crop/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v19

    .line 464
    .local v19, "r":Landroid/graphics/Rect;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v21

    .line 465
    .local v21, "width":I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v16

    .line 470
    .local v16, "height":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mCircleCrop:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v16

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 473
    .local v8, "croppedImage":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 474
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Rect;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v16

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 475
    .local v9, "dstRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mAddBgColor:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 476
    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 478
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 481
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mCircleCrop:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 487
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 488
    .local v6, "c":Landroid/graphics/Canvas;
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    .line 489
    .local v18, "p":Landroid/graphics/Path;
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    sget-object v25, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 490
    sget-object v22, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 491
    const/16 v22, 0x0

    sget-object v23, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 495
    .end local v6    # "c":Landroid/graphics/Canvas;
    .end local v18    # "p":Landroid/graphics/Path;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mOutputX:I

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mOutputY:I

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 496
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mScale:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 498
    move-object/from16 v17, v8

    .line 499
    .local v17, "old":Landroid/graphics/Bitmap;
    new-instance v22, Landroid/graphics/Matrix;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mOutputX:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mOutputY:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mScaleUp:Z

    move/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v8, v1, v2, v3}, Lcom/liquable/nemo/util/crop/Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 500
    move-object/from16 v0, v17

    if-eq v0, v8, :cond_4

    .line 501
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 538
    .end local v17    # "old":Landroid/graphics/Bitmap;
    :cond_4
    :goto_2
    const/4 v14, 0x0

    .line 540
    .local v14, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->resultFilePath:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 541
    .local v13, "file":Ljava/io/File;
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    .end local v14    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v15, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v22, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v23, 0x64

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 543
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_7

    .line 544
    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/crop/CropImageActivity;->setResult(I)V

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->finish()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 551
    invoke-static {v15}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 470
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "croppedImage":Landroid/graphics/Bitmap;
    .end local v9    # "dstRect":Landroid/graphics/Rect;
    .end local v13    # "file":Ljava/io/File;
    .end local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_5
    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_1

    .line 512
    .restart local v7    # "canvas":Landroid/graphics/Canvas;
    .restart local v8    # "croppedImage":Landroid/graphics/Bitmap;
    .restart local v9    # "dstRect":Landroid/graphics/Rect;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mOutputX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mOutputY:I

    move/from16 v23, v0

    sget-object v24, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v22 .. v24}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 513
    .local v5, "b":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    .end local v7    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 515
    .restart local v7    # "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mCrop:Lcom/liquable/nemo/util/crop/HighlightView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/liquable/nemo/util/crop/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v20

    .line 516
    .local v20, "srcRect":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    .end local v9    # "dstRect":Landroid/graphics/Rect;
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mOutputX:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mOutputY:I

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 518
    .restart local v9    # "dstRect":Landroid/graphics/Rect;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v22

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v23

    sub-int v22, v22, v23

    div-int/lit8 v10, v22, 0x2

    .line 519
    .local v10, "dx":I
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v22

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v23

    sub-int v22, v22, v23

    div-int/lit8 v11, v22, 0x2

    .line 522
    .local v11, "dy":I
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 525
    const/16 v22, 0x0

    neg-int v0, v10

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    const/16 v23, 0x0

    neg-int v0, v11

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 531
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 532
    move-object v8, v5

    goto/16 :goto_2

    .line 551
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .end local v10    # "dx":I
    .end local v11    # "dy":I
    .end local v20    # "srcRect":Landroid/graphics/Rect;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_7
    invoke-static {v15}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    move-object v14, v15

    .line 554
    .end local v13    # "file":Ljava/io/File;
    .end local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_3
    const v22, 0x7f0d01c6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/crop/CropImageActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->finish()V

    goto/16 :goto_0

    .line 548
    :catch_0
    move-exception v12

    .line 549
    .local v12, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 551
    invoke-static {v14}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_3

    .end local v12    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v22

    :goto_5
    invoke-static {v14}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v22

    .end local v14    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v22

    move-object v14, v15

    .end local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 548
    .end local v14    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v12

    move-object v14, v15

    .end local v15    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method private startFaceDetection()V
    .locals 4

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mImageView:Lcom/liquable/nemo/util/crop/CropImageView;

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/crop/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 601
    const/4 v0, 0x0

    const-string/jumbo v1, "running face detection..."

    new-instance v2, Lcom/liquable/nemo/util/crop/CropImageActivity$5;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/util/crop/CropImageActivity$5;-><init>(Lcom/liquable/nemo/util/crop/CropImageActivity;)V

    iget-object v3, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/liquable/nemo/util/crop/Util;->startBackgroundJob(Lcom/liquable/nemo/util/crop/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method protected getActionBarStyle()Lcom/liquable/nemo/BaseActivity$ActionBarStyle;
    .locals 1

    .prologue
    .line 329
    sget-object v0, Lcom/liquable/nemo/BaseActivity$ActionBarStyle;->NO:Lcom/liquable/nemo/BaseActivity$ActionBarStyle;

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mApp:Lcom/liquable/nemo/util/crop/App;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/App;->shutdown()V

    .line 362
    invoke-super {p0}, Lcom/liquable/nemo/util/crop/MonitoredActivity;->onDestroy()V

    .line 363
    return-void
.end method

.method protected onLoggedInActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const v4, 0x7f0d01b8

    const/4 v3, 0x0

    .line 370
    if-nez p2, :cond_1

    .line 371
    invoke-virtual {p0, v3}, Lcom/liquable/nemo/util/crop/CropImageActivity;->setResult(I)V

    .line 372
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->finish()V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    const/4 v2, 0x4

    if-ne v2, p1, :cond_0

    .line 378
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_3

    .line 379
    :cond_2
    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 381
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 385
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 386
    .local v0, "data":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/liquable/nemo/android/provider/Medias;->findMediaFilePath(Landroid/content/Context;Landroid/net/Uri;)Lcom/liquable/nemo/android/provider/MediaInfo;

    move-result-object v1

    .line 387
    .local v1, "mediaInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    instance-of v2, v1, Lcom/liquable/nemo/android/provider/PictureInfo;

    if-nez v2, :cond_4

    .line 388
    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 390
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 394
    :cond_4
    check-cast v1, Lcom/liquable/nemo/android/provider/PictureInfo;

    .end local v1    # "mediaInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/util/crop/CropImageActivity;->decodeFileToBitmap(Landroid/net/Uri;Lcom/liquable/nemo/android/provider/PictureInfo;)V

    goto :goto_0
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 402
    new-instance v4, Lcom/liquable/nemo/util/crop/App;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/util/crop/App;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mApp:Lcom/liquable/nemo/util/crop/App;

    .line 403
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 404
    invoke-virtual {p0, v6}, Lcom/liquable/nemo/util/crop/CropImageActivity;->requestWindowFeature(I)Z

    .line 405
    const v4, 0x7f030027

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/util/crop/CropImageActivity;->setContentView(I)V

    .line 407
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 408
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 409
    .local v3, "originalIntent":Landroid/content/Intent;
    const-string/jumbo v4, "PATH"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->resultFilePath:Ljava/lang/String;

    .line 410
    const v4, 0x7f0800a7

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/util/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/liquable/nemo/util/crop/CropImageActivity$3;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/util/crop/CropImageActivity$3;-><init>(Lcom/liquable/nemo/util/crop/CropImageActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    const v4, 0x7f0800a8

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/util/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/liquable/nemo/util/crop/CropImageActivity$4;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/util/crop/CropImageActivity$4;-><init>(Lcom/liquable/nemo/util/crop/CropImageActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    const v4, 0x7f0800a6

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/util/crop/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/util/crop/CropImageView;

    iput-object v4, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mImageView:Lcom/liquable/nemo/util/crop/CropImageView;

    .line 426
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 427
    .local v1, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v1}, Lcom/liquable/nemo/util/crop/CropImageActivity;->initialCropData(Landroid/os/Bundle;)V

    .line 429
    const-string/jumbo v4, "NEED_PICK_PHOTO"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 430
    const/4 v4, 0x4

    invoke-static {p0, v4}, Lcom/liquable/nemo/util/ExternalIntents;->intentPickPhoto(Landroid/app/Activity;I)V

    .line 436
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 433
    .local v0, "data":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/liquable/nemo/android/provider/Medias;->findMediaFilePath(Landroid/content/Context;Landroid/net/Uri;)Lcom/liquable/nemo/android/provider/MediaInfo;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 434
    .local v2, "info":Lcom/liquable/nemo/android/provider/PictureInfo;
    invoke-direct {p0, v0, v2}, Lcom/liquable/nemo/util/crop/CropImageActivity;->decodeFileToBitmap(Landroid/net/Uri;Lcom/liquable/nemo/android/provider/PictureInfo;)V

    goto :goto_0
.end method

.method protected onLoggedInResume()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mApp:Lcom/liquable/nemo/util/crop/App;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/App;->onResume()V

    .line 441
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 445
    invoke-super {p0}, Lcom/liquable/nemo/util/crop/MonitoredActivity;->onPause()V

    .line 446
    invoke-static {}, Lcom/liquable/nemo/util/crop/BitmapManager;->instance()Lcom/liquable/nemo/util/crop/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mDecodingThreads:Lcom/liquable/nemo/util/crop/BitmapManager$ThreadSet;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/crop/BitmapManager;->cancelThreadDecoding(Lcom/liquable/nemo/util/crop/BitmapManager$ThreadSet;)V

    .line 447
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/CropImageActivity;->mApp:Lcom/liquable/nemo/util/crop/App;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/crop/App;->onPause()V

    .line 448
    return-void
.end method
