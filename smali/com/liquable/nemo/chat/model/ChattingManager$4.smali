.class Lcom/liquable/nemo/chat/model/ChattingManager$4;
.super Ljava/lang/Object;
.source "ChattingManager.java"

# interfaces
.implements Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/model/ChattingManager;->downloadWallpaper(Landroid/content/Context;Lcom/liquable/nemo/setting/wallpaper/WallpaperData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$localKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

.field final synthetic val$wallpaperData:Lcom/liquable/nemo/setting/wallpaper/WallpaperData;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/model/ChattingManager;Lcom/liquable/nemo/setting/wallpaper/WallpaperData;Landroid/content/Context;Lcom/liquable/nemo/storage/LocalKeyPath;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/model/ChattingManager;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$4;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    iput-object p2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$4;->val$wallpaperData:Lcom/liquable/nemo/setting/wallpaper/WallpaperData;

    iput-object p3, p0, Lcom/liquable/nemo/chat/model/ChattingManager$4;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/liquable/nemo/chat/model/ChattingManager$4;->val$localKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    .prologue
    .line 695
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$4;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$200(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/android/NotifyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/android/NotifyManager;->notifyDownloadWallpaperComplete()V

    .line 696
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$4;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$000(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/android/service/ExtraFileType;->WALLPAPER:Lcom/liquable/nemo/android/service/ExtraFileType;

    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$4;->val$wallpaperData:Lcom/liquable/nemo/setting/wallpaper/WallpaperData;

    .line 697
    invoke-virtual {v2}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->getCode()Ljava/lang/String;

    move-result-object v2

    .line 696
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastExtraFileDownloadComplete(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$4;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/model/ChattingManager$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$4;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;
    invoke-static {v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$100(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/storage/NemoFileService;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/chat/model/ChattingManager$4;->val$localKeyPath:Lcom/liquable/nemo/storage/LocalKeyPath;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v2

    # invokes: Lcom/liquable/nemo/chat/model/ChattingManager;->saveWallpaperFitXY(Landroid/content/Context;Ljava/io/File;)V
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$300(Lcom/liquable/nemo/chat/model/ChattingManager;Landroid/content/Context;Ljava/io/File;)V

    .line 699
    return-void
.end method

.method public onFailed(Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;)V
    .locals 3
    .param p1, "error"    # Lcom/liquable/nemo/storage/aws/DataTransferProgressListener$ErrorCode;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$4;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$200(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/android/NotifyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/android/NotifyManager;->notifyDownloadWallpaperFailed()V

    .line 704
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$4;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$000(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/android/service/ExtraFileType;->WALLPAPER:Lcom/liquable/nemo/android/service/ExtraFileType;

    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$4;->val$wallpaperData:Lcom/liquable/nemo/setting/wallpaper/WallpaperData;

    .line 705
    invoke-virtual {v2}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->getCode()Ljava/lang/String;

    move-result-object v2

    .line 704
    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastExtraFileDownloadFailed(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method public onProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 710
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$4;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$200(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/android/NotifyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/android/NotifyManager;->notifyDownloadWallpaperProgress(I)V

    .line 711
    iget-object v0, p0, Lcom/liquable/nemo/chat/model/ChattingManager$4;->this$0:Lcom/liquable/nemo/chat/model/ChattingManager;

    # getter for: Lcom/liquable/nemo/chat/model/ChattingManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->access$000(Lcom/liquable/nemo/chat/model/ChattingManager;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/android/service/ExtraFileType;->WALLPAPER:Lcom/liquable/nemo/android/service/ExtraFileType;

    iget-object v2, p0, Lcom/liquable/nemo/chat/model/ChattingManager$4;->val$wallpaperData:Lcom/liquable/nemo/setting/wallpaper/WallpaperData;

    .line 712
    invoke-virtual {v2}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->getCode()Ljava/lang/String;

    move-result-object v2

    .line 711
    invoke-virtual {v0, v1, v2, p1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastExtraFileDownloadUpdate(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;I)V

    .line 714
    return-void
.end method
