.class Lcom/aviary/android/feather/FeatherActivity$15;
.super Ljava/lang/Object;
.source "FeatherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/FeatherActivity;->doSave(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/FeatherActivity;

.field final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/FeatherActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/FeatherActivity;

    .prologue
    .line 1524
    iput-object p1, p0, Lcom/aviary/android/feather/FeatherActivity$15;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    iput-object p2, p0, Lcom/aviary/android/feather/FeatherActivity$15;->val$b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$15;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
    invoke-static {v0}, Lcom/aviary/android/feather/FeatherActivity;->access$100(Lcom/aviary/android/feather/FeatherActivity;)Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    move-result-object v0

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->clear()V

    .line 1529
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$15;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1530
    return-void
.end method
