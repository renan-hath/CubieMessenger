.class Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$1;
.super Ljava/lang/Object;
.source "WallpaperSettingActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;
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
    .line 59
    iput-object p1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$1;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$1;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    check-cast p2, Lcom/liquable/nemo/android/service/FileTransferAndroidService$LocalBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/liquable/nemo/android/service/FileTransferAndroidService$LocalBinder;->getFileTransferInfo()Lcom/liquable/nemo/android/service/FileTransferInfo;

    move-result-object v1

    # setter for: Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;
    invoke-static {v0, v1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->access$002(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;Lcom/liquable/nemo/android/service/FileTransferInfo;)Lcom/liquable/nemo/android/service/FileTransferInfo;

    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$1;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    # getter for: Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->wallpaperAdapter:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->access$100(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;)Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$1;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    # getter for: Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->wallpaperAdapter:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->access$100(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;)Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$1;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    # getter for: Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;
    invoke-static {v1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->access$000(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;)Lcom/liquable/nemo/android/service/FileTransferInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/android/service/FileTransferInfo;->listDownloading()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->updateDownloadingList(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$1;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;
    invoke-static {v0, v1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->access$002(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;Lcom/liquable/nemo/android/service/FileTransferInfo;)Lcom/liquable/nemo/android/service/FileTransferInfo;

    .line 73
    return-void
.end method
