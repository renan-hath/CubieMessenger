.class Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperSettingActivity.java"


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
    .line 75
    iput-object p1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    # getter for: Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->wallpaperAdapter:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->access$100(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;)Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string/jumbo v0, "ON_WALLPAPER_CLICK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->customize:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->access$202(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;Z)Z

    .line 85
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    iget-object v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    # getter for: Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->customize:Z
    invoke-static {v1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->access$200(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;)Z

    move-result v1

    # invokes: Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->saveSelectedWallpaperFile(Z)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->access$300(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;Z)V

    .line 88
    :cond_2
    sget-object v0, Lcom/liquable/nemo/android/service/ExtraFileType;->WALLPAPER:Lcom/liquable/nemo/android/service/ExtraFileType;

    invoke-static {p2, v0}, Lcom/liquable/nemo/util/BroadcastEventMatcher;->matchExtraFileTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/android/service/ExtraFileType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    # getter for: Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;
    invoke-static {v0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->access$000(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;)Lcom/liquable/nemo/android/service/FileTransferInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    # getter for: Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->wallpaperAdapter:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->access$100(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;)Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    # getter for: Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;
    invoke-static {v1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->access$000(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;)Lcom/liquable/nemo/android/service/FileTransferInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/android/service/FileTransferInfo;->listDownloading()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->updateDownloadingList(Ljava/util/List;)V

    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$2;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    # getter for: Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->wallpaperAdapter:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->access$100(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;)Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
