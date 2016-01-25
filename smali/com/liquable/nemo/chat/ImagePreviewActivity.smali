.class public Lcom/liquable/nemo/chat/ImagePreviewActivity;
.super Lcom/liquable/nemo/BaseFragmentActivity;
.source "ImagePreviewActivity.java"

# interfaces
.implements Lcom/liquable/nemo/main/MainCameraView$MainCameraCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;,
        Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent;,
        Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;
    }
.end annotation


# static fields
.field private static final CAMERA_FRAGMENT_TAG:Ljava/lang/String; = "CAMERA_FRAGMENT_TAG"

.field public static debugLogger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private cachedSecretImage:Landroid/graphics/Bitmap;

.field private cameraFacing:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

.field private captureByCamera:Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;

.field private image:Landroid/graphics/Bitmap;

.field private imageUri:Landroid/net/Uri;

.field private isOpenCamera:Z

.field private isOpenGallery:Z

.field private lastAlbumInfo:Lcom/liquable/nemo/gallery/AlbumInfo;

.field private previewImageView:Landroid/widget/ImageView;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private showCaseEffectView:Lcom/liquable/nemo/widget/ShowcaseView;

.field private widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

.field private withEffect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    const-class v0, Lcom/liquable/nemo/chat/ImagePreviewActivity;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragmentActivity;-><init>()V

    .line 218
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/ImagePreviewActivity;)Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImagePreviewActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->captureByCamera:Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/ImagePreviewActivity;Ljava/lang/String;ZLcom/liquable/nemo/analytics/PictureParameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImagePreviewActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/liquable/nemo/analytics/PictureParameters;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->send(Ljava/lang/String;ZLcom/liquable/nemo/analytics/PictureParameters;)V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/chat/ImagePreviewActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImagePreviewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->updateImage(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/chat/ImagePreviewActivity;)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImagePreviewActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->showCaseEffectView:Lcom/liquable/nemo/widget/ShowcaseView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/liquable/nemo/chat/ImagePreviewActivity;Lcom/liquable/nemo/widget/ShowcaseView;)Lcom/liquable/nemo/widget/ShowcaseView;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImagePreviewActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/widget/ShowcaseView;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->showCaseEffectView:Lcom/liquable/nemo/widget/ShowcaseView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/liquable/nemo/chat/ImagePreviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImagePreviewActivity;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->openImageEditor()V

    return-void
.end method

