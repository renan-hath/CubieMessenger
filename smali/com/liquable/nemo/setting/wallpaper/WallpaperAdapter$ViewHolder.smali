.class Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "WallpaperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field frameLayout:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

.field wallpaperBgImageView:Landroid/widget/ImageView;

.field wallpaperBgImageViewSelected:Landroid/widget/ImageView;

.field wallpaperImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$ViewHolder;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
