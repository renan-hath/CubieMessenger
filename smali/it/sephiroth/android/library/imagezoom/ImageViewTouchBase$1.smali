.class Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

.field private final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field private final synthetic val$initial_matrix:Landroid/graphics/Matrix;

.field private final synthetic val$max_zoom:F

.field private final synthetic val$min_zoom:F


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iput-object p2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->val$initial_matrix:Landroid/graphics/Matrix;

    iput p4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->val$min_zoom:F

    iput p5, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->val$max_zoom:F

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 412
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->this$0:Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->val$initial_matrix:Landroid/graphics/Matrix;

    iget v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->val$min_zoom:F

    iget v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;->val$max_zoom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    .line 413
    return-void
.end method
