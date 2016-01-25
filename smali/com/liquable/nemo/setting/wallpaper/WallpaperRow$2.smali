.class Lcom/liquable/nemo/setting/wallpaper/WallpaperRow$2;
.super Ljava/lang/Object;
.source "WallpaperRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;->setOnWallpaperItemClick(Lcom/liquable/nemo/setting/wallpaper/WallpaperItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;

.field final synthetic val$onItemClickListener:Lcom/liquable/nemo/setting/wallpaper/WallpaperItemClickListener;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;Lcom/liquable/nemo/setting/wallpaper/WallpaperItemClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow$2;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperRow;

    iput-object p2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow$2;->val$onItemClickListener:Lcom/liquable/nemo/setting/wallpaper/WallpaperItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperRow$2;->val$onItemClickListener:Lcom/liquable/nemo/setting/wallpaper/WallpaperItemClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperItemClickListener;->onClick(I)V

    .line 79
    :cond_0
    return-void
.end method
