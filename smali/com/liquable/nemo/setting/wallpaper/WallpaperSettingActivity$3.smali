.class Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$3;
.super Ljava/lang/Object;
.source "WallpaperSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$3;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$3;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    invoke-static {v0}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 222
    .local v1, "width":I
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$3;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    invoke-static {v0}, Lcom/liquable/nemo/util/NemoUIs;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    .line 223
    .local v2, "height":I
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$3;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 228
    invoke-virtual {v3}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 230
    invoke-static {}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->getTempWallpaperFile()Ljava/io/File;

    move-result-object v7

    move v3, v1

    move v4, v2

    .line 223
    invoke-static/range {v0 .. v7}, Lcom/liquable/nemo/util/crop/CropImageActivity;->createStartActivityIntent(Landroid/app/Activity;IIIILjava/lang/String;ZLjava/io/File;)Landroid/content/Intent;

    move-result-object v8

    .line 231
    .local v8, "newIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$3;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    const/4 v3, 0x3

    invoke-virtual {v0, v8, v3}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 232
    return-void
.end method
