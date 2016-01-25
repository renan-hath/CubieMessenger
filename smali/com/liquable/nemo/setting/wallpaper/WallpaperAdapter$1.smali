.class Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$1;
.super Ljava/lang/Object;
.source "WallpaperAdapter.java"

# interfaces
.implements Lcom/liquable/nemo/setting/wallpaper/WallpaperItemClickListener;


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
    .line 99
    iput-object p1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$1;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1
    .param p1, "selected"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter$1;->this$0:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    # invokes: Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->onItemClick(I)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->access$000(Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;I)V

    .line 103
    return-void
.end method
