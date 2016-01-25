.class Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$2;
.super Ljava/lang/Object;
.source "WallpaperAdapter.java"

# interfaces
.implements Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$WallpaperDownloadBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$2;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {p1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->getByCode(Ljava/lang/String;)Lcom/liquable/nemo/setting/wallpaper/WallpaperData;

    move-result-object v0

    .line 113
    .local v0, "wallpaper":Lcom/liquable/nemo/setting/wallpaper/WallpaperData;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$2;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    # getter for: Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->access$100(Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadWallpaper(Landroid/content/Context;Lcom/liquable/nemo/setting/wallpaper/WallpaperData;)V

    .line 114
    iget-object v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$2;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    # getter for: Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->downloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->access$200(Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->getRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
