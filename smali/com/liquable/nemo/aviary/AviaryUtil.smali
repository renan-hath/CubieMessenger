.class public Lcom/liquable/nemo/aviary/AviaryUtil;
.super Ljava/lang/Object;
.source "AviaryUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFeatherActivityIfSupport(Landroid/app/Activity;Landroid/net/Uri;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "tempFileUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aviary/android/feather/FeatherActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .local v0, "newIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 20
    const-string/jumbo v1, "output"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 22
    const-string/jumbo v1, "output-format"

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 24
    const-string/jumbo v1, "output-quality"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    const-string/jumbo v1, "effect-enable-external-pack"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    const-string/jumbo v1, "frames-enable-external-pack"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    const-string/jumbo v1, "stickers-enable-external-pack"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    const-string/jumbo v1, "tools-list"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "EFFECTS"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "ENHANCE"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "TILT_SHIFT"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "CROP"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "BLEMISH"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    return-object v0
.end method

.method public static isWithEffect(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    const-string/jumbo v0, "bitmap-changed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
