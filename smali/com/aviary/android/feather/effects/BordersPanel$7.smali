.class Lcom/aviary/android/feather/effects/BordersPanel$7;
.super Ljava/lang/Object;
.source "BordersPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/BordersPanel;->onLoadComplete(Landroid/widget/ImageView;Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/effects/BordersPanel;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/BordersPanel;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/BordersPanel;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/aviary/android/feather/effects/BordersPanel$7;->this$0:Lcom/aviary/android/feather/effects/BordersPanel;

    iput-object p2, p0, Lcom/aviary/android/feather/effects/BordersPanel$7;->val$view:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/aviary/android/feather/effects/BordersPanel$7;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/aviary/android/feather/effects/BordersPanel$7;->val$view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/aviary/android/feather/effects/BordersPanel$7;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 608
    return-void
.end method
