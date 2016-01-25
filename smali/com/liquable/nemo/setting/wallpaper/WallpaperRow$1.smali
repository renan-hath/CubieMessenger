.class Lcom/liquable/nemo/setting/wallpaper/WallpaperRow$1;
.super Ljava/lang/Object;
.source "WallpaperRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->setDownloadBtnOnClickListener(Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$WallpaperDownloadBtnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;

.field final synthetic val$wallpaperDownloadBtnClickListener:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$WallpaperDownloadBtnClickListener;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$WallpaperDownloadBtnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow$1;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;

    iput-object p2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow$1;->val$wallpaperDownloadBtnClickListener:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$WallpaperDownloadBtnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow$1;->val$wallpaperDownloadBtnClickListener:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$WallpaperDownloadBtnClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$WallpaperDownloadBtnClickListener;->onClick(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method