.method static synthetic access$600(Lcom/liquable/nemo/chat/ImagePreviewActivity;)Lcom/liquable/nemo/chat/WidgetManager;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImagePreviewActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/chat/ImagePreviewActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImagePreviewActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$702(Lcom/liquable/nemo/chat/ImagePreviewActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImagePreviewActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->imageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$800(Lcom/liquable/nemo/chat/ImagePreviewActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImagePreviewActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->copyContentToFile(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lcom/liquable/nemo/chat/ImagePreviewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ImagePreviewActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->image:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private cameraFragmentClose()V
    .locals 3

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    .line 251
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "CAMERA_FRAGMENT_TAG"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 252
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 255
    :cond_0
    return-void
.end method

.method private cameraFragmentOpen()V
    .locals 4

    .prologue
    const v3, 0x7f0800b9

    .line 258
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    .line 259
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "CAMERA_FRAGMENT_TAG"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/main/MainCameraView;

    invoke-direct {v1}, Lcom/liquable/nemo/main/MainCameraView;-><init>()V

    const-string/jumbo v2, "CAMERA_FRAGMENT_TAG"

    .line 261
    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 263
    invoke-virtual {p0, v3}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 265
    :cond_0
    return-void
.end method

.method private clearImage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-virtual {v0, v3}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setSendEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-virtual {v0, v3}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setPaintEnabled(Z)V

    .line 270
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->clear()V

    .line 271
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->previewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->image:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/liquable/nemo/util/ImageUtils;->recycleQuietly(Landroid/graphics/Bitmap;)V

    .line 273
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->cachedSecretImage:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/liquable/nemo/util/ImageUtils;->recycleQuietly(Landroid/graphics/Bitmap;)V

    .line 274
    iput-object v2, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->image:Landroid/graphics/Bitmap;

    .line 275
    iput-object v2, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->cachedSecretImage:Landroid/graphics/Bitmap;

    .line 276
    iput-object v2, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->imageUri:Landroid/net/Uri;

    .line 277
    return-void
.end method

.method private copyContentToFile(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 280
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "file"

    invoke-static {v4, v5}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    .end local p1    # "uri":Landroid/net/Uri;
    :goto_0
    return-object p1

    .line 286
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 288
    .local v1, "inputStream":Ljava/io/InputStream;
    if-nez v1, :cond_1

    move-object p1, v3

    .line 289
    goto :goto_0

    .line 291
    :cond_1
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    const-string/jumbo v5, "output.jpg"

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 292
    .local v2, "tempFile":Ljava/io/File;
    invoke-static {v1, v2}, Lorg/apache/commons/io/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 293
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object p1, v3

    .line 294
    goto :goto_0
.end method

.method private deleteGallerySavedByCameraInSecretMode()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/WidgetManager;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->captureByCamera:Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity$1;-><init>(Lcom/liquable/nemo/chat/ImagePreviewActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 312
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 314
    :cond_0
    return-void
.end method

.method private getVia(Landroid/content/Intent;)Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->isOpenCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->captureByCamera:Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;

    if-nez v0, :cond_0

    .line 363
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->camera:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    .line 365
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent;->getVia(Landroid/content/Intent;)Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    move-result-object v0

    goto :goto_0
.end method

.method private handleResultCamera(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 369
    if-nez p1, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->finish()V

    .line 383
    :goto_0
    return-void

    .line 374
    :cond_0
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v1}, Lcom/liquable/nemo/storage/NemoFileService;->getTempCameraPhoto()Ljava/io/File;

    move-result-object v0

    .line 375
    .local v0, "tempCameraPhoto":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 376
    const v1, 0x7f0d01c8

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 377
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->finish()V

    goto :goto_0

    .line 381
    :cond_1
    new-instance v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;-><init>(Lcom/liquable/nemo/chat/ImagePreviewActivity;)V

    iput-object v1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->captureByCamera:Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;

    .line 382
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->loadPreview(Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method private handleResultEdit(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 386
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-static {p2}, Lcom/liquable/nemo/aviary/AviaryUtil;->isWithEffect(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->withEffect:Z

    .line 391
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->withEffect:Z

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->cachedSecretImage:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/liquable/nemo/util/ImageUtils;->recycleQuietly(Landroid/graphics/Bitmap;)V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->cachedSecretImage:Landroid/graphics/Bitmap;

    .line 396
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->loadPreview(Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method private handleResultGallery(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 400
    invoke-static {p1, p2}, Lcom/liquable/nemo/gallery/GalleryActivity;->isSentSuccessfully(ILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->finish()V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    .line 406
    :cond_2
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->isOpenGallery:Z

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->finish()V

    goto :goto_0

    .line 412
    :cond_3
    invoke-static {p2}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent;->getAlbumInfo(Landroid/content/Intent;)Lcom/liquable/nemo/gallery/AlbumInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->lastAlbumInfo:Lcom/liquable/nemo/gallery/AlbumInfo;

    .line 414
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->isOpenCamera:Z

    if-eqz v0, :cond_4

    .line 415
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->cameraFragmentClose()V

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->captureByCamera:Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;

    .line 419
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->loadPreview(Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method private handleResultSelectReceivers(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 423
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->finish()V

    .line 426
    :cond_0
    return-void
.end method

.method private handleResultVideoPreview(ILandroid/content/Intent;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 429
    if-nez p1, :cond_0

    .line 440
    :goto_0
    return-void

    .line 433
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/liquable/nemo/share/SharableVideo;->fromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/share/SharableVideo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 434
    :cond_1
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->setResult(I)V

    .line 439
    :goto_1
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->finish()V

    goto :goto_0

    .line 436
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method private initEmojiWidget()V
    .locals 6

    .prologue
    .line 443
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    new-instance v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$2;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity$2;-><init>(Lcom/liquable/nemo/chat/ImagePreviewActivity;)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    const/4 v4, 0x0

    sget-object v5, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->FAVORITE:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->EMOJI:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;->STICKER:Lcom/liquable/nemo/chat/EmojiUtil$EmojiCategory;

    aput-object v5, v3, v4

    .line 452
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 443
    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/chat/WidgetManager;->initEmojiWidget(Landroid/view/View$OnClickListener;Lcom/liquable/nemo/chat/WidgetManager$OnStickerSendListener;Ljava/util/List;)V

    .line 453
    return-void
.end method

.method private initInputMessageWidget()V
    .locals 6

    .prologue
    .line 456
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    const/4 v1, 0x1

    new-instance v2, Lcom/liquable/nemo/chat/ImagePreviewActivity$3;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity$3;-><init>(Lcom/liquable/nemo/chat/ImagePreviewActivity;)V

    new-instance v3, Lcom/liquable/nemo/chat/ImagePreviewActivity$4;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity$4;-><init>(Lcom/liquable/nemo/chat/ImagePreviewActivity;)V

    const/4 v4, 0x0

    new-instance v5, Lcom/liquable/nemo/chat/ImagePreviewActivity$5;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity$5;-><init>(Lcom/liquable/nemo/chat/ImagePreviewActivity;)V

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/chat/WidgetManager;->initInputMessageWidget(ZLcom/liquable/nemo/chat/widget/InputMessageWidget$OnSendButtonClickedListener;Lcom/liquable/nemo/chat/widget/InputMessageWidget$OnSecretModeListener;Ljava/lang/Runnable;Landroid/view/View$OnClickListener;)V

    .line 486
    return-void
.end method

.method private initPaintWidget()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 489
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    new-instance v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$6;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity$6;-><init>(Lcom/liquable/nemo/chat/ImagePreviewActivity;)V

    invoke-virtual {v0, v2, v1, v2}, Lcom/liquable/nemo/chat/WidgetManager;->initPaintWidget(Landroid/view/View$OnClickListener;Lcom/liquable/nemo/chat/paint/PaintWidget$OnSendBtnClicked;Ljava/lang/Runnable;)V

    .line 501
    return-void
.end method

.method private loadPreview(Landroid/net/Uri;Z)V
    .locals 3
    .param p1, "finalData"    # Landroid/net/Uri;
    .param p2, "force"    # Z

    .prologue
    const/4 v2, 0x0

    .line 504
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 548
    :goto_0
    return-void

    .line 507
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->imageUri:Landroid/net/Uri;

    .line 509
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setSendEnabled(Z)V

    .line 510
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->INPUT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/widget/InputMessageWidget;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/chat/widget/InputMessageWidget;->setPaintEnabled(Z)V

    .line 511
    new-instance v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/chat/ImagePreviewActivity$7;-><init>(Lcom/liquable/nemo/chat/ImagePreviewActivity;Landroid/net/Uri;)V

    new-array v1, v2, [Ljava/lang/Void;

    .line 547
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private openCamera()V
    .locals 1

    .prologue
    .line 721
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isUseNativeCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    sget-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->CAMERA:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->ordinal()I

    move-result v0

    invoke-static {p0, v0}, Lcom/liquable/nemo/util/ExternalIntents;->intentCamera(Landroid/app/Activity;I)V

    .line 726
    :goto_0
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->clearImage()V

    .line 727
    return-void

    .line 724
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->cameraFragmentOpen()V

    goto :goto_0
.end method

.method private openGallery()V
    .locals 3

    .prologue
    .line 730
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isUseNativeGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    sget-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->GALLERY:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->ordinal()I

    move-result v0

    invoke-static {p0, v0}, Lcom/liquable/nemo/util/ExternalIntents;->intentPickPhoto(Landroid/app/Activity;I)V

    .line 738
    :goto_0
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->clearImage()V

    .line 739
    return-void

    .line 734
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent;->getChatGroup(Landroid/content/Intent;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->lastAlbumInfo:Lcom/liquable/nemo/gallery/AlbumInfo;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    .line 736
    invoke-virtual {v2}, Lcom/liquable/nemo/chat/WidgetManager;->isSecret()Z

    move-result v2

    .line 733
    invoke-static {p0, v0, v1, v2}, Lcom/liquable/nemo/gallery/GalleryActivity;->createIntent(Landroid/content/Context;Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/gallery/AlbumInfo;Z)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->GALLERY:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    .line 736
    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->ordinal()I

    move-result v1

    .line 733
    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private openImageEditor()V
    .locals 4

    .prologue
    .line 742
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    const-string/jumbo v3, "filterImage.jpg"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 743
    .local v1, "tempFileUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->imageUri:Landroid/net/Uri;

    invoke-static {p0, v2, v1}, Lcom/liquable/nemo/aviary/AviaryUtil;->createFeatherActivityIfSupport(Landroid/app/Activity;Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 744
    .local v0, "newIntent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 745
    const v2, 0x7f0d00a1

    invoke-static {p0, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 749
    :goto_0
    return-void

    .line 747
    :cond_0
    sget-object v2, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->EDIT:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->ordinal()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private saveViewToImageForPaint(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 11
    .param p1, "paintBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "outputFile"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 752
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getImagePositionAndSize()[I

    move-result-object v5

    .line 753
    .local v5, "positionAndSize":[I
    iget-object v6, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->image:Landroid/graphics/Bitmap;

    const/4 v7, 0x2

    aget v7, v5, v7

    const/4 v8, 0x3

    aget v8, v5, v8

    invoke-static {v6, v7, v8, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 758
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 759
    move-object v3, v0

    .line 764
    .local v3, "mutableBitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 765
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p1, v9, v9, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 768
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 773
    .local v4, "out":Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v3, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 775
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 776
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 761
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v3    # "mutableBitmap":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v6, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 762
    .restart local v3    # "mutableBitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, v3}, Lcom/liquable/nemo/util/ImageUtils;->recycleOldIfNotSame(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 777
    .restart local v1    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 778
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private send(Ljava/lang/String;ZLcom/liquable/nemo/analytics/PictureParameters;)V
    .locals 10
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "isSecret"    # Z
    .param p3, "pictureParameters"    # Lcom/liquable/nemo/analytics/PictureParameters;

    .prologue
    const/4 v4, 0x1

    .line 785
    sget-object v2, Lcom/liquable/nemo/chat/ImagePreviewActivity;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "send: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 788
    iget-object v2, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v3, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/chat/paint/PaintWidget;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/paint/PaintWidget;->getPaintBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 789
    .local v9, "paintBitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_2

    .line 790
    sget-object v2, Lcom/liquable/nemo/analytics/PictureParameters$Key;->with_paint:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lcom/liquable/nemo/analytics/PictureParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    const-string/jumbo v3, "output.jpg"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 792
    .local v8, "outputFile":Ljava/io/File;
    invoke-direct {p0, v9, v8}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->saveViewToImageForPaint(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 793
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 798
    .end local v8    # "outputFile":Ljava/io/File;
    .local v1, "fileUri":Landroid/net/Uri;
    :goto_0
    iget-object v2, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->cameraFacing:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    if-eqz v2, :cond_0

    .line 799
    sget-object v2, Lcom/liquable/nemo/analytics/PictureParameters$Key;->facing:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->cameraFacing:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    invoke-virtual {p3, v2, v3}, Lcom/liquable/nemo/analytics/PictureParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    :cond_0
    sget-object v2, Lcom/liquable/nemo/analytics/PictureParameters$Key;->with_effect:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->withEffect:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lcom/liquable/nemo/analytics/PictureParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    if-nez v1, :cond_1

    .line 805
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IPA.NPE: isSecret:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " via:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 808
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getVia(Landroid/content/Intent;)Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " params:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 810
    invoke-virtual {p3}, Lcom/liquable/nemo/analytics/PictureParameters;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 805
    invoke-static {v2}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V

    .line 813
    :cond_1
    new-instance v0, Lcom/liquable/nemo/share/SharablePhoto;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->captureByCamera:Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;

    if-eqz v2, :cond_3

    .line 817
    :goto_1
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getVia(Landroid/content/Intent;)Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    move-result-object v5

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/share/SharablePhoto;-><init>(Landroid/net/Uri;Ljava/lang/String;ZZLcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;Lcom/liquable/nemo/analytics/PictureParameters;)V

    .line 820
    .local v0, "sharablePhoto":Lcom/liquable/nemo/share/SharablePhoto;
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->deleteGallerySavedByCameraInSecretMode()V

    .line 821
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent;->isFromChat(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 822
    const/4 v2, -0x1

    invoke-virtual {v0}, Lcom/liquable/nemo/share/SharablePhoto;->createIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 823
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->finish()V

    .line 832
    :goto_2
    return-void

    .line 795
    .end local v0    # "sharablePhoto":Lcom/liquable/nemo/share/SharablePhoto;
    .end local v1    # "fileUri":Landroid/net/Uri;
    :cond_2
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->imageUri:Landroid/net/Uri;

    .restart local v1    # "fileUri":Landroid/net/Uri;
    goto/16 :goto_0

    .line 813
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 825
    .restart local v0    # "sharablePhoto":Lcom/liquable/nemo/share/SharablePhoto;
    :cond_4
    invoke-static {p0, v0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->createSharePhotoFromMainIntent(Landroid/content/Context;Lcom/liquable/nemo/share/SharablePhoto;)Landroid/content/Intent;

    move-result-object v7

    .line 828
    .local v7, "createSharePhotoFromMainIntent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v7, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 829
    sget-object v2, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->SELECT_RECEIVERS:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    .line 830
    invoke-virtual {v2}, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->ordinal()I

    move-result v2

    .line 829
    invoke-virtual {p0, v7, v2}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method private shouldShowCaseEditButton()V
    .locals 3

    .prologue
    .line 835
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 836
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isShowCaseEffectButton()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->showCaseEffectView:Lcom/liquable/nemo/widget/ShowcaseView;

    if-nez v0, :cond_0

    .line 838
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowCaseEffectButton(Z)V

    .line 839
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;->effect:Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->showShowcaseView(Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;)V

    .line 840
    const v0, 0x7f030166

    const v1, 0x7f080306

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v0, v1, p0, v2}, Lcom/liquable/nemo/widget/ShowcaseView;->insertShowcaseView(IILandroid/app/Activity;F)Lcom/liquable/nemo/widget/ShowcaseView;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->showCaseEffectView:Lcom/liquable/nemo/widget/ShowcaseView;

    .line 845
    :cond_0
    return-void
.end method

.method private updateImage(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 848
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->image:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 868
    :goto_0
    return-void

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/WidgetManager;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->isVisible(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 853
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->cachedSecretImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 854
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->image:Landroid/graphics/Bitmap;

    invoke-static {p0, v0}, Lcom/liquable/nemo/util/ImageUtils;->encodeSecret(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->cachedSecretImage:Landroid/graphics/Bitmap;

    .line 857
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->previewImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->cachedSecretImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 862
    :goto_1
    if-eqz p1, :cond_2

    .line 863
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;

    .line 864
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getImagePositionAndSize()[I

    move-result-object v1

    .line 863
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/paint/ImagePreviewPaintWidget;->setWindowPositionAndSize([I)V

    .line 867
    :cond_2
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->shouldShowCaseEditButton()V

    goto :goto_0

    .line 859
    :cond_3
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->previewImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method


# virtual methods
.method protected beforeOnCreate()V
    .locals 2

    .prologue
    .line 246
    const-wide/16 v0, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->requestWindowFeature(J)V

    .line 247
    return-void
.end method

.method public getImagePositionAndSize()[I
    .locals 17

    .prologue
    .line 317
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 318
    .local v10, "tv":Landroid/util/TypedValue;
    const/16 v14, 0x30

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v1

    .line 319
    .local v1, "actionBarHeight":I
    const/16 v14, 0x19

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v9

    .line 320
    .local v9, "statusBarHeight":I
    const/16 v14, 0x32

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v5

    .line 321
    .local v5, "inputWidgetHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    const v15, 0x10102eb

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v15, v10, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 322
    iget v14, v10, Landroid/util/TypedValue;->data:I

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    .line 322
    invoke-static {v14, v15}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 325
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/liquable/nemo/util/NemoUIs;->getScreenHeight(Landroid/content/Context;)I

    move-result v14

    sub-int/2addr v14, v9

    sub-int/2addr v14, v1

    sub-int v11, v14, v5

    .line 330
    .local v11, "viewHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 331
    .local v4, "imageWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 332
    .local v3, "imageHeight":I
    invoke-static/range {p0 .. p0}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v12

    .line 333
    .local v12, "viewWidth":I
    int-to-float v14, v4

    int-to-float v15, v12

    div-float v13, v14, v15

    .line 334
    .local v13, "wRatio":F
    int-to-float v14, v3

    int-to-float v15, v11

    div-float v2, v14, v15

    .line 335
    .local v2, "hRatio":F
    const/4 v8, 0x0

    .line 337
    .local v8, "ratio":F
    if-lt v4, v12, :cond_1

    if-ge v3, v11, :cond_2

    :cond_1
    if-gt v4, v12, :cond_5

    if-gt v3, v11, :cond_5

    .line 339
    :cond_2
    cmpl-float v14, v13, v2

    if-lez v14, :cond_4

    .line 340
    int-to-float v14, v12

    int-to-float v15, v4

    div-float/2addr v14, v15

    invoke-static {v8, v14}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 349
    :cond_3
    :goto_0
    int-to-float v14, v4

    mul-float/2addr v14, v8

    float-to-int v4, v14

    .line 350
    int-to-float v14, v3

    mul-float/2addr v14, v8

    float-to-int v3, v14

    .line 351
    sub-int v14, v12, v4

    div-int/lit8 v6, v14, 0x2

    .line 352
    .local v6, "posX":I
    sub-int v14, v11, v3

    div-int/lit8 v7, v14, 0x2

    .line 355
    .local v7, "posY":I
    mul-int v14, v4, v3

    if-nez v14, :cond_7

    .line 356
    const/4 v14, 0x4

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    const/4 v15, 0x2

    aput v12, v14, v15

    const/4 v15, 0x3

    aput v11, v14, v15

    .line 358
    :goto_1
    return-object v14

    .line 342
    .end local v6    # "posX":I
    .end local v7    # "posY":I
    :cond_4
    int-to-float v14, v11

    int-to-float v15, v3

    div-float/2addr v14, v15

    invoke-static {v8, v14}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_0

    .line 344
    :cond_5
    if-ge v4, v12, :cond_6

    if-lt v3, v11, :cond_6

    .line 345
    int-to-float v14, v11

    int-to-float v15, v3

    div-float/2addr v14, v15

    invoke-static {v8, v14}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_0

    .line 346
    :cond_6
    if-lt v4, v12, :cond_3

    if-ge v3, v11, :cond_3

    .line 347
    int-to-float v14, v12

    int-to-float v15, v4

    div-float/2addr v14, v15

    invoke-static {v8, v14}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_0

    .line 358
    .restart local v6    # "posX":I
    .restart local v7    # "posY":I
    :cond_7
    const/4 v14, 0x4

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v6, v14, v15

    const/4 v15, 0x1

    aput v7, v14, v15

    const/4 v15, 0x2

    aput v4, v14, v15

    const/4 v15, 0x3

    aput v3, v14, v15

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "CAMERA_FRAGMENT_TAG"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 553
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->finish()V

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/WidgetManager;->toggleAnyVisibleWidget()Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->isOpenCamera:Z

    if-eqz v0, :cond_2

    .line 560
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->openCamera()V

    goto :goto_0

    .line 562
    :cond_2
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->isOpenGallery:Z

    if-eqz v0, :cond_3

    .line 563
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->openGallery()V

    goto :goto_0

    .line 566
    :cond_3
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCameraReady()V
    .locals 2

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "CAMERA_FRAGMENT_TAG"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/main/MainCameraView;

    invoke-virtual {v0}, Lcom/liquable/nemo/main/MainCameraView;->start()V

    .line 572
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->clearImage()V

    .line 577
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragmentActivity;->onDestroy()V

    .line 578
    return-void
.end method

.method public onGalleryButtonClicked()V
    .locals 0

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->openGallery()V

    .line 583
    return-void
.end method

.method protected onLoggedInActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 589
    sget-object v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$10;->$SwitchMap$com$liquable$nemo$chat$ImagePreviewActivity$Request:[I

    invoke-static {}, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->values()[Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 606
    :goto_0
    return-void

    .line 591
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->handleResultEdit(ILandroid/content/Intent;)V

    goto :goto_0

    .line 594
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->handleResultCamera(ILandroid/content/Intent;)V

    goto :goto_0

    .line 597
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->handleResultGallery(ILandroid/content/Intent;)V

    goto :goto_0

    .line 600
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->handleResultSelectReceivers(ILandroid/content/Intent;)V

    goto :goto_0

    .line 603
    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->handleResultVideoPreview(ILandroid/content/Intent;)V

    goto :goto_0

    .line 589
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 610
    const v1, 0x7f03002f

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->setContentView(I)V

    .line 612
    new-instance v1, Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 613
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseFragmentActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/chat/WidgetManager;-><init>(Landroid/view/View;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    .line 614
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    new-instance v2, Lcom/liquable/nemo/chat/ImagePreviewActivity$8;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity$8;-><init>(Lcom/liquable/nemo/chat/ImagePreviewActivity;)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/WidgetManager;->setOnWidgetOpenCloseListener(Lcom/liquable/nemo/chat/WidgetManager$OnWidgetOpenCloseListener;)V

    .line 641
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->initInputMessageWidget()V

    .line 642
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->initPaintWidget()V

    .line 643
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->initEmojiWidget()V

    .line 645
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent;->isSecret(Landroid/content/Intent;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/WidgetManager;->setIsSecret(Z)V

    .line 647
    const v1, 0x7f0800bf

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->previewImageView:Landroid/widget/ImageView;

    .line 649
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent;->getChatGroup(Landroid/content/Intent;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 650
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 653
    :cond_0
    return-void
.end method

.method protected onLoggedInResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 657
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragmentActivity;->onLoggedInResume()V

    .line 659
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/WidgetManager;->onResume()V

    .line 661
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 662
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->loadPreview(Landroid/net/Uri;Z)V

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent;->isOpenCamera(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 664
    iput-boolean v1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->isOpenCamera:Z

    .line 665
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->openCamera()V

    goto :goto_0

    .line 666
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent;->isOpenGallery(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iput-boolean v1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->isOpenGallery:Z

    .line 668
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->openGallery()V

    goto :goto_0
.end method

.method protected onLoggedInStart()V
    .locals 2

    .prologue
    .line 674
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 690
    :goto_0
    return-void

    .line 678
    :cond_0
    new-instance v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$9;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity$9;-><init>(Lcom/liquable/nemo/chat/ImagePreviewActivity;)V

    iput-object v1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 687
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 688
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    iget-object v1, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onPictureTaken(Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "photoUri"    # Landroid/net/Uri;
    .param p2, "isUsingFrontFacingCamera"    # Z

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->cameraFragmentClose()V

    .line 695
    new-instance v0, Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;-><init>(Lcom/liquable/nemo/chat/ImagePreviewActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->captureByCamera:Lcom/liquable/nemo/chat/ImagePreviewActivity$CaptureByCamera;

    .line 696
    if-eqz p2, :cond_0

    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;->front:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    :goto_0
    iput-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->cameraFacing:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    .line 697
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->loadPreview(Landroid/net/Uri;Z)V

    .line 698
    return-void

    .line 696
    :cond_0
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;->rear:Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 704
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/chat/ImagePreviewActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 706
    :cond_0
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragmentActivity;->onStop()V

    .line 707
    return-void
.end method

.method public onVideoTaken(Lcom/liquable/nemo/share/SharableVideo;)V
    .locals 2
    .param p1, "sharableVideo"    # Lcom/liquable/nemo/share/SharableVideo;

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent;->isFromMain(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    invoke-static {p0, p1}, Lcom/liquable/nemo/main/VideoPreviewActivity;->fromMain(Landroid/content/Context;Lcom/liquable/nemo/share/SharableVideo;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->VIDEO_PREVIEW:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    .line 713
    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->ordinal()I

    move-result v1

    .line 712
    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 718
    :goto_0
    return-void

    .line 715
    :cond_0
    invoke-static {p0, p1}, Lcom/liquable/nemo/main/VideoPreviewActivity;->fromChat(Landroid/content/Context;Lcom/liquable/nemo/share/SharableVideo;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->VIDEO_PREVIEW:Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;

    .line 716
    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity$Request;->ordinal()I

    move-result v1

    .line 715
    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
